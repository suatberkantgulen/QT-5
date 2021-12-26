/****************************************************************************
 *  @File:          SBG_Font
 *
 *  @Authors:       Suat Berkant GULEN
 *
 *  @Mail:          suatberkantgulen@gmail.com
 *
 *  @Description:   Font library
 *
 *  @Note:          Version 1.0.0   -   26.12.2020
 *
 *  @Created on 26 DEC 2021 - SUN, 15:34
 *
 *  Copyright (C) SUAT BERKANT GULEN
 ****************************************************************************/


//------------------------------------------------------------------------>
import QtQuick 2.15
//------------------------------------------------------------------------<


Item {
    id: _root

    // The default font
    property string defaultFont:                    "Helvetica"


    // The default font size values
    property real defaultFontPointSize:             10
    property real smallFontPointSize:               10
    property real mediumFontPointSize:              10
    property real largeFontPointSize:               10

    // Ratio for Font Points
    readonly property real smallFontPointRatio:      0.75
    readonly property real mediumFontPointRatio:     1.25
    readonly property real largeFontPointRatio:      1.5

    property real defaultFontPixelHeight:   12
    property real defaultFontPixelWidth:    12

    property real minTouchPixels:           10

    // Emit function to set default
    Component.onCompleted: _setDefaultPointSize(10)

    //
    function _setDefaultPointSize(pointSize) {

        defaultFontPointSize    = pointSize

        smallFontPointSize      = defaultFontPointSize  * smallFontPointRatio
        mediumFontPointSize     = defaultFontPointSize  * mediumFontPointRatio
        largeFontPointSize      = defaultFontPointSize  * largeFontPointRatio

        minTouchPixels          = defaultFontPixelHeight * 3
    }
}
