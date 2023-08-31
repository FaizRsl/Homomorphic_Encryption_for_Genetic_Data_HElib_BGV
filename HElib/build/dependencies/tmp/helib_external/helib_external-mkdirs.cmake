# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/fdl9/Desktop/HElib/src"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Install/helib_external"
  "/Users/fdl9/Desktop/HElib/build/dependencies/tmp/helib_external"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/helib_external"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Download/helib_external"
  "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/helib_external"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/helib_external/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/fdl9/Desktop/HElib/build/dependencies/Stamp/helib_external${cfgdir}") # cfgdir has leading slash
endif()
