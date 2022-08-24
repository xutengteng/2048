import QtQuick 2.15

ListView{
    id:listrec
    property int this_number
    property variant numArray
    readonly property variant colorArray: ["silver","lightgray","lightpink","lightskyblue","lightseagreen","gold"]

    function arc_pow(arr){
        if(arr===0)
            return 0
        for(var i=1;i<20;i++){
            if((arr/Math.pow(2,i))===1)
            {
                return i
            }
        }
    }
    function text_show(arr){
        if(arr===0)
            return ""
        else
            return arr
    }

    Rectangle{
        id:rec1
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[0]>0?true:false
        x:4
        y:4
        color:colorArray[arc_pow(numArray[0])]
        Text {
            id: text1
            text: text_show(numArray[0])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r1"
                PropertyChanges {
                    target: rec1
                    color:colorArray[arc_pow(numArray[0])]
                    visible:numArray[0]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec2
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[1]>0?true:false
        x:4*2+100
        y:4
        color:colorArray[arc_pow(numArray[1])]
        Text {
            id: text2
            text: text_show(numArray[1])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r2"
                PropertyChanges {
                    target: rec2
                    color:colorArray[arc_pow(numArray[1])]
                    visible:numArray[1]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec3
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[2]>0?true:false
        x:4*3+100*2
        y:4
        color:colorArray[arc_pow(numArray[2])]
        Text {
            id: text3
            text: text_show(numArray[2])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r3"
                PropertyChanges {
                    target: rec3
                    color:colorArray[arc_pow(numArray[2])]
                    visible:numArray[2]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec4
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[3]>0?true:false
        x:4*4+100*3
        y:4
        color:colorArray[arc_pow(numArray[3])]
        Text {
            id: text4
            text: text_show(numArray[3])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r3"
                PropertyChanges {
                    target: rec4
                    color:colorArray[arc_pow(numArray[3])]
                    visible:numArray[3]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec5
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[4]>0?true:false
        x:4
        y:4*2+100
        color:colorArray[arc_pow(numArray[4])]
        Text {
            id: text5
            text: text_show(numArray[4])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r2"
                PropertyChanges {
                    target: rec5
                    color:colorArray[arc_pow(numArray[4])]
                    visible:numArray[4]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec6
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[5]>0?true:false
        x:4*2+100
        y:4*2+100
        color:colorArray[arc_pow(numArray[5])]
        Text {
            id: text6
            text: text_show(numArray[5])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r6"
                PropertyChanges {
                    target: rec6
                    color:colorArray[arc_pow(numArray[5])]
                    visible:numArray[5]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec7
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[6]>0?true:false
        x:4*3+100*2
        y:4*2+100
        color:colorArray[arc_pow(numArray[6])]
        Text {
            id: text7
            text: text_show(numArray[6])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r7"
                PropertyChanges {
                    target: rec7
                    color:colorArray[arc_pow(numArray[6])]
                    visible:numArray[6]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec8
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[7]>0?true:false
        x:4*4+100*3
        y:4*2+100

        color:colorArray[arc_pow(numArray[7])]
        Text {
            id: text8
            text: text_show(numArray[7])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r8"
                PropertyChanges {
                    target: rec8
                    color:colorArray[arc_pow(numArray[7])]
                    visible:numArray[7]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec9
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[8]>0?true:false
        x:4
        y:4*3+100*2

        color:colorArray[arc_pow(numArray[8])]
        Text {
            id: text9
            text: text_show(numArray[8])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r9"
                PropertyChanges {
                    target: rec9
                    color:colorArray[arc_pow(numArray[8])]
                    visible:numArray[8]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec10
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[9]>0?true:false
        y:4*3+100*2
        x:4*2+100
        color:colorArray[arc_pow(numArray[9])]
        Text {
            id: text10
            text: text_show(numArray[9])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r10"
                PropertyChanges {
                    target: rec10
                    color:colorArray[arc_pow(numArray[9])]
                    visible:numArray[9]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec11
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[10]>0?true:false
        y:4*3+100*2
        x:4*3+100*2
        color:colorArray[arc_pow(numArray[10])]
        Text {
            id: text11
            text: text_show(numArray[10])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r11"
                PropertyChanges {
                    target: rec11
                    color:colorArray[arc_pow(numArray[10])]
                    visible:numArray[10]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec12
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[11]>0?true:false
        y:4*3+100*2
        x:4*4+100*3
        color:colorArray[arc_pow(numArray[11])]
        Text {
            id: text12
            text: text_show(numArray[11])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r12"
                PropertyChanges {
                    target: rec12
                    color:colorArray[arc_pow(numArray[11])]
                    visible:numArray[11]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec13
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[12]>0?true:false
        y:4*4+100*3
        x:4
        color:colorArray[arc_pow(numArray[12])]
        Text {
            id: text13
            text: text_show(numArray[12])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r13"
                PropertyChanges {
                    target: rec13
                    color:colorArray[arc_pow(numArray[12])]
                    visible:numArray[12]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec14
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[13]>0?true:false
        y:4*4+100*3
        x:4*2+100
        color:colorArray[arc_pow(numArray[13])]
        Text {
            id: text14
            text: text_show(numArray[13])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r14"
                PropertyChanges {
                    target: rec14
                    color:colorArray[arc_pow(numArray[13])]
                    visible:numArray[13]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec15
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[14]>0?true:false
        y:4*4+100*3
        x:4*3+100*2
        color:colorArray[arc_pow(numArray[14])]
        Text {
            id: text15
            text: text_show(numArray[14])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r15"
                PropertyChanges {
                    target: rec15
                    color:colorArray[arc_pow(numArray[14])]
                    visible:numArray[14]>0?true:false
                }
            }
        ]
    }
    Rectangle{
        id:rec16
        width: 100
        height: width
        opacity: 0.8
        radius: 5
        visible:numArray[15]>0?true:false
        y:4*4+100*3
        x:4*4+100*3
        color:colorArray[arc_pow(numArray[15])]
        Text {
            id: text16
            text: text_show(numArray[15])
            font.pixelSize: 50
            color: "white"
            anchors.centerIn: parent
        }
        states: [
            State {
                name: "r16"
                PropertyChanges {
                    target: rec16
                    color:colorArray[arc_pow(numArray[15])]
                    visible:numArray[15]>0?true:false
                }
            }
        ]
    }
    Connections{
        target: host
        function onItemsig(a){
            numArray = a
            rec1.state="r1"
            rec2.state="r2"
            rec3.state="r3"
            rec4.state="r4"
            rec5.state="r5"
            rec6.state="r6"
            rec7.state="r7"
            rec8.state="r8"
            rec9.state="r9"
            rec10.state="r10"
            rec11.state="r11"
            rec12.state="r12"
            rec13.state="r13"
            rec14.state="r14"
            rec15.state="r15"
            rec16.state="r16"
        }
    }

}
