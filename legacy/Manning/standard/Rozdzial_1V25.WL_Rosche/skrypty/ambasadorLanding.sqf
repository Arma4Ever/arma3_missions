if(hasInterface) exitWith {};

sleep 10;

heli_ambasador animateDoor ["Door_6_source",1];

sleep 5;

{_x leaveVehicle heli_ambasador; _x action ["GetOut",heli_ambasador];} foreach units ambasador_gr;
{_x leaveVehicle heli_ambasador; _x action ["GetOut",heli_ambasador];} foreach units zandarmi;
{_x leaveVehicle heli_ambasador; _x action ["GetOut",heli_ambasador];} foreach units abw;

sleep 10;

{deleteVehicle _x} foreach units piloci;