
sleep 30;
if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Dwie minuty do strefy, zapal czerwone.</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;sleep 3;
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Co-Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Jest</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 3;

if(isDedicated) then {procedura_2 = [c130_2,true] spawn LIB_fnc_turnInteriorLightStatement;} else {};
sleep 2;
if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Calosc wstac!</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;}
else {};
sleep 1;

if(isDedicated) then {skok_01 = [c130_2, a_11] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_02 = [c130_2, a_12] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.5;
if(isDedicated) then {skok_03 = [c130_2, a_13] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_04 = [c130_2, a_14] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.7;
if(isDedicated) then {skok_05 = [c130_2, a_15] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.4;
if(isDedicated) then {skok_06 = [c130_2, a_16] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.2;
if(isDedicated) then {skok_07 = [c130_2, a_17] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_08 = [c130_2, a_18] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.6;
if(isDedicated) then {skok_09 = [c130_2, a_10] spawn LIB_cargoStandUpStatement;} else {};
sleep 55;

if(isDedicated) then {drzwi = c130_2 spawn LIB_cargoOpenDoorStatement;};
if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Drzwi otwarte!</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;sleep 3;}
else {};

sleep 17;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Zielone, Jedynka w strefie!</t>", "PLAIN DOWN", -1, true, true];}
else {};

sleep 4;
if(isDedicated) then {procedura_2a = [c130_2,true] spawn LIB_fnc_changeLightStatement;};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1.5;
if(isDedicated) then {skok_01a = [c130_2,a_11] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_01b = [c130_2,a_11] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_02a = [c130_2,a_12] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_02b = [c130_2,a_12] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_03a = [c130_2,a_13] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_03b = [c130_2,a_13] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_04a = [c130_2,a_14] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_04b = [c130_2,a_14] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_05a = [c130_2,a_15] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_05b = [c130_2,a_15] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_06a = [c130_2,a_16] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_06b = [c130_2,a_16] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_07a = [c130_2,a_17] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_07b = [c130_2,a_17] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_08a = [c130_2,a_18] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_08b = [c130_2,a_18] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_2 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_09a = [c130_2,a_10] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_09b = [c130_2,a_10] spawn Krzyc_fnc_parachute;} else {};
sleep 1;
