//Stworzone przez Manning - przekazywac ["celeArty" , "jednostka Arty"]
//prosty skrypt - po przekazaniu array z celami (game logic) i jednostki, jednostka wali w punkt logiczny. Lekkie dla serwera, smialo mozna podkrecic do 30 jednostek
//upewnic sie ze cele sa w zasiegu Arty
//potem przekazac array jako 1 sza wartosc, druga to nazwa Arty i to wszystko


//wyjebac graczy
if(hasInterface) exitWith {};

//init variables
_Artytargets = _this select 0;
_Artygun = _this select 1;
_gunner = gunner _Artygun;
_pos = getPos _Artygun;

while{alive _gunner} do {
	//pobranie celu
	_firePos = selectRandom _Artytargets;
	_rounds = selectRandom [3,4,5];
	//bohemia - funkcja do suppresive (NAJLZEJSZA Z MOZLIWYCH - smialo mozna jebnac do 30-40 strzelajacych obiektow bo tej samej funkcji uzywaja aiki
	//po spawnie
	_Artygun doWatch _firePos;
	sleep selectRandom [5,5.5,6,6.5,7];
	_Artygun fire ((weapons _Artygun) select 0);
	
	//sleep do przeladowania - ustawic mniej wiecej czas jaki Arty potrzebuje na reload
	sleep 10;
	
	//resupply amunicje
	//[_Artygun, {_this setVehicleAmmoDef 1;}] remoteExecCall ["bis_fnc_call", _Artygun];
	_Artygun setVehicleAmmo 1;
	};