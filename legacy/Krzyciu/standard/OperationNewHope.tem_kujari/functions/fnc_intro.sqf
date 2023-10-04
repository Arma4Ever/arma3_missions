private _info = [player, false] call a3cs_nametags_fnc_getUnitData;
private _imie = _info select 1;
private _ranga = _info select 2;
enableEnvironment [false,false];
//Czarny ekran//
cutText ["", "BLACK FADED", 999];
//Czarne paski na dole i na górze ekranu//
[0, 0] spawn BIS_fnc_cinemaBorder;
sleep 7;
//Muzyka//
playMusic "CUP_A2OA_Iron_Mountain_V";
sleep 4;
//2x wyświetlenie tekstu na środku ekranu//
titleText [localize "STR_Mission_Intro_2", "PLAIN",-1,true,true];
sleep 3;
titleFadeOut 2;
sleep 3;
titleText [localize "STR_Mission_Intro_3", "PLAIN",-1,true,true];
sleep 3;
titleFadeOut 2;
sleep 3;
//Wyświetlenie loga army/a3c//
titleText ["","BLACK OUT",2];
2 cutRsc ["RscLogoB","BLACK",0.01];
titleText ["","BLACK IN",3];
sleep 3;
titleText ["","BLACK OUT",2];
sleep 3;
2 cutRsc ["RscLogoA","BLACK",0.01];
titleText ["","BLACK IN",3];
sleep 3;
titleText ["","BLACK OUT",2];
sleep 3;
2 cutFadeOut 0;
titleText ["","BLACK IN",2];
//Tekst po prawej stronie//
[[localize "STR_Mission_Intro_4",2,1],[localize "STR_Mission_Intro_5",2,1],[localize "STR_Mission_Intro_6",2,1],[(_ranga + " " + _imie),2,2,4]] spawn BIS_fnc_EXP_camp_SITREP;
sleep 5;
//Koniec czarnego ekranu//
 titleCut ["", "BLACK IN", 8];
 //efekt rozmycia obrazu//
 "dynamicBlur" ppEffectEnable true;
 "dynamicBlur" ppEffectAdjust [6];
 "dynamicBlur" ppEffectCommit 0;
 "dynamicBlur" ppEffectAdjust [0.0];
 "dynamicBlur" ppEffectCommit 5;
sleep 5;
enableEnvironment [true,true];
[1, 1] spawn BIS_fnc_cinemaBorder;
sleep 15;
5 fadeMusic 0;
