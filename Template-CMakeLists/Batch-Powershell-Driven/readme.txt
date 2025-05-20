ABOUT:
---------------------------------------------------------------------
Modular class-based design Template for a Standalone Project
CMake setup ready for vcpkg + OpenCV integration


STRUCTURE:
---------------------------------------------------------------------
Template-Standalone/
├── include/              	# Header files (.hpp)
│   ├── src1.hpp
├── src/                  	# Source files (.cpp)
│   ├── src1.cpp
├── build/				  	# <-- Build output
│   └── Build Output
├── install/				# <-- Executable Folder
│   └── bin/
│		└── application.exe
│		└── OpenCV DLLs
├── main.cpp
├── CMakeLists.txt
├── CMakeSettings.json


BUILD
---------------------------------------------------------------------
(inside Visual Studio) Build > Build All because Visual Studio already configured CMake for you when you opened the folder and clicked "Configure Cache"

(inside code editor and powershell)

Option 1 (AUTO): 
Use run full-rebuild-debug.bat  OR full-rebuild-release.bat 

Option 2 (MANUAL: 

mkdir build
cd build

cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=D:/Repositories/Apps/C++/❌YOUR-PROJECT-FOLDER-NAME❌/install -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build . --config Debug
cmake --install . --config Debug

or

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=D:/Repositories/Apps/C++/❌YOUR-PROJECT-FOLDER-NAME❌/install -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build . --config Release
cmake --install . --config Release


📢 PRO TIPS
---------------------------------------------------------------------
1. Replace the DCMAKE_TOOLCHAIN_FILE path with your actual vcpkg path if different.
2. If CMake asks about a "kit" or compiler, make sure it’s using Visual Studio 2022 - x64 (not x86).
