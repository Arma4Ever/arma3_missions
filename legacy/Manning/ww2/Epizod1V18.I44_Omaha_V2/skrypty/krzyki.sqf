if(hasInterface) exitWith {};

_arrayKrzyki = ["yell1short","yell2short","yell3long","yell4long","yell5long","yell6long","yell7long", "yell8short", "yell9short", "yell10short", "yell11short"];

_aktor = _this select 0;

while{alive _aktor} do {

	_krzyk = selectRandom _arrayKrzyki;
	sleep selectRandom [1,2,3];
	switch (_krzyk) do
	{
		case "yell1short": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell1short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50];
			sleep 1;};
		case "yell2short": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell2short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50]; 
			sleep 9;};
		case "yell3long": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell3long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50]; 
			sleep 13;};
		case "yell4long": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell4long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50];  
			sleep 6;};
		case "yell5long": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell5long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50];  
			sleep 20;};
		case "yell6long": {_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell6long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50]; 
			sleep 14;};
		case "yell7long": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell7long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50]; 
			sleep 19;};
		case "yell8short": {_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell8short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50];  
			sleep 3;};
		case "yell9short": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell9short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50]; 
			sleep 3;};
		case "yell10short": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell10short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50]; 
			sleep 3;};
		case "yell11short": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\yell11short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 25, 1, 50];  
			sleep 3;};
		default {hint "def"};
	};	
		};