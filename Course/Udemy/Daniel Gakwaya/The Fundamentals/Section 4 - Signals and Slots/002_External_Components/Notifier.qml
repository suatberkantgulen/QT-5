import QtQuick 2.15

Item {

    width: notifierRectId.width
    height: notifierRectId.height

    property int count: 0

    property alias rectColor: notifierRectId.color

    // Declare a signal
    signal notify(string count)

    property Receiver target: null

    // Connect to slot
    onTargetChanged: {
        notify.connect(target.receiverInfo)
    }

    Rectangle{
        id: notifierRectId

        width: 200
        height: 200
        color: "red"

        Text {
            id: displayTextId
            anchors.centerIn: parent
            font.pointSize: 24
            text: count
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                count++;
                notify(count)
            }
        }
    }

}
