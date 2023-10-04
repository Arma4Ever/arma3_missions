a3cs_nametag_displayInterrupt = true;
 
playMusic "bloodOnTheRises";
   
    sleep 10;
    titleText ["Dziekuje za gre!","PLAIN"];
    titleFadeOut 12;
    sleep 14;
 
    titleText ["W kolejnej czesci Kampanii 'Mama, We're all Gonna Die'","PLAIN"];
    titleFadeOut 14;
    sleep 16;
 
    titleText ["EPIZOD 1: Get Off That Beach","PLAIN"];
    titleFadeOut 16;
    sleep 18;
   
    titleText ["Szczegolne podziekowania dla Bohuna i Narola","PLAIN"];
    titleFadeOut 12;
    sleep 25;
   
    a3cs_nametag_displayInterrupt = false;
if(isDedicated) then {"end1" call BIS_fnc_endMission;};