cmake_minimum_required(VERSION 3.1)

set(PROJECT_NAME tiled)
set(CMAKE_EXPORT_COMPILE_COMMANDS on)

project(${PROJECT_NAME})

FIND_PACKAGE(PkgConfig REQUIRED)
PKG_CHECK_MODULES(GTK3 REQUIRED gtk+-3.0)
PKG_CHECK_MODULES(GTKSOURCEVIEW REQUIRED gtksourceview-4)


include_directories(${GTK3_INCLUDE_DIRS})
link_directories(${GTK3_LIBRARY_DIRS})

add_definitions(${GTK3_CFLAGS_OTHER})

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -Wall -Wextra -g")

include_directories("include/")
file(GLOB SRC_FILES "src/*.c")

add_executable(${PROJECT_NAME} ${SRC_FILES})

target_link_libraries(${PROJECT_NAME} ${GTK3_LIBRARIES})
target_link_libraries(${PROJECT_NAME} gtksourceview-4)
target_link_libraries(${PROJECT_NAME} xdo)
