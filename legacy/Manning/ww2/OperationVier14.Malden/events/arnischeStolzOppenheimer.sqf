if(player distance gerRadio_1 < 50) then {

titleText ["Nadajacy: Arnische Stolz, Arnische stolz, tu Jagdgeschwader, przygotuj sie na przekazanie informacji od Branderburger.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, oczekuj.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader nadawaj.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Nadaje komunikat od Branderburger: Przejelismy wrogiego naukowca, dane osobowe to:","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Julius Robert Oppenheimer. Naukowiec z Uniwersytetu Kalifornii w Berkeley.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Branderburger oczekuje dalszych rozkazow. Potwierdz, Arnische Stolz.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader przyjelismy. Oczekuj. Laczymy sie z Berlinem","PLAIN DOWN"];
sleep 60;

titleText ["Arnische Stolz: Tu Arnische Stolz, mamy rozkazy od dowodcy Fuhrera. Przekazuje: ","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Utrzymac naukowca. Odbior zostanie skoordynowany przez Abwehre. Czas do odbioru jedna godzina.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Branderburger ma to zadanie jako zadanie glowne, priorytet wysoki.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Oppenheimer nie moze umrzec, powtarzam, naukowiec ma byc zywy.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Jagdgeschwader przyjal, przekaze rozkazy do dowodcy Branderburger, bez odbioru.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Arnische Stolz przyjal, bez odbioru.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 180; boolZad_oppenheimer = true; publicVariable "boolZad_oppenheimer";}