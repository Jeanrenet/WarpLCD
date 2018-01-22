import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    anchors.centerIn: parent
    //anchors.

    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 1

        WarpButton {
            id: temperatureBtn
            iconName: "qrc:/Images/Images/temperature.svg"
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
}



