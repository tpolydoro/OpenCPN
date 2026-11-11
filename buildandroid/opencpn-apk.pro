QT += core gui opengl widgets androidextras

TARGET = opencpn
TEMPLATE = app
CONFIG += release

SOURCES += $$PWD/apk_wrapper.cpp

# The application and its wxWidgets implementation are built by CMake.
OCPN_BUILD = $$PWD/../build-android-armhf
WX_ROOT = $$PWD/../cache/OCPNAndroidCoreBuildSupport/wxWidgets

INCLUDEPATH += $$WX_ROOT/include
INCLUDEPATH += $$WX_INCLUDE
LIBS += -L$$OCPN_BUILD -lgorp

ANDROID_ABIS = armeabi-v7a
ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
ANDROID_EXTRA_LIBS += $$OCPN_BUILD/libgorp.so

s57.files = \
    $$PWD/../data/s57data/chartsymbols.xml \
    $$PWD/../data/s57data/attdecode.csv \
    $$PWD/../data/s57data/rastersymbols-dark.png \
    $$PWD/../data/s57data/rastersymbols-day.png \
    $$PWD/../data/s57data/rastersymbols-dusk.png \
    $$PWD/../data/s57data/s57attributes.csv \
    $$PWD/../data/s57data/s57expectedinput.csv \
    $$PWD/../data/s57data/s57objectclasses.csv
s57.path = /assets/s57data
INSTALLS += s57

gshhs.files = \
    $$PWD/../data/gshhs/wdb_borders_c.b \
    $$PWD/../data/gshhs/wdb_rivers_c.b \
    $$PWD/../data/gshhs/poly-c-1.dat
gshhs.path = /assets/gshhs
INSTALLS += gshhs

styles.files = $$PWD/../resources/bitmaps/styles.xml
styles.path = /assets/uidata
INSTALLS += styles

tcdata.files = \
    $$PWD/../data/tcdata/HARMONICS_NO_US.IDX \
    $$PWD/../data/tcdata/HARMONICS_NO_US
tcdata.path = /assets/tcdata
INSTALLS += tcdata

license.files = $$PWD/../data/license.txt
license.path = /assets
INSTALLS += license

sounds.files = \
    $$PWD/../data/sounds/1bells.wav \
    $$PWD/../data/sounds/2bells.wav
sounds.path = /assets/sounds
INSTALLS += sounds

docs.files = $$PWD/../data/doc
docs.path = /assets/doc
INSTALLS += docs

wmm.files = $$PWD/../plugins/wmm_pi/data/WMM.COF
wmm.path = /assets/plugins/wmm_pi/data
INSTALLS += wmm
