if(hasInterface) exitWith {};

_object = _this select 0;



sleep 15;

_vehicle =  createVehicle ["B_UAV_05_F", getPosATL zalamanie, [], 0, "FLY"];

_vehicle attachTo [zalamanie,[0,0,0]];
_vehicle setDir 45;

{ 
	_vehicle setObjectMaterialGlobal [_x, 'A3\Data_F\mirror.rvmat']; 
	_vehicle setObjectTextureGlobal [_x,'#(argb,8,8,4)color(1,1,1,0.7)']; } forEach [0,1,2,3,4,5,6,7,8,9,10];
	
_null = [monolith, _vehicle] execVM "skrypty\alienAscend.sqf";

sleep 120;

deleteVehicle _vehicle;

sleep 45;

deleteVehicle monolith;