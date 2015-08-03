#ifndef CAMERAPAINTER_H
#define CAMERAPAINTER_H
#include <QtQuick/QQuickPaintedItem>
#include <opencv2/opencv.hpp>
#include <QPainter>

using namespace cv;
class CameraPainter: public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName)
public:
   explicit CameraPainter(QQuickPaintedItem* parent = 0);
    // ----- Public method -----//
    QString name() const;
    void setName(const QString &name);
    void FrameUpdate();
    void OpenCamre();
    void paint(QPainter* painter);

private:
    QString m_name;

    VideoCapture cap;
    Mat image;
};

#endif // CAMERAPAINTER_H
