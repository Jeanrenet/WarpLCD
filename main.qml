import QtQuick 2.9 //module QtQuick
import QtQuick.Window 2.2 //module Window

//création d'une fenêtre
Window {
    visible: true
    width: 320
    height: 320

    MainMenu {
        //la taille du menu remplit le parent
        anchors.fill: parent
    }
}
