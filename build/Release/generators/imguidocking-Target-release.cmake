# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(imguidocking_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(imguidocking_FRAMEWORKS_FOUND_RELEASE "${imguidocking_FRAMEWORKS_RELEASE}" "${imguidocking_FRAMEWORK_DIRS_RELEASE}")

set(imguidocking_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET imguidocking_DEPS_TARGET)
    add_library(imguidocking_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET imguidocking_DEPS_TARGET
             PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${imguidocking_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${imguidocking_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:make::make;glfw;opengl::opengl>
             APPEND)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### imguidocking_DEPS_TARGET to all of them
conan_package_library_targets("${imguidocking_LIBS_RELEASE}"    # libraries
                              "${imguidocking_LIB_DIRS_RELEASE}" # package_libdir
                              "${imguidocking_BIN_DIRS_RELEASE}" # package_bindir
                              "${imguidocking_LIBRARY_TYPE_RELEASE}"
                              "${imguidocking_IS_HOST_WINDOWS_RELEASE}"
                              imguidocking_DEPS_TARGET
                              imguidocking_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "imguidocking"    # package_name
                              "${imguidocking_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${imguidocking_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET imguidocking::imguidocking
                 PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${imguidocking_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${imguidocking_LIBRARIES_TARGETS}>
                 APPEND)

    if("${imguidocking_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET imguidocking::imguidocking
                     PROPERTY INTERFACE_LINK_LIBRARIES
                     imguidocking_DEPS_TARGET
                     APPEND)
    endif()

    set_property(TARGET imguidocking::imguidocking
                 PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${imguidocking_LINKER_FLAGS_RELEASE}> APPEND)
    set_property(TARGET imguidocking::imguidocking
                 PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${imguidocking_INCLUDE_DIRS_RELEASE}> APPEND)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET imguidocking::imguidocking
                 PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${imguidocking_LIB_DIRS_RELEASE}> APPEND)
    set_property(TARGET imguidocking::imguidocking
                 PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${imguidocking_COMPILE_DEFINITIONS_RELEASE}> APPEND)
    set_property(TARGET imguidocking::imguidocking
                 PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${imguidocking_COMPILE_OPTIONS_RELEASE}> APPEND)

########## For the modules (FindXXX)
set(imguidocking_LIBRARIES_RELEASE imguidocking::imguidocking)
