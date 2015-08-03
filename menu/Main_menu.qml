import QtQuick 2.0

Rectangle {
    id:main_root
    width: 0.3*parent.width
    height: 0.95*parent.height
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    color:Qt.rgba(0,0,0,0)
    state:"hide"

    Rectangle{
        id:bt_space
        width:parent.width
        height:60
        radius: 30
        anchors.top:parent.top
        anchors.right: parent.right
        color:Qt.rgba(0,0.3,1,0.4)
        Text{
             font.bold: true
             font.pointSize: 0.6*parent.height
             smooth: true
             color: "white"
             anchors.centerIn: parent
             text:"Menu"
         }

    Rectangle{
        id:bt
        width:60
        height:60
        radius: 30
        anchors.top:parent.top
        anchors.right: parent.right
        color:"blue"
    }

    }
    Rectangle{
        id:space
        width: 0.9*parent.width
        height: parent.height-60
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        color:Qt.rgba(0,0,0,0.7)

    }
    states:[
            State{
            name:"hide"
                 PropertyChanges { target:bt_space;x:-parent.width}
            }

        ]
}

