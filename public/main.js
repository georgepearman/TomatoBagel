//  Constants
var DEBUG = true;  // make false if you do not want debug messages printed
var boardImgPath = 'board.png';
var SERVER_IP_ADDRESS = 'localhost';
var HEX_TO_COUNTRY_NAME = { // to convert a hex color to a country name
	"7f8027":"Alaska",
	"fefe56":"Alberta",
	"fefe92":"CentralAmerica",
	"e3d648":"EasternUnitedStates",
	"f8ee51":"Greenland",
	"50502d":"NorthwestTerritory",
	"939454":"Ontario",
	"fff05f":"Quebec",
	"b29b32":"WesternUnitedStates",
	"ff0130":"Argentina",
	"843f41":"Brazil",
	"850400":"Peru",
	"ff7e81":"Venezuela",
	"0417c0":"GreatBritain",
	"1e16f4":"Iceland",
	"0acdc0":"NorthernEurope",
	"082f60":"Scandinavia",
	"4479c6":"SouthernEurope",
	"967a00":"Ukraine",
	"06fa90":"WesternEurope",
	"b3551b":"Congo",
	"ff7d2c":"EastAfrica",
	"843f12":"Egypt",
	"f8a85d":"Madagascar",
	"ff8f63":"NorthAfrica",
	"7c5744":"SouthAfrica",
	"67ff91":"Afghanistan",
	"080480":"China",
	"081800":"India",
	"78bc57":"Irkutsk",
	"66ff54":"Japan",
	"58815b":"Kamchatka",
	"080250":"MiddleEast",
	"040e00":"Mongolia",
	"3ab138":"Siam",
	"08a350":"Siberia",
	"2a502e":"Ural",
	"05b3c0":"Yakutsk",
	"4303d0":"EasternAustralia",
	"8811f4":"Indonesia",
	"8f5ba0":"NewGuinea",
	"8503e0":"WesternAustralia"
}

//  Variables
var canvas;

/////  Communications  /////
//                        //
//  No need to touch these//
//     these any more.    //
////////////////////////////
var socket = io.connect( SERVER_IP_ADDRESS );

//  runs once socket connection is successfully opened.
//  call gameStart()
socket.on('connect',function(){ 
	sendDebug( 'Connected.' );
	sendDebug( 'Calling function gameStart' );
	gameStart();
});

//  runs when a message has been received
//  calls receiveMessage() with the message
socket.on('FromUI', function ( message ) {
    receiveMessage( message );
});

//  call this to send a message to the game logic
function sendMessage( message )
{
    socket.emit('FromUI', message );
}

//  call this to send a debug message to the console
function sendDebug( message )
{
	if( DEBUG )
	{
		//  we add an empty space to ensure that we are not passing NULL
		socket.emit( 'UIDebug', message + " " );
	}   
}
////////////////////////////
//                        //
////////////////////////////

/////  Message Parsing /////
//                        //
//                        //
//                        //
////////////////////////////
var messageBases = { requestNewGame: ""


};

function decodeMessage(message)
{

}

function encodeMessage(message)
{
	
}
////////////////////////////
//                        //
////////////////////////////


///// Static Graphics  /////
//                        //
//   buttons, gameboard   //
//                        //
////////////////////////////

//  the buttons have been drawn in the html file, however
//  we must connect the buttons to javascript actions
document.getElementById( 'placeSoldiersButton' ).onclick = placeSoldiers;
document.getElementById( 'turnInCardsButton' ).onclick = turnInCards;
document.getElementById( 'attackButton' ).onclick = attack;
document.getElementById( 'moveSoldiersButton' ).onclick = moveSoldiers;

//  draw the map (without soldiers)
function drawMap()
{
	canvas = document.getElementById("GAMEBOARD");
	
	canvas.width = 1227; //  found these dimensions in photoshop
	canvas.height = 628; //  dimensions of the image file

	//  detect when the canvas is clicked by calling canvasClick
	//  true means we pass in the clickEvent to the function
	canvas.addEventListener('click', canvasClick, true);

	//  make the image
	var boardImg = new Image();
	boardImg.src = boardImgPath;
	boardImg.onload = function()
	{
		//  draw the image on the canvas
		//  0, 0 corresponds to the top left of the canvas
		canvas.getContext('2d').drawImage( boardImg, 0, 0 );
	};
}
////////////////////////////
//                        //
////////////////////////////

///// User Interaction /////
//                        //
//                        //
//                        //
////////////////////////////

//  called when someone clicks on a country
//  TODO: deal with the error that is going to occur if someone
//  clicks on a clear part of the png. ie, make a country that corresponds
//  to RGBA = 0000 that has no name.
function canvasClick( clickEvent )
{
	//  get the pixel
	var pixelData = canvas.getContext('2d').getImageData( clickEvent.offsetX, clickEvent.offsetY, 1, 1 ).data;
	
	//  now turn pixelData into a hex string
	var hexString = pixelData[0].toString( 16 ) + pixelData[1].toString( 16 ) + pixelData[2].toString( 16 )

	//  if a int has a value of 0, we want the hex value to be 00, not the default 0
	//  this is not a correct method of mitigating this problem, but it is consistent
	//  with the values in the HEX_TO_COUNTRY_NAME dictionary, so we should leave it be.
	while ( hexString.length < 6 )
	{
		hexString = hexString + "0";
	}
	
	//  get the country
	//  right now this is just a debug statement, but eventually we 
	//  do something here because we know which country was clicked.
	sendDebug( "Click on: " + HEX_TO_COUNTRY_NAME[ hexString ] );
}

//  runs when the place soldiers button has been pushed
function placeSoldiers()
{

}

//  runs when the turn in cards button has been pushed
function turnInCards()
{

}

//  runs when the attack button has been pushed
function attack()
{

}

//  runs when the move soldiers button has been pushed
function moveSoldiers()
{

}

////////////////////////////
//                        //
////////////////////////////

/////     Game Play    /////
//                        //
//                        //
//                        //
////////////////////////////
//  this is the function that runs when the game has just started
//  ie, not during normal game play.
function gameStart()
{
	drawMap();

	main();
}

//  this is the function that runs everytime we get a message other than
//  at the very start of the game
function main()
{
	drawMap();

	//  dont know what this does, but its important. 
	window.requestAnimationFrame(composeMessage);
}
////////////////////////////
//                        //
////////////////////////////


/////       Misc       /////
//                        //
//   Might use later      //
//                        //
////////////////////////////
function CountryObject( n )
{
	this.name = n;
	this.owner;
	this.numOfTroops;
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
////////////////////////////
//                        //
////////////////////////////