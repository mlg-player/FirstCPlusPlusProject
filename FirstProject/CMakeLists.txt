# CMakeList.txt : CMake project for FirstProject, include source and define
# project specific logic here.
#

# Add source to this project's executable.
add_executable (FirstProject "FirstProject.cpp" "FirstProject.h")

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET FirstProject PROPERTY CXX_STANDARD 20)
endif()

find_package(SDL2 CONFIG REQUIRED)
target_link_libraries(FirstProject
    PRIVATE
    $<TARGET_NAME_IF_EXISTS:SDL2::SDL2main>
    $<IF:$<TARGET_EXISTS:SDL2::SDL2>,SDL2::SDL2,SDL2::SDL2-static>
)
# TODO: Add tests and install targets if needed.
