import QtQuick 2.4
import QtQuick.Layouts 1.2

Rectangle {
    color: "transparent"

    RowLayout {
        anchors.fill: parent

        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            source: assets.goBackImage
            fillMode: Image.PreserveAspectFit
            MouseArea {
                anchors.fill: parent
                onClicked: popBackOnePage()
            }
        }

    }



}

