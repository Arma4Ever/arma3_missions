/*
  Author: SzwedzikPL
  Mission intro effect
*/

titleCut ["", "BLACK FADED", 999];
0 fadeSound 0;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie lotniskowca...</t>", "PLAIN DOWN", -1, false, true];
sleep 7;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie wyspy...</t>", "PLAIN DOWN", -1, false, true];
sleep 3;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie niespodzianek...</t>", "PLAIN DOWN", -1, false, true];
sleep 3;
titleText [format ["<t size='1.4' color='#6b6b6b'>%1</t>", localize "STR_Mission_Intro_LoadingQuote"], "PLAIN DOWN", -1, false, true];
sleep 1;
titleFadeOut 1;
sleep 2;
private _unitData = [player, false] call a3cs_nametags_fnc_getUnitData;

titleText [localize "STR_Mission_Intro_Quote", "PLAIN", -1, false, true];
titleFadeOut 9;
9 fadeSound 1;
sleep 7;

[
  [format ["%1 %2", _unitData # 2, _unitData # 1],"font = 'PuristaSemiBold'"],
  ["","<br/>"],
  ['Operacja "Ocean Fury"',"font = 'PuristaMedium'"],
  ["","<br/>"],
  [localize "STR_Mission_Intro_Location","font = 'PuristaLight'"]
] execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

sleep 3;
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;
titleCut ["", "BLACK IN", 5];
