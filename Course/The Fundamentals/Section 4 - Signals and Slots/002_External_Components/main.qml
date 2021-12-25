import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("002_External_Components_Signals_And_Slots")

    Notifier{
        id: notifierId
        rectColor: "yellowgreen"

//        Component.onCompleted: {
//            // Connect signal to slot
//            notify.connect(receiverId.receiverInfo)
//        }

        // Emit onTargetChanged()
        target: receiverId
    }

    Receiver {
        id: receiverId
        rectColor : "dodgerblue"
        anchors.right: parent.right

    }

//    Component.onCompleted: {
//        // Connect signal to slot
//        notifierId.notify.connect(receiverId.receiverInfo)
//    }
}

