if(isDedicated) then {

boolOdczepCzolg_1 = false;
publicVariable "boolOdczepCzolg_1";

_tank = _this select 0;
_chopper = _this select 1;

_mass = getMass _tank;

_lina_1 = ropeCreate [_chopper, "slingload0", _tank, [1.77, 2.15, -1], 20];
_lina_2 = ropeCreate [_chopper, "slingload0", _tank, [-1.77, 2.15, -1], 20];
_lina_3 = ropeCreate [_chopper, "slingload0", _tank, [1.57, -5, -0.65], 20];
_lina_4 = ropeCreate [_chopper, "slingload0", _tank, [-1.57, -5, -0.65], 20];

[_tank, 12000] remoteExec ["setMass",0];

sleep 5;

waitUntil{boolOdczepCzolg_1}; 

_tank ropeDetach _lina_1;
_tank ropeDetach _lina_2;
_tank ropeDetach _lina_3;
_tank ropeDetach _lina_4;

ropeDestroy _lina_1;
ropeDestroy _lina_2;
ropeDestroy _lina_3;
ropeDestroy _lina_4;

[_tank, _mass] remoteExec ["setMass",0];}
