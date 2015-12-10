import QtQuick 2.4

Item {
    id:root
    property color color: colors.ffKeyButton
    property alias text: txt.text
    property alias font: txt.font
    property alias textColor: txt.color
    signal clicked()
    signal pressed()
    signal released()

    Rectangle {
        anchors.fill: parent
        radius: 5
        color: buttonMouseArea.pressed ? Qt.darker(root.color, 1.5) : root.color
        Rectangle {
            color: "transparent"
            width: parent.width * .70
            height: parent.height * .70
            anchors.left: parent.left
            anchors.top: parent.top
            Text {
                id: txt
                anchors.margins: 5
                anchors.fill: parent
                font.family: fonts.ffFontFamily
                font.pixelSize: 400
                color: colors.ffKeyLabel
                fontSizeMode: Text.Fit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
            }
        }
        MouseArea {
            id: buttonMouseArea
            anchors.fill: parent
            onClicked: root.clicked()
            onPressed: root.pressed()
            onReleased: root.released()
        }
    }
}
