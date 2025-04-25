. ${DEVKITPRO}/devkitppc.sh

export PORTLIBS_PREFIX=${PORTLIBS_ROOT}/wii
export PORTLIBS_PPC=${PORTLIBS_ROOT}/ppc
export PORTLIBS_WII=${PORTLIBS_PREFIX}

export CFLAGS="-O2 -mrvl -mcpu=750 -meabi -mhard-float -ffunction-sections -fdata-sections"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-D__WII__ -I${PORTLIBS_WII}/include -I${PORTLIBS_PPC}/include -I${DEVKITPRO}/libogc2/include"
export LDFLAGS="-L${PORTLIBS_WII}/lib -L${PORTLIBS_PPC}/lib -L${DEVKITPRO}/libogc2/lib/wii"
export LIBS="-logc -lm"

export PATH=${PORTLIBS_WII}/bin:${PORTLIBS_PPC}/bin:$PATH
export ACLOCAL_PATH=${PORTLIBS_WII}/share/aclocal:${PORTLIBS_PPC}/share/aclocal

export PKG_CONFIG=$(which ${TOOL_PREFIX}pkg-config)
