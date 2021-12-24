import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("001_Signals_And_Slots")

    property int increment: 50

    Rectangle {
        id : rectangleId
        width: 200 + increment
        height: 300
        color: "red"

        // Declare signal
        signal greet(string message)

        onGreet: {
            console.log("Greet signal emited!")
        }

        function myGreeting(mMessage){
            console.log("myGreeting slot called. Message : " + mMessage)
            increment += 50
        }


        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Fire the signal
                rectangleId.greet("Hello there!")
            }
        }

        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting)
        }
    }
}
