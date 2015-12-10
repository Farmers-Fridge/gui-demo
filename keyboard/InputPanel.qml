import QtQuick 2.4

Item {
    id:root

    property TextInput focusItem

    KeyModel {
        id:keyModel
    }
    QtObject {
        id:pimpl
        property bool shiftModifier: false
        property bool symbolModifier: false
        property int verticalSpacing: 10
        property int horizontalSpacing: 5
        property int buttonWidth:  (keyboard.width-column.anchors.margins)/10 - horizontalSpacing
        property int rowHeight: buttonWidth

    }

    Component {
        id: keyButtonDelegate
        KeyButton {
            width: pimpl.buttonWidth
            height: pimpl.rowHeight
            text: (pimpl.shiftModifier) ? letter.toUpperCase() : (pimpl.symbolModifier)?firstSymbol : letter
            onClicked: {
                textIt(text)
            }
        }
    }

    function textIt(text) {
        if (text.charAt(0) === '.' && focusItem.text.charAt(focusItem.text.length-1) == '.') {
            console.log("double period")
            textBackspace(focusItem.text)
        }
        focusItem.text = focusItem.text + text
        console.log(text)
    }

    function textBackspace(text) {
        focusItem.text = focusItem.text.substring(0,focusItem.text.length - 1)
        console.log("BS")
    }

    function tearIt() {
        return focusItem.text
    }

    Rectangle {
        id:keyboard

        color: "transparent"
        anchors.fill: parent

        MouseArea {
            anchors.fill: parent
        }

        Column {
            id:column
            anchors.margins: 5
            anchors.fill: parent
            spacing: pimpl.verticalSpacing

            Row {
                height: pimpl.rowHeight
                spacing: pimpl.horizontalSpacing
                anchors.horizontalCenter:parent.horizontalCenter
                Repeater {
                    model: keyModel.firstRowModel
                    delegate: keyButtonDelegate
                }
            }
            Row {
                height: pimpl.rowHeight
                spacing: pimpl.horizontalSpacing
                anchors.horizontalCenter:parent.horizontalCenter
                Repeater {
                    model: keyModel.secondRowModel
                    delegate: keyButtonDelegate
                }
            }
            Item {
                height: pimpl.rowHeight
                width:parent.width
                KeyButton {
                    anchors.left: parent.left
                    width: 1.25*pimpl.buttonWidth
                    height: pimpl.rowHeight
                    textColor: (pimpl.shiftModifier)? colors.ffCapsLock: colors.ffKeyLabel
                    text: "\u21ea"
                    onClicked: {
                        if (pimpl.symbolModifier) {
                            pimpl.symbolModifier = false
                        }
                        pimpl.shiftModifier = !pimpl.shiftModifier
                    }
                }
                Row {
                    height: pimpl.rowHeight
                    spacing: pimpl.horizontalSpacing
                    anchors.horizontalCenter:parent.horizontalCenter
                    Repeater {
                        anchors.horizontalCenter: parent.horizontalCenter
                        model: keyModel.thirdRowModel
                        delegate: keyButtonDelegate
                    }
                }
                KeyButton {
                    anchors.right: parent.right
                    width: 1.25*pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: "\u232b"
                    onClicked: textBackspace()

                }
            }
            Row {
                height: pimpl.rowHeight
                spacing: pimpl.horizontalSpacing
                anchors.horizontalCenter:parent.horizontalCenter
                KeyButton {
                    width: 1.25*pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: (!pimpl.symbolModifier)? "12#" : "ABC"
                    onClicked: {
                        if (pimpl.shiftModifier) {
                            pimpl.shiftModifier = false
                        }
                        pimpl.symbolModifier = !pimpl.symbolModifier
                    }
                }
                KeyButton {
                    width: 1.50*pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: ".com"
                    onClicked: textIt(text)
                }
                KeyButton {
                    width: 4.00*pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: "space"
                    onClicked: textIt(" ")
                }
                KeyButton {
                    width: pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: "@"
                    onClicked: textIt(text)
                }
                KeyButton {
                    width: pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: "."
                    onClicked: textIt(text)
                }
                KeyButton {
                    width: 1.25*pimpl.buttonWidth
                    height: pimpl.rowHeight
                    text: "enter"
                    onClicked: {
                        var userText = tearIt()
                        if (userText !== "") {
                            console.log("User text was: userText")
                        }
                    }
                }
            }
        }
    }
}
