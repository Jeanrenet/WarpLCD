import QtQuick 2.9
import QtQuick.Window 2.2

import "."

Window {
    visible: true
    width: 640
    height: 480

    WarpButton {
        id: button
        x: parent.width/2 - button.width/2
        y: parent.height/2 - button.height/2
        iconName: "qrc:/Images/Images/temperature.svg"
    }
}
