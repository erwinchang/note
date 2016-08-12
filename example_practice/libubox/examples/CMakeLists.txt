cmake_minimum_required(VERSION 2.6)

PROJECT(ubox-examples C)
ADD_DEFINITIONS(-O1 -Wall -Werror --std=gnu99 -g3 -I$ENV{ROOTFS_DIR}/usr/local/include -I$ENV{ROOTFS_DIR}/usr/local/include/libubox -I$ENV{ROOTFS_DIR}/include)

IF(APPLE)
  INCLUDE_DIRECTORIES(/opt/local/include)
  LINK_DIRECTORIES(/opt/local/lib)
ENDIF()

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/..)
LINK_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/..)

FIND_LIBRARY(json NAMES json-c json)
MESSAGE("example-json:" ${json})

LINK_DIRECTORIES($ENV{ROOTFS_DIR}/usr/local/lib)
ADD_EXECUTABLE(blobmsg-example blobmsg-example.c)
TARGET_LINK_LIBRARIES(blobmsg-example ubox blobmsg_json  ${json})

ADD_EXECUTABLE(ustream-example ustream-example.c)
TARGET_LINK_LIBRARIES(ustream-example ubox)

ADD_EXECUTABLE(runqueue-example runqueue-example.c)
TARGET_LINK_LIBRARIES(runqueue-example ubox)

