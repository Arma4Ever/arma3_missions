if(hasInterface) exitWith {};

_arrayKrzyki = ["cry1long","cry2long","cry4short","cry5short"];

_aktor = _this select 0;

while{alive _aktor} do {

	_krzyk = selectRandom _arrayKrzyki;
	sleep selectRandom [1,2,3];
	switch (_krzyk) do
	{
		case "cry1long": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\cry1long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 20, 1, 50];
			sleep 22;};
			
		case "cry2long": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\cry2long.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 20, 1, 50];
			sleep 33;};
			
		case "cry4short": {
			_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\cry4short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 20, 1, 50]; 
			sleep 28;};
		case "cry5short": {_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
			_soundToPlay = _soundPath + "dzwieki\cry5short.ogg";

			playSound3D [_soundToPlay, _aktor, false, getPos _aktor, 20, 1, 50]; sleep 27;};
		default {hint "def"};
	};	
		};