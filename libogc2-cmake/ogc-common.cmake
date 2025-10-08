cmake_minimum_required(VERSION 3.13)

if("${CMAKE_SYSTEM_NAME}" STREQUAL "NintendoWii")
    set(OGC_CONSOLE wii)
    set(OGC_SUBDIR wii)
    set(OGC_MACHINE rvl)
elseif("${CMAKE_SYSTEM_NAME}" STREQUAL "NintendoGameCube")
    set(OGC_CONSOLE gamecube)
    set(OGC_SUBDIR cube)
    set(OGC_MACHINE ogc)
else()
    message(FATAL_ERROR "Unsupported OGC platform")
endif()

if(NOT DKP_OGC_PLATFORM_LIBRARY)
    set(DKP_OGC_PLATFORM_LIBRARY libogc2)
endif()

# Import devkitPPC toolchain
include(${CMAKE_CURRENT_LIST_DIR}/devkitPPC.cmake)

list(APPEND CMAKE_TRY_COMPILE_PLATFORM_VARIABLES DKP_OGC_PLATFORM_LIBRARY)

if("${DKP_OGC_PLATFORM_LIBRARY}" STREQUAL "libogc")
    set(OGC_ROOT "${DEVKITPRO}/libogc")
    set(DKP_INSTALL_PREFIX_INIT ${DEVKITPRO}/portlibs/${OGC_CONSOLE})
elseif("${DKP_OGC_PLATFORM_LIBRARY}" STREQUAL "libogc2")
    set(OGC_SUBDIR "")
    set(OGC_ROOT "${DEVKITPRO}/libogc2/${OGC_CONSOLE}")
    set(DKP_INSTALL_PREFIX_INIT ${OGC_ROOT})
else()
    message(FATAL_ERROR "Unsupported OGC platform library: '${DKP_OGC_PLATFORM_LIBRARY}'")
endif()

__dkp_platform_prefix(
    ${OGC_ROOT}
    ${DEVKITPRO}/portlibs/${OGC_CONSOLE}
    ${DEVKITPRO}/portlibs/ppc
)

find_program(PKG_CONFIG_EXECUTABLE NAMES powerpc-eabi-pkg-config HINTS "${DEVKITPRO}/portlibs/${OGC_CONSOLE}/bin")
if (NOT PKG_CONFIG_EXECUTABLE)
    message(FATAL_ERROR "Could not find powerpc-eabi-pkg-config: try installing ${OGC_CONSOLE}-pkg-config")
endif()

find_program(ELF2DOL_EXE NAMES elf2dol HINTS "${DEVKITPRO}/tools/bin")
find_program(GCDSPTOOL_EXE NAMES gcdsptool HINTS "${DEVKITPRO}/tools/bin")
find_program(GXTEXCONV_EXE NAMES gxtexconv HINTS "${DEVKITPRO}/tools/bin")
