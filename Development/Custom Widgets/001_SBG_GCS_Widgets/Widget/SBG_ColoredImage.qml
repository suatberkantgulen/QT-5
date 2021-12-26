/****************************************************************************
 *  @File:          SBG_ColoredImage
 *
 *  @Authors:       Suat Berkant GULEN
 *
 *  @Mail:          suatberkantgulen@gmail.com
 *
 *  @Description:   Font library
 *
 *  @Note:          Version 1.0.0   -   26.12.2020
 *
 *  @Created on 26 DEC 2021 - SUN, 15:56
 *
 *  Copyright (C) SUAT BERKANT GULEN
 ****************************************************************************/


//------------------------------------------------------------------------>
//   Import Libraries
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.15
//------------------------------------------------------------------------<


Item {
    property color _color:                  "transparent" // Image color

    property alias _asynchronous:           _image.asynchronous
    property alias _cache:                  _image.cache
    property alias _fillMode:               _image.fillMode
    property alias _horizontalAlignment:    _image.horizontalAlignment
    property alias _mirror:                 _image.mirror
    property alias _paintedHeight:          _image.paintedHeight
    property alias _paintedWidth:           _image.paintedWidth
    property alias _progress:               _image.progress
    property alias _smooth:                 _image.smooth
    property alias _mipmap:                 _image.mipmap
    property alias _source:                 _image.source
    property alias _sourceSize:             _image.sourceSize
    property alias _status:                 _image.status
    property alias _verticalAlignment:      _image.verticalAlignment

    property bool _visible:                _image.visible

    width:  _image.width
    height: _image.height

    Image {
        id:                 _image
        smooth:             true
        mipmap:             true
        antialiasing:       true
        visible:            false
        fillMode:           Image.PreserveAspectFit
        anchors.fill:       parent
        sourceSize.height:  height
    }

    ColorOverlay {
        anchors.fill:       _image
        source:             _image
        color:              parent.color
        visible:            _image.visible
    }
}
