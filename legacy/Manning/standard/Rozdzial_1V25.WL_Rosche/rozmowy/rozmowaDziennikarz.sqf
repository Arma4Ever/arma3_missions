if(player distance dziennikarz < 10) then {
	
	if((uniform player) == "BWA3_Uniform_Fleck") then {
		titleText ["Dziennikarz: *Po niemiecku* Hm... Po co wiecej zolnierzy obstawy? Jest tu tylu, ze wystarczyloby, zeby obstawic koncert Rolling Stonesow, haha","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Mhm, nie moge z toba rozmawiac.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Dziennikarz: *Po niemiecku* Co, mamusia ci nie pozwolila?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};
	if((uniform player) != "BWA3_Uniform_Fleck") then {
		titleText ["Dziennikarz: *Po niemiecku* Czesc! Co ty tutaj robisz bez identyfikatora?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Identyfikatora? Ah, to, *pokazujesz male zezwolenie na prace przy hotelu*?","PLAIN DOWN"];
		titleFadeOut 8;
		sleep 8;
		titleText ["Dziennikarz: *Po niemiecku* Ah, zaplecze techniczne. Dziala wszystko dla nas?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Tak, chyba dziala. Co w ogole transmitujecie?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Dziennikarz: *Po niemiecku* Wiesz, my tylko nagrywamy dla wieczornych wiadomosci. Maly reportaz o tym, jak wiekszosc mieszkancow rejonu Rosche nawet nie mowi po polsku, a NRP chce przylaczenia pod pretekstem Polskosci...","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Ah, rozumiem. Sluchaj, nie jestem politykiem. Mam robote do zrobienia. Do zobaczenia!","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Dziennikarz: *Po niemiecku* To rowniez twoj kraj, jako Niemiec powinienes sie zainteresowac! Na razie!","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};} else {};
