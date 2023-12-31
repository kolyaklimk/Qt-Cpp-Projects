QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    _pair.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    _pair.h \
    _stack.h \
    mainwindow.h \
    parser.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../123/build-MyString-Desktop_Qt_5_9_9_MinGW_32bit-Release/release/ -lMyString
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../123/build-MyString-Desktop_Qt_5_9_9_MinGW_32bit-Debug/debug/ -lMyString

INCLUDEPATH += $$PWD/../123/MyString
DEPENDPATH += $$PWD/../123/MyString
