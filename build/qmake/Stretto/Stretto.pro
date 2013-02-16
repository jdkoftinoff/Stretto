QT       -= core gui

TARGET = Stretto
TEMPLATE = lib
CONFIG += staticlib

TOP = ../../..
STRETTO = $$TOP

SOURCES += \
    $$STRETTO/src/*.cpp

HEADERS += \
    $$STRETTO/include/*.hpp \
    $$STRETTO/include/Stretto/*.hpp 

INCLUDEPATH += \
    $$STRETTO/include

DEPENDPATH +=  \
    $$STRETTO/include \
    $$STRETTO/include/Stretto/*.hpp 


#unix:QMAKE_CXXFLAGS+=-std=c++0x
