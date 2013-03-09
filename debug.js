/**
 * User: Austen
 * Date: 3/9/13
 * Time: 3:48 AM
 */


var util = require('util');

DEBUG_ON = true;
exports.log = function (debugMessage){
                if(DEBUG_ON){
                    process.stdout.write(util.format(debugMessage)+"\n");
                }
              };
