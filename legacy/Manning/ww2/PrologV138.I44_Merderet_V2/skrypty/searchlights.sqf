//Stworzone przez Manning - przekazywac ["celeAA" , "jednostka AA"]
//prosty skrypt - po przekazaniu array z celami (game logic) i jednostki, jednostka wali w punkt logiczny. Lekkie dla serwera, smialo mozna podkrecic do 30 jednostek
//upewnic sie ze cele sa w zasiegu AA
//potem przekazac array jako 1 sza wartosc, druga to nazwa Arty i to wszystko


//wyjebac graczy
if(hasInterface) exitWith {};

//init variables
_searchlightTargets = _this select 0;
_searchlight = _this select 1;
_operator = gunner _searchlight;
_pos = getPos _searchlight;

_wlaczenieSearchLight = _operator action ['lightOn', _searchlight];

while{alive _operator} do {

	{
		_searchlight doTarget _x;
		
		sleep selectRandom [3,4,5];} forEach _searchlightTargets;
	
	
};