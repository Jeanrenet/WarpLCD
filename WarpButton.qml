import QtQuick 2.9
import QtQuick.Controls 2.2

//création d'un item générique
Item {
    //propriété contenant le chemin de l'image
    property string iconName

    //signal indiquant le clique sur le bouton
    signal buttonClicked;

    //bouton
    Button {
        id: button        
        anchors.centerIn: parent
        width: parent.width * 0.60
        height: parent.height * 0.60

        //création d'un background en forme de rectangle avec une image
        background: Rectangle {
            id: background
            width: parent.width
            height: parent.height
            Image {
                id: image
                fillMode: Image.Stretch
                smooth: true
                anchors.centerIn: parent
                source: iconName
                //taille de l'image en fonction de l'état du bouton
                sourceSize.width: parent.width * (button.pressed? 1.2: 0.9)
                sourceSize.height: parent.height * (button.pressed? 1.2: 0.9)
            }
        }
        onClicked: {
            //émission du signal "buttonClicked"
            buttonClicked()
        }
    }
}
