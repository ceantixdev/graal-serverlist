#include "SimulatedIrcStub.h"
#include "ListServer.h"
#include "ServerPlayer.h"

SimulatedIrcStub::SimulatedIrcStub(IrcServer *ircServer, ServerConnection *connection, ServerPlayer *player)
		: IrcStub(ircServer), _connection(connection), _player(player)
{

}

void SimulatedIrcStub::disconnect()
{
	// TODO(joey): unused
}

void SimulatedIrcStub::sendJoinedChannel(const std::string &channel, const std::unordered_set<IrcStub *> &users)
{

}

void SimulatedIrcStub::sendLeftChannel(const std::string &channel, const std::string &message)
{

}

void SimulatedIrcStub::sendMessage(const std::string& channel, const std::string& message, const std::string& sender)
{
	CString serverPacket;
	serverPacket >> (char)SVO_SENDTEXT << "GraalEngine,irc,privmsg," << sender
				 << "," << CString(channel).gtokenize() << "," << CString(message).gtokenize();
	_connection->sendPacket(serverPacket);
}

void SimulatedIrcStub::sendUserJoinedChannel(const std::string &channel, IrcStub *from)
{

}

void SimulatedIrcStub::sendUserLeftChannel(const std::string &channel, IrcStub *from)
{

}
