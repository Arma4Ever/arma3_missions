if(isDedicated) then {
isEasy_hq_1 = false;
isEasy_hq_2 = false;
isEasy_hq_3 = false;
isEasy_hq_4 = false;

sleep 0.1;

if(!isNil "easy_hq_1") then {isEasy_hq_1 = true;} else {};
if(!isNil "easy_hq_2") then {isEasy_hq_2 = true;} else {};
if(!isNil "easy_hq_3") then {isEasy_hq_3 = true;} else {};
if(!isNil "easy_hq_4") then {isEasy_hq_4 = true;} else {};
} else {};

c47_8 vehicleChat "[Pilot] Zblizamy sie nad DZ!";
[c47_8D, ["radioChatter1st", 30, 1]] remoteExec ["say3d", 0, true];
sleep 8;

c47_8 vehicleChat "[Pilot] Zapalic czerwone swiatlo!";
if(isDedicated) then {easyHQJumpProcedure_1 = [c47_8,true] spawn LIB_fnc_turnInteriorLightStatement;};
sleep 10;

c47_8 vehicleChat "[Jump Master] Przygotowac sie!";
if(isDedicated && isEasy_hq_2) then {easyHQJumpProcedure_2 = [c47_8, easy_hq_2] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_hq_2) then {easyHQJumpProcedure_3 = [c47_8, easy_hq_2] spawn LIB_cargoSwitchtoJumpMasterStatement;} else {};
sleep 4;

c47_8 vehicleChat "[Jump Master] Calosc wstac! Hook up!";
if(isDedicated && isEasy_hq_1) then {easyHQJumpProcedure_4 = [c47_8, easy_hq_1] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_hq_3) then {easyHQJumpProcedure_5 = [c47_8, easy_hq_3] spawn LIB_cargoStandUpStatement;} else {};
sleep 0.1;
if(isDedicated && isEasy_hq_4) then {easyHQJumpProcedure_6 = [c47_8, easy_hq_4] spawn LIB_cargoStandUpStatement;} else {};
sleep 5;

c47_8 vehicleChat "[Pilot](Na radiu) Przyjalem, ale my mamy na pokladzie dowodce!";
sleep 3;

c47_8 vehicleChat "[Pilot] Kapitanie! Bedziemy sie przebijac przez wrogie AA!";
sleep 2;

c47_8 vehicleChat "[Jump Master] Sprawdzic ekwipunek! Odliczyc od tylu!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] Fuck, nie odbieram zadnych sygnalow Eureka!";
sleep 3;

c47_8 vehicleChat "[Pilot] Poczekaj, Killoran, widzisz ten dym na 90?";
sleep 2;

c47_8 vehicleChat "[Co-Pilot] Widze... poczekaj, czy to Drop Zone?";
sleep 3;

c47_8 vehicleChat "[Pilot] Chyba tak! Fuck, kapitanie, wyglada na to ze z Brytoli nic nie zostalo...";
sleep 2;

c47_8 vehicleChat "[Co-Pilot] Bedziemy sie przebijac z dwojka i trojka, beda mieli na pokladzie 4th i 5th Rifle Squads";
sleep 5;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Utrzymac szyk! Damy rade! Podazac za Leader Cztery!";
sleep 5;

c47_8 vehicleChat "[Jump Master] Kapitanie! Przekaz pilotowi, zeby wyrzucili nas jak najblizej Drop Zone, sprobujemy pomoc Brytolom!";
sleep 3;

c47_8 vehicleChat "[Kapitan] Pilot! Powiedz Leader Cztery, ze trzymamy kurs!";
sleep 2;

c47_8 vehicleChat "[Pilot](Na radiu) Rozkaz od dowodcy Easy - utrzymac kurs! Powtarzam, utrzymac kurs!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] O moj Boze... to jest sciana ognia!";
sleep 5;

c47_8 vehicleChat "[Pilot] Jak przebijemy sie to powinnismy ich wyrzucic prawie nad samym Drop Zone!";
sleep 5;

c47_8 vehicleChat "[Pilot] Musze manewrowac!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Negatywnie! Negatywnie! Utrzymac kurs!";
sleep 3;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Nie, piatka, utrzymuj kurs!";
sleep 5;

c47_8 vehicleChat "[Pilot] Kurwa, pelny ciag! Musimy sie przebic!";
sleep 3;

c47_8 vehicleChat "[Co-Pilot] Nie! Rozerwiesz ich przy wyskoku! Jestesmy za blisko DZ na wyhamowanie!";
sleep 2;

c47_8 vehicleChat "[Pilot] Kurwa, oslepiajia mnie te pociski!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] Utrzymaj kurs! Utrzymaj kurs!";
sleep 20;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Leader Cztery, co z toba!?";
sleep 5;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Tutaj osemka, do Leader Cztery, co z toba?!";
sleep 7;

c47_8 vehicleChat "[Pilot] Kurwa... Leader Cztery dostal! Leader Cztery dostal!";
sleep 3;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Tutaj osemka, przejmujemy dowodzenie! Leader Cztery spadl, powtarzam, Leader Cztery spadl! Potwierdzic!";
sleep 12;

c47_8 vehicleChat "[Co-Pilot] Allen, nie mamy lacznosci z czworka i trojka, zgubilem z oczu piatke i szostke, dwojka i trojka leca na kursie ale reszta sie rozproszyla!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] Jedynka spadla, dwojka i trojka leca w szyku, czworka odbila na poludnie, piatki nie widze, szostka jest daleko na poludniowy wschod...";
sleep 5;

c47_8 vehicleChat "[Co-Pilot](Na radiu) Dziewiatka, dziesiatka jaki wasz status?!";
sleep 1;
if(isDedicated) then {
					c47_8 allowDamage false;
					pozar_8_1 = "test_EmptyObjectForFireBig" createVehicle [0,0,0];
					pozar_8_1 attachTo [c47_8,[-3,5,-1]];} 
					
			else {};
sleep 1;

c47_8 vehicleChat "[Pilot] Fuck! Dostalismy! Dostalismy!";
sleep 3;

c47_8 vehicleChat "[Pilot] Stracilem lewy silnik!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] Jestesmy martwi....";
sleep 3;

c47_8 vehicleChat "[Pilot] Zamknij sie, Killoran, gdzie to DZ?! Jump master! Otworz drzwi!";
sleep 1;
if(isDedicated) then {easyHQJumpProcedure_17 = c47_8 spawn LIB_cargoOpenDoorStatement;} else {};
sleep 1;

c47_8 vehicleChat "[Co-Pilot] Trzy mile, west... prosto wektor 80";
sleep 5;

c47_8 vehicleChat "[Pilot] Przyjal. Wyrzucimi ich jak najblizej i ladujemy awaryjnie, zrozumial?";
sleep 3;

c47_8 vehicleChat "[Co-Pilot] Tak, kapitanie...";
sleep 2;

c47_8 vehicleChat "[Co-Pilot] Moj brat leci w czworce... widze, ze tez sie pala...";
sleep 5;

c47_8 vehicleChat "[Pilot] Goddammit, Killoran, wszystko bedzie dobrze! Dalej maja ciag!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] Allen... we're all gonna die...";
sleep 5;

c47_8 vehicleChat "[Pilot] Killoran, fuck, potrzebuje cie czlowieku! Nie zlam sie teraz! Potrzebuje cie!";
sleep 5;

c47_8 vehicleChat "[Co-Pilot] Wektor... 88... Predkosc do skoku...";
sleep 3;

c47_8 vehicleChat "[Pilot] Przyjal, zostan ze mna, Killoran, zaraz ich wyrzucimy i ladujemy przy nastepnym sygnale!";
sleep 2;

c47_8 vehicleChat "[Co-Pilot] 15 sekund do skoku... Niech Bog ma was w swojej opiece...";
sleep 3;

c47_8 vehicleChat "[Jump Master] Killoran! Zajebiemy ich wszystkich!";
sleep 2;

c47_8 vehicleChat "[Co-Pilot] Tak... o ile przezyjecie zrzut. Drop Zone wyglada jak cmentarzysko...";
sleep 3;

c47_8 vehicleChat "[Pilot] Killoran, glowa do gory i wypatruj!";
sleep 3;

c47_8 vehicleChat "[Co-Pilot] Zielone! Zielone!";
sleep 1;
if(isDedicated) then {easyHQJumpProcedure_7 = [c47_8,true] spawn LIB_fnc_changeLightStatement;} else {};
sleep 1;

c47_8 vehicleChat "[Jump Master] Dobra, skaczemy! Skok!";
sleep 1;
if(isDedicated && isEasy_hq_4) then {easyHQJumpProcedure_8 = [c47_8,easy_hq_4] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_hq_4) then {easyHQJumpProcedure_9 = [c47_8,easy_hq_4] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_8 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_hq_3) then {easyHQJumpProcedure_10 = [c47_8,easy_hq_3] spawn LIB_cargoMoveToDoorStatement;} else {};

sleep 1;
if(isDedicated && isEasy_hq_3) then {easyHQJumpProcedure_11 = [c47_8,easy_hq_3] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_8 vehicleChat "[Jump Master] Skok!";
sleep 1;
if(isDedicated && isEasy_hq_1) then {easyHQJumpProcedure_12 = [c47_8,easy_hq_1] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_hq_1) then {easyHQJumpProcedure_13 = [c47_8,easy_hq_1] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;

c47_8 vehicleChat "[Jump Master] All out! Skacze! Trzymaj sie, Killoran!";
sleep 1;
if(isDedicated && isEasy_hq_2) then {easyHQJumpProcedure_14 = [c47_8,easy_hq_2] spawn LIB_cargoMoveToDoorStatement;} else {};
sleep 1;
if(isDedicated && isEasy_hq_2) then {easyHQJumpProcedure_15 = [c47_8,easy_hq_2] spawn LIB_fnc_deployStaticLine;} else {};
sleep 1;
if(isDedicated) then {easyHQJumpProcedure_16 = [c47_8,false] spawn LIB_fnc_turnInteriorLightStatement;};
