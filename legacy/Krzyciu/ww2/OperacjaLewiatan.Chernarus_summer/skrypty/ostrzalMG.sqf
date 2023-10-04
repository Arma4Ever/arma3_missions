//Stworzone przez Manning - przekazywac ["celeMG" , "jednostka MG"]
//prosty skrypt - po przekazaniu array z celami (game logic) i jednostki, jednostka wali w punkt logiczny. Lekkie dla serwera, smialo mozna podkrecic do 30 jednostek
//upewnic sie ze cele sa w zasiegu MG
//potem przekazac array jako 1 sza wartosc, druga to nazwa Arty i to wszystko


//wyjebac graczy
if(hasInterface) exitWith {};

//init variables
_MGtargets = _this select 0;
_MGgun = _this select 1;
_gunner = gunner _MGgun;
_pos = getPos _MGgun;

while{alive _gunner} do {

	//pobranie celu
	_firePos = selectRandom _MGtargets;
	
	//bohemia - funkcja do suppresive (NAJLZEJSZA Z MOZLIWYCH - smialo mozna jebnac do 30-40 strzelajacych obiektow bo tej samej funkcji uzywaja aiki
	//po spawnie
	_MGgun doSuppressiveFire _firePos;
	
	//sleep do przeladowania - ustawic mniej wiecej czas jaki MG potrzebuje na reload
	sleep selectRandom [1,2,3];
	
	//resupply amunicje
	//[_MGgun, {_this setVehicleAmmoDef 1;}] remoteExecCall ["bis_fnc_call", _MGgun];
	_MGgun setVehicleAmmo 1;
	};