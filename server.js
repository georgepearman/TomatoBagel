/**
 * User: Austen
 * Date: 3/8/13
 * Time: 7:37 PM
 */

var http = require("http");
var url = require("url");


function start(route) {
    function onRequest(request, response) {
        var pathname = url.parse(request.url).pathname;
        console.log("Request for "+request.url+" received.");

        route(pathname,request,response);
    }

    http.createServer(onRequest).listen(8888);
    console.log("Server has started.");
}

exports.start = start;