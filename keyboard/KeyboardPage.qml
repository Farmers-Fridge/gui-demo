import QtQuick 2.4
import QtQuick.Layouts 1.2

Image {
    id: keyboardPage
    source: assets.backgroundImage
    fillMode: Image.Stretch

    property string startText

    Item {
        id: body
        height: parent.height * .93
        width: parent.width * .90
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        ColumnLayout {
            id: mainColumn
            height: body.height
            width: body.width

            KeyboardTextInput {
                id: userTextItem
                text: startText
                font.pixelSize: 75
                focus: true
            }

            InputPanel {
                id: inputPanel
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: parent.width / 2
                focusItem: userTextItem
            }

            Image {
                anchors.left: parent.left
                source: assets.goBackImage
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    anchors.fill: parent
                    onClicked: popBackOnePage()
                }
            }
        }
    }
}
