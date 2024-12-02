# Install script for directory: /home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/GServer")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb" TYPE FILE FILES
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mariadb_com.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mysql.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mariadb_stmt.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/ma_pvio.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/ma_tls.h"
    "/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/include/mariadb_version.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/ma_list.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/errmsg.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mariadb_dyncol.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mariadb_ctype.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mariadb_rpl.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mysql" TYPE FILE FILES
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mysql/client_plugin.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mysql/plugin_auth_common.h"
    "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mysql/plugin_auth.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mariadb/mariadb" TYPE FILE FILES "/home/tyler/repos/graal-serverlist/dependencies/mysqlclient/include/mariadb/ma_io.h")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
