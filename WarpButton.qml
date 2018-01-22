import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    property string iconName

    Button {
        id: button        
        anchors.centerIn: parent
        width: parent.width * 0.70
        height: parent.height * 0.70

        background: Rectangle {
            id: background
            width: parent.width
            height: parent.height
            Image {
                id: image
                smooth: true
                anchors.centerIn: parent
                source: iconName
                sourceSize.width: parent.width * (button.pressed? 1.2: 1)
                sourceSize.height: parent.height * (button.pressed? 1.2: 1)

                fillMode: Image.Stretch
            }
        }
    }
}
