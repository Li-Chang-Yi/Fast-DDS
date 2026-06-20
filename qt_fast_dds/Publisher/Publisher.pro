TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
    $$PWD/../CommonDataType/HelloWorldPubSubTypes.cxx \
    $$PWD/../CommonDataType/HelloWorldTypeObjectSupport.cxx \
    main.cpp \

HEADERS += \
    $$PWD/../CommonDataType/HelloWorld.hpp \
    $$PWD/../CommonDataType/HelloWorldCdrAux.hpp \
    $$PWD/../CommonDataType/HelloWorldCdrAux.ipp \
    $$PWD/../CommonDataType/HelloWorldPubSubTypes.hpp \
    $$PWD/../CommonDataType/HelloWorldTypeObjectSupport.hpp

DISTFILES += \
    $$PWD/../CommonDataType/HelloWorld.idl

INCLUDEPATH += $$PWD/../3rdParty/fastcdr/include \
               $$PWD/../3rdParty/fastdds/include \
               $$PWD/../3rdParty/foonathan_memory_vendor/include \

LIBS += $$PWD/../3rdParty/fastcdr/lib/libfastcdr.so \
        $$PWD/../3rdParty/fastdds/lib/libfastdds.so \
        $$PWD/../3rdParty/foonathan_memory_vendor/lib/libfoonathan_memory-0.7.4.a \
        $$PWD/../3rdParty/tinyxml2/libtinyxml2.so.6

INCLUDEPATH += $$PWD/../CommonDataType/

TARGET = DDSPublisher

# DESTDIR
CONFIG(release, debug|release): {
    DESTDIR = $$PWD/../bin_release
}
else:CONFIG(debug, debug|release): {
    DESTDIR = $$PWD/../bin_debug
}
