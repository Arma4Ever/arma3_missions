
sleep 30;
if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Dwie minuty do strefy, zapal czerwone.</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;sleep 3;
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Co-Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Jest</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 3;

if(isDedicated) then {procedura_3 = [c130_3,true] spawn LIB_fnc_turnInteriorLightStatement;} else {};
sleep 2;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Calosc wstac!</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;}
else {};
sleep 1;

if(isDedicated) then {skok_010 = [c130_3, a_19] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_020 = [c130_3, a_22] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.5;
if(isDedicated) then {skok_030 = [c130_3, a_23] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_040 = [c130_3, a_24] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.7;
if(isDedicated) then {skok_050 = [c130_3, a_25] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.4;
if(isDedicated) then {skok_060 = [c130_3, a_26] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.2;
if(isDedicated) then {skok_070 = [c130_3, a_27] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_080 = [c130_3, a_21] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.6;
if(isDedicated) then {skok_090 = [c130_3, a_20] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.2;
if(isDedicated) then {skok_091 = [c130_3, a_28] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_092 = [c130_3, a_29] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.2;
if(isDedicated) then {skok_093 = [c130_3, a_30] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.4;
if(isDedicated) then {skok_094 = [c130_3, a_31] spawn LIB_cargoStandUpStatement;} else {};
sleep 55;

if(isDedicated) then {drzwi3 = c130_3 spawn LIB_cargoOpenDoorStatement;};
if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Drzwi otwarte!</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;sleep 3;}
else {};

sleep 17;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Zielone, Jedynka w strefie!</t>", "PLAIN DOWN", -1, true, true];}
else {};

sleep 4;
if(isDedicated) then {procedura_3a = [c130_3,true] spawn LIB_fnc_changeLightStatement;};
sleep 1;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1.5;
if(isDedicated) then {skok_010a = [c130_3,a_19] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_010b = [c130_3,a_19] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_020a = [c130_3,a_22] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_020b = [c130_3,a_22] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_030a = [c130_3,a_23] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_030b = [c130_3,a_23] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if(isDedicated) then {skok_040a = [c130_3,a_24] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated) then {skok_040b = [c130_3,a_24] spawn Krzyc_fnc_parachute;} else {};
sleep 1;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_050a = [c130_3,a_25] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_050b = [c130_3,a_25] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_060a = [c130_3,a_26] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_060b = [c130_3,a_26] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_070a = [c130_3,a_27] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_070b = [c130_3,a_27] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_080a = [c130_3,a_21] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_080b = [c130_3,a_21] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_090a = [c130_3,a_20] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_090b = [c130_3,a_20] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_091a = [c130_3,a_28] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_091b = [c130_3,a_28] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_092a = [c130_3,a_29] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_092b = [c130_3,a_29] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_093a = [c130_3,a_30] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_093b = [c130_3,a_30] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;

if(player distance c130_3 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 0.8;
if(isDedicated) then {skok_094a = [c130_3,a_31] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 0.8;
if(isDedicated) then {skok_094b = [c130_3,a_31] spawn Krzyc_fnc_parachute;} else {};
sleep 0.8;
