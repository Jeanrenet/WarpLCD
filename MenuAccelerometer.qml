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
            width: 30
            height: 30

            Image {
                source: "qrc:/Images/Images/ball.svg"
                fillMode: Image.Stretch
                smooth: true
                anchors.centerIn: parent
                sourceSize.width: parent.width
                sourceSize.height: parent.height

            }
            x: -(DataManager.accelerometerX / 10) * 120 +160
            y: (DataManager.accelerometerY / 10 ) * 120 +160
        }
    }
}
