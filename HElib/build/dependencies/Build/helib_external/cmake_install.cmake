# Install script for directory: /Users/fdl9/Desktop/HElib/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/fdl9/Desktop/HElib/build/helib_pack")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "lib" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/lib/libhelib.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhelib.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhelib.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libhelib.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "lib" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/helib" TYPE FILE FILES
    "/Users/fdl9/Desktop/HElib/include/helib/helib.h"
    "/Users/fdl9/Desktop/HElib/include/helib/apiAttributes.h"
    "/Users/fdl9/Desktop/HElib/include/helib/ArgMap.h"
    "/Users/fdl9/Desktop/HElib/include/helib/binaryArith.h"
    "/Users/fdl9/Desktop/HElib/include/helib/binaryCompare.h"
    "/Users/fdl9/Desktop/HElib/include/helib/bluestein.h"
    "/Users/fdl9/Desktop/HElib/include/helib/ClonedPtr.h"
    "/Users/fdl9/Desktop/HElib/include/helib/CModulus.h"
    "/Users/fdl9/Desktop/HElib/include/helib/CtPtrs.h"
    "/Users/fdl9/Desktop/HElib/include/helib/Ctxt.h"
    "/Users/fdl9/Desktop/HElib/include/helib/debugging.h"
    "/Users/fdl9/Desktop/HElib/include/helib/DoubleCRT.h"
    "/Users/fdl9/Desktop/HElib/include/helib/EncryptedArray.h"
    "/Users/fdl9/Desktop/HElib/include/helib/EvalMap.h"
    "/Users/fdl9/Desktop/HElib/include/helib/Context.h"
    "/Users/fdl9/Desktop/HElib/include/helib/FHE.h"
    "/Users/fdl9/Desktop/HElib/include/helib/keys.h"
    "/Users/fdl9/Desktop/HElib/include/helib/keySwitching.h"
    "/Users/fdl9/Desktop/HElib/include/helib/log.h"
    "/Users/fdl9/Desktop/HElib/include/helib/hypercube.h"
    "/Users/fdl9/Desktop/HElib/include/helib/IndexMap.h"
    "/Users/fdl9/Desktop/HElib/include/helib/IndexSet.h"
    "/Users/fdl9/Desktop/HElib/include/helib/intraSlot.h"
    "/Users/fdl9/Desktop/HElib/include/helib/JsonWrapper.h"
    "/Users/fdl9/Desktop/HElib/include/helib/matching.h"
    "/Users/fdl9/Desktop/HElib/include/helib/matmul.h"
    "/Users/fdl9/Desktop/HElib/include/helib/Matrix.h"
    "/Users/fdl9/Desktop/HElib/include/helib/multicore.h"
    "/Users/fdl9/Desktop/HElib/include/helib/norms.h"
    "/Users/fdl9/Desktop/HElib/include/helib/NumbTh.h"
    "/Users/fdl9/Desktop/HElib/include/helib/PAlgebra.h"
    "/Users/fdl9/Desktop/HElib/include/helib/partialMatch.h"
    "/Users/fdl9/Desktop/HElib/include/helib/permutations.h"
    "/Users/fdl9/Desktop/HElib/include/helib/polyEval.h"
    "/Users/fdl9/Desktop/HElib/include/helib/PolyMod.h"
    "/Users/fdl9/Desktop/HElib/include/helib/PolyModRing.h"
    "/Users/fdl9/Desktop/HElib/include/helib/powerful.h"
    "/Users/fdl9/Desktop/HElib/include/helib/primeChain.h"
    "/Users/fdl9/Desktop/HElib/include/helib/PtrMatrix.h"
    "/Users/fdl9/Desktop/HElib/include/helib/PtrVector.h"
    "/Users/fdl9/Desktop/HElib/include/helib/Ptxt.h"
    "/Users/fdl9/Desktop/HElib/include/helib/query.h"
    "/Users/fdl9/Desktop/HElib/include/helib/randomMatrices.h"
    "/Users/fdl9/Desktop/HElib/include/helib/range.h"
    "/Users/fdl9/Desktop/HElib/include/helib/recryption.h"
    "/Users/fdl9/Desktop/HElib/include/helib/replicate.h"
    "/Users/fdl9/Desktop/HElib/include/helib/sample.h"
    "/Users/fdl9/Desktop/HElib/include/helib/scheme.h"
    "/Users/fdl9/Desktop/HElib/include/helib/set.h"
    "/Users/fdl9/Desktop/HElib/include/helib/SumRegister.h"
    "/Users/fdl9/Desktop/HElib/include/helib/tableLookup.h"
    "/Users/fdl9/Desktop/HElib/include/helib/timing.h"
    "/Users/fdl9/Desktop/HElib/include/helib/zzX.h"
    "/Users/fdl9/Desktop/HElib/include/helib/assertions.h"
    "/Users/fdl9/Desktop/HElib/include/helib/exceptions.h"
    "/Users/fdl9/Desktop/HElib/include/helib/PGFFT.h"
    "/Users/fdl9/Desktop/HElib/include/helib/fhe_stats.h"
    "/Users/fdl9/Desktop/HElib/include/helib/zeroValue.h"
    "/Users/fdl9/Desktop/HElib/include/helib/EncodedPtxt.h"
    "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/helib/version.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "lib" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/helib/helibTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/helib/helibTargets.cmake"
         "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/CMakeFiles/Export/ab2aafcc98cb43a5e26f9343848858d7/helibTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/helib/helibTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/helib/helibTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/helib" TYPE FILE FILES "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/CMakeFiles/Export/ab2aafcc98cb43a5e26f9343848858d7/helibTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/helib" TYPE FILE FILES "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/CMakeFiles/Export/ab2aafcc98cb43a5e26f9343848858d7/helibTargets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/helib" TYPE FILE FILES
    "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/helibConfig.cmake"
    "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/helibConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/fdl9/Desktop/HElib/build/dependencies/Build/helib_external/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
