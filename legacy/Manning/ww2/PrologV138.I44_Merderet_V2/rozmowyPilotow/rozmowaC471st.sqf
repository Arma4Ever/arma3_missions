if(isDedicated) then {
isEasy_1_1 = false;
isEasy_1_2 = false;
isEasy_1_3 = false;
isEasy_1_4 = false;
isEasy_1_5 = false;
isEasy_1_6 = false;
isEasy_1_7 = false;
isEasy_1_8 = false;
isEasy_1_9 = false;
isEasy_1_10 = false;
isEasy_1_11 = false;
isEasy_1_12 = false;
isEasy_1_13 = false;

sleep 0.1;

if(!isNil "easy_1_1") then {isEasy_1_1 = true;} else {};
if(!isNil "easy_1_2") then {isEasy_1_2 = true;} else {};
if(!isNil "easy_1_3") then {isEasy_1_3 = true;} else {};
if(!isNil "easy_1_4") then {isEasy_1_4 = true;} else {};
if(!isNil "easy_1_5") then {isEasy_1_5 = true;} else {};
if(!isNil "easy_1_6") then {isEasy_1_6 = true;} else {};
if(!isNil "easy_1_7") then {isEasy_1_7 = true;} else {};
if(!isNil "easy_1_8") then {isEasy_1_8 = true;} else {};
if(!isNil "easy_1_9") then {isEasy_1_9 = true;} else {};
if(!isNil "easy_1_10") then {isEasy_1_10 = true;} else {};
if(!isNil "easy_1_11") then {isEasy_1_11 = true;} else {};
if(!isNil "easy_1_12") then {isEasy_1_12 = true;} else {};
} else {};

c47_6 vehicleChat "[Pilot] Zblizamy sie do DZ!";
[c47_6D, ["radioChatter1st", 30, 1]] remoteExec ["say3d", 0, true];
sleep 8;
c47_6 vehicleChat "[Pilot] Zapalic czerwone swiatlo!";
if(isDedicated) then {easy1stJumpProcedure_1 = [c47_6,true] spawn LIB_fnc_turnInteriorLightStatement;};
sleep 10;

c47_6 vehicleChat "[Jump Master] Przygotowac sie!";
if(isDedicated && isEasy_1_7) then {easy1stJumpProcedure_2 = [c47_6, easy_1_7] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_7) then {easy1stJumpProcedure_3 = [c47_6, easy_1_7] spawn LIB_cargoSwitchtoJumpMasterStatement;} else {};
sleep 2;

c47_6 vehicleChat "[Jump Master] Calosc wstac! Hook up!";
if(isDedicated && isEasy_1_1) then {easy1stJumpProcedure_4 = [c47_6, easy_1_1] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_2) then {easy1stJumpProcedure_5 = [c47_6, easy_1_2] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_3) then {easy1stJumpProcedure_6 = [c47_6, easy_1_3] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_4) then {easy1stJumpProcedure_7 = [c47_6, easy_1_4] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_5) then {easy1stJumpProcedure_8 = [c47_6, easy_1_5] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_6) then {easy1stJumpProcedure_9 = [c47_6, easy_1_6] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_8) then {easy1stJumpProcedure_10 = [c47_6, easy_1_8] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_9) then {easy1stJumpProcedure_11 = [c47_6, easy_1_9] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_10) then {easy1stJumpProcedure_12 = [c47_6, easy_1_10] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_11) then {easy1stJumpProcedure_13 = [c47_6, easy_1_11] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_1_12) then {easy1stJumpProcedure_14 = [c47_6, easy_1_12] spawn LIB_cargoStandUpStatement;} else {};
sleep 3;

c47_6 vehicleChat "[Pilot](Na radiu) Przyjalem... Leader Cztery, jestes pewien?";
sleep 2;

c47_6 vehicleChat "[Pilot](Na radiu) OK, bedziemy korygowac";
sleep 5;

c47_6 vehicleChat "[Pilot] Poruczniku! Brytole kompletnie zjebali, nie widzimy zadnych sygnalow Eureka w rejonie!";
sleep 10;

c47_6 vehicleChat "[Pilot] Lecimy na slepo, ale powinnismy byc na odpowiednim kursie nad Drop Zone!";
sleep 5;

c47_6 vehicleChat "[Pilot] Moj co-pilot, Byrd, juz szuka DZ. Zostalo nam okolo 5, moze 6 mil!";
sleep 5;

c47_6 vehicleChat "[Jump Master] Sprawdzic ekwipunek! Odliczyc od tylu!";
sleep 5;

c47_6 vehicleChat "[Pilot] Jump Master, zapalajcie zielone jak tylko dam znac!";
sleep 10;

c47_6 vehicleChat "[Pilot] Kurwa, co to jest...";
sleep 3;
 
c47_6 vehicleChat "[Pilot](Na radiu) Tak jest, ale nie przezyjemy tego!";
sleep 2;

c47_6 vehicleChat "[Pilot] Poruczniku! Szwaby rozstawili AA dokladnie na trasie przelotu!";
sleep 5;

c47_6 vehicleChat "[Pilot] Kurwa, to jest sciana ognia! Odbijamy w prawo! Byrd, szukaj dogodnych DZ!";
sleep 12;

c47_6 vehicleChat "[Pilot] Bedziemy was wyrzucac na goraco, Jump Master sluchaj sie mnie bo inaczej skoczycie w las albo w Niemieckie pozycje!";
sleep 13;

