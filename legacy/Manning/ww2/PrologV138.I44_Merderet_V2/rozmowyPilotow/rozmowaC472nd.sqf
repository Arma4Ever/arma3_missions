if(isDedicated) then {
isEasy_2_1 = false;
isEasy_2_2 = false;
isEasy_2_3 = false;
isEasy_2_4 = false;
isEasy_2_5 = false;
isEasy_2_6 = false;
isEasy_2_7 = false;
isEasy_2_8 = false;
isEasy_2_9 = false;
isEasy_2_10 = false;
isEasy_2_11 = false;
isEasy_2_12 = false;
isEasy_2_13 = false;

sleep 0.1;

if(!isNil "easy_2_1") then {isEasy_2_1 = true;} else {};
if(!isNil "easy_2_2") then {isEasy_2_2 = true;} else {};
if(!isNil "easy_2_3") then {isEasy_2_3 = true;} else {};
if(!isNil "easy_2_4") then {isEasy_2_4 = true;} else {};
if(!isNil "easy_2_5") then {isEasy_2_5 = true;} else {};
if(!isNil "easy_2_6") then {isEasy_2_6 = true;} else {};
if(!isNil "easy_2_7") then {isEasy_2_7 = true;} else {};
if(!isNil "easy_2_8") then {isEasy_2_8 = true;} else {};
if(!isNil "easy_2_9") then {isEasy_2_9 = true;} else {};
if(!isNil "easy_2_10") then {isEasy_2_10 = true;} else {};
if(!isNil "easy_2_11") then {isEasy_2_11 = true;} else {};
if(!isNil "easy_2_12") then {isEasy_2_12 = true;} else {};
} else {};

c47_5 vehicleChat "[Pilot]Zblizamy sie do DZ!";
[c47_5D, ["radioChatter1st", 30, 1]] remoteExec ["say3d", 0, true];;
sleep 10;

c47_5 vehicleChat "[Pilot] Zapalic czerwone swiatlo!";
if(isDedicated) then {easy2ndJumpProcedure_1 = [c47_5,true] spawn LIB_fnc_turnInteriorLightStatement;};
sleep 8;
if(isDedicated && isEasy_2_7) then {easy2ndJumpProcedure_2 = [c47_5, easy_2_7] spawn LIB_cargoStandUpStatement;} else {};
sleep 2;

c47_5 vehicleChat "[Pilot] Sierzant na pozycje Jump Master!";
sleep 1;
if(isDedicated && isEasy_2_7) then {easy2ndJumpProcedure_3 = [c47_5,easy_2_7] spawn LIB_cargoSwitchtoJumpMasterStatement;} else {};
sleep 1;

c47_5 vehicleChat "[Pilot](Na radiu) Nieczytelne! Leader Cztery, powtorz komunikat!";
sleep 5;

c47_5 vehicleChat "[Jump Master] Wszyscy wstac! Hook up!";
sleep 0.1;
if(isDedicated && isEasy_2_1) then {easy2ndJumpProcedure_5 = [c47_5, easy_2_1] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_2) then {easy2ndJumpProcedure_6 = [c47_5, easy_2_2] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_3) then {easy2ndJumpProcedure_7 = [c47_5, easy_2_3] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_4) then {easy2ndJumpProcedure_8 = [c47_5, easy_2_4] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_5) then {easy2ndJumpProcedure_9 = [c47_5, easy_2_5] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_6) then {easy2ndJumpProcedure_10 = [c47_5, easy_2_6] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_8) then {easy2ndJumpProcedure_11 = [c47_5, easy_2_8] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_9) then {easy2ndJumpProcedure_12 = [c47_5, easy_2_9] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_10) then {easy2ndJumpProcedure_13 = [c47_5, easy_2_10] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_11) then {easy2ndJumpProcedure_14 = [c47_5, easy_2_11] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_2_12) then {easy2ndJumpProcedure_15 = [c47_5, easy_2_12] spawn LIB_cargoStandUpStatement;} else {};
sleep 4;

c47_5 vehicleChat "[Pilot](Na radiu) Komunikat czytelny, Piatka przyjal";
sleep 5;

