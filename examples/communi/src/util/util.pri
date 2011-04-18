######################################################################
# Communi: util.pri
######################################################################

DEPENDPATH += $$PWD
INCLUDEPATH += $$PWD
QMAKE_CLEAN += $$PWD/*~

FORMS += $$PWD/editframe.ui
FORMS += $$PWD/findframe.ui

HEADERS += $$PWD/completer.h
HEADERS += $$PWD/editframe.h
HEADERS += $$PWD/findframe.h
HEADERS += $$PWD/historylineedit.h
HEADERS += $$PWD/sharedtimer.h
HEADERS += $$PWD/streamer.h
HEADERS += $$PWD/stringlistmodel.h
HEADERS += $$PWD/tabwidget.h
HEADERS += $$PWD/textbrowser.h
!symbian:HEADERS += $$PWD/trayicon.h

SOURCES += $$PWD/completer.cpp
SOURCES += $$PWD/editframe.cpp
SOURCES += $$PWD/findframe.cpp
SOURCES += $$PWD/historylineedit.cpp
SOURCES += $$PWD/sharedtimer.cpp
SOURCES += $$PWD/stringlistmodel.cpp
SOURCES += $$PWD/tabwidget.cpp
SOURCES += $$PWD/textbrowser.cpp
!symbian:SOURCES += $$PWD/trayicon.cpp