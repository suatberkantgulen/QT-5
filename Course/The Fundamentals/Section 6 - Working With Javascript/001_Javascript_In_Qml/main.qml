import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("001_Javascript_In_Qml")

    Rectangle {
        id : containerRectId
        width : getHeight()  //JS in Function
        height: 100
        color: x > 240 ? "red" : "green" //property binding

        //JS in signal handler
        onXChanged: {
            console.log("Current value of x : "+ x)
        }

        //anchors.centerIn: parent

        //Custom function
        function getHeight()
        {
            return  height * 2
        }

    }

    MouseArea {
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XandYAxis
        drag.minimumX: 0
        drag.minimumY: 0
        drag.maximumX: parent.width - containerRectId.width
        drag.maximumY: parent.height - containerRectId.height

    }
}
