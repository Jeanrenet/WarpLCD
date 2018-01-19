import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Item {
    property string iconName
    Layout.preferredWidth: 100
    Layout.preferredHeight: 100

    RoundButton {
        id: button
        width: 100
        height: 100
        background: Item {

            Glow {
                id: effect
                color: button.pressed?"blue":"grey"
                anchors.fill: image
                source: image
                radius: 10
                samples: 17
                visible: button.hovered
            }

            Image {
                id: image
                smooth: true
                anchors.centerIn: parent
                source: iconName
                sourceSize.width: 100
                sourceSize.height: 100

                fillMode: Image.Stretch
            }
        }
    }
}
