import QtQuick 2.15

Item {

    width: receiverRectId.width
    height: receiverRectId.height

    property alias rectColor: receiverRectId.color

    function receiverInfo(count){
        receiverDisplayTextId.text = count
        console.log("Receiver receiver number : " + count)
    }

    Rectangle{
        id: receiverRectId

        width: 200
        height: 200
        color: "red"

        Text {
            id: receiverDisplayTextId
            anchors.centerIn: parent
            font.pointSize: 24
            text: "0"
        }
    }
}
