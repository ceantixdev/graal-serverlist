# Install script for directory: /home/tyler/repos/graal-serverlist/dependencies/mysqlclient

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/dialog.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/dialog.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/dialog.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/dialog.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/dialog.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/dialog.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/dialog.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/dialog.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/dialog.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/client_ed25519.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/client_ed25519.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/client_ed25519.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/client_ed25519.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/client_ed25519.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/client_ed25519.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/client_ed25519.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/tmp/client_ed25519.so"
         OLD_RPATH "/home/tyler/repos/graal-serverlist/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/client_ed25519.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/client_ed25519.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/caching_sha2_password.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/caching_sha2_password.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/caching_sha2_password.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/caching_sha2_password.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/caching_sha2_password.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/caching_sha2_password.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/caching_sha2_password.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/tmp/caching_sha2_password.so"
         OLD_RPATH "/home/tyler/repos/graal-serverlist/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/caching_sha2_password.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/caching_sha2_password.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/sha256_password.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/sha256_password.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/sha256_password.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/sha256_password.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/sha256_password.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/sha256_password.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/sha256_password.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/tmp/sha256_password.so"
         OLD_RPATH "/home/tyler/repos/graal-serverlist/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/sha256_password.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/sha256_password.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/auth_gssapi_client.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/auth_gssapi_client.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/auth_gssapi_client.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/auth_gssapi_client.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/auth_gssapi_client.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/auth_gssapi_client.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/auth_gssapi_client.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/tmp/auth_gssapi_client.so"
         OLD_RPATH "/home/tyler/repos/graal-serverlist/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/auth_gssapi_client.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/auth_gssapi_client.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/mysql_clear_password.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/mysql_clear_password.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/mysql_clear_password.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/mysql_clear_password.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/mysql_clear_password.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/mysql_clear_password.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/mysql_clear_password.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/mysql_clear_password.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/mysql_clear_password.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/zstd.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/zstd.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/zstd.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/zstd.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/zstd.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/zstd.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/zstd.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/tmp/zstd.so"
         OLD_RPATH "/home/tyler/repos/graal-serverlist/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/zstd.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/zstd.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/tmp/remote_io.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/remote_io.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/tmp/remote_io.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/tmp/remote_io.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/tmp" TYPE MODULE FILES "/home/tyler/repos/graal-serverlist/lib/remote_io.so")
  if(EXISTS "$ENV{DESTDIR}/tmp/remote_io.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/tmp/remote_io.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/tmp/remote_io.so"
         OLD_RPATH "/home/tyler/repos/graal-serverlist/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/tmp/remote_io.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ClientPlugins" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/CMakeFiles/remote_io.dir/install-cxx-module-bmi-RelWithDebInfo.cmake" OPTIONAL)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/external/zlib/cmake_install.cmake")
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/include/cmake_install.cmake")
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/libmariadb/cmake_install.cmake")
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/mariadb_config/cmake_install.cmake")
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/mytap/cmake_install.cmake")
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb/cmake_install.cmake")
  include("/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/man/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
