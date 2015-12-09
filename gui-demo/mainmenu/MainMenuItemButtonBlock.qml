import QtQuick 2.4

Rectangle {
    color: "transparent"
    property bool landscape: height < width
    property real cellSize: if (landscape) {width / 3} else {height / 3}

    Rectangle {
        id: grid
        color: "transparent"
        anchors.centerIn: parent
        width: if(landscape) {cellSize*3} else {cellSize*2}
        height: if(landscape) {cellSize*2} else {cellSize*3}
        GridView {
            id: vendItemButtonView
            anchors.fill: parent
            layoutDirection: Qt.LeftToRight
            flow: GridView.FlowTopToBottom
            clip: true
            snapMode: GridView.SnapOneRow

            cellHeight: cellSize
            cellWidth: cellSize

            model: categoryVendItemXmlModel

            delegate: Component {
                Item {
                    width: vendItemButtonView.cellWidth
                    height: vendItemButtonView.cellHeight

                    Image {
                        id: button
                        source: assets.of(vendItemIconModel)
                        fillMode: Image.PreserveAspectFit
                        property real buttonScale: .90
                        width: parent.width * buttonScale
                        height: parent.height * buttonScale
                        anchors.centerIn: parent
                        MouseArea {
                            anchors.fill: parent
//                            property Component vendItemPageComponent: VendItemPage {
//                                vendItemName: vendItemNameModel
//                                vendItemImage: vendItemIconModel
//                                vendItemNutritionalImage: vendItemNutritionalIconModel
//                                vendItemCategoryName: categoryName
//                                vendItemPrice : vendItemPriceModel
//                            }
//                            onClicked: {
//                                console.log("Clicked VendItem: " + vendItemNameModel);
//                                push(vendItemPageComponent)
//                            }
                        }
                    }
                }
            }
        }
    }
}


