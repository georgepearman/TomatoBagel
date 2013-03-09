//Invariants: Countries, who they are next to, possible cards?
//var CountryArray = newArray(42);
var PlayerID;
var currentPlayer;
var canvas;
var context;
var pixeldata;
var bool = false;
var composedmessage = '';
var ColorToCountryDict = {"808000":"Alaska","FFFF00":"Alberta","FFFF80":"CentralAmerica","E3D700":"EasternUnitedStates","F8EF00":"Greenland","505027":"NorthwestTerritory","949449":"Ontario","FFF133":"Quebec","B19C00":"WesternUnitedStates","FF0000":"Argentina","804040":"Brazil","800000":"Peru","FF8080":"Venezuela","004080":"GreatBritain","0000FF":"Iceland","00ABE1":"NorthernEurope","0080FF":"Scandinavia","4778CC":"SouthernEurope","000080":"Ukraine","006EAE":"WesternEurope","AE5700":"Congo","FF8000":'EastAfrica',"804000":"Egypt","F3A94E":"Madagascar","FF915B":"NorthAfrica","7A5841":"SouthAfrica","80FF80":"Afghanistan","008040":"China","008080":"India","81bc43":"Irkutsk","80FF00":"Japan","5D8156":"Kamchatka","008000":"MiddleEast","004000":"Mongolia","50B100":"Siam","008A20":"Siberia","2F5029":"Ural","005B38":"Yakutsk","400040":"EasternAustralia","8000FF":"Indonesia","8800C2":"NewGuinea","800040":"WesternAustralia"};

function decodeMessage(message)
{
	PlayerID = 2;
	currentPlayer = 3;
}

function encodeMessage(message)
{

}

function receiveMessage(message)
{

}

function sendMessage(message)
{

}

function CountryObject(n)
{
	this.name = name;
	this.owner;
	this.numOfTroops;
}

function clickReporter(e)
{
	//var mousecoords = relMouseCoords(e);
	//var X = mousecoords[0];
	//var Y = mousecoords[1];
	X = e.pageX -10;
	Y = e.pageY -50;
	context.fillRect(X-5,Y-5,10,10);
	updateDebug(X,Y,composedmessage);
	bool = true;
	//document.getElementById("debug shit").innerHTML = X + " " + Y;

}

/**
*
*@param int X, int Y: the X and Y values of the click
*@return string c: the color of the pixel at X Y
*/

function getColorOnClick(X,Y)
{

	//var c = context.getImageData(X, Y, 1, 1).data;
	//document.getElementById("debug shit").innerHTML = X + " " + Y + " " + turnColorToHex(c);
	return "FFFF80";


}
function turnColorToHex(c)
{

	var str = '';
	for(var i = 0; i < c.length-1; i++)
	{
		str += numToHex(c[i]);
	}

}
function numToHex(num)
{

	return num.toString(16);

}
function getColor()
{
	switch(PlayerID)
	{
		case 1:
			return "red";
		case 2:
			return "#31698a";
		case 3:
			return "green";
		case 4:
			return "orange";
		case 5:
			return "yellow";
		case 6:
			return "gray";
	}
}

/**
* loops until the user has given enough input to compose a message that is sent to Georgie Porgie 
*
*@Param: a string str, which will get added to as 
*@Return: a string which is encoded to be sent to george
**/
function composeMessage()
{

	if(bool)
	{
		if(determineAction(X,Y) != false)
		{
			composedmessage += determineAction(X,Y) + "@@@";	
			encodeMessage(composedmessage);
			sendMessage(composedmessage);
			updateDebug(X,Y,composedmessage);
			bool = false;
			window.cancelAnimationFrame();
			
		}
		else
		{
			composedmessage += convertColorToCountry(getColorOnClick(X,Y));
			//composedmessage += ""+X+ " " + Y + "";
			composedmessage +="@@@";
			updateDebug(X,Y,composedmessage);
			window.requestAnimationFrame(composeMessage);
		}
		bool = false;
	}

	window.requestAnimationFrame(composeMessage);
}

/**
* a function which matches a color to its country
*	
*@param a string which is a hex color 
*@return an identifier of a country to be sent to george
*/
function convertColorToCountry(colorstring)
{
	return ColorToCountryDict[colorstring];
}

/**
*a function which determines the action requested 
*
*@param the integers X and Y which are a position on the canvas 
*@return a string of the function requested | false if the thing clicked was not a function
*/
function determineAction(X,Y)
{
	if(X < 1107 || Y > 204)
	{
		return false;
	}
	else
	{
		if(Y > 153)
		{
			//document.getElementById("debug shit").innerHTML = X + " " + Y + " MoveSoldier";
			return "MoveSoldier";
		}
		else if(Y > 102)
		{
			//document.getElementById("debug shit").innerHTML = X + " " + Y + " Attack";
			return "Attack";
		}
		else if(Y > 51)
		{
			//document.getElementById("debug shit").innerHTML = X + " " + Y + " TurnInCards";
			return "TurnInCards";
		}
		else
		{
			//document.getElementById("debug shit").innerHTML = X + " " + Y + " PlaceSoldier";
			return "PlaceSoldier";
		}
	}

}

function updateDebug(X,Y,message)
{
	document.getElementById("debug shit").innerHTML = ""+X+" " + Y + " " + message + "";
}

function main()
{

	decodeMessage("lol");

	document.getElementById("gamestate").innerHTML = "It is Player " + currentPlayer +"'s turn.";
	//CREATE THE CANVAS
	canvas = document.getElementById("GAMEBOARD");
	canvas.width = 1207;
	canvas.height = 598;
	context = canvas.getContext('2d');
	riskboard = new Image();
	riskboard.onload = function()
	{
		//CREATE THE IMAGE BACKGROUND
		context.drawImage(riskboard, 0,0, 1107, 598);
		//CREATE BUTTONS

		context.fillStyle=getColor();
		context.fillRect(1107,0,100,50);
		context.fillRect(1107,51,100,50);
		context.fillRect(1107,102,100,50);
		context.fillRect(1107,153,100,50);

		//PUTTING WRITING ON THE BUTTONS
		context.fillStyle="black";
		context.font = "bold 12px Arial";
		context.fillText("Place soldier(s)", 1113, 30);
		context.fillText("Turn In Cards", 1113, 80);
		context.fillText("Attack!", 1113, 130);
		context.fillText("Move soldier(s)", 1113, 180);
	}
	riskboard.src = "http://myusername.beryl.feralhosting.com/DL/risk-board.png";
	//unpackData(message);

	//CREATE A WAY FOR USERS TO GIVE ME DATA
	
	$("GAMEBOARD").clickReporter(e){

	} 
	//canvas.addEventListener('click', clickReporter, false);
	window.requestAnimationFrame(composeMessage);


}