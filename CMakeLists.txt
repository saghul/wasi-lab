cmake_minimum_required(VERSION 2.8.12)

project(duk)

if (NOT CMAKE_BUILD_TYPE)
	message(STATUS "No build type selected, default to Debug")
	set(CMAKE_BUILD_TYPE "Debug")
endif()
message(STATUS "Building in ${CMAKE_BUILD_TYPE} mode")
message(STATUS "Building with ${CMAKE_C_COMPILER_ID} ${CMAKE_C_COMPILER_VERSION} on ${CMAKE_SYSTEM}")

set(CMAKE_C_FLAGS "$ENV{CFLAGS} -pedantic -std=c99 -Wall -Wextra -fstrict-aliasing -fno-omit-frame-pointer")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS} -DDEBUG -Werror -Wno-unused-value -O0 -g3")
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} -DNDEBUG -O2 -g")


add_definitions(
    -D_GNU_SOURCE
    -D_LARGEFILE_SOURCE
    -D_FILE_OFFSET_BITS=64
    -DDUK_CMDLINE_CONSOLE_SUPPORT
)

add_executable(duk
    src/duktape.c
    src/duk_console.c
    src/duk_cmdline.c
)

