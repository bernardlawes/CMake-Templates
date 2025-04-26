project(Project2)

find_package(OpenCV REQUIRED)

include_directories(include ${OpenCV_INCLUDE_DIRS})
file(GLOB SOURCES "src/*.cpp")

add_executable(Project2 main.cpp ${SOURCES})

target_link_libraries(Project2 ${OpenCV_LIBS})

install(TARGETS Project2 DESTINATION bin)