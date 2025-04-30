cmake_minimum_required(VERSION 3.16)
project(Template_OpenCV_Standalone)

set(CMAKE_CXX_STANDARD 17)

# Locate OpenCV via vcpkg
find_package(OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS})

file(GLOB SOURCES "src/*.cpp")

add_executable(${PROJECT_NAME} main.cpp ${SOURCES})

target_link_libraries(${PROJECT_NAME} ${OpenCV_LIBS})

# Install this single executable
install(TARGETS Template_OpenCV_Standalone DESTINATION bin)