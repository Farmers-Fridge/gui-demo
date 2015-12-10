import QtQuick 2.4
import QtQuick.Layouts 1.2
import "../mainmenu"

Image {
    id: splashPage

    source: assets.backgroundImage
    fillMode: Image.Stretch

    Item {
        id: body
        height: parent.height * .93
        width: parent.width * .90
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        ColumnLayout {
            id: mainColumn
            anchors.fill: parent

            SplashButton {
                id: button
                anchors.centerIn: parent
                height: parent.height * .80
                width: parent.width
                MouseArea {
                    anchors.fill: parent
                    property Component mainMenuComponent: MainMenu {}
                    onClicked: {
                        push(mainMenuComponent)
                    }
                }
            }

            SplashPageFooterBlock {
                id: footer
                anchors.bottom: parent.bottom
                height: parent.height * .20
                width: parent.width
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        Qt.quit()
                    }
                }
            }


        }

    }

}
