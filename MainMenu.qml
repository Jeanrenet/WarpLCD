import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    anchors.centerIn: parent

    Connections {
        ignoreUnknownSignals: true
        target: mainLoader.valid? mainLoader.item : null
        onPageExit: { mainLoader.source = "" }
    }

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 1

        WarpButton {
            id: temperatureBtn
            iconName: "qrc:/Images/Images/temperature.svg"

            onButtonClicked: {
                mainLoader.source = "MenuTemperature.qml"
            }
        }
        WarpButton {
            id: acceleroBtn
            iconName: "qrc:/Images/Images/3d.svg"

            onButtonClicked: {
                mainLoader.source = "MenuAccelerometer.qml"
            }
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
        anchors.bottomMargin: 25
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Loader {
        id: mainLoader
        focus: true
        property bool valid: item !== null
    }
}



