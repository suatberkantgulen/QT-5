import QtQuick 2.15
import QtQuick.Window 2.15
import "./Style/"
import "./Widget/"
import "./Resource/"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    property var    _gcstheme:   SBG_Theme { }
    property var    _gcsfont:    SBG_Font { }

    property bool globalTheme: true


    // Tester for SBG_Label
    SBG_Label {

        _text:          "Berkant"
        _color:         "blue"

        _bold:          true
        _pointSize:     40
        _family:        "Arial"
    }

    SBG_ColoredImage {
        x:100
        y:100
        width:          100
        height:         100
        _source:         "qrc:/Resource/Dasal.png"
        _fillMode:       Image.Stretch
        _color:          "black"
        _visible:       true
    }

}
