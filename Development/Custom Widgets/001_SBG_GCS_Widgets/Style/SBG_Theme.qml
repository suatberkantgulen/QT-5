/****************************************************************************
 *  @File:          SBG_Theme
 *
 *  @Authors:       Suat Berkant GULEN
 *
 *  @Mail:          suatberkantgulen@gmail.com
 *
 *  @Description:   Theme library
 *
 *  @Note:          Version 1.0.0   -   26.12.2020
 *
 *  @Created on 26 DEC 2021 - SUN, 15:23
 *
 *  Copyright (C) SUAT BERKANT GULEN
 ****************************************************************************/


//------------------------------------------------------------------------>
import QtQuick 2.15
//------------------------------------------------------------------------<

Item {

    // App Theme
    readonly property color appThemeColorDark:          "#090B0E"
    readonly property color appThemeColorLight:         "#F5F7FA"

    // Text Theme
    readonly property color textColorDark:              appThemeColorDark
    readonly property color textColorLight:             appThemeColorLight

    // Text Error Theme
    readonly property color textErrorColorLight:        "#576574"
    readonly property color textErrorColorDark:         "#576574"

}
