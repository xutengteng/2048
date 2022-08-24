import QtQuick 2.15

Rectangle {
    Column{
        Text {
            id: record
            font.family: "微软雅黑"
            antialiasing: true
            font.pointSize: 20
            text: qsTr("历史记录：")
            color: "black"
        }
        Text {
            id: score
            font.family: "微软雅黑"
            antialiasing: true
            font.pointSize: 20
            text: qsTr("分数：")
            color: "black"
        }
    }
}
