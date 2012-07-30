######################################################################
# Communi: 3rdparty.pri
######################################################################

DEPENDPATH += $$PWD
INCLUDEPATH += $$PWD
QMAKE_CLEAN += $$PWD/*~

HEADERS += $$PWD/fancylineedit.h
HEADERS += $$PWD/qtflickgesture_p.h
HEADERS += $$PWD/qtscroller.h
HEADERS += $$PWD/qtscroller_p.h
HEADERS += $$PWD/qtscrollerfilter_p.h
HEADERS += $$PWD/qtscrollerproperties.h
HEADERS += $$PWD/qtscrollerproperties_p.h
HEADERS += $$PWD/qtscrollevent.h
HEADERS += $$PWD/qtscrollevent_p.h

SOURCES += $$PWD/fancylineedit.cpp
SOURCES += $$PWD/qtflickgesture.cpp
SOURCES += $$PWD/qtscroller.cpp
SOURCES += $$PWD/qtscrollerfilter.cpp
SOURCES += $$PWD/qtscrollerproperties.cpp
SOURCES += $$PWD/qtscrollevent.cpp

DEFINES += QTSCROLLER_NO_WEBKIT
macx {
    OBJECTIVE_SOURCES += qtscroller_mac.mm
    LIBS += -framework Cocoa
}
