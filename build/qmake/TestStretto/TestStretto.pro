TOP= ../../..

! include( ../common.pri ) {
  error( need common.pri file )
}


TARGET=TestStretto

SOURCES += $$STRETTO/tests/TestStretto.cpp
