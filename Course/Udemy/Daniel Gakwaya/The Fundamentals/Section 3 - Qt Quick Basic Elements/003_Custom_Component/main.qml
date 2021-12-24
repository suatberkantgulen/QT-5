import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("003_Custom_Component")


//    Column {
//        spacing: 20
//        Rectangle {
//            width: 300
//            height: 100
//            color: "red"
//        }

//        Rectangle {
//            width: 300
//            height: 100
//            color: "blue"
//        }
//    }

    Column {
        MButton {
            buttonText: "Button1"

            onButtonClicked: {
                console.log("Clicked on Button 1 from main file!")
            }
        }

        MButton {
            buttonText: "Button2"

            onButtonClicked: {
                console.log("Clicked on Button 2 from main file!")
            }
        }
    }


}

