add_executable (FirstProject "FirstProject.cpp" "FirstProject.h" "ChessItem/ChessItem.cpp")

if (CMAKE_VERSION VERSION_GREATER 3.12)
  set_property(TARGET FirstProject PROPERTY CXX_STANDARD 20)
endif()

find_package(SDL2 CONFIG REQUIRED)
find_package(NanoSVG CONFIG REQUIRED)
find_package(jsoncpp CONFIG REQUIRED)
target_link_libraries(FirstProject
    PRIVATE
    $<TARGET_NAME_IF_EXISTS:SDL2::SDL2main>
    $<IF:$<TARGET_EXISTS:SDL2::SDL2>,SDL2::SDL2,SDL2::SDL2-static>
    NanoSVG::nanosvg NanoSVG::nanosvgrast
    JsonCpp::JsonCpp
)

add_subdirectory ("resources")
add_subdirectory ("ChessItem")
