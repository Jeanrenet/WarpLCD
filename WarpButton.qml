import QtQuick 2.9
import QtQuick.Controls 2.2

Item {
    property string iconName

    signal buttonClicked;

    Button {
        id: button        
        anchors.centerIn: parent
        width: parent.width * 0.60
        height: parent.height * 0.60

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
                sourceSize.width: parent.width * (button.pressed? 1: 0.9)
                sourceSize.height: parent.height * (button.pressed? 1: 0.9)
            }
        }
        onClicked: {
            buttonClicked()
        }
    }
}
