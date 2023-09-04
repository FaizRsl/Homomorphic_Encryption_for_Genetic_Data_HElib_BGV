cmake_minimum_required(VERSION 3.17)
project(helibTest)  # Replace "YourProjectName" with your actual project name

set(CMAKE_CXX_STANDARD 17)  # Or use the appropriate C++ version
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

# Add all your source files here
add_executable(main main.cpp comparator.cpp tools.cpp)  # Add all your .cpp files here

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g")

# Set the path to the TFHE library
set(GMP_LIBRARY "/Users/fdl9/Desktop/FYP_HElib/HElib/helib_pack/lib/libgmp.dylib/")
set(NTL_LIBRARY "/Users/fdl9/Desktop/FYP_HElib/HElib/helib_pack/lib/libntl.dylib/")
set(GMP_LIBRARY_DIR "/Users/fdl9/Desktop/FYP_HElib/HElib/helib_pack/")
set(HELIB_LIBRARY_DIR "/Users/fdl9/Desktop/FYP_HElib/HElib/helib_pack/")

# Add the TFHE include directory to the header search paths
include_directories(${HELIB_LIBRARY_DIR}/include)

# Link your executable with the TFHE library
target_link_libraries(main
        "${HELIB_LIBRARY_DIR}/lib/libhelib.a"
        "${GMP_LIBRARY_DIR}/lib/libgmp.10.dylib"
        "${GMP_LIBRARY_DIR}/lib/libntl.44.dylib"
        ${GMP_LIBRARY}
        ${NTL_LIBRARY}
)
