CROSS_ICU_VERSION=58.2
TOOLEXEEXT=
TOOLBINDIR=$(cross_buildroot)/bin
TOOLLIBDIR=$(cross_buildroot)/lib
INVOKE=LD_LIBRARY_PATH=$(TOOLLIBDIR):$(cross_buildroot)/stubdata:$(cross_buildroot)/tools/ctestfw:$$LD_LIBRARY_PATH
PKGDATA_INVOKE=LD_LIBRARY_PATH=$(cross_buildroot)/stubdata:$(cross_buildroot)/tools/ctestfw:$(TOOLLIBDIR):$$LD_LIBRARY_PATH 

