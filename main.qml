import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 480
    height: 640
    maximumHeight: 640
    maximumWidth: 480
    minimumHeight: 640
    minimumWidth: 480
    visible: true
    title: qsTr("2048")
    color: "white"

    ScoreRec{
        x:30
        y:60
    }
    HostRectangle{
        //x:30
        y:200
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
