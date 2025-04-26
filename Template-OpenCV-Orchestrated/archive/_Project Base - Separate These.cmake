/*
 * Bernard's C++ / OpenCV Multi-Project Starter Base
 * Folder Structure:
 * 
 * GIT-REPO-PROJECT/
 * ├── .gitignore
 * ├── .gitattributes
 * ├── CMakeLists.txt   (parent)
 * ├── Project1/
 * │   ├── include/
 * │   │   └── project1.hpp
 * │   ├── src/
 * │   │   └── project1.cpp
 * │   ├── main.cpp
 * │   └── CMakeLists.txt
 * ├── Project2/
 * │   ├── include/
 * │   │   └── project2.hpp
 * │   ├── src/
 * │   │   └── project2.cpp
 * │   ├── main.cpp
 * │   └── CMakeLists.txt
 */

// === File: .gitignore ===
*/build/
*/CMakeFiles/
*/CMakeCache.txt
*/cmake_install.cmake
*/Makefile
*/.vscode/
*.o
*.obj
*.so
*.a
*.lib
*.dll
*.exe
*.out
*/opencv_cache.xml
*.suo
*.user
*.sdf
*.opensdf
*.cache
*.log
.DS_Store
Thumbs.db
desktop.ini
*.tmp
*.swp
*.bak
*.old
*.orig

// === File: .gitattributes ===
* text=auto
*.cpp text diff=cpp
*.hpp text diff=cpp
*.h text diff=cpp
*.txt text

// === File: CMakeLists.txt (Parent) ===
cmake_minimum_required(VERSION 3.16)
project(GitRepoProject)

set(CMAKE_CXX_STANDARD 17)

# Add each subdirectory (each Project)
add_subdirectory(Project1)
add_subdirectory(Project2)




// === File: Project1/CMakeLists.txt ===
project(Project1)

find_package(OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS})
file(GLOB SOURCES "src/*.cpp")

add_executable(Project1 main.cpp ${SOURCES})

target_link_libraries(Project1 ${OpenCV_LIBS})




// === File: Project2/CMakeLists.txt ===
project(Project2)

find_package(OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS})
file(GLOB SOURCES "src/*.cpp")

add_executable(Project2 main.cpp ${SOURCES})

target_link_libraries(Project2 ${OpenCV_LIBS})






// === File: Project1/main.cpp ===
#include "project1.hpp"
#include <iostream>

int main() {
    std::cout << "Hello from Project 1!" << std::endl;
    return 0;
}





// === File: Project1/include/project1.hpp ===
#pragma once

void project1_function();





// === File: Project1/src/project1.cpp ===
#include "project1.hpp"
#include <iostream>

void project1_function() {
    std::cout << "Project 1 function called!" << std::endl;
}









// === File: Project2/main.cpp ===
#include "project2.hpp"
#include <iostream>

int main() {
    std::cout << "Hello from Project 2!" << std::endl;
    return 0;
}




// === File: Project2/include/project2.hpp ===
#pragma once

void project2_function();




// === File: Project2/src/project2.cpp ===
#include "project2.hpp"
#include <iostream>

void project2_function() {
    std::cout << "Project 2 function called!" << std::endl;
}
