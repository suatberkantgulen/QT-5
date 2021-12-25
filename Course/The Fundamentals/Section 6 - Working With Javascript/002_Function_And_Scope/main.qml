import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("002_Functions_And_Scope")

    function min ( a ,b)
    {
        return Math.min(a,b)
    }

    Rectangle {
        id : mRectId
        width: min( 500,400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }

    MouseArea {
        id : mMouseAreaId
        anchors.fill: parent

        function sayMessage()
        {
            console.log("Hello there")
        }

        onClicked: {
            sayMessage()

        }
    }

    Component.onCompleted: {
        //console.log("The width of the rect is :"+ min(500,400))
        mMouseAreaId.sayMessage()
    }
}
