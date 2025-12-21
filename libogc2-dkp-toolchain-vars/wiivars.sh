. ${DEVKITPRO}/devkitppc.sh

export PORTLIBS_PREFIX=${DEVKITPRO}/libogc2/wii
export PORTLIBS_WII=${PORTLIBS_ROOT}/wii
export PORTLIBS_PPC=${PORTLIBS_ROOT}/ppc

export CFLAGS="-g -O2 -mrvl -mcpu=750 -meabi -msdata=sysv -mhard-float -ffunction-sections -fdata-sections"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-D__WII__ -I${PORTLIBS_PREFIX}/include -I${PORTLIBS_WII}/include -I${PORTLIBS_PPC}/include"
export LDFLAGS="-L${PORTLIBS_PREFIX}/lib -L${PORTLIBS_WII}/lib -L${PORTLIBS_PPC}/lib"
export LIBS="-logc -lm"

export PATH=${PORTLIBS_PREFIX}/bin:${PORTLIBS_WII}/bin:${PORTLIBS_PPC}/bin:$PATH
export ACLOCAL_PATH=${PORTLIBS_PREFIX}/share/aclocal:${PORTLIBS_WII}/share/aclocal:${PORTLIBS_PPC}/share/aclocal

export CMAKE=$(which ${TOOL_PREFIX}cmake)
export PKG_CONFIG=$(which ${TOOL_PREFIX}pkg-config)
