#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick/QQuickView>
#include <qqmlcontext.h>
#include "camerapainter.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // ----- Register to qml ----- //
    qmlRegisterType<CameraPainter>("CvCamera",1,0,"CvCam");

    QQuickView view;
    view.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
    view.showFullScreen();
    return app.exec();
}