c47_5 vehicleChat "[Pilot] Sluchajcie, Brytole nie nadaja sygnalow Eureka. Lecimy na slepo.";
sleep 10;

c47_5 vehicleChat "[Pilot] Powinnismy byc na dobrym kursie, szukamy Drop Zone!";
sleep 5;

c47_5 vehicleChat "[Pilot] Rodriguez, wypatruj flar, moze Brytole puszcza flary nad Drop Zone jak nas uslysza.";
sleep 7;

c47_5 vehicleChat "[Jump Master] Sprawdzic ekwipunek! Odliczyc od tylu!";
sleep 5;

c47_5 vehicleChat "[Pilot] Jump Master, badz czujny, jak tylko wypatrzymy DZ to damy wam sygnal do zmiany swiatla!";
sleep 12;

c47_5 vehicleChat "[Pilot] Holy shit...";
sleep 3; 

c47_5 vehicleChat "[Pilot](Na radiu) Piatka przyjal, sprobujemy!";
sleep 2;

c47_5 vehicleChat "[Pilot] Poruczniku! Mamy ciezki ogien przeciwlotniczy!";
sleep 5;

c47_5 vehicleChat "[Pilot] Fuck, musimy odbic! Odbijamy! Rodriguez, zmiana planow! Wypatruj pustych pol zeby ich wyrzucic!";
sleep 15;

c47_5 vehicleChat "[Pilot] Otworzyc drzwi! Otworzyc drzwi!";
if(isDedicated) then {easy2ndJumpProcedure_16 = c47_5 spawn LIB_cargoOpenDoorStatement;};
sleep 3;

c47_5 vehicleChat "[Pilot] Musimy improwizowac, Rodriguez znajdzie wam dobre pozycje do skoku. Mozecie byc rozrzuceni, ale bedziecie zywi.";
sleep 2;

c47_5 vehicleChat "[Jump Master] Spokojnie, 2nd Rifle Squad, skakaliscie to setki razy, damy rade! Pare pociskow nas nie zrazi!";
sleep 5;

c47_5 vehicleChat "[Pilot] Musimy przeleciec nad miastem, widzimy tam mnostwo Niemcow, trzymajcie sie i nie skaczcie dopoki nie dostaniecie sygnalu.";
sleep 5;

c47_5 vehicleChat "[Pilot] Sluchajcie sie uwaznie mnie i Jump Master'a, bedziemy was wyrzucac na polanach wokol miasta.";
sleep 5;

c47_5 vehicleChat "[Pilot](Na radiu) Piatka, przyjal, Szostka, trzymajcie sie!";
sleep 10;

c47_5 vehicleChat "[Jump Master] Easy second, nie panikujemy! Gleboki wdech i wydech!";
sleep 5;

c47_5 vehicleChat "[Pilot] Przelecimy przez rzeke i zaczniemy was wyrzucac. Jump Master, to musi byc, kurwa, perfekcyjny drop!";
sleep 10;

c47_5 vehicleChat "[Pilot] Goddammit! Leader Cztery spadl! Powtarzam, Leader Cztery spadl!";
sleep 10;

c47_5 vehicleChat "[Pilot] Rodriguez, zyjesz?";
if(isDedicated) then {c47_5G setDamage 1;} else {};
sleep 5;

c47_5 vehicleChat "[Pilot] Rodriguez, fuck, man, mow do mnie!";
sleep 5;

c47_5 vehicleChat "[Pilot] Rodriguez dostal... (Na radiu) Tu Piatka, pierdolic to! Wyrzucam ich jak najszybciej!";
sleep 7;

c47_5 vehicleChat "[Pilot] Jump Master! Szykuj sie!";
sleep 5;

c47_5 vehicleChat "[Pilot] Juz prawie...";
sleep 5;

c47_5 vehicleChat "[Pilot] Fuck, dostalismy w prawy silnik! Prawy silnik sie pali!";
if(isDedicated) then {
					c47_5 allowDamage false;
					pozar_5_2 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_5_2 attachTo [c47_5,[3,5,-1]];} 
					
			else {};
sleep 2;

c47_5 vehicleChat "[Pilot] Zielone! Zmien to pierdolone swiatlo na zielone!";
sleep 1;
if(isDedicated) then {easy2ndJumpProcedure_17 = [c47_5,true] spawn LIB_fnc_changeLightStatement;};
sleep 2;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_12) then {easy2ndJumpProcedure_18 = [c47_5,easy_2_12] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_12) then {easy2ndJumpProcedure_19 = [c47_5,easy_2_12] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_11) then {easy2ndJumpProcedure_20 = [c47_5,easy_2_11] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_11) then {easy2ndJumpProcedure_21 = [c47_5,easy_2_11] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_10) then {easy2ndJumpProcedure_22 = [c47_5,easy_2_10] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_10) then {easy2ndJumpProcedure_23 = [c47_5,easy_2_10] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_9) then {easy2ndJumpProcedure_24 = [c47_5,easy_2_9] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_9) then {easy2ndJumpProcedure_25 = [c47_5,easy_2_9] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_4) then {easy2ndJumpProcedure_26 = [c47_5,easy_2_4] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_4) then {easy2ndJumpProcedure_27 = [c47_5,easy_2_4] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Pilot] Czerwone! Fuck! Fuck! Fuck!";
sleep 1;
if(isDedicated) then {easy2ndJumpProcedure_28 = [c47_5,false] spawn LIB_fnc_changeLightStatement;};
sleep 4;

c47_5 vehicleChat "[Pilot]Lewy silnik dostal!";
sleep 2;
if(isDedicated) then {
					pozar_5 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_5 attachTo [c47_5,[-3,5,-1]];} 
					
			else {};
sleep 4;
c47_5 vehicleChat "[Pilot] Fuck... Trace kontrole nad samolotem... (Na radiu) Tu Piatka, MAYDAY, MAYDAY!";
sleep 5;
c47_5 vehicleChat "[Pilot] Argh! Pozar w kabinie! Zielone! Zielone! Skakac kurwa, skakac!";
if(isDedicated) then {
					pozar_5_1 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_5_1 attachTo [c47_5,[0,7,0]];} 
					
			else {};
sleep 1;
if(isDedicated) then {easy2ndJumpProcedure_29 = [c47_5,true] spawn LIB_fnc_changeLightStatement;};
sleep 4; 

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_8) then {easy2ndJumpProcedure_30 = [c47_5,easy_2_8] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_8) then {easy2ndJumpProcedure_31 = [c47_5,easy_2_8] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_6) then {easy2ndJumpProcedure_32 = [c47_5,easy_2_6] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_6) then {easy2ndJumpProcedure_33 = [c47_5,easy_2_6] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_5) then {easy2ndJumpProcedure_34 = [c47_5,easy_2_5] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_5) then {easy2ndJumpProcedure_35 = [c47_5,easy_2_5] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_3) then {easy2ndJumpProcedure_36 = [c47_5,easy_2_3] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_3) then {easy2ndJumpProcedure_37 = [c47_5,easy_2_3] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_2) then {easy2ndJumpProcedure_38 = [c47_5,easy_2_2] spawn LIB_cargoMoveToDoorStatement; } else {};
sleep 1;
if(isDedicated && isEasy_2_2) then {easy2ndJumpProcedure_39 = [c47_5,easy_2_2] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_2_1) then {easy2ndJumpProcedure_40 = [c47_5,easy_2_1] spawn LIB_cargoMoveToDoorStatement;} else {};		
sleep 1;
if(isDedicated && isEasy_2_1) then {easy2ndJumpProcedure_41 = [c47_5,easy_2_1] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_5 vehicleChat "[Jump Master] Dobra, pilot! Wszyscy wyskoczyli, teraz ja skacze!";
sleep 1;
if(isDedicated && isEasy_2_7) then {easy2ndJumpProcedure_42 = [c47_5,easy_2_7] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_2_7) then {easy2ndJumpProcedure_43 = [c47_5,easy_2_7] spawn LIB_fnc_deployStaticLine;} else {};

if(isDedicated) then {easy2ndJumpProcedure_44 = [c47_5,false] spawn LIB_fnc_turnInteriorLightStatement;};