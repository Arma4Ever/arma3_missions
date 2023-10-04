sleep 30;
if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Dwie minuty do strefy, zapal czerwone.</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;sleep 3;
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Co-Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Jest</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 3;

if (isDedicated) then {procedura_1 = [c130_1,true] spawn LIB_fnc_turnInteriorLightStatement;};
sleep 3;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Całość wstać!</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;} else {};
sleep 1;

if(isDedicated) then {skok_1 = [c130_1, a_1] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_2 = [c130_1, a_2] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.5;
if(isDedicated) then {skok_3 = [c130_1, a_3] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_4 = [c130_1, a_4] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.7;
if(isDedicated) then {skok_5 = [c130_1, a_5] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.4;
if(isDedicated) then {skok_6 = [c130_1, a_6] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.2;
if(isDedicated) then {skok_7 = [c130_1, a_7] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.3;
if(isDedicated) then {skok_8 = [c130_1, a_8] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.6;
if(isDedicated) then {skok_9 = [c130_1, a_9] spawn LIB_cargoStandUpStatement;} else {};
sleep 55;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Drzwi otwarte!</t>", "PLAIN DOWN", -1, true, true];
titleFadeOut 3;};
sleep 1;
if (isDedicated) then {drzwi2 = c130_1 spawn LIB_cargoOpenDoorStatement;};

sleep 18;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Pilot:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Zielone, Jedynka w strefie!</t>", "PLAIN DOWN", -1, true, true];};
sleep 3;
if (isDedicated) then {procedura_1a = [c130_1,true] spawn LIB_fnc_changeLightStatement;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1.5;
if (isDedicated) then {skok_1a = [c130_1,a_1] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_1b = [c130_1,a_1] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_2a = [c130_1,a_2] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_2b = [c130_1,a_2] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_3a = [c130_1,a_3] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_3b = [c130_1,a_3] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_4a = [c130_1,a_4] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_4b = [c130_1,a_4] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_5a = [c130_1,a_5] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_5b = [c130_1,a_5] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_6a = [c130_1,a_6] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_6b = [c130_1,a_6] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_7a = [c130_1,a_7] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_7b = [c130_1,a_7] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_8a = [c130_1,a_8] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_8b = [c130_1,a_8] spawn Krzyc_fnc_parachute;};
sleep 1;

if(player distance c130_1 < 30) then {
titleText ["<t color='#17e8d3' shadow = 1 size='1.4'>Jump Master:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Skok!</t>", "PLAIN DOWN", -1, true, true];}
else {};
sleep 1;
if (isDedicated) then {skok_1a = [c130_1,a_9] spawn LIB_cargoMoveToDoorStatement;};
sleep 1;
if (isDedicated) then {skok_1b = [c130_1,a_9] spawn Krzyc_fnc_parachute;};
sleep 1;
