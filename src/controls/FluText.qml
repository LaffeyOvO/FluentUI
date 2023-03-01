﻿import QtQuick 2.15
import FluentUI 1.0

Text {

    id:text

    enum FontStyle {
        Display,
        TitleLarge,
        Title,
        Subtitle,
        BodyLarge,
        BodyStrong,
        Body,
        Caption
    }

    property int fontStyle: FluText.Body
    property color textColor: FluApp.isDark ? "#FFFFFF" : "#1A1A1A"
    property int pixelSize : 14

    color: textColor

    font.bold: {
        switch (fontStyle) {
        case FluText.Display:
            return true
        case FluText.TitleLarge:
            return true
        case FluText.Title:
            return true
        case FluText.Subtitle:
            return true
        case FluText.BodyLarge:
            return false
        case FluText.BodyStrong:
            return true
        case FluText.Body:
            return false
        case FluText.Caption:
            return false
        default:
            return false
        }
    }

    font.pixelSize: {
        switch (fontStyle) {
        case FluText.Display:
            return text.pixelSize * 4
        case FluText.TitleLarge:
            return text.pixelSize * 2
        case FluText.Title:
            return text.pixelSize * 1.5
        case FluText.Subtitle:
            return text.pixelSize * 0.9
        case FluText.BodyLarge:
            return text.pixelSize * 1.1
        case FluText.BodyStrong:
            return text.pixelSize * 1.0
        case FluText.Body:
            return text.pixelSize * 1.0
        case FluText.Caption:
            return text.pixelSize * 0.8
        default:
            return text.pixelSize * 1.0
        }
    }


}