import QtQuick 2.15
import QtQuick.Controls 2.5

Rectangle{
    id:randrec
    width: 100
    height: width
    opacity: 0.8
    radius: 5
    state: "hide"
    color: "silver"

    property var rand
    property int rand_num:2
    property int rand_x:0
    property int rand_y:0
    property int rand_pos:0
    property int rand_color:0
    property int random_max:5
    property variant colorArray: ["lightgray","lightpink","lightskyblue","lightseagreen","gold"]

    Text {
        id: number
        text: "2"
        font.pixelSize: 50
        color: "white"
        anchors.centerIn: parent
    }

    //①状态机,在隐藏和显示新位置两个状态间切换；
    //②也可以用加载组件的方式做.
    states: [
        State {
            name: "slide"
            PropertyChanges {
                target: randrec
                rand:Math.random()
                rand_x:Math.floor(Math.random()*4)
                rand_y:Math.floor(Math.random()*4)
                rand_color:Math.floor(Math.random()*random_max)
                rand_num:Math.pow(2,rand_color+1)
                rand_pos:(rand_y)*4+(rand_x)+1

                x:4+rand_x*104
                y:4+rand_y*104
                color:colorArray[rand_color]

                visible:true

            }
            PropertyChanges {
                target: number
                text:rand_num
            }

        },
        State {
            name: "hide"
            PropertyChanges {
                target: randrec
                x:0
                y:0
                visible:false
            }
        }
    ]
    //通知布局器随机方块信息
    signal random_finsh(int a,int b)

    onRandChanged: {
        if (randrec.state === "slide") {
            random_finsh(rand_pos,rand_num)//打印的是上一个的
        }
    }
}
//    /*随机方块位置*/
//    Connections{
//        target: rand
//        function onRandom_finsh(a,b){
//            console.log(a,b)
//            //item.itemArray[a-1] = b
//        }
//    }
