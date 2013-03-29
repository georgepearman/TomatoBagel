/**
 * User: Austen
 * Date: 3/8/13
 * Time: 7:37 PM
 */

/* Global config */
ReqPrefix = {
    CREATE: '/create',
    JOIN: '/join',
    STATIC: '/public',
    USER_INFO_REQUEST: '/info'
};

DefaultFiles = {
    INDEX: 'index.html',
    GAME: 'game.html'
};

ServerConfig = {
    HOSTNAME: 'http://127.0.0.1',
    HOSTIP: '127.0.0.1',
    HTTPPORT: 8888
};

MongoConfig = {
    HOST: '127.0.0.1',
    PORT: '27017',
    GROUP_C: "groups",
    USERLOG_C: "userlog"
};

var color = require('colors');
var express = require('express'),
    app     = express(),
    http    = require('http'),
    server  = http.createServer(app),
    io      = require('socket.io').listen(server, {'log level': 1});
//var execSync = require('exec-sync'); //  for cli integration
var md5 = require('MD5');

/* Mongo! */
var MongoDB   = require('mongodb'),
    MongoServer = new MongoDB.Server(MongoConfig.HOST, MongoConfig.PORT, {dbpath: "./data/db"}),
    db_connector = new MongoDB.Db("tomatobagel",MongoServer,{w:1});

db_connector.open(function(err,db){
    if(err){
        console.error(err);
        return;
    }
    var dbUtils = require('./dbUtils.js').dbHandler(db);

    /* Starts server listener */
    server.listen(ServerConfig.HTTPPORT,function(){
        console.log('Node.js Server started on port '+ServerConfig.HTTPPORT);
    });

    /* Attach logger to server callback */
    app.use(logger);
    app.use(express.bodyParser());

    app.use(ReqPrefix.JOIN,function(req,res){
         dbUtils.handleGroupJoinRequest(req,res,function(err){
             if(err){
                 console.error(err);
                 res.send(err);
             }else{
                 res.redirect("/"+DefaultFiles.GAME);
             }
         });
    });

    /* Handle group creation requests */
    app.use(ReqPrefix.CREATE,function(req,res){
        dbUtils.handleGroupCreationRequest(req,res);
    });

    /* Handle user info request */
    app.use(ReqPrefix.USER_INFO_REQUEST,function(req,res){
       dbUtils.checkUserLog(req.ip,function(err,resp){
          if(err){
              console.error(err);
              res.send("Error occurred: "+err);
          }else if(resp){
              console.log("Info req: user found");
              console.log(resp);
              /* If user already exists in database, send the logged info */
                res.send(resp);
          }else{
              console.log("user does not exist in database");
              /* If user does not exist in database, create a new entry in database */
                var newUserObj = {$set:{ip:req.ip,currentGroupInfo:{},groups:[]}};
                dbUtils.logUserInfo(md5(req.ip),newUserObj,{upsert:true});
                res.send(newUserObj);
          }
       });
    });

    /* If an empty ('/') URL is requested, deliver default static file to the client */
    app.get('/',function(req,res){
        console.log("sending "+DefaultFiles.INDEX);
        res.sendfile(__dirname+ReqPrefix.STATIC+"/"+DefaultFiles.INDEX);
    });

    /* Allow data in /public directory to be sent to client
     * Any file requests will only be checked for and sent from /public
     * This call prepends public to the requested URL
     */
    app.use(express.static(__dirname + ReqPrefix.STATIC));

    /* Sending and receiving socket.io messages occurs here */
    io.sockets.on('connection',function(socket){
        initializeClientConnection(socket);
        socket.emit('intialize',"Initialization message");
        socket.on('FromUI',function(data){
            //  when we get a message from the ui, we run the message
            //  through the command line tool and send the returned message
            //  back to the ui.
            console.log("sending message from ui to game model: "+data.yellow);
            //socket.emit('ToUI', execSync( 'GameModels/RunRisk ' + data ) );
        });
        socket.on('UIDebug',function( data ){
            console.log("UIDebug: "+data.yellow);
        });
        //console.log(execSync('echo $HOME'));
    });

    /* Check db to make sure client is registered in a group.
     * Register client's socket to their currently registered group
     */
    function initializeClientConnection(socket){
        var clientIp = socket.handshake.address.address;
        dbUtils.checkUserLog(clientIp,function(err,clientInfo){
            if(err){
                console.error(err);
            }else if(clientInfo){
                if(clientInfo.currentGroupInfo){
                    var currGroupInfo = clientInfo.currentGroupInfo;
                    socket.join(currGroupInfo.groupHash);
                    socket.emit("currentGroupInfo",currGroupInfo);
                }else{
                    /* If client is not currently registered to any group, they should not be allowed access to the game.
                     * Error is thrown for debug purposes. Should be changed to handle the above functionality in the future.
                     */
                    console.log(clientInfo);
                    throw "Client not registered in group (ip: "+clientIp+")";
                }
            }
        });
    }
});

/* Simply writes request information out to console */
function logger(req,res,next){
    console.log("%s '%s' from %s", req.method, req.url, req.ip);
    next();
}