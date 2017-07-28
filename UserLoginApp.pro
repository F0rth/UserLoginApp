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

# recipe https://bravikov.wordpress.com/2016/11/02/
TRANSLATIONS += UserLoginApp_ru.ts

tr.commands = lupdate $$_PRO_FILE_ && lrelease $$_PRO_FILE_
    PRE_TARGETDEPS += tr
    QMAKE_EXTRA_TARGETS += tr

windows {
    TARGET = UserLoginApp
    DESTDIR = UserLoginApp
    QMAKE_POST_LINK += windeployqt $$OUT_PWD/$$DESTDIR/$$join(TARGET,,,".exe")
}
