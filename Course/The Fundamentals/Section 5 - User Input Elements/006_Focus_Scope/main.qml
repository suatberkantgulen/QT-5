import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FocusScope Demo")

    Column {
        MButton{
            color:"blue"
        }

        MButton{

            focus: true
            color: "green"
        }
    }
}
