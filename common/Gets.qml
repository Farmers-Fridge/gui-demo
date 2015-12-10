import QtQuick 2.4
import "../js/Rest.js" as Rest

Item {

    function of(url) {
        //console.log("GET: " + url)
        return Rest.urlStatic(url)
    }

}

