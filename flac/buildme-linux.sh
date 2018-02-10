#!/bin/sh

OGG=1.1.3
FLAC=1.2.1
LOG=$PWD/config.log
CHANGENO=` svn info .  | grep -i Revision | awk -F": " '{print $2}'`
ARCH=`arch`
OUTPUT=$PWD/flac-build-$ARCH-$CHANGENO

# Clean up
rm -rf $OUTPUT
rm -rf flac-$FLAC

## Start
echo "Most log mesages sent to $LOG... only 'errors' displayed here"
date > $LOG

## Build Ogg first
echo "Untarring libogg-$OGG.tar.gz..."
tar -zxf libogg-$OGG.tar.gz
cd libogg-$OGG
. ../../CPAN/update-config.sh
echo "Configuring..."
./configure --disable-shared >> $LOG
echo "Running make..."
make >> $LOG
cd ..

## Build
echo "Untarring..."
tar zxvf flac-$FLAC.tar.gz >> $LOG
cd flac-$FLAC >> $LOG
. ../../CPAN/update-config.sh
patch -p0 < ../sc.patch >> $LOG
patch -p0 < ../triode-ignore-wav-length.patch >> $LOG
patch -p0 < ../steven-allow-bad-ssnd-chunk-size.patch >> $LOG
echo "Configuring..."
./configure --with-ogg-includes=$PWD/../libogg-$OGG/include --with-ogg-libraries=$PWD/../libogg-$OGG/src/.libs/ --disable-doxygen-docs --disable-shared --disable-xmms-plugin --disable-cpplibs --prefix $OUTPUT >> $LOG
echo "Running make"
make >> $LOG
echo "Running make install"
make install >> $LOG
cd ..

## Tar the whole package up
tar -zcvf $OUTPUT.tgz $OUTPUT
rm -rf $OUTPUT
rm -rf flac-$FLAC
rm -rf libogg-$OGG
