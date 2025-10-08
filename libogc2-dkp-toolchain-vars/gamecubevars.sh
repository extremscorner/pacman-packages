. ${DEVKITPRO}/devkitppc.sh

export PORTLIBS_PREFIX=${DEVKITPRO}/libogc2/gamecube
export PORTLIBS_CUBE=${PORTLIBS_ROOT}/gamecube
export PORTLIBS_PPC=${PORTLIBS_ROOT}/ppc

export CFLAGS="-O2 -mogc -mcpu=750 -meabi -mhard-float -ffunction-sections -fdata-sections"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-D__GAMECUBE__ -I${PORTLIBS_PREFIX}/include -I${PORTLIBS_CUBE}/include -I${PORTLIBS_PPC}/include"
export LDFLAGS="-L${PORTLIBS_PREFIX}/lib -L${PORTLIBS_CUBE}/lib -L${PORTLIBS_PPC}/lib"
export LIBS="-logc -lm"

export PATH=${PORTLIBS_PREFIX}/bin:${PORTLIBS_CUBE}/bin:${PORTLIBS_PPC}/bin:$PATH
export ACLOCAL_PATH=${PORTLIBS_PREFIX}/share/aclocal:${PORTLIBS_CUBE}/share/aclocal:${PORTLIBS_PPC}/share/aclocal

export CMAKE=$(which ${TOOL_PREFIX}cmake)
export PKG_CONFIG=$(which ${TOOL_PREFIX}pkg-config)
