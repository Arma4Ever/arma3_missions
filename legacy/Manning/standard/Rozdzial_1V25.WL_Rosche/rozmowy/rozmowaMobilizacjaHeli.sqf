if(player distance radio_1 < 50) then {

titleText ["Nadajacy: *Na Radiu* DO WSZYSTKICH, DO WSZYSTKICH, KOD CZERWONY, PODRYWAC, CEL ZRZUTU ROSCHE!","PLAIN DOWN"];
titleFadeOut 15;
sleep 20;
} else {sleep 20; poderwijHeli = true; publicVariable "poderwijHeli";};