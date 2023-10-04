if(hasInterface) exitWith {};

_vehicle = _this select 0;

_tryb_i = [3,4,5];
_i = selectRandom _tryb_i;

doStop (driver _vehicle);
_z = 1;
_pozycjaLCVP = getPosATL _vehicle;
_bomba = "LIB_SC50_Bomb" createVehicle _pozycjaLCVP;

while{alive _bomba} do {_bomba setVelocity [0,0,-100]; sleep 1;};
_vehicle setDamage 1;
