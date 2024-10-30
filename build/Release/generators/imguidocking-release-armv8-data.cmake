########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(imguidocking_COMPONENT_NAMES "")
list(APPEND imguidocking_FIND_DEPENDENCY_NAMES make glfw3 opengl_system)
list(REMOVE_DUPLICATES imguidocking_FIND_DEPENDENCY_NAMES)
set(make_FIND_MODE "NO_MODULE")
set(glfw3_FIND_MODE "NO_MODULE")
set(opengl_system_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(imguidocking_PACKAGE_FOLDER_RELEASE "/Users/aaronher/.conan2/p/b/imgui36adcca44befa/p")
set(imguidocking_BUILD_MODULES_PATHS_RELEASE )


set(imguidocking_INCLUDE_DIRS_RELEASE "${imguidocking_PACKAGE_FOLDER_RELEASE}/./")
set(imguidocking_RES_DIRS_RELEASE )
set(imguidocking_DEFINITIONS_RELEASE )
set(imguidocking_SHARED_LINK_FLAGS_RELEASE )
set(imguidocking_EXE_LINK_FLAGS_RELEASE )
set(imguidocking_OBJECTS_RELEASE )
set(imguidocking_COMPILE_DEFINITIONS_RELEASE )
set(imguidocking_COMPILE_OPTIONS_C_RELEASE )
set(imguidocking_COMPILE_OPTIONS_CXX_RELEASE )
set(imguidocking_LIB_DIRS_RELEASE "${imguidocking_PACKAGE_FOLDER_RELEASE}/lib")
set(imguidocking_BIN_DIRS_RELEASE )
set(imguidocking_LIBRARY_TYPE_RELEASE STATIC)
set(imguidocking_IS_HOST_WINDOWS_RELEASE 0)
set(imguidocking_LIBS_RELEASE imgui)
set(imguidocking_SYSTEM_LIBS_RELEASE )
set(imguidocking_FRAMEWORK_DIRS_RELEASE )
set(imguidocking_FRAMEWORKS_RELEASE )
set(imguidocking_BUILD_DIRS_RELEASE )
set(imguidocking_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(imguidocking_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${imguidocking_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${imguidocking_COMPILE_OPTIONS_C_RELEASE}>")
set(imguidocking_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${imguidocking_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${imguidocking_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${imguidocking_EXE_LINK_FLAGS_RELEASE}>")


set(imguidocking_COMPONENTS_RELEASE )