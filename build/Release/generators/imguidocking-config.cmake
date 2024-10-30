########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(imguidocking_FIND_QUIETLY)
    set(imguidocking_MESSAGE_MODE VERBOSE)
else()
    set(imguidocking_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/imguidockingTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${imguidocking_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(imguidocking_VERSION_STRING "1.0")
set(imguidocking_INCLUDE_DIRS ${imguidocking_INCLUDE_DIRS_RELEASE} )
set(imguidocking_INCLUDE_DIR ${imguidocking_INCLUDE_DIRS_RELEASE} )
set(imguidocking_LIBRARIES ${imguidocking_LIBRARIES_RELEASE} )
set(imguidocking_DEFINITIONS ${imguidocking_DEFINITIONS_RELEASE} )

# Only the first installed configuration is included to avoid the collision
foreach(_BUILD_MODULE ${imguidocking_BUILD_MODULES_PATHS_RELEASE} )
    message(${imguidocking_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


