import QtQuick 2.15
import QtQuick.Window 2.15
import "utilities1.js" as Utilities1

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("003_Direct_Import_External_JS")

    Rectangle {
        width : 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent

        Text {
            text : "Click Me"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
               //console.log("Hello there")
               Utilities1.greeting()
            }
        }
    }
}
