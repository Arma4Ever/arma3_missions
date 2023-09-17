#include "script_component.hpp"
/*
 * Author: SzwedzikPL
 * Server stone drop effect
 */

params ["_startPosASL", "_endHASL", "_dir", "_type"];

private _endPosASL = [_startPosASL # 0, _startPosASL # 1, _endHASL];

private _rock = _type createVehicle [0, 0, 0];
_rock setPosASL _startPosASL;
_rock setDir _dir;
sleep 0.001;
private _bbr = boundingBoxReal _rock;
private _curPosAGL = getPos _rock;
private _bottomPosAGL = ASLtoAGL ((getPosWorld _rock) vectorAdd [0, 0, (((abs (((_bbr # 1) # 2) - ((_bbr # 0) # 2))) / 2) - 0.85)  * -1]);
playSound3D [getMissionPath "data\sounds\main_collapse.ogg", objNull, false, _startPosASL, 5, 1, 200];
[QGVAR(rockDrop), [_bottomPosAGL, _startPosASL, _endHASL, _dir, _type]] call CBA_fnc_globalEvent;

sleep 0.5;

private _id = ceil (random 13);
if (_id < 10) then {_id = "0" + (str _id);};
playSound3D [format ["a3\sounds_f_exp\environment\sfx\rock_debris\rock_debris_%1.wss", _id], objNull, false, _startPosASL, 5, 1, 200];

sleep 2;

_rock setPosASL _endPosASL;

sleep 5;

private _rockSync = createSimpleObject [(getModelInfo _rock) # 1, [496.15, 16.6382, 0]];
_rockSync setVectorDirAndUp [vectorDirVisual _rock, vectorUpVisual _rock];
sleep 30;
_rockSync setPosWorld (getPosWorld _rock);
sleep 30;
deleteVehicle _rock;
