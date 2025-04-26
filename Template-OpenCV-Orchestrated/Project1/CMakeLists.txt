project(Project1)

find_package(OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS})
file(GLOB SOURCES "src/*.cpp")

add_executable(Project1 main.cpp ${SOURCES})

target_link_libraries(Project1 ${OpenCV_LIBS})

install(TARGETS Project1 DESTINATION bin)