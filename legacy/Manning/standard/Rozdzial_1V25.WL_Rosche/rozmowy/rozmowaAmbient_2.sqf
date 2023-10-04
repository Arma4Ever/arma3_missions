if(player distance niemiec_4 < 10) then {
	
	if((uniform player) == "BWA3_Uniform_Fleck") then {
		titleText ["Zolnierz: *Po niemiecku* Ej, specjalsi, nie macie pomyslu jak przetlumaczyc tym cywilom, zeby sobie poszli?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* Nie, zolnierzu. Nie mamy pojecia. Jestesmy od strzelania, nie od rozmow.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: * Po niemiecku* Oh, taki powazny... w sumie to polacy, mozna by do nich strzelic, co nie? Najpierw kradna nam pieniadze, teraz chca nam ukrasc Rosche...","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Ty: *Po niemiecku* No tak, ale mamy robote do wykonania. Miejmy to z glowy i wracajmy do domu." , "PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: *Po niemiecku* No, pojdziemy na piwo i sznycla? Nie? Moze...? Do najbardziej gadatliwych nie nalezycie, haha!" , "PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};
	if((uniform player) != "BWA3_Uniform_Fleck") then {
		titleText ["Zolnierz: *Po niemiecku* Stoj! Dokumenty?","PLAIN DOWN"];
		titleFadeOut 7;
		sleep 7;
		titleText ["Ty: *Po niemiecku, pokazujac cywilne dokumenty* Prosze, zolnierzu. Ja tutaj tylko przechodze, nie ma mnie za sekunde.","PLAIN DOWN"];
		titleFadeOut 8;
		sleep 8;
		titleText ["Zolnierz: *Po niemiecku* Ok... Niemiec, huh?","PLAIN DOWN"];
		titleFadeOut 8;
		sleep 8;
		titleText ["Ty: *Po niemiecku* Ah, tak, od pokolen.","PLAIN DOWN"];
		titleFadeOut 9;
		sleep 9;
		titleText ["Zolnierz: *Po niemiecku* A zgodzicie sie ze mna, ze musimy jakos ukrocic tych Polaczkow?","PLAIN DOWN"];
		titleFadeOut 7;
		sleep 7;
		titleText ["Ty: *Po niemiecku* Haha, tak, ale jak?","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
		titleText ["Zolnierz: *Po niemiecku* Sa sposoby... *oddaje dokumenty* A teraz wez idz, bo zaraz bedzie tutaj helikopter z ambasadorem.","PLAIN DOWN"];
		titleFadeOut 10;
		sleep 10;
	};} else {};
