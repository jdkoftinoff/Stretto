
QT -= core gui
CONFIG += link_prl debug
win32:QT += core
win32:CONFIG+=console

TEMPLATE = app

STRETTO = $$TOP

HEADERS += \
    $$STRETTO/include/Stretto/Tests_*.hpp

INCLUDEPATH += \
    $$STRETTO/include

DEPENDPATH +=  \
    $$STRETTO/include \
    $$STRETTO/include/Stretto/*.hpp 

#unix:QMAKE_CXXFLAGS+=-std=c++0x

INCLUDEPATH += $$TOP/include 

DEPENDPATH += $$INCLUDEPATH

unix:LIBS += -L../Stretto -lStretto 

macx:pcap:LIBS += -lpcap

win32 {
  CONFIG(release):LIBS += -L../lib/release -lStretto
  CONFIG(debug):LIBS += -L../lib/debug -lStretto
  pcap:LIBS += pcap
  CONFIG(release):PRE_TARGETDEPS += ../lib/release/Stretto.lib
  CONFIG(debug):PRE_TARGETDEPS += ../lib/debug/Stretto.lib
}

win32:LIBS+=
macx:LIBS+=

unix:PRE_TARGETDEPS += ../Stretto/libStretto.a

macx {
 MAC_SDK  = /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk
 if( !exists( $$MAC_SDK) ) {
  error("The selected Mac OSX SDK does not exist at $$MAC_SDK!")
 }
 macx:QMAKE_MAC_SDK = $$MAC_SDK
}


