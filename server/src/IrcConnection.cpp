#include <stdlib.h>
#include <time.h>
#include "ListServer.h"
#include "IrcConnection.h"
#include "ServerConnection.h"
#include "ServerPlayer.h"
#include "CLog.h"
#include <map>

/*
	Pointer-Functions for Packets
*/
typedef bool (IrcConnection::*IrcSocketFunction)(CString&);

std::unordered_map<std::string,IrcSocketFunction> ircFunctionTable;

void createIrcPtrTable()
{
	ircFunctionTable["user"] = &IrcConnection::msgIRC_USER;
	ircFunctionTable["nick"] = &IrcConnection::msgIRC_NICK;
	ircFunctionTable["ping"] = &IrcConnection::msgIRC_PING;
	ircFunctionTable["join"] = &IrcConnection::msgIRC_JOIN;
	ircFunctionTable["part"] = &IrcConnection::msgIRC_PART;
	ircFunctionTable["pass"] = &IrcConnection::msgIRC_PASS;
	ircFunctionTable["privmsg"] = &IrcConnection::msgIRC_PRIVMSG;
	ircFunctionTable["notice"] = &IrcConnection::msgIRC_PRIVMSG;
}

/*
	Constructor - Deconstructor
*/
IrcConnection::IrcConnection(ListServer* listServer, CSocket* pSocket)
	: _listServer(listServer), _socket(pSocket)
{
	static bool _setupServerPackets = false;
	if (!_setupServerPackets)
	{
		createIrcPtrTable();
		_setupServerPackets = true;
	}
	_listServerAddress = _listServer->getSettings().getStr("listServerAddress");
	_ircPlayer = new ServerPlayer(this);
	_accountStatus = AccountStatus::NotFound;
	lastPing = lastPlayerCount = lastData = lastUptimeCheck = time(0);
}

IrcConnection::~IrcConnection()
{
	// delete socket
	delete _socket;
}

/*
	Loops
*/
bool IrcConnection::doMain()
{
	// sock exist?
	if (_socket == NULL)
		return false;

	// Grab the data from the socket and put it into our receive buffer.
	unsigned int size = 0;
	char* data = _socket->getData(&size);

	if (size != 0)
		sockBuffer.write(data, size);
	else if (_socket->getState() == SOCKET_STATE_DISCONNECTED)
		return false;

	if (!sockBuffer.isEmpty())
	{
		// definitions
		CString unBuffer;
		int lineEnd;

		// parse data
		do
		{
			if ((lineEnd = sockBuffer.find('\n')) == -1)
				break;

			CString line = sockBuffer.subString(0, lineEnd + 1);
			sockBuffer.removeI(0, line.length());

			if (!parsePacket(line))
				return true;
		}
		while (sockBuffer.bytesLeft());
	}

	// Send a ping every 30 seconds.
	if (int(difftime(time(0), lastPing)) >= 30)
	{
		lastPing = time(0);
		sendPacket("PING :" + _listServerAddress);
	}

	// send out buffer
	sendCompress();
	return true;
}

/*
	Kill Client
*/
void IrcConnection::kill()
{
	// Send Out-Buffer
	sendCompress();
	delete this;
}

/*
	Send-Packet Functions
*/
void IrcConnection::sendCompress()
{
	// empty buffer?
	if (sendBuffer.isEmpty())
	{
		// If we still have some data in the out buffer, try sending it again.
		if (outBuffer.isEmpty() == false)
		{
			unsigned int dsize = outBuffer.length();
			outBuffer.removeI(0, _socket->sendData(outBuffer.text(), &dsize));
		}
		return;
	}

	// add the send buffer to the out buffer
	outBuffer << sendBuffer;

	// send buffer
	unsigned int dsize = outBuffer.length();
	outBuffer.removeI(0, _socket->sendData(outBuffer.text(), &dsize));

	// clear buffer
	sendBuffer.clear();
}

void IrcConnection::sendPacket(CString pPacket, bool pSendNow)
{
	// empty buffer?
	if (pPacket.isEmpty())
		return;

	// append '\n'
	if (pPacket[pPacket.length() - 1] != '\n')
		pPacket.writeChar('\n');

	// append buffer depending on protocol
	sendBuffer.write(pPacket);

	printf("Irc Packet Out: %s (%d)\n", pPacket.trim().text(), pPacket.length());
	// send buffer now?
	if (pSendNow)
		sendCompress();
}

