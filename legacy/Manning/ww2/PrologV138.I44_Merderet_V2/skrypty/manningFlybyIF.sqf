//Iron front ambient flyby stworzone przez maninga
//Zeby aktywowac potrzebne jest:
//array z pozycjami startowymi
//array z pozycjami koncowymi
//samoloty beda tylko latac, nie beda strzelac

//przyklad : null = [array_start, array_koniec] execVM "manningFlybyIF.sqf";
//przyklad2 : null = [[pozycja_start_1, pozycja_start_2, pozycja_start_3], [pozycja_end_1, pozycja_end_2, pozycja_end_3]] execVM "manningFlybyIF.sqf";

//initialize arrays and variables
if(!hasInterface && isDedicated) then {

//wbite na twardo spawn zaczynajac od 5 minut + 30 sekund do 10 minut
_opoznienie = [300, 330, 360, 380, 390, 420, 450, 480, 510, 540, 570, 600];

//array z klasami us planes - mozna zmieniac uzywajac nazw klas BLUFORU - dziala ze wszystkimi modami
_usPlanes = ["LIB_US_P39","LIB_US_P39_2","LIB_P47"];

//array z klasami nazi planes - mozna zmieniac uzywajac nazw klas OPFORU - dziala ze wszystkimi modami
_gerPlanes = ["LIB_FW190F8","LIB_FW190F8_2","LIB_FW190F8_4","LIB_FW190F8_5","LIB_FW190F8_3"];

//array z pozycjami startowymi
_startPoz = _this select 0;

//array z pozycjami koncowymi
_endPoz = _this select 1;

//array z wysokosciami
_wys = [75,80,85,100,105,110];

//array z predkosciami
_predkosc = ["LIMITED" , "NORMAL" , "FULL"];


//poczatek logiki spawnu


while {true} do 
{
	//inicjlizacja liczby samolotow na raz
	_totalPlanes = 5;

	//inicjalizacja luczby us planes
	_usNumberPlanes = selectRandom [1,2,3];

	//inicjalizacja liczby nazi planes
	_gerNumberPlanes = _totalPlanes - _usNumberPlanes;
	
	
	
	//ustal liczbe niemieckich samolotow (dla optymalizacji, max 5 samolotwo bedzie dostepnych, ale serwer tworzy te pojazdy jako pojazdy proste z wektorem, smialo mozna podkrecic do 10(chociaz wtedy to juz duzo na niebie))
	
	//zresp odpowiednia liczbe odpowiednich samolotwo
	
	while {_usNumberPlanes + _gerNumberPlanes != 0} do 
	{
		sleep selectRandom _opoznienie;
		
		while{_usNumberPlanes != 0} do 
		{
			sleep 2;
			
			_grupaPilotI = createGroup INDEPENDENT;
 
			_usPilot = objNull;
 
			_usPlane = createVehicle [selectRandom _usPlanes, getPos (selectRandom _startPoz), [], 0, "FLY"];
			_usPlane setDir 90;
			_usPlane engineOn true; 
			_usPlane flyInHeight selectRandom [75, 80, 85, 90, 95, 100];
			_usPlane setVelocity selectRandom [[45, 0, 0], [50, 0, 0], [55, 0, 0], [60, 0, 0], [65, 0, 0], [70, 0, 0], [75, 0, 0], [80, 0, 0], [85, 0, 0], [90, 0, 0]];
			"LIB_US_Pilot_2" createUnit [[0,0,0], _grupaPilotI,"_usPilot = this"]; 
			_usPilot assignAsDriver _usPlane; 
			_usPilot moveInDriver _usPlane;
			_usPilot move getPos (selectRandom _endPoz);
			_usPlane forceSpeed selectRandom [45, 50, 55, 60, 65, 70, 75, 80, 85, 90];
			_grupaPilotI setBehaviour "CARELESS";
			_usNumberPlanes = _usNumberPlanes - 1;
			
		};
		
		while{_gerNumberPlanes != 0} do 
		{
			sleep 2;
			
			_grupaPilotW = createGroup WEST;
 
			_gerPilot = objNull;
 
			_gerPlane = createVehicle [selectRandom _gerPlanes, getPos (selectRandom _endPoz), [], 0, "FLY"];
			_gerPlane setDir 270;
			_gerPlane engineOn true; 
			_gerPlane flyInHeight selectRandom [75, 80, 85, 90, 95, 100];
			_gerPlane setVelocity selectRandom [[-45, 0, 0], [-50, 0, 0], [-55, 0, 0], [-60, 0, 0], [-65, 0, 0], [-70, 0, 0], [-75, 0, 0], [-80, 0, 0], [-85, 0, 0], [-90, 0, 0]];
			"LIB_GER_pilot" createUnit [[0,0,0], _grupaPilotW,"_gerPilot = this"]; 
			_gerPilot assignAsDriver _gerPlane; 
			_gerPilot moveInDriver _gerPlane;
			_gerPilot move getPos (selectRandom _startPoz);
			_gerPlane forceSpeed selectRandom [45, 50, 55, 60, 65, 70, 75, 80, 85, 90];
			_grupaPilotW setBehaviour "CARELESS";
			_gerNumberPlanes = _gerNumberPlanes - 1;
			
		};
	
		
	};
	
	
};
};