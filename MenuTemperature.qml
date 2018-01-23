import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    id:menuTemp
    width: 320
    height: 320

    signal pageExit()

    Rectangle {
        id:rect
        anchors.fill: parent

        ColumnLayout {
            anchors.fill: parent
            MouseArea {
                anchors.fill: parent
                onDoubleClicked: menuTemp.pageExit()
            }

            Text {
                anchors.centerIn: parent
                text: DataManager.temperature + "°C"
                font.family: "lightsteelblue"
                font.pointSize: 40
            }
        }

        property color finalColor : Qt.rgba(0.56 * DataManager.temperature/30,
                                            1 / (DataManager.temperature /30),
                                            0.40 / (DataManager.temperature/30),
                                            1)

        gradient: Gradient {
            GradientStop { position: 0.0; color: rect.finalColor; }
            GradientStop { position: 1.0; color: "white"; }
        }
    }
}