bool IrcConnection::sendMessage(const std::string& channel, ServerPlayer* from, const std::string& message)
{
	sendPacket(":" + from->getAccountName() + " PRIVMSG " + channel + " :" + message);

	return true;
}

/*
	Packet-Functions
*/
bool IrcConnection::parsePacket(CString& pPacket)
{
	while (pPacket.bytesLeft() > 0)
	{
		CString curPacket = pPacket.readString("\n");

		// read id & packet
		std::string packetId = pPacket.readString(" ").toLower().text();

		// valid packet, call function
		auto it = ircFunctionTable.find(packetId);
		if (it != ircFunctionTable.end()) { (*this.*it->second)(curPacket); }
		else msgIRC_UNKNOWN(curPacket);

		// Update the data timeout.
		lastData = time(0);
	}

	return true;
}

bool IrcConnection::msgIRC_USER(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0 && _accountStatus != AccountStatus::Normal)
	{
		_ircPlayer->setProps(CString() >> (char)PLPROP_ACCOUNTNAME >> (char)params[1].length() << params[1]);

		sendPacket(":" + _ircPlayer->getNickName() + " NICK " + _ircPlayer->getAccountName());
		_ircPlayer->setNickName(_ircPlayer->getAccountName());

		authenticateUser();
	}

	return true;
}

bool IrcConnection::msgIRC_PING(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0)
	{
		sendPacket("PONG " + params[1]);
	}

	return true;
}

bool IrcConnection::msgIRC_NICK(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0 && _accountStatus != AccountStatus::Normal)
	{
		_ircPlayer->setNickName(params[1].text());
	}

	return true;
}

bool IrcConnection::msgIRC_PASS(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0 && _accountStatus != AccountStatus::Normal)
	{
		password = params[1];

		authenticateUser();
	}

	return true;
}

void IrcConnection::authenticateUser()
{
	if (!_ircPlayer->getAccountName().empty() && password != "")
	{
		_accountStatus = _listServer->verifyAccount(_ircPlayer->getAccountName(), password.text());
		switch (_accountStatus)
		{
		case AccountStatus::Normal:
			sendPacket(
				":" + _listServerAddress + " 001 " + _ircPlayer->getAccountName() + " :Welcome to " + _listServer
				->
				getSettings().
				getStr("name")
				+ ", " + _ircPlayer->getAccountName() + "!");
			sendPacket(
				":" + _listServerAddress + " 001 " + _ircPlayer->getAccountName() + " :Your account: " + _ircPlayer
				->getAccountName() + ", password: " + password);
			break;
		default:
			sendPacket(
				":" + _listServerAddress + " KILL " + _ircPlayer->getAccountName() + " Unable to identify account: "
				+ (int)_accountStatus);
			sendCompress();
			_socket->disconnect();
			break;
		}
	}
}

bool IrcConnection::msgIRC_JOIN(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0 && _accountStatus == AccountStatus::Normal)
	{
		sendPacket(":" + _ircPlayer->getAccountName() + " JOIN " + params[1]);
		_listServer->addPlayerToChannel(params[1].text(), _ircPlayer);
	}

	return true;
}

bool IrcConnection::msgIRC_PART(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0 && _accountStatus == AccountStatus::Normal)
	{
		const CString message = pPacket.subString(pPacket.readString(":").length() + 1);
		sendPacket(":" + _ircPlayer->getAccountName() + " PART " + params[1] + " :" + message);
		_listServer->removePlayerFromChannel(params[1].text(), _ircPlayer);
	}

	return true;
}

bool IrcConnection::msgIRC_PRIVMSG(CString& pPacket)
{
	std::vector<CString> params = pPacket.trim().tokenize(" ");

	if (params.size() >= 0 && _accountStatus == AccountStatus::Normal)
	{
		CString message = pPacket.subString(pPacket.readString(":").length() + 1);

		// Todo(Shitai): Handle when PRIVMSG is sent to player and not a channel. Should send as GraalPM on ServerConnection and as PRIVMSG on IrcConnection
		_listServer->sendMessage(params[1].text(), _ircPlayer, message.text());
	}

	return true;
}

bool IrcConnection::msgIRC_UNKNOWN(CString& pPacket)
{
	pPacket.setRead(0);
	printf("Unknown Server Packet: %s\n", pPacket.text());
	return true;
}
