import QtQuick 2.4

Rectangle {
    color: "transparent"
    width: parent.width
    height: parent.height
    Image {
        source: assets.cancelImage
        fillMode: Image.PreserveAspectFit
        anchors.centerIn: parent
    }
}
