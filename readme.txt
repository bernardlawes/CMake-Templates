GITREPO-FOLDER/
├── .gitignore          <-- Only one here
├── .gitattributes      <-- Only one here
├── Template-OpenCV-Modular/
│   ├── CMakeLists.txt
│   ├── Project1/
│   └── Project2/
├── Template-OpenCV-Orchestrated/
│   ├── CMakeLists.txt
│   ├── main.cpp
│   ├── Project1/
│   └── Project2/
└── Template-OpenCV-Standalone/
    ├── CMakeLists.txt
    ├── main.cpp
    ├── src/
    └── include/




GITREPO-FOLDER/
├──Template-OpenCV-Modular/
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
├──Template-OpenCV-Modular/
    ├── .gitignore
    ├── .gitattributes
    ├── main.cpp
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
├──Template-OpenCV-Standalone/
    ├── include/              
    │   ├── project1.hpp
    ├── src/                
    │   ├── project1.cpp
    ├── build/				  
    │   └── Template-Standalone.exe
    ├── main.cpp
    ├── CMakeLists.txt
    ├── CMakeSettings.json