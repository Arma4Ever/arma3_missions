//Stworzone przez Manning - przekazywac ["celeAA" , "jednostka AA"]
//prosty skrypt - po przekazaniu array z celami (game logic) i jednostki, jednostka wali w punkt logiczny. Lekkie dla serwera, smialo mozna podkrecic do 30 jednostek
//upewnic sie ze cele sa w zasiegu AA
//potem przekazac array jako 1 sza wartosc, druga to nazwa Arty i to wszystko


//wyjebac graczy
if(hasInterface) exitWith {};


//init variables
_AAtargets = _this select 0;
_AAgun = _this select 1;
_gunner = gunner _AAgun;
_pos = getPos _AAgun;

while{alive _gunner} do {

	//pobranie celu
	_firePos = selectRandom _AAtargets;
	
	//bohemia - funkcja do suppresive (NAJLZEJSZA Z MOZLIWYCH - smialo mozna jebnac do 30-40 strzelajacych obiektow bo tej samej funkcji uzywaja aiki
	//po spawnie
	_AAgun doSuppressiveFire _firePos;
	
	//sleep do przeladowania - ustawic mniej wiecej czas jaki AA potrzebuje na reload
	sleep selectRandom [5, 6, 7, 8, 9, 10];
	
	
	//resupply amunicje
	[_AAgun, {_this setVehicleAmmoDef 1;}] remoteExecCall ["bis_fnc_call", _AAgun];
	
	};