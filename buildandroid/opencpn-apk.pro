QT += core gui opengl widgets androidextras

TARGET = opencpn
TEMPLATE = app
CONFIG += release

SOURCES += $$OCPN_ROOT/buildandroid/apk_wrapper.cpp

# The application and its wxWidgets implementation are built by CMake.
OCPN_BUILD = $$OCPN_ROOT/build-android-armhf
WX_ROOT = $$OCPN_ROOT/cache/OCPNAndroidCoreBuildSupport/wxWidgets

INCLUDEPATH += $$WX_ROOT/include
INCLUDEPATH += $$WX_INCLUDE
LIBS += -L$$OCPN_BUILD -lgorp

ANDROID_ABIS = armeabi-v7a
ANDROID_PACKAGE_SOURCE_DIR = $$OCPN_ROOT/buildandroid/android
ANDROID_EXTRA_LIBS += $$OCPN_BUILD/libgorp.so

s57.files = \
    $$OCPN_ROOT/data/s57data/chartsymbols.xml \
    $$OCPN_ROOT/data/s57data/attdecode.csv \
    $$OCPN_ROOT/data/s57data/rastersymbols-dark.png \
    $$OCPN_ROOT/data/s57data/rastersymbols-day.png \
    $$OCPN_ROOT/data/s57data/rastersymbols-dusk.png \
    $$OCPN_ROOT/data/s57data/s57attributes.csv \
    $$OCPN_ROOT/data/s57data/s57expectedinput.csv \
    $$OCPN_ROOT/data/s57data/s57objectclasses.csv
s57.path = /assets/s57data
INSTALLS += s57

gshhs.files = \
    $$OCPN_ROOT/data/gshhs/wdb_borders_c.b \
    $$OCPN_ROOT/data/gshhs/wdb_rivers_c.b \
    $$OCPN_ROOT/data/gshhs/poly-c-1.dat
gshhs.path = /assets/gshhs
INSTALLS += gshhs

styles.files = $$OCPN_ROOT/resources/bitmaps/styles.xml
styles.path = /assets/uidata
INSTALLS += styles

tcdata.files = \
    $$OCPN_ROOT/data/tcdata/HARMONICS_NO_US.IDX \
    $$OCPN_ROOT/data/tcdata/HARMONICS_NO_US
tcdata.path = /assets/tcdata
INSTALLS += tcdata

license.files = $$OCPN_ROOT/data/license.txt
license.path = /assets
INSTALLS += license

sounds.files = \
    $$OCPN_ROOT/data/sounds/1bells.wav \
    $$OCPN_ROOT/data/sounds/2bells.wav
sounds.path = /assets/sounds
INSTALLS += sounds

docs.files = $$OCPN_ROOT/data/doc
docs.path = /assets/doc
INSTALLS += docs

wmm.files = $$OCPN_ROOT/plugins/wmm_pi/data/WMM.COF
wmm.path = /assets/plugins/wmm_pi/data
INSTALLS += wmm
