/*
  Author: SzwedzikPL
  Mission intro effect
*/

[] call a3cs_ui_fnc_toggleScreenshotMode;
titleCut ["", "BLACK FADED", 999];
enableEnvironment [true, false];
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie kompleksu...</t>", "PLAIN DOWN", -1, false, true];
sleep 12;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie makiety...</t>", "PLAIN DOWN", -1, false, true];
sleep 10;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie interakcji...</t>", "PLAIN DOWN", -1, false, true];
sleep 2;
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie intra...</t>", "PLAIN DOWN", -1, false, true];
preloadTitleRsc ["MissionIntroLogo", "PLAIN"];
sleep 2;
titleText ["", "PLAIN", 0.01, false, true];
playSound "avalanche_mission_intro";
private _unitData = [player, false] call a3cs_nametags_fnc_getUnitData;
[
  ["", "[przycisk odtwarzacza]", 31.9],
  ["", "[nagranie]", 33],
  ["", "[nagranie]", 37],
  ["", "[nagranie]", 43],
  ["", "[nagranie]", 48],
  ["", "[nagranie]", 54],
  ["", "[nagranie]", 59],
  ["", "[telefon]", 61.6],
  ["Major", "Co za bajzel...", 68.4],
  ["Podoficer", localize "STR_Mission_Intro_Sub1", 71],
  ["Major", localize "STR_Mission_Intro_Sub2", 76.3],
  ["Major", "ofiary?", 78],
  ["Podoficer", "11 zabitych, 23 rannych, 4 w stanie krytycznym.", 79.5],
  ["Major", "Kto za tym stoi do jasnej cholery?!", 84],
  ["Podoficer", "Pracujemy nad tym...", 86.7],
  ["", "", 90],
  ["", "[pukanie]", 93.4],
  ["Major", localize "STR_Mission_Intro_Sub3", 94.6],
  ["Podoficer", "Majorze!", 96],
  ["Podoficer", localize "STR_Mission_Intro_Sub4", 97.8],
  ["Major", localize "STR_Mission_Intro_Sub5", 100.5],
  ["Podoficer", "Yhym... Wise Man, to znowu on...", 102.7],
  ["Podoficer", localize "STR_Mission_Intro_Sub6", 106.1],
  ["Major", localize "STR_Mission_Intro_Sub7", 109.1],
  ["Podoficer", localize "STR_Mission_Intro_Sub8", 110.6],
  ["", "", 112.5]
] spawn BIS_fnc_EXP_camp_playSubtitles;
uiSleep 5.3;
titleRsc ["MissionIntroLogo", "PLAIN", 0.001];
titleFadeOut 9999999;
uiSleep 5.3;
titleRsc ["Default", "PLAIN", 0.001];
titleText [localize "STR_Mission_Intro_Screen1", "PLAIN", 0.001, false, true];
titleFadeOut 9999999;
uiSleep 5.6;
titleText ["<t font='PuristaSemiBold' size='1.6'>Nagranie z gabinetu Majora Richarda M. Bowersa</t>", "PLAIN", 0.001, false, true];
titleFadeOut 9999999;
uiSleep 5.3;
titleText ["<t font='PuristaSemiBold' size='1.6'>Sztab XXVII jednostki ekspedycyjnej Marines</t><br/><t font='PuristaMedium' size='1.3' color='#aaaaaa'>19 maja 2018 roku, godzina 16:12</t>", "PLAIN", 0.001, false, true];
titleFadeOut 9999999;
uiSleep 2.3;
titleFadeOut 3000;
uiSleep 65;
titleText [localize "STR_Mission_Intro_Screen2", "PLAIN", 0.001, false, true];
titleFadeOut 9999999;
uiSleep 2.1;
titleFadeOut 2000;
uiSleep 22.9;
titleText ["<t font='PuristaSemiBold' size='1.5' valing='bottom' >OPERATION</t><br /><t font='PuristaBold' size='4.5' valign='top'>BLACK AVALANCHE</t>", "PLAIN", 0.001, false, true];
titleFadeOut 9999999;
uiSleep 4.7;
titleText ["", "PLAIN", -1, false, true];
titleFadeOut 9;
uiSleep 4;
enableEnvironment [true, true];

uiSleep 3;
[
  [format ["%1 %2", _unitData # 2, _unitData # 1],"font = 'PuristaSemiBold'"],
  ["","<br/>"],
  ['Seal Team Six',"font = 'PuristaMedium'"],
  ["","<br/>"],
  ["Baza Landay, Prowincja Anizay", "font = 'PuristaLight'"],
  ["","<br/>"],
  [localize "STR_Mission_Intro_Location","font = 'PuristaLight'"]
] execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

uiSleep 2;
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;
titleCut ["", "BLACK IN", 5];
sleep 8;
[] call a3cs_ui_fnc_toggleScreenshotMode;
