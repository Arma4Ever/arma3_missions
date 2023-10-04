if(player distance gerRadio_1 < 50) then {

titleText ["Nadajacy: Arnische Stolz, Arnische stolz, tu Jagdgeschwader, przygotuj sie na przekazanie informacji od Branderburger.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, oczekuj.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader nadawaj.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Nadaje komunikat od Branderburger: Mamy solidne informacje o obecnosci wrogiego plutonu w miejscowosci Arudy, jak postepowac?","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Branderburger oczekuje dalszych rozkazow. Potwierdz, Arnische Stolz.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader przyjelismy. Oczekuj.","PLAIN DOWN"];
sleep 30;

titleText ["Arnische Stolz: Tu Arnische Stolz, mamy rozkazy od dowodcy inwazji. Przekazuje: ","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Miasto Arudy oczyscic i przeczesac pod katem informacji o Edelweiss.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Branderburger ma to zadanie jako zadanie dodatkowe, priorytet niski.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: W przypadku wykonania zadania Das Orakel vom Berge, Jagdgeschwader ma zbombardowac miasteczko Arudy.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Jagdgeschwader przyjal, przekaze rozkazy do dowodcy Branderburger, bez odbioru.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Arnische Stolz przyjal, bez odbioru.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 140; boolZad_usArudy_map = true; publicVariable "boolZad_usArudy_map";}