import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    Connections {
        ignoreUnknownSignals: true
        target: mainLoader.valid? mainLoader.item : null
        onPageExit: { mainLoader.source = "" }
    }
    //permet de "swiper" entre les menus
    SwipeView {
        id: view
        anchors.fill: parent
        currentIndex: 1 //index par défaut

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
    //indicateur permettant d'identifier l'index en cours
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
        //définit une propriété de validité qu'un item a été chargé
        property bool valid: item !== null
    }
}



