cmake_minimum_required(VERSION 3.15)
project(OpenGL-ModelLoading C CXX)

set(CMAKE_CXX_STANDARD 23)

# find_package(ZLIB REQUIRED)
# find_package(glfw3 REQUIRED)
# find_package(glad REQUIRED)
# find_package(assimp REQUIRED)
# find_package(imguidocking REQUIRED)

# add_executable(${PROJECT_NAME} src/main.cpp)

build_application(
    SOURCES
    src/main.cpp
    src/InputPoll.cpp

    PACKAGES
    glfw3
    glm
    glad
    imguidocking
    fmt
    assimp
    
    LINK_PACKAGES
    glfw
    glm::glm
    glad::glad
    imguidocking::imguidocking
    assimp::assimp
)

# target_link_libraries(${PROJECT_NAME}
#     imguidocking::imguidocking
#     glfw
#     glad::glad
#     assimp::assimp
# )
