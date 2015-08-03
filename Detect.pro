TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    camerapainter.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    camerapainter.h
INCLUDEPATH += /usr/local/include/opencv
LIBS += -L/usr/lib/x86_64-linux-gnu/ -lopencv_core  -lopencv_highgui -lopencv_imgproc
