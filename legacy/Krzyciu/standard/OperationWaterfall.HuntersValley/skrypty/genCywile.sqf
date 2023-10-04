//wyjebac graczy
if(hasInterface) exitWith {};
_unit = _this select 0;

removeVest _unit;
_unit disableAI "FSM";
_unit setUnitPosWeak "UP";
_unit playAction "Panic";