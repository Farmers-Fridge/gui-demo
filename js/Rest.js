.pragma library

function urlRoot() {
    return "qrc://"
}

function urlStatic(path) {
    //console.log("-- Rest: GET " + urlRoot() + path)
    return urlRoot() + path
}

//function urlPlay(path) {
////    console.log("-- Rest: GET " + urlRoot() + ":9000" + path)
//    return urlRoot() + ":9000" + path
//}

//function post(postCommand, params, callback) {
//    var http = new XMLHttpRequest()
//    var url = urlPlay("/post/" + postCommand);
//    http.open("POST", url, true);

//    // Send the proper header information along with the request
//    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//    http.setRequestHeader("Content-length", params.length);
//    http.setRequestHeader("Connection", "close");

//    http.onreadystatechange = function() { // Call a function when the state changes.
//                if (http.readyState == 4) {
//                    if (http.status == 200) {
//                        callback(http.responseText)
//                        console.log("-- Rest Response: " + http.responseText)
//                    } else {
//                        console.log("-- Rest " + postCommand + ": error: " + http.status)
//                    }
//                }
//            }
//    console.log("-- Rest: POST " + url + " with args [" + params + "]")
//    http.send(params);
//}

