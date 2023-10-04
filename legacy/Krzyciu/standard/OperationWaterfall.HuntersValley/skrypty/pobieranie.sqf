//Skrypt na odliczanie
sleep 0.01;
timer = 27;
publicvariable "timer";
 
waitUntil {!isnil "timer"};
 
while {(timer >= 0)} do {
hintSilent parsetext format [(timer / 3600) call compile loadfile "skrypty\czas.sqf"];
      timer = timer - 1;
sleep 1;
 
};
timer = 0;
 
newvariable = true;
publicvariable "newvariable";

deleteVehicle laptopdata;hintSilent "";