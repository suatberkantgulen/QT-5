import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("005_Properties_And_Handlers")

    property string mFirstName: "Suat"
    onMFirstNameChanged: {
        console.log("The first name changed to : " + mFirstName)
    }

    Rectangle {
        width: 300
        height: 100
        color : "blue"
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mFirstName = "Berkant"
            }
        }
    }

    Component.onCompleted: {
        console.log("The first name is : "+ mFirstName)
    }
}
