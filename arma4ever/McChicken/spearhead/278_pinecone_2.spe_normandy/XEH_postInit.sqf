#include "script_component.hpp"
/*
 * XEH_postInit.sqf
 * Poniższy kod wykona się po starcie misji, gdy wykonają się już pozostałe inity.
 * Dokumentacja: https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Pre_and_Post_Init
 */

setViewDistance 700;

if (hasInterface) then {
  // Briefing
  #include "briefing.hpp"

  // Intro
  ["CBA_loadingScreenDone", {
    if (didJIP) exitWith {};
    0 spawn FUNC(intro);
  }] call CBA_fnc_addEventHandler;
};

// Kod wykonywany lokalnie u gracza, za każdym razem gdy dołączy do gry
if (hasInterface) then {

  enableEnvironment [true, false];
  setViewDistance 700;
  execVM 'scripts\reminder.sqf';
0 spawn {
sleep 3;
hint parseText
  "
  <t size='1.5' color='#00ff00'>Optymalizacja</t><br/><br/>
    <t size='1'>W celu optymalizacji ograniczono zasięg widzenia do 700m (wartość zalecana przez MM). <br /><br />Możesz zwiększyć lub zmniejszyć zasięg widzenia w ustawieniach.</t>
  ";
sleep 15;
hint parseText
  "
  <t size='1.5' color='#00ff00'>Przypomnienie</t><br/><br/>
    <t size='1'>Jeżeli doświadczasz problemów z płynnością gry spróbuj zrestartować aplikację TeamSpeak.</t>
    <br/><br/>
    <img size='3' image='data\ts3logo.paa'/>
  ";
sleep 13;
hint "";

};

0 spawn {
sleep 5;
player unassignItem "TFAR_anprc148jem";
player removeItem "TFAR_anprc148jem";
};


};


// Kod wykonywany wyłącznie na serwerze - wykonuje się tylko raz, na starcie misji
if (isServer) then {

};

0 spawn {
sleep 5;
setViewDistance 700;//ubersecure
};
