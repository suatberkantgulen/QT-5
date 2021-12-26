/****************************************************************************
 *  @File:          SBG_Label
 *
 *  @Authors:       Suat Berkant GULEN
 *
 *  @Mail:          suatberkantgulen@gmail.com
 *
 *  @Description:   Custom Label
 *
 *  @Note:          Version 1.0.0   -   26.12.2020
 *
 *  @Created on 26 DEC 2021 - SUN, 14:12
 *
 *  Copyright (C) SUAT BERKANT GULEN
 ****************************************************************************/


//------------------------------------------------------------------------>
//   Import Libraries
import QtQuick 2.15
import "../Style/"
//------------------------------------------------------------------------<


Item {
    id: _rootId

    property var    _gcstheme:   SBG_Theme { }
    property var    _gcsfont:    SBG_Font { }

    // Text & Color
    property string _text:      _textMainId.text
    property alias  _color:     _textMainId.color

    // Font settings
    property bool _bold:        _textMainId.font.bold
    property int _pointSize:    _textMainId.font.pointSize
    property string _family:    _textMainId.font.family

    Text {
        id: _textMainId

        font.pointSize:     _pointSize
        font.family :       _family
        font.bold :         _bold

        color:              globalTheme ? _gcstheme.textColorDark : _gcstheme.textColorLight
        antialiasing:       true

        text: _text
    }
}
