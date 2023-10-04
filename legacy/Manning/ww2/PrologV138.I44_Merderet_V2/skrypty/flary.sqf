//rozpoczecieOstrzaluFlar = 1; null = [2500, 1, 0, 300, 10, "WHITE", -20, flare_center] execVM "flary.sqf";
// ustaw rozpoczecieOstrzaluFlar na jeden by zaczac ostrzal
// null zeby wykonac skrypt
//[PROMIEN OD OBIEKTU , OPOZNIENIE MIEDZY FLARAMI W SEKUNDACH , MODYFIKATOR OPOZNIENIA , WYSOKOSC POCZATKOWA , MODYFIKATOR WYSOKOSCI POCZATKOWEJ , STRING - KOLOR Z _flaraArray , PREDKOSC OPADANIA WAZNE - MUSI BYC NEGATYWNA , NAZWA OBIEKTU WOKOL KTOREGO STRZELAJA FLARY - UWAGA MUSI BYC OBIEKT NIE MARKER ETC]

if(hasInterface) exitWith {};

// declare variables
_odpalanieFlar = 1;
_flaraArray = ["WHITE"];

// organizacja argumentow z triggera (po to, zeby przekazywac rozne dane poprzez budowe array)
_dystansOdCentrum = _this select 0;
_opoznienieFlar = _this select 1;
_opoznienieFlarModyfikator = _this select 2;
_wysokoscSpadaniaFlar = _this select 3;
_wysokoscSpadaniaFlarModyfikator = _this select 4;
_typFlar = _this select 5;
_predkoscOpadaniaFlar = _this select 6;
_pozycjaInicjalnaFlar = _this select 7;

// loop do spawnu flares
while { rozpoczecieOstrzaluFlar == 1 } do
	{
			
		// dolacz kolory - STRING - na razie tylko biale, dodac kolory przez CASE i w _flaraArray
		switch (_typFlar) do
			{
				case "WHITE": 	{ _typFlar = "F_40mm_White" };
			};
				
		// randomizacja punktu w radius wokolo obiektu - _pos to faktyczna pozycja. Przekazywanie radiusa w komendzie na triggerze
		_pos = [_pozycjaInicjalnaFlar, random _dystansOdCentrum, random 360] call BIS_fnc_relPos;
		_pos = [_pos select 0, _pos select 1, _wysokoscSpadaniaFlar + (random _wysokoscSpadaniaFlarModyfikator * _odpalanieFlar)];
			
		// spawnowanie flar na randomowej pozycji
		_flara = _typFlar createVehicle _pos;
			
		// ustawiania predkosci opadania (chyba dziala) - wazne ! musi byc negatywna w array przy przekazywaniu wartosci.
		_flara setVelocity [0, 0, _predkoscOpadaniaFlar];
			
		// regularne opoznienie strzelania flarami polaczone z modyfikatorem - przekaz 0 aby flary strzelaly regularnie bez modyfikacji
		sleep _opoznienieFlar + random _opoznienieFlarModyfikator;
		
	};