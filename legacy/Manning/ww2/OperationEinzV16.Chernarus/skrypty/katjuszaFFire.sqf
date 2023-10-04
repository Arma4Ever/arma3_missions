if(!hasInterface && !isDedicated) then {

_arty = _this select 0;
_target = _this select 1;

sleep selectRandom [5,6,7,8];

_arty doTarget _target;
sleep selectRandom [5,6,7,8];
_arty fire "LIB_BM13";      

sleep selectRandom [30,31,32,33,34,35];
_arty setVehicleAmmo 1;
sleep 1;
_arty fire "LIB_BM13";

sleep selectRandom [30,31,32,33,34,35];
_arty setVehicleAmmo 1;
sleep 1;
_arty fire "LIB_BM13";

sleep selectRandom [30,31,32,33,34,35];
deleteVehicle gunner _arty; };

