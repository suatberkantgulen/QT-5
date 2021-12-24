import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id : rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("001_QML_Syntax")

    property string textToShow: "Hello"

    Row {
        id : row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id : redRectId
            width: 150; height: 150
            color: "red"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red rectangle!")
                    textToShow = "Red"
                }
            }
        }

        Rectangle {
            id : greenRectId
            width: 150; height: 150
            color: "green"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green rectangle!")
                    textToShow = "Green"
                }
            }
        }

        Rectangle {
            id : blueRectId
            width: 150; height: 150
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue rectangle!")
                    textToShow = "Blue"
                }
            }
        }

        Rectangle {
            id : textRectId
            width: 150; height: 150
            color: "gray"
            radius: 100
            Text {
                id : textId
                anchors.centerIn: parent
                text : textToShow
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    textId.text = "Loop"

                }
            }
        }
    }
}
