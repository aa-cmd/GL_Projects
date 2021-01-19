cmake_minimum_required(VERSION 2.8)

project(Breakout_Origin)

set(PROJECT_DIR ${CMAKE_SOURCE_DIR})

set(PROJECT_INCLUDE_DIR
                ${PROJECT_DIR}/include)

set(PROJECT_SOURCE_DIR ${PROJECT_DIR}/src)

set( PROJECT_SOURCES
                ${PROJECT_SOURCE_DIR}/main.cpp
                ${PROJECT_SOURCE_DIR}/game.cpp
                ${PROJECT_SOURCE_DIR}/glad.c
                ${PROJECT_SOURCE_DIR}/shader.cpp
                ${PROJECT_SOURCE_DIR}/texture.cpp
                ${PROJECT_SOURCE_DIR}/resource_manager.cpp)

set( PROJECT_HEADERS
                ${PROJECT_INCLUDE_DIR}/glad.h
                ${PROJECT_INCLUDE_DIR}/game.h
                ${PROJECT_INCLUDE_DIR}/resource_manager.h
                ${PROJECT_INCLUDE_DIR}/shader.h
                ${PROJECT_INCLUDE_DIR}/stb_image.h
                ${PROJECT_INCLUDE_DIR}/texture.h)                

find_package(glfw3 3.3 REQUIRED)

include_directories(${PROJECT_INCLUDE_DIR})

add_executable(${PROJECT_NAME} ${PROJECT_SOURCES})

target_link_libraries(${PROJECT_NAME} glfw)