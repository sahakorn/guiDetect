import QtQuick 2.0

Rectangle {
    id:root
    width: 1*parent.width
    height: 0.05*parent.height
    anchors.top: parent.top
    color:Qt.rgba(0.1,0.3,0,0.5)
    state:"hide"
    property string dateandtime: ""
    property string unixtime: ""

    function updateTime() {
        var dateAndTime = new Date();
        var timeString = Qt.formatDateTime(dateAndTime, "dddd, dd.MM.yyyy | hh:mm");
        //  hour = Qt.formatDateTime(dateAndTime, "hh");
        // minute = Qt.formatDateTime(dateAndTime, "mm");

        var timestamp= Number(new Date());
        unixtime=timestamp.toString();
         dateandtime = timeString;
        //dateandtime=unixtime;
    }
    Timer {
        interval: 100; running: true; repeat: true;
        onTriggered: {
            root.updateTime()
        }
    }
    Text{
         id:dateTime
         font.bold: true
         font.pointSize: 0.5*parent.height
         smooth: true
         color: "white"
         anchors.right: parent.right
         anchors.rightMargin: 20
         text:dateandtime

     }

}

