import QtQuick 2.15

Rectangle {
    property int scr
    Column{
        Text {
            id: record_font
            font.family: "微软雅黑"
            antialiasing: true
            font.pointSize: 20
            text: qsTr("历史记录：")
            color: "black"
        }

        Text {
            id: score_font
            font.family: "微软雅黑"
            antialiasing: true
            font.pointSize: 20
            text: qsTr("分数：")
            color: "black"
        }

    }

}
