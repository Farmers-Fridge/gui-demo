import QtQuick 2.4
import QtQuick.Layouts 1.2
import QtQuick.XmlListModel 2.0

Image {
    id: mainmenuPare
    source: assets.backgroundImage
    fillMode: Image.Stretch
    height: parent.height
    width: parent.width

    Component.onCompleted: {
        console.log(categoryVendItemXmlModel.count)
    }

    Item {
        id: body
        height: parent.height * .93
        width: parent.width * .90
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        XmlListModel {
            id: categoryVendItemXmlModel
            source: gets.of("/rest/config/items.xml")
            query: "/itemList/item"

            XmlRole { name: "nameModel"; query: "name/string()" }
            XmlRole { name: "iconModel"; query: "icon/string()" }
        }

        ColumnLayout {
            id: mainColumn
            anchors.fill: parent


            MainMenuItemButtonBlock {
                id: buttons
                anchors.top: parent.top
                anchors.bottom: footer.top
                Layout.alignment: Qt.AlignCenter
                height: parent.height * .70
                width: parent.width
            }

            MainMenuFooterBlock {
                id: footer
                Layout.alignment: Qt.AlignCenter
                anchors.bottom: parent.bottom
                height: parent.height * .15
                width: parent.width
            }

        }

    }

}


