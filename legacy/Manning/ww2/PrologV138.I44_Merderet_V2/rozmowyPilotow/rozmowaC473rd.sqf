if(isDedicated) then {
isEasy_3_1 = false;
isEasy_3_2 = false;
isEasy_3_3 = false;
isEasy_3_4 = false;
isEasy_3_5 = false;
isEasy_3_6 = false;
isEasy_3_7 = false;
isEasy_3_8 = false;
isEasy_3_9 = false;
isEasy_3_10 = false;
isEasy_3_11 = false;
isEasy_3_12 = false;
isEasy_3_13 = false;

sleep 0.1;

if(!isNil "easy_3_1") then {isEasy_3_1 = true;} else {};
if(!isNil "easy_3_2") then {isEasy_3_2 = true;} else {};
if(!isNil "easy_3_3") then {isEasy_3_3 = true;} else {};
if(!isNil "easy_3_4") then {isEasy_3_4 = true;} else {};
if(!isNil "easy_3_5") then {isEasy_3_5 = true;} else {};
if(!isNil "easy_3_6") then {isEasy_3_6 = true;} else {};
if(!isNil "easy_3_7") then {isEasy_3_7 = true;} else {};
if(!isNil "easy_3_8") then {isEasy_3_8 = true;} else {};
if(!isNil "easy_3_9") then {isEasy_3_9 = true;} else {};
if(!isNil "easy_3_10") then {isEasy_3_10 = true;} else {};
if(!isNil "easy_3_11") then {isEasy_3_11 = true;} else {};
if(!isNil "easy_3_12") then {isEasy_3_12 = true;} else {};
} else {};

c47_4 vehicleChat "[Pilot] Zblizamy sie do DZ!";
[c47_4D, ["radioChatter1st", 30, 1]] remoteExec ["say3d", 0, false];
sleep 8;

c47_4 vehicleChat "[Pilot] Zapalam czerwone!";
sleep 6;
if(isDedicated) then {easy3rdJumpProcedure_0 = [c47_4,true] spawn LIB_fnc_turnInteriorLightStatement;} else {};
sleep 1;

c47_4 vehicleChat "[Pilot](Na radiu) Tutaj Czworka, nadajecie przez siebie!";
sleep 5;
if(isDedicated && isEasy_3_7) then {easy3rdJumpProcedure_1 = [c47_4, easy_3_7] spawn LIB_cargoStandUpStatement;} else {};
sleep 2;

c47_4 vehicleChat "[Pilot] Fuck... nic nie moge zrozumiec.";
sleep 1;
if(isDedicated && isEasy_3_7) then {easy3rdJumpProcedure_2 = [c47_4,easy_3_7] spawn LIB_cargoSwitchtoJumpMasterStatement;} else {};
sleep 2;

c47_4 vehicleChat "[Jump Master] Wszyscy wstac! Hook up!";
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_4 = [c47_4, easy_3_1] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_5 = [c47_4, easy_3_2] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_6 = [c47_4, easy_3_3] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_7 = [c47_4, easy_3_4] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_8 = [c47_4, easy_3_5] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_9 = [c47_4, easy_3_6] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_10 = [c47_4, easy_3_8] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_11 = [c47_4, easy_3_9] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_12 = [c47_4, easy_3_10] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_13 = [c47_4, easy_3_11] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_14 = [c47_4, easy_3_12] spawn LIB_cargoStandUpStatement;} else {};
sleep 4;

c47_4 vehicleChat "[Jump Master] Wykonac sprawdzenie sprzetu! Odliczyc od tylu!";
sleep 12;

c47_4 vehicleChat "[Pilot] O moj Boze...";
sleep 3;

c47_4 vehicleChat "[Pilot](Na radiu) Gdzie sa sygnaly Eureka!?";
sleep 12;

c47_4 vehicleChat "[Pilot] Druzyna! Nie mamy sygnalow Eureka!";
sleep 3;

c47_4 vehicleChat "[Pilot] Przed nami sa rozstawione dziala AA, musieli zestrzelic Brytoli zanim dotarli nad DZ";
sleep 2;

c47_4 vehicleChat "[Pilot] Bedziemy musieli odbijac, nie damy rady sie przebic!";
sleep 10;

c47_4 vehicleChat "[Jump Master] Spokojnie, Easy Third! To tylko delikatny ostrzal!";
sleep 8;

c47_4 vehicleChat "[Pilot] Shit! Musze odbijac";
sleep 7;

c47_4 vehicleChat "[Pilot] Dobra, juz szukamy alternatywnej trasy przelotu!";
sleep 10;

c47_4 vehicleChat "[Pilot](Na radiu) OK, to zrobimy w ten sposob";
sleep 10;

c47_4 vehicleChat "[Jump Master] Easy Third, pamietajcie o szkoleniu! Po wyladowaniu szukajcie swoich!";
sleep 5;

c47_4 vehicleChat "[Pilot](Na radiu) Jedynka, uwazajcie! Walniecie w nas!";
sleep 10;

c47_4 vehicleChat "[Co-Pilot] Ufff.. ledwo co nas mineli...";
sleep 5;

c47_4 vehicleChat "[Pilot] Trzymajcie sie! Bedzie nami rzucac!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Lecisz prosto na ich ogien!";
sleep 3;

c47_4 vehicleChat "[Pilot] A gdzie mam odbic, do jasnej cholery?!";
sleep 2;

c47_4 vehicleChat "[Co-Pilot] Gdziekolwiek!";
sleep 3;

c47_4 vehicleChat "[Pilot] Chyba naladowali fosforu do pociskow!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Jump Master, otworz drzwi!";
sleep 1;
if(isDedicated) then {easy3rdJumpProcedure_15 = c47_4 spawn LIB_cargoOpenDoorStatement;} else {};
sleep 1;

c47_4 vehicleChat "[Pilot] Blyski mnie oslepiaja, Justin, gdzie mam odbic?!";
sleep 7;

c47_4 vehicleChat "[Pilot] Justin, nie mamy czasu!";
sleep 4;

c47_4 vehicleChat "[Pilot] Fuck, dostalismy! Dostalismy!";
if(isDedicated) then {
					c47_4 allowDamage false;
					pozar_4_1 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_4_1 attachTo [c47_4,[-3,5,-1]];} 
					
			else {};
sleep 1;

c47_4 vehicleChat "[Pilot] Kurwa! Jebac to skakac! Skakac!";
sleep 1;
if(isDedicated) then {easy3rdJumpProcedure_16 = [c47_4,true] spawn LIB_fnc_changeLightStatement;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_12) then {easy3rdJumpProcedure_18 = [c47_4,easy_3_12] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_12) then {easy3rdJumpProcedure_19 = [c47_4,easy_3_12] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_11) then {easy3rdJumpProcedure_20 = [c47_4,easy_3_11] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_11) then {easy3rdJumpProcedure_20 = [c47_4,easy_3_11] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_10) then {easy3rdJumpProcedure_21 = [c47_4,easy_3_10] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_10) then {easy3rdJumpProcedure_22 = [c47_4,easy_3_10] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_9) then {easy3rdJumpProcedure_23 = [c47_4,easy_3_9] spawn LIB_cargoMoveToDoorStatement;} else {};
c47_4 vehicleChat "[Pilot] Czerwone! Fuck! Czerwone!";
sleep 1;
if(isDedicated) then {easy3rdJumpProcedure_24 = [c47_4,false] spawn LIB_fnc_changeLightStatement;} else {};
sleep 1;
c47_4 vehicleChat "[Jump Master] Dobrze, ze cie zlapalem w ostatnim momencie!";

c47_4 vehicleChat "[Co-Pilot] Co sie dzieje?!";
sleep 8;

c47_4 vehicleChat "[Pilot] Justin! Szukaj tej trasy! Nie mamy calej nocy!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Fuck, OK, odbijaj na poludnie!";
sleep 2;

c47_4 vehicleChat "[Pilot] Przyjal, wektor 160?";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Czy to, kurwa, wazne?! Wywal ich! Wyciek paliwa z prawego silnika!";
sleep 1;
if(isDedicated) then {
					pozar_4_2 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_4_2 attachTo [c47_4,[3,5,-1]];} 
					
			else {};
sleep 1;

c47_4 vehicleChat "[Pilot] Kurwa, nie mozemy! Skoczyliby w niemieckie pozycje";
sleep 3;

c47_4 vehicleChat "[Co-Pilot] Dobra... moze ta polana przed nami";
sleep 12;

c47_4 vehicleChat "[Pilot] Poczekaj... dobry pomysl, wywalimy ich tam!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Dobra, to ja juz wypatruje!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Ok, zaraz bedziemy nad polana!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Dobra, zielone!";
sleep 1;
if(isDedicated) then {easy3rdJumpProcedure_25 = [c47_4,true] spawn LIB_fnc_changeLightStatement;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_9) then {easy3rdJumpProcedure_26 = [c47_4,easy_3_9] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_4) then {easy3rdJumpProcedure_27 = [c47_4,easy_3_4] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_4) then {easy3rdJumpProcedure_28 = [c47_4,easy_3_4] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Co-Pilot] Wyrzucmy ich gdzies bo zaraz nas zestrzela!";
c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_8) then {easy3rdJumpProcedure_29 = [c47_4,easy_3_8] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_8) then {easy3rdJumpProcedure_30 = [c47_4,easy_3_8] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_6) then {easy3rdJumpProcedure_31 = [c47_4,easy_3_6] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_6) then {easy3rdJumpProcedure_31 = [c47_4,easy_3_6] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Co-Pilot] Fuck! Mowilem! Zestrzela nas! Nie skakac! Las pod nami!";
sleep 1;
if(isDedicated) then {easy3rdJumpProcedure_32 = [c47_4,false] spawn LIB_fnc_changeLightStatement;} else {};
sleep 1;

c47_4 vehicleChat "[Pilot] Stracilem oba silniki, zaraz sie rozbijemy!";
sleep 5;

c47_4 vehicleChat "[Co-Pilot] Shit! MAYDAY! MAYDAY!";
sleep 3;

c47_4 vehicleChat "[Pilot] Po co sie meczysz?! Nie ma zadnej lacznosci! Leader Cztery spadl!";
sleep 2;

c47_4 vehicleChat "[Pilot] Wylecimy za ten las i wyrzucimy ich!";
sleep 3;

c47_4 vehicleChat "[Co-Pilot] Jump Master ilu was zostalo?";
sleep 2;

c47_4 vehicleChat "[Jump Master] Zostalo nas pieciu!";
sleep 3;

c47_4 vehicleChat "[Pilot] Ok, przygotuj sie!";
sleep 2;

c47_4 vehicleChat "[Co-Pilot] Fuck, oslepiajia mnie te wybuchy! Nie wiem czy wyszlismy znad lasu!";
sleep 3;

c47_4 vehicleChat "[Pilot] Chrzanic to! Zielone, zielone!";
sleep 1;
if(isDedicated) then {easy3rdJumpProcedure_33 = [c47_4,true] spawn LIB_fnc_changeLightStatement;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_5) then {easy3rdJumpProcedure_34 = [c47_4,easy_3_5] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_5) then {easy3rdJumpProcedure_35 = [c47_4,easy_3_5] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_3) then {easy3rdJumpProcedure_36 = [c47_4,easy_3_3] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_3) then {easy3rdJumpProcedure_37 = [c47_4,easy_3_3] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_3_2) then {easy3rdJumpProcedure_38 = [c47_4,easy_3_2] spawn LIB_cargoMoveToDoorStatement;} else {};

sleep 1;
if(isDedicated && isEasy_3_2) then {easy3rdJumpProcedure_39 = [c47_4,easy_3_2] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Poruczniku! Skok!";
sleep 1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_40 = [c47_4,easy_3_1] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_3_1) then {easy3rdJumpProcedure_41 = [c47_4,easy_3_1] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_4 vehicleChat "[Jump Master] Pilot! Ostatni skoczek!";
sleep 1;
if(isDedicated && isEasy_3_7) then {easy3rdJumpProcedure_42 = [c47_4,easy_3_7] spawn LIB_cargoMoveToDoorStatement;} else {};
c47_4 vehicleChat "[Pilot] Niech Bog ma was w swojej opiece...";
sleep 1;
if(isDedicated && isEasy_3_7) then {easy3rdJumpProcedure_43 = [c47_4,easy_3_7] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

if(isDedicated) then {easy3rdJumpProcedure_44 = [c47_4,false] spawn LIB_fnc_turnInteriorLightStatement;};



