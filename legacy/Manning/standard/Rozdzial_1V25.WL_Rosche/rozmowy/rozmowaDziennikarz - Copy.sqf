if(player distance radny < 10) then {
	
	if((uniform player) == "BWA3_Uniform_Fleck") then {
		titleText ["Burmistrz: *Po niemiecku* Dobra... Wszystko gotowe? Pamietajcie, nic nie moze sie tu odpierdolic!","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Tak jest, Burmistrzu. Wszystko gotowe.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Burmistrz: *Po niemiecku* To dobrze, to dobrze... Nie uwierzylbys ile kasy dostaje za ta szarade! Odmaszeruj... czy cokolwiek mowia w wojsku na do widzenia.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};
	if((uniform player) != "BWA3_Uniform_Fleck") then {
		titleText ["Burmistrz: *Po niemiecku* Wy z tej firmy technicznej?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Tak, Burmistrzu. Wszystko jest praktycznie gotowe.","PLAIN DOWN"];
		titleFadeOut 8;
		sleep 8;
		titleText ["Burmistrz: *Po niemiecku* Praktycznie? Ma byc gotowe i tyle. Za duzo kasy jest na linii, zeby ryzykowac wpadke.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Kasy? Jak to?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Burmistrz: *Po niemiecku* Nie wciskaj nosa w nieswoje sprawy, bo zaraz zawolam jakiegos zolnerza zeby cie stad wykopal bez zaplaty!","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Dobrze, dobrze, juz sobie ide!","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};} else {};
