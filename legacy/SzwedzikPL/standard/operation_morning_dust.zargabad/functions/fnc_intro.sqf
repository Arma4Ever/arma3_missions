
titleCut ["", "BLACK FADED", 999];
[] call a3cs_ui_fnc_toggleScreenshotMode;
0 fadeSound 0;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie...</t>", "PLAIN DOWN", -1, false, true];
waitUntil {
  sleep 0.1;
  private _status = missionNamespace getVariable ["mission_mapSpawn", [false]];
  _status # 0
};
waitUntil {
  sleep 0.25;
  private _status = missionNamespace getVariable ["mission_mapSpawn", [false, 0, 0, false]];
  private _counter = _status # 1;
  private _count = _status # 2;
  private _percent = floor ((_counter / _count) * 100);
  titleText [format [
    "<t color='#6b6b6b'><t size='1.4'>%5</t><br/><t size='1.6'>%1%2</t><br/>%3/%4</t>",
    _percent,
    "%",
    _counter,
    _count,
    localize "STR_Mission_Intro_CreatingObjs"
  ], "PLAIN DOWN", 0.001, false, true];
  titleFadeOut 9999;
  _status # 3
};
titleText ["<t size='1.4' color='#6b6b6b'>Synchronizacja...</t>", "PLAIN DOWN", -1, false, true];
sleep 6;
titleText ["", "PLAIN DOWN", -1, false, true];
sleep 1;
private _unitData = [player, false] call a3cs_nametags_fnc_getUnitData;
titleText [localize "STR_Mission_Intro_Quote", "PLAIN", -1, false, true];
titleFadeOut 9;
9 fadeSound 1;
sleep 7;
[
  [format ["%1 %2", _unitData # 2, _unitData # 1],"font = 'PuristaSemiBold'"],
  ["","<br/>"],
  ["Operacja Morning Dust","font = 'PuristaMedium'"],
  ["","<br/>"],
  ["F.O.B. Eufrat, Zargabad, Takistan","font = 'PuristaLight'"]
] execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

sleep 3;
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;
titleCut ["", "BLACK IN", 5];
sleep 5;
[] call a3cs_ui_fnc_toggleScreenshotMode;
