/**
 * User: Austen
 * Date: 3/8/13
 * Time: 8:52 PM
 */

var server = require("./server");
var router = require("./router");


server.start(router.route);