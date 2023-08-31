# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/fdl9/Desktop/HElib/build/dependencies/Source/gmp_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Build/gmp_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Install/gmp_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/tmp/gmp_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/gmp_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Download/gmp_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/gmp_fetched"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/gmp_fetched/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/gmp_fetched${cfgdir}") # cfgdir has leading slash
endif()
