#include "camerapainter.h"


CameraPainter::CameraPainter(QQuickPaintedItem* parent):QQuickPaintedItem(parent)
{
    // ----- Open Camera() ----- //
     OpenCamre();
}

void CameraPainter::OpenCamre(){

   //----- Open Camera -----//
    cap.open(-1);
    if(cap.isOpened() == false){
        return ;
    }

   // ----- Setting Camera Property -----//
    cap.set(CV_CAP_PROP_FRAME_HEIGHT,760);
    cap.set(CV_CAP_PROP_FRAME_WIDTH,480);;
}


QString CameraPainter::name() const
{
    return m_name;
}
void CameraPainter::setName(const QString &name)
{
    m_name = name;
}

void CameraPainter::FrameUpdate()
{
    // ----- Get Frame From Camera -----//
    cap>>image;
    cv::resize(image,image,cv::Size(760,480));
    cvtColor(image,image,COLOR_BGR2RGB);

}
 void CameraPainter::paint(QPainter* painter)
 {
     // ----- Update Frame ----- //
      FrameUpdate();

      // ----- Convert Mat Imgae to QImage -----//
      QImage img = QImage((const unsigned char*) image.data, image.cols, image.rows, QImage::Format_RGB888);
      painter->drawImage(0,0,img);
}
