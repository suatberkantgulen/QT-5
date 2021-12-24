import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("001_Basic_Elements")

    Item {
        id : containerItemId
        x  : 100;y  : 50

        width: 400
        height: 300

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle {
            x:0
            y:10
            width: 50
            height: 50
            color: "red"

            MouseArea {
                anchors.fill : parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x:60
            y:10
            width: 50
            height: 50
            color: "green"

            MouseArea {
                anchors.fill : parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x:120
            y:10
            width: 50
            height: 50
            color: "blue"

            MouseArea {
                anchors.fill : parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x:180
            y:10
            width: 50
            height: 50
            color: "magenta"

            MouseArea {
                anchors.fill : parent
                onClicked: {

                }
            }
        }

        Text {
            id : mTextId
            x : 0; y : 60

            text: "Test Text"
            color: "red"

            //font.pointSize: 20
            //font.family: "Helvetica"
            // font.bold: true

            font {
                family: "Helvetica"
                pointSize: 20
                bold: true
            }
        }

        Image {
            x : 10; y: 150
            width: 100
            height: 100
            source: "file:dasal.png"
        }

        Image {
            x : 150; y: 150
            width: 100
            height: 100
            source: "images/dasal.png"
        }


        Image {
            x : 300; y: 150
            width: 100
            height: 100
            source: "file:///C:/Users/sbgulen/Desktop/SBGithub/QT-5/Course/Udemy/Daniel Gakwaya/The Fundamentals/Section 3 - Qt Quick Basic Elements/002_Basic_Elements/images/dasal.png"
        }
    }
}