c47_6 vehicleChat "[Jump Master] Skakac tylko na moje wywolanie! Nie panikowac, nie bac sie, wszystko bedzie dobrze!";
sleep 11;

c47_6 vehicleChat "[Jump Master] Robiliscie to juz dziesiatki razy, dacie rade i tym razem!";
sleep 5;

c47_6 vehicleChat "[Pilot] OK! Byrd znalazl w miare bezpieczna trase przelotu!";
sleep 5;

c47_6 vehicleChat "[Pilot] Sluchajcie sie uwaznie mnie i Jump Master'a, bedziemy leciec nad lasem i niedaleko Niemieckich pozycji!";
sleep 5;

c47_6 vehicleChat "[Pilot] Niech Bog ma was w swojej opiece...";
sleep 10;

c47_6 vehicleChat "[Pilot] Dostalismy, dostalismy! Silnik sie zapalil!";
if(isDedicated) then {
					c47_6 allowDamage false;
					pozar_6 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_6 attachTo [c47_6,[-3,5,-1]];} 
					
			else {};
sleep 5;

c47_6 vehicleChat "[Pilot] Otworzyc drzwi!";
sleep 1;
if(isDedicated) then {easy1stJumpProcedure_15 = c47_6 spawn LIB_cargoOpenDoorStatement;};
sleep 2;

c47_6 vehicleChat "[Pilot] Zielone! Zielone!";
sleep 1;
if(isDedicated) then {easy1stJumpProcedure_16 = [c47_6,true] spawn LIB_fnc_changeLightStatement;};
sleep 2;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_12) then {easy1stJumpProcedure_17 = [c47_6,easy_1_12] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_12) then {easy1stJumpProcedure_18 = [c47_6,easy_1_12] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_11) then {easy1stJumpProcedure_19 = [c47_6,easy_1_11] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_11) then {easy1stJumpProcedure_20 = [c47_6,easy_1_11] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_10) then {easy1stJumpProcedure_21 = [c47_6,easy_1_10] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_10) then {easy1stJumpProcedure_22 = [c47_6,easy_1_10] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;


c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_9) then {easy1stJumpProcedure_23 = [c47_6,easy_1_9] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_9) then {easy1stJumpProcedure_24 = [c47_6,easy_1_9] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;


c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_4) then {easy1stJumpProcedure_25 = [c47_6,easy_1_4] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_4) then {easy1stJumpProcedure_26 = [c47_6,easy_1_4] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;


c47_6 vehicleChat "[Pilot] Czerwone! Nie skakac! Czerwone!";
sleep 1;
if(isDedicated) then {easy1stJumpProcedure_27 = [c47_6,false] spawn LIB_fnc_changeLightStatement;};
sleep 3;

c47_6 vehicleChat "[Pilot] Jestesmy nad lasem, nie skakac!";
sleep 5;

c47_6 vehicleChat "[Pilot] Fuck! Trace kontrole nad samolotem, Byrd, nadawaj MAYDAY!";
sleep 3;

c47_6 vehicleChat "[Co-Pilot](Na radiu) MAYDAY, MAYDAY, tutaj samolot 6, dostalismy w silnik, tracimy kontrole nad samolotem, MAYDAY, MAYDAY!";
sleep 12;

c47_6 vehicleChat "[Pilot] Jump Master, przygotuj sie do zmiany swiatla! Musicie zachowac spokoj! Skakac na rozkaz!";
sleep 7;

c47_6 vehicleChat "[Pilot] Ok, zielone! Zielone!";
sleep 1;
if(isDedicated) then {easy1stJumpProcedure_28 = [c47_6,true] spawn LIB_fnc_changeLightStatement;};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_8) then {easy1stJumpProcedure_29 = [c47_6,easy_1_8] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_8) then {easy1stJumpProcedure_30 = [c47_6,easy_1_8] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_6) then {easy1stJumpProcedure_31 = [c47_6,easy_1_6] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_6) then {easy1stJumpProcedure_32 = [c47_6,easy_1_6] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_5) then {easy1stJumpProcedure_33 = [c47_6,easy_1_5] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_5) then {easy1stJumpProcedure_34 = [c47_6,easy_1_5] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_3) then {easy1stJumpProcedure_35 = [c47_6,easy_1_3] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_3) then {easy1stJumpProcedure_36 = [c47_6,easy_1_3] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_2) then {easy1stJumpProcedure_37 = [c47_6,easy_1_2] spawn LIB_cargoMoveToDoorStatement;} else {}; 

sleep 1;
if(isDedicated && isEasy_1_2) then {easy1stJumpProcedure_38 = [c47_6,easy_1_2] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_1_1) then {easy1stJumpProcedure_39 = [c47_6,easy_1_1] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_1) then {easy1stJumpProcedure_40 = [c47_6,easy_1_1] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_6 vehicleChat "[Jump Master] Dobra, pilot! Wszyscy wyskoczyli, teraz ja skacze!";
sleep 1;
if(isDedicated && isEasy_1_7) then {easy1stJumpProcedure_41 = [c47_6,easy_1_7] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_1_7) then {easy1stJumpProcedure_42 = [c47_6,easy_1_7] spawn LIB_fnc_deployStaticLine;} else {};

if(isDedicated) then {easy1stJumpProcedure_43 = [c47_6,false] spawn LIB_fnc_turnInteriorLightStatement;};
