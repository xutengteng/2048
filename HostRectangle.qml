import QtQuick 2.15
import QtQuick.Controls 2.5

Rectangle{
    id:host
    width: 420
    height: width
    color: "gray"
    opacity: 1
    radius: 10

    property int mx
    property int my
    property int axis
    property int polar
    property int lbs
    signal itemsig(var a)
    signal slide_left()


    /*数据*/
    Item {
        id: item
        property var itemArray:[2,2,2,2,0,0,4,4,8,0,0,8,16,0,16,0]
    }

    /*布局格子*/
    Grid{
        id: layout_bottom
        anchors.centerIn: parent
        spacing: 4 //间距
        rows: 4 //行数
        columns: 4 //列数
        Repeater{
            model:16
            SlaveRec{}
        }
    }


    /*随机方块*/
    RandomRec{
        id:rand
    }

    /*滑动检测*/
    MouseArea{
        id:mousearea

        anchors.fill: parent
        onPressed:{
            rand.state="hide"
            mx = mouseX
            my = mouseY
        }
        onClicked: {
            mx -= mouseX
            my -= mouseY
            axis = Math.abs(mx)>Math.abs(my)?mx:my
            polar = axis>0?1:0

            if((axis==mx)&&(polar==1)) {
                slide_left()
                console.log("左划")
            }
            if((axis==mx)&&(polar==0)) {
                console.log("右划")
            }
            if((axis==my)&&(polar==1)) {
                console.log("上划")
            }
            if((axis==my)&&(polar==0)) {
                console.log("下划")
            }

        }
    }

    /******************在空闲位置随机产生方块******************/
    property var freeArray:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    property var rand_pos
    property var rand_num
    function random_rec(){
        var zero = 0
        for(var i=0;i<16;i++){
            if(item.itemArray[i] === 0){
                freeArray[zero] = i
                zero++
            }
        }
        rand_pos = Math.floor(Math.random()*zero)
        console.log("rand_pos:",rand_pos)
        rand_num = Math.pow(2,Math.floor(Math.random()*3)+1)
        item.itemArray[freeArray[rand_pos]] = rand_num
        console.log("rand_num:",rand_num)
        freeArray={}
    }
    /*处理滑动，计算新的位置*/
    Connections{
        target: host
        function onSlide_left(){
            var i=0
            if(item.itemArray[0+i*4]===item.itemArray[1+i*4]){//1=2
                item.itemArray[0+i*4] = 2*item.itemArray[0+i*4]
                item.itemArray[1+i*4] = 0
                if(item.itemArray[2+i*4]===item.itemArray[3+i*4]){//3=4
                    item.itemArray[2+i*4] = 2*item.itemArray[2+i*4]
                    item.itemArray[3+i*4] = 0
                }
            }else if(item.itemArray[1+i*4]===item.itemArray[2+i*4]){//2=3
                item.itemArray[1+i*4] = 2*item.itemArray[1+i*4]
                item.itemArray[2+i*4] = 0
            }else if(item.itemArray[2+i*4]===item.itemArray[3+i*4]){//3=4
                item.itemArray[2+i*4] = 2*item.itemArray[2+i*4]
                item.itemArray[3+i*4] = 0
            }
            random_rec()
            //rand.state = "slide"
            itemsig(item.itemArray)
        }
    }
    /*重新布局*/
    List{
        id:list
        numArray: item.itemArray
    }


}
