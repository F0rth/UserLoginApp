TEMPLATE = app

QT += qml quick

CONFIG += c++11

SOURCES += main.cpp

RESOURCES += user-login-app.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    backend.js

lupdate_only{
  SOURCES = *.qml \
            backend.js \
}

TRANSLATIONS += UserLoginApp_ru.ts
