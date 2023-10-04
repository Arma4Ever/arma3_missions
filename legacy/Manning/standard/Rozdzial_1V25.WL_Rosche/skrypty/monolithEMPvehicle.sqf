if(hasInterface) exitWith {};

_vehicles = nearestObjects [monolit, ["Car","Tank","Truck","Helicopter","Plane","APC"], 10000];

{_x setHitPointDamage ["hitEngine",1]; _x setHitPointDamage ["gun",1]; _x disableTIEquipment true; _x disableNVGEquipment true; [[_x],"skrypty\monolithEMPeffectVehicle.sqf"] remoteExec ["execVM",0]; sleep 0.1} forEach _vehicles;
