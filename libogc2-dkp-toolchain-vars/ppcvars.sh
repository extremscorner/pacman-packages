. ${DEVKITPRO}/devkitppc.sh

export PORTLIBS_PREFIX=${PORTLIBS_ROOT}/ppc

export CFLAGS="-O2 -mcpu=750 -meabi -mhard-float -ffunction-sections -fdata-sections"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-I${PORTLIBS_PREFIX}/include"
export LDFLAGS="-L${PORTLIBS_PREFIX}/lib"

export PATH=${PORTLIBS_PREFIX}/bin:$PATH
export ACLOCAL_PATH=${PORTLIBS_PREFIX}/share/aclocal

export CMAKE=$(which ${TOOL_PREFIX}cmake)
export PKG_CONFIG=$(which ${TOOL_PREFIX}pkg-config)
