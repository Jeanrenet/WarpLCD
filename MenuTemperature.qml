import QtQuick 2.9

Item {
    width: 320
    height: 320
    Rectangle {
        id:rect
        anchors.fill: parent
        Text {
            anchors.centerIn: parent
            text: Temperature.temperature + "°C"
            font.family: "lightsteelblue"
            font.pointSize: 40
        }

        property color finalColor : Qt.rgba(0.56 * Temperature.temperature/30,
                                            1 / (Temperature.temperature /30),
                                            0.40 / (Temperature.temperature/30),
                                            1)

        gradient: Gradient {
            GradientStop { position: 0.0; color: rect.finalColor; }
            GradientStop { position: 1.0; color: "white"; }
        }
    }
}
