# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/fdl9/Desktop/HElib/build/dependencies/Source/ntl_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Build/ntl_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Install/ntl_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/tmp/ntl_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/ntl_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Download/ntl_fetched"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/ntl_fetched"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/ntl_fetched/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/ntl_fetched${cfgdir}") # cfgdir has leading slash
endif()
