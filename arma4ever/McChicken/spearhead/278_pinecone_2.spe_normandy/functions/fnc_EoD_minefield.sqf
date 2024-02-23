/*	Random Minefield Generator
*	Author: McChicken
*	Creates random minefield inside area of trigger or map marker
*	Recommended minefield density is one mine per 50m2
*	It's recomended to set single minefield area as max. 20x50 with 20 mines for good optimisation with dangerous minefield
*	v0.5
*	Execution:
*	[triggername,number,offset,mineclasses,isDynamic,isCuratorObject] spawn mission_fnc_EoD_Minefield;
*	or
*	["markername",number,offset,mineclasses,isDynamic,isCreatorObject] spawn mission_fnc_EoD_Minefield;
		0 - name of area inside which minefield schould be created (object for trigger, string for marker)
		1 - number of mines at minefield (default 20) (number)
		2 - offset (default 0) - distance in meters between area boundary and minefield boundary. Introduced to eliminate mines spawning under players legs (number)
		3 - mineclasses (default 75% APERS, 25% AT) - array of mine classes (array)
		4 - isDynamic (default true) - enable/disable dynamic simulation (boolean)
*	Returns: nothing
*/

params ["_areaName",["_j",20],["_offset",0],["_mineclasses",["APERSMine","APERSMine","APERSMine","ATMine"]],["_isDynamic",true]];
if !(isServer) exitWith {};
private _pos=[];
private _posArray = [];

private _area = _areaName call BIS_fnc_getArea;
	for "_i" from 0 to _j do {
			_pos = [_area,_offset] call mission_fnc_EoD_randomPos;
			_posArray pushback _pos;
};

[_posArray,_mineclasses,_isDynamic] spawn mission_fnc_EoD_mineSpawn;
