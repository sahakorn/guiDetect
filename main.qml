import QtQuick 2.2
import CvCamera 1.0
import "menu"
Rectangle{
    id:main
    width:parent.width
    height:parent.height
    color:"green"
    state:"ready"
Rectangle{
    id:main_window
    width:parent.width
    height:parent.height
    color:"green"
       Image {
        id: bg
        source: "picture/bg.png"
        transform: Scale
        {
            xScale: main_window.width/932
            yScale: main_window.height/516
            origin.x: 0
            origin.y: 0
        }// End of transform scale image.

    }//End of background-image.
}
    Main_menu{
        id:menu
    }
    Date_time{
        id:date_time
    }


}



