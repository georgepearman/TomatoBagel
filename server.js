/**
 * User: Austen
 * Date: 3/8/13
 * Time: 7:37 PM
 */

/* Globals */
var DEFAULT_PAGE = "index.html"
var PUBLIC_DIR = '/public/'

var colors  = require('colors');
var express = require('express'),
    app     = express(),
    http    = require('http'),
    server  = http.createServer(app),
    io      = require('socket.io').listen(server, {'log level': 1});

/* Starts server listener on port 80 */
server.listen(80,function(){
    console.log('Node.js Server started on port 80');
});

/* Attach logger to server callback */
app.use(logger);

/* If an empty ('/') URL is requested, deliver /public/{DEFAULT_PAGE} to the client */
app.get('/',function(req,res){
    console.log("sending "+DEFAULT_PAGE);
    res.sendfile(__dirname+PUBLIC_DIR+DEFAULT_PAGE);
});

/* Allow data in /public directory to be sent to client
 * Any file requests will only be checked for and sent from /public
 * This call prepends public to the requested URL
 */
app.use(express.static(__dirname +PUBLIC_DIR));

/* Sending and receiving socket.io messages occurs here */
io.sockets.on('connection',function(socket){
    socket.emit('intialize',"Initialization message");
    socket.on('completeTurn',function(data){
        console.log("Captured: "+data.yellow);
        socket.emit('reply', {message: data});
    });
});

/* Simply writes request information out to console */
function logger(req,res,next){
    console.log("%s '%s' from %s", req.method, req.url, req.ip);
    next();
}