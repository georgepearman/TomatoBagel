/**
 * User: Austen
 * Date: 3/26/13
 * Time: 2:29 AM
 */
var md5 = require("MD5");
var dbHandler = function(db){
    //Properties
    this.db = db;

    //Methods
    this.logUserInfo = logUserInfo;
    this.checkUserLog = checkUserLog;
    this.handleGroupCreationRequest = handleGroupCreationRequest;
    this.handleGroupJoinRequest = handleGroupJoinRequest;

    return this;
};

var handleGroupCreationRequest = function(req,res){
    /* Check if group already exists */
    var name;
    name = req.body.name;
    var numSlots = req.body.slots;
    if(!(name&&numSlots)){
        res.send("<span class='error'>Name field is blank</span>");
        return;
    }
    /* Create string to hash */
    var hashable = name;

    /* Hash string and insert it into database if it doesn't already exist */
    var groupHash = md5(hashable);
    this.db.collection(MongoConfig.GROUP_C,function(err,collection){
        collection.find({_id:groupHash}).toArray(function(err,results){
            if(results.length===0){
                collection.insert({_id:groupHash,name:name,n:parseInt(numSlots),players:[]},{w:1},function(err,records){
                    if(err){
                        console.error(err);
                    }else{
                        var message = "<label><span class='info'>Send this code to your friends</span>"+createJoinURL(groupHash)+"</label>";
                        res.send(message);
                    }
                });
            }else{
                res.send("<span class='error'>Group already exists</span>");
                console.error(results);
            }
        });
    });
};

/*
 * Add a client to an existing group
 */
var handleGroupJoinRequest = function(req,res,callback){
    /* Error storage */
    var localErr = null;
    /* Extract groupHash as all the alphanumeric characters appended in the url */
    var keyRegex = new RegExp("[A-z0-9]+").exec(req.url);
    if(keyRegex && keyRegex.length==1){
        var groupHash = keyRegex[0];
    }else{
        localErr = "Invalid URL";
        return callback(err);
    }

    /* Get previously stored info about client */
    var userIP = req.ip;
    var playerHash = md5(req.ip);
    var self = this;

    this.db.collection(MongoConfig.GROUP_C,function(err,collection){
        if(err){
            localErr = err;
            callback(localErr);
        }else{
            collection.find({_id:groupHash}).toArray(function(err,results){
                /* Check if group does not exist */
                if(results.length===0){
                    console.error("Doesn't exist");
                    localErr =  "Group does not exist!";
                }else if(results.length>1){
                    console.log("Returned more than one entry?".yellow);
                    console.log(results);
                    localErr = "Invalid group!";
                }else{
                    console.log("Found one group matching hash:"+results[0].name);
                    var matchedEntry = results[0];
                    /* If user ip is already logged in this group, allow access */
                    var numPlayers = matchedEntry.players.length;
                    var clientPlayerNum = matchedEntry.players.indexOf(userIP);
                    console.log(userIP);
                    console.log(matchedEntry);
                    if(clientPlayerNum!==-1){
                        console.log("You are logged as player "+(clientPlayerNum));
                        self.logUserInfo(playerHash,{$set:{ip:userIP,currentGroupInfo:{'groupHash':groupHash,'groupName':matchedEntry.name,'playerNum':numPlayers}}});
                    }else if(matchedEntry.n>0){
                        /* If user ip is not logged in this group, add client if group is not full */
                        collection.update({_id:groupHash},{$addToSet: {players:userIP}, $inc: {n:-1}},dbLogger);
                        console.log("You have been added to the group ("+matchedEntry.name+") as player number "+(numPlayers));
                        // Update client's entry in userlog collection to reflect addition to group
                        self.logUserInfo(playerHash,{$set:{ip:userIP,currentGroupInfo:{'groupHash':groupHash,'groupName':matchedEntry.name,'playerNum':numPlayers}},$addToSet:{'groups':groupHash+","+matchedEntry.name}},null,dbLogger);
                    }else{
                        localErr = "There are no more slots left in this group ("+matchedEntry.n+")";
                    }
                }
                callback(localErr);
            });
        }
    });
};

/* Checks user log */
var checkUserLog = function(ip,callback){
    var hash = md5(ip);
    if(!callback){
        callback = dbLogger;
    }
    this.db.collection(MongoConfig.USERLOG_C,function(err,collection){
        collection.find({_id:hash}).toArray(function(err,resp){
            if(resp && resp.length>1){
                throw "Multiple entries found in user log";
            }else if(resp.length==1){
                callback(null,resp[0]);
            }else{
                callback(null,null);
            }
        });
    });
};

/* Logs information (a field and value pair) about a client to their entry in the client-tracking hash table */
var logUserInfo = function(id,infoObj,upsertOption,callback){
    if(!callback){
        callback = dbLogger;
    }

    if(!upsertOption){
        upsertOption = {'upsert':false};
    }else{
        upsertOption = {'upsert':true};
    }
    console.log("logging user info");console.log(upsertOption);

    this.db.collection(MongoConfig.USERLOG_C,function(err,collection){
        collection.update({_id:id},infoObj,upsertOption,callback);
    });
};

//Helpers


var saveEntryInDB = function(db,collectionName,obj,callback){
    if(!callback){
        callback = dbLogger;
    }

    db.collection(collectionName,function(err,dbCollection){
        if(err){
            callback(err,dbCollection);
        }else{
            dbCollection.save(obj,callback);
        }
    });
};

var createJoinURL = function(groupHash){
    var url = ServerConfig.HOSTNAME+":"+ServerConfig.HTTPPORT+ReqPrefix.JOIN+"/"+groupHash;
    var htmlLink = "<a class=\"response\" href=\""+url+"\">"+url+"</a>";
    return htmlLink;
};

var dbLogger = function(err,resp){
    console.log("dbLogger:");
    if(err){
        console.error(err);
    }else{
        console.log(resp);
    }
    console.log("/dbLogger")
};

exports.dbHandler = dbHandler;