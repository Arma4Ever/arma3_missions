if(player distance niemiec_3 < 10) then {
	
	if((uniform player) == "BWA3_Uniform_Fleck") then {
		titleText ["Zolnierz: *Po niemiecku* Uuuu... jeszcze wiecej zadufanych specjalsow.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: *Po niemiecku* Poczekaj... Jeszcze wiecej specjalsow?.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: *Na radiu zolnierza, po niemiecku* Dowodco, jakis polak jest przy wjezdzie, mowi ze ma jakies papiery dla dowodcy obstawy.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: *Po niemiecku, na radiu* Nie moge sie stad ruszyc, wez je i poloz je w naszym samochodzie." , "PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: *Na radiu zolnierza, po niemiecku* Przyjalem. Wykonuje." , "PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};
	if((uniform player) != "BWA3_Uniform_Fleck") then {
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
		titleFadeOut 10;
		sleep 10;
	};} else {};
