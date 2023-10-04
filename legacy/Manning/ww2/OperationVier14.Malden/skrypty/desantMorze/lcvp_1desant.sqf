if(hasInterface) exitWith {};

sleep 645;

_vehicle = lcvp_1;
_maxSpeed = 6;
_vel = velocity _vehicle;
_dir = 330;
_speed = _maxSpeed * selectRandom [0.95,0.94,0.93];
_vehicle engineOn true;

_vehicle setDir 330;

_vehicle setPos (getPos lcvp_1_start);

sleep 1;

while {lcvp1bool} do {lcvp_1 setVelocity [(sin _dir*_speed),(cos _dir*_speed),0]; sleep 1;};

_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "dzwieki\whistle.ogg";

{_x enableAI "ALL"} forEach crew _vehicle;

playSound3D [_soundToPlay, lcvp_1, false, getPos lcvp_1, 35, 1, 150];
lcvp_1 setVelocity [0,0,0];
lcvp_landing_1 = lcvp_1 say3d 'LIB_LCVP_Ramp_Open_1'; {lcvp_1 animate _x} forEach [['ramp_rotate',1],['roller_L0_rotate',1],['roller_L1_rotate',1],['roller_R0_rotate',1],['roller_R1_rotate',1],['shutter_rotate',0],['shutter_latch_L_translate',0],['shutter_latch_L_rotate',0],['shutter_latch_R_translate',0],['shutter_latch_R_rotate',0]]; 
if ([lcvp_1,'LIB_LCVP_Fast_Landing',true] call LIB_Get_Variable) then {[lcvp_1,'Ramp'] call LIB_LCVP_Fast_Landing};
