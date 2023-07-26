cmake_minimum_required(VERSION 3.0.0)
project(libinjector VERSION 1.0.0)

include_directories(include)

if(CMAKE_SYSTEM_NAME STREQUAL "Windows" OR CMAKE_GENERATOR STREQUAL "MinGW Makefiles")
    set(PLATFORM "windows")
elseif(CMAKE_SYSTEM_NAME STREQUAL Darwin)
    set(PLATFORM "macos")
else()
    set(PLATFORM "linux")
endif()

file(GLOB INJECTOR_SOURCES src/${PLATFORM}/*.c)
add_library(injector STATIC ${INJECTOR_SOURCES})

set_property(TARGET injector PROPERTY C_STANDART 99)
set_property(TARGET injector PROPERTY POSITION_INDEPENDENT_CODE ON)

set_target_properties(injector PROPERTIES OUTPUT_NAME injector)

install(FILES include/injector.h DESTIONATION include)
install(TARGETS injector)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
