cmake_minimum_required(VERSION 3.16)
project(Template-OpenCV-Orchestrated)

set(CMAKE_CXX_STANDARD 17)

# Build root launcher
add_executable(Launcher main.cpp)

# Add each subdirectory (each Project)
add_subdirectory(Project1)
add_subdirectory(Project2)

# Optional: Install root launcher
install(TARGETS Launcher DESTINATION bin)