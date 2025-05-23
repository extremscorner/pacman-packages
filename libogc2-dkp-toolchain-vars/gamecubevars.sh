. ${DEVKITPRO}/devkitppc.sh

export PORTLIBS_PREFIX=${PORTLIBS_ROOT}/gamecube
export PORTLIBS_PPC=${PORTLIBS_ROOT}/ppc
export PORTLIBS_CUBE=${PORTLIBS_PREFIX}

export CFLAGS="-O2 -mogc -mcpu=750 -meabi -mhard-float -ffunction-sections -fdata-sections"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-D__GAMECUBE__ -I${PORTLIBS_CUBE}/include -I${PORTLIBS_PPC}/include -I${DEVKITPRO}/libogc2/include"
export LDFLAGS="-L${PORTLIBS_CUBE}/lib -L${PORTLIBS_PPC}/lib -L${DEVKITPRO}/libogc2/lib/cube"
export LIBS="-logc -lm"

export PATH=${PORTLIBS_CUBE}/bin:${PORTLIBS_PPC}/bin:$PATH
export ACLOCAL_PATH=${PORTLIBS_CUBE}/share/aclocal:${PORTLIBS_PPC}/share/aclocal

export CMAKE=$(which ${TOOL_PREFIX}cmake)
export PKG_CONFIG=$(which ${TOOL_PREFIX}pkg-config)
