ABOUT:
---------------------------------------------------------------------
Modular class-based design (ImageLoader, ColorDetector, DisplayManager)
CMake setup ready for vcpkg + OpenCV integration


STRUCTURE:
---------------------------------------------------------------------
MyCVProject/
├── include/              # Header files (.hpp)
│   ├── ColorDetector.hpp
│   ├── DisplayManager.hpp
│   └── ImageLoader.hpp
├── src/                  # Source files (.cpp)
│   ├── ColorDetector.cpp
│   ├── DisplayManager.cpp
│   └── ImageLoader.cpp
├── build/				  # <-- Build output
│   └── MyCVProject.exe
├── main.cpp
├── CMakeLists.txt
├── CMakeSettings.json


BUILD & RUN
---------------------------------------------------------------------
📢 (if inside Visual Studio) Build > Build All because Visual Studio already configured CMake for you when you opened the folder and clicked "Configure Cache"

📢 (inside code editor and powershell)
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=D:/Library/vcpkg/scripts/buildsystems/vcpkg.cmake
cmake --build .

***** Replace the DCMAKE_TOOLCHAIN_FILE path with your actual vcpkg path if different. ******


📢 TIP
---------------------------------------------------------------------
When CMake asks about a "kit" or compiler, make sure it’s using Visual Studio 2022 - x64 (not x86).

