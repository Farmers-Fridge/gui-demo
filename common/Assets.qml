import QtQuick 2.4
import "../js/Rest.js" as Rest

Item {

    function of(url) {
        //console.log("ASSET: " + url)
        return Rest.urlStatic("/image/" + url)
    }

    property string backgroundImage: of("background.png")
    property string buttonImage: of("button.png")
    property string goBackImage: of("goback.png")
    property string cancelImage: of("cancel.png")

}

