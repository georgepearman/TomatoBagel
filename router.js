/**
 * User: Austen
 * Date: 3/8/13
 * Time: 9:08 PM
 */

var fs = require("fs"),
    path = require("path"),
    mime = require("mime");

var DEFAULT_FILENAME = "ClientTest.html";

var routes = {};

function route(pathname,request,response) {
    console.log("Connection: "+request.method);

    if(request.method === "POST"){
        console.log("Header: "+request.headers);
        request.on("data",function(data){
            console.log("data "+data);
            response.writeHead(200, {'Content-Type':'text/plain'});
            response.end('This is a message','utf-8');
        });

        return;
    }


    /* Send default page when given an empty path */
    if(pathname.match(/\/$/)){
        pathname += DEFAULT_FILENAME;
    }
    /* Append string to current working directory */
    pathname = process.cwd()+pathname;

    console.log("About to route a request for " + pathname);

      fs.readFile(pathname, 'utf-8', function (error,file){
          // Check for error
          if (error){
             return throwError(response,404,'404.');
          }
          //Write headers
          var type = mime.lookup(pathname);
          response.writeHead(200, {'Content-Type': type});
          response.write(file,"binary");
          response.end();
      });

}

function throwError(response, errorNum, message){
    response.writeHead(errorNum);
    response.end("404");
}

function routeData(data){
    response.writeHead(200, {'Content-Type': 'text/plain'});
}

exports.route = route;