
# This is used to install any missing dependencies, or installing all of the new dependencies
# This command must be executed outside build directory.
conan install . --output-folder=build --build=missing

# To build using conan in Release mode
# Used for compiling using COnan
# cmake -Bbuild -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake -B build -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build build/