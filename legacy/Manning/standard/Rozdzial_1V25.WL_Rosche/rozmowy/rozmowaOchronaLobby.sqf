boolOchronaLobby = false;
publicVariable "boolOchronaLobby";

if(player distance zolnierz_ochrona_lobby < 10) then {
	
	if((uniform player) == "BWA3_Uniform_Fleck") then {
		titleText ["Zolnierz: *Po niemiecku* HALT! Kolego, brak wstepu dla personelu bez autoryzacji. Spierdalaj.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};
	if((uniform player) != "BWA3_Uniform_Fleck" && !boolLobbyTrigger) then {
		titleText ["Zolnierz: *Po niemiecku* HALT! Kim jestes? Po co tutaj chodzisz?","PLAIN DOWN"];
		titleFadeOut 7;
		sleep 7;
		titleText ["Ty: *Po niemiecku* Um, my tutaj mamy tylko upewnic sie, ze kable sa dobrze podlaczone. Tak jak wczoraj?","PLAIN DOWN"];
		titleFadeOut 8;
		sleep 8;
		titleText ["Zolnierz: *Po niemiecku* Scheisse, ok, poczekaj. *Po polsku, na radiu* Szefie, mam tutaj jakiegos cywila, chce wejsc do lobby.","PLAIN DOWN"];
		titleFadeOut 12;
		sleep 15;
		titleText ["Z radia zolnierza: *Po polsku* Kurwa... Wiesz co, chuj, wpusc go, nie mamy za duzo czasu, Kapitan zloji mi dupe jak cos pojdzie nie tak.","PLAIN DOWN"];
		titleFadeOut 9;
		sleep 9;
		titleText ["Zolnierz: *Po polsku, na radiu* Przyjalem. Wpuszczam cywila. *Po niemiecku* Dobra, wchodz. Tylko uwin sie szybko i spierdalaj.","PLAIN DOWN"];
		titleFadeOut 7;
		sleep 7;
		titleText ["Ty: *Po niemiecku* Dobra, dzieki. Juz zalatwiam sprawe.","PLAIN DOWN"];
		boolLobbyTrigger = true;
		publicVariable "boolLobbyTrigger";
		titleFadeOut 10;
		sleep 10;
	};
	
	if(boolPodlozoneDowody && ((uniform player) != "BWA3_Uniform_Fleck")) then {
		titleText ["Zolnierz: *Po niemiecku* Dobra, zrobiliscie to co mieliscie, wypad mi teraz!","PLAIN DOWN"];
		titleFadeOut 7;
		sleep 7;
		boolLobbyTrigger = false;
		publicVariable "boolLobbyTrigger";
	}; } else {};
