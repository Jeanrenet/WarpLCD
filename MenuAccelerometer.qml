import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    id:menuAccelero
    width: 320
    height: 320

    signal pageExit()

    Rectangle {
        id:rect
        anchors.fill: parent
        radius: 150

        ColumnLayout {
            anchors.fill: parent
            MouseArea {
                anchors.fill: parent
                onDoubleClicked: menuAccelero.pageExit()
            }

        }

        Rectangle {
            radius: 150
            width: 25 * DataManager.accelerometerZ
            height: 25
            gradient: Gradient {
                GradientStop { position: 0.0; color: "blue"; }
                GradientStop { position: 1.0; color: "green"; }
            }
            x: DataManager.accelerometerX
            y: DataManager.accelerometerY
        }

    }
}
