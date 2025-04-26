✅ Modular C++ multi-project monorepo
✅ Unified CMake build system
✅ Clean Git management (.gitignore, .gitattributes)
✅ Interactive launcher (menu-driven)
✅ Double-click .bat for fast access


Template-OpenCV-Modular/
    ├── .gitignore
    ├── .gitattributes
    ├── CMakeLists.txt   (parent)
    ├── Project1/
    │   ├── include/
    │   │   └── project1.hpp
    │   ├── src/
    │   │   └── project1.cpp
    │   ├── main.cpp
    │   └── CMakeLists.txt
    ├── Project2/
    │   ├── include/
    │   │   └── project2.hpp
    │   ├── src/
    │   │   └── project2.cpp
    │   ├── main.cpp
    │   └── CMakeLists.txt

    
# This powershell script provides a simple menu to run different C++ projects built with Visual Studio Code.
# It assumes that the projects are built and the executables are located in a specified build folder.
# Make sure to update the $buildPath variable to point to your actual build folder.
# This script is designed to be run in a PowerShell environment.
# It provides a menu to select which project to run, and it will execute the selected project's executable.
# Ensure you have the necessary permissions to execute scripts in your PowerShell environment.


Building
=======================
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake .. -DCMAKE_INSTALL_PREFIX=D:/Repositories/Apps/C++/Cpp-OpenCV-Toolkit/install -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake  (using this one sets folder for where i want it installed)
cmake --build .
cmake --install .
cmake --install . --prefix "D:/Repositories/Apps/C++/Cpp-OpenCV-Toolkit/install" (alternatively, to doing it at the cmake step, i could set it here)


NOTES (Debug vs Release)
=======================
cmake --build .	    (Debug build (if config specified))
cmake --install .	( Assumes Release unless you manually override)

cmake --build . --config Debug
cmake --install . --config Debug

Configure	-DCMAKE_BUILD_TYPE=Debug	-DCMAKE_BUILD_TYPE=Release
Build	cmake --build . --config Debug	cmake --build . --config Release
Install	cmake --install . --config Debug	cmake --install . --config Release


FINAL BUILD METHOD
=======================
cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=D:/Repositories/Apps/C++/Cpp-OpenCV-Toolkit/install -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build . --config Debug
cmake --install . --config Debug

        OR
    
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=D:/Repositories/Apps/C++/Cpp-OpenCV-Toolkit/install -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build . --config Release
cmake --install . --config Release


TIP
========================
Debug	- Includes debug symbols
        - Slower
        - Easier to debug
Release	- Optimized for speed
        - Smaller size
        - No debugging info



EXAMPLE RUN:

=======================
Select a Project to Run:
1. Project1.exe
2. Project2.exe
3. Project3.exe
0. Exit
=======================
Enter your choice: 2

Running D:/path/to/your/build/Project2/Debug/Project2.exe...


If you build Release mode later, just adjust the paths:
"Project1/Release/Project1.exe"