import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Item {
    id:menuTemp
    anchors.fill: parent
    signal pageExit()

    Rectangle {
        id:rect
        anchors.fill: parent

        //création d'un "layout" vertical
        ColumnLayout {
            anchors.fill: parent

            //zone de clique
            MouseArea {
                anchors.fill: parent

                //un double clique provoque la demande de déchargement de la page
                onDoubleClicked: menuTemp.pageExit()
            }

            //ajout d'un texte pour afficher la température
            Text {
                anchors.centerIn: parent
                text: DataManager.temperature + "°C"
                font.family: "lightsteelblue"
                font.pointSize: 40
            }
        }

        //couleur qui évolue en fonction de la température
        property color finalColor : Qt.rgba(0.56 * DataManager.temperature/30,
                                            1 / (DataManager.temperature /30),
                                            0.40 / (DataManager.temperature/30),
                                            1)

        //gradient de couleur du Rectangle
        gradient: Gradient {
            GradientStop { position: 0.9; color: rect.finalColor; }
            GradientStop { position: 0.1; color: "white"; }
        }
    }
}
