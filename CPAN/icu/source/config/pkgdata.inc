GENCCODE_ASSEMBLY_TYPE=-a gcc
SO=so
SOBJ=so
A=a
LIBPREFIX=lib
LIB_EXT_ORDER=.58.2
COMPILE=gcc -D_REENTRANT  -DU_HAVE_ELF_H=1 -DU_HAVE_ATOMIC=0 -DU_HAVE_STRTOD_L=0  -DU_ATTRIBUTE_DEPRECATED= -O1 -fPIC -D_XPG6 -DU_USING_ICU_NAMESPACE=0 -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings   -c
LIBFLAGS=-I/export/home/software/github.com/slimserver-vendor.git/CPAN/build/include -DPIC -fPIC
GENLIB=gcc -O1 -fPIC -D_XPG6 -DU_USING_ICU_NAMESPACE=0 -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings   -fPIC    -shared -Wl,-Bsymbolic
LDICUDTFLAGS=-nodefaultlibs -nostdlib
LD_SONAME=-h
RPATH_FLAGS=
BIR_LDFLAGS=
AR=ar
ARFLAGS=r
RANLIB=ranlib
INSTALL_CMD=/usr/gnu/bin/install -c
