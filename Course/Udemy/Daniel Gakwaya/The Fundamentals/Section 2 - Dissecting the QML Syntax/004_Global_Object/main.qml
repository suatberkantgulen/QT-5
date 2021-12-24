import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("004_Global_Object")

    property var fonts: Qt.fontFamilies()

    Rectangle {
        width : 300
        height: 100
        color: "red"
        anchors.centerIn: parent

        MouseArea {

            anchors.fill: parent
            onClicked: {

                // Quit
                console.log("Quitting the Application!")
                Qt.quit()
                for(var i = 0; i < fonts.length; i++){
                    console.log("[]" + i + "]" + fonts[i])
                }

                // Hash a string
                var mName = "Suat Berkant Gulen"
                var mNameHash = Qt.md5(mName)

                console.log("The hash of the name is : " + mNameHash)

                // Open URL Externally
                Qt.openUrlExternally("http://www.google.com.tr")

                // Open local files with the default program
                Qt.openUrlExternally("file:///C:/Users/sbgulen/Desktop/monster.png")

                console.log("Platform: " + Qt.platform.os)
            }
        }
    }
}
