import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    anchors.centerIn: parent

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 1

        WarpButton {
            id: temperatureBtn
            iconName: "qrc:/Images/Images/temperature.svg"

            onButtonClicked: {
                console.log("caca")
                mainLoader.source = "MenuTemperature.qml"
            }
        }
        WarpButton {
            id: acceleroBtn
            iconName: "qrc:/Images/Images/3d.svg"
        }
        WarpButton {
            id: magnetoBtn
            iconName: "qrc:/Images/Images/magnetic-field.svg"
        }

    }
    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Loader {
        id: mainLoader
    }
}



