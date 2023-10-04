//Stworzone przez Manning - przekazywac ["celeAA" , "jednostka AA"]
//prosty skrypt - po przekazaniu array z celami (game logic) i jednostki, jednostka wali w punkt logiczny. Lekkie dla serwera, smialo mozna podkrecic do 30 jednostek
//upewnic sie ze cele sa w zasiegu AA
//potem przekazac array jako 1 sza wartosc, druga to nazwa Arty i to wszystko

if(isDedicated) then {
//wyjebac graczy

//init variables
_AAtargets = _this select 0;
_AAgun = _this select 1;
_gunner = gunner _AAgun;
_pos = getPos _AAgun;
_AAgun setVehicleAmmo 1;
while{alive _gunner} do {
	_firePos = selectRandom _AAtargets;
	_AAgun doSuppressiveFire _firePos;
	sleep selectRandom [5,10];
  _AAgun setVehicleAmmo 1;
	};
};
