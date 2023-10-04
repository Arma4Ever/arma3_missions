if(player distance gerRadio_1 < 50) then {

titleText ["Nadajacy: Arnische Stolz, Arnische stolz, tu Jagdgeschwader, przygotuj sie na przekazanie informacji od Branderburger.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, oczekuj.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader nadawaj.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Nadaje komunikat od Branderburger: Zlokalizowalismy Edelweiss. Mamy dokladna pozycje. Dodatkowo, mamy informacje o Amerykanskim kontrataku.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Branderburger oczekuje dalszych rozkazow. Potwierdz, Arnische Stolz.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader przyjelismy. Oczekuj. Laczymy sie z Berlinem","PLAIN DOWN"];
sleep 60;

titleText ["*Radio trzeszczy, slychac mocne zaklocenia. Po chwili wszystko ustaje.*","PLAIN DOWN"];
sleep 10;

titleText ["Adolf Hitler: Jagdgeschwader! Tutaj wasz Fuhrer. Swietna robota, przekazcie moje gratulacje Branderburgerowi!","PLAIN DOWN"];
sleep 10;

titleText ["Adolf Hitler: Wiedzialem, ze moge na was liczyc! Z taka armia Lebensraum to kwestia czasu!","PLAIN DOWN"];
sleep 10;

titleText ["Adolf Hitler: Co do Edelweiss. Nie podchodzcie do jego lokalizacji az do uporania sie z kontratakiem Amerykanow.","PLAIN DOWN"];
sleep 10;

titleText ["Adolf Hitler: Przekazcie mi pozycje Edelweiss, Jagdgeschwader.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Sieg Heil, Meine Fuhrer! Przekazuje pozycje Edelweiss: Xanthippe 083, Ypsilon 029.","PLAIN DOWN"];
sleep 10;

titleText ["Adolf Hitler: Ah... Tchorz schowal sie w latarni. Otoczyc latarnie wedlug wskazanego przeze mnie planu. Plan przekaze General Rommel.","PLAIN DOWN"];
sleep 10;

titleText ["Adolf Hitler: Poderwac wszystkie samoloty! Krazyc wokol celu az do pojmania Edelweiss!","PLAIN DOWN"];
sleep 10;

titleText ["*Radio trzeszczy, slychac mocne zaklocenia. Po chwili wszystko ustaje.*","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Jagdgeschwader, tu Arnische Stolz. Mamy na radarze mnostwo Amerykanskich barek desantowych. Wypuszczamy szwadron Me362.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Zapewnie kilka nam ucieknie, wiec obsadzcie plaze w bezpiecznej odleglosci. Kontynuuje:","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Mamy co najmniej piecdziesiat wrochich C47 w eskorcie mysliwcow. Wypuszczamy drugi szwadrom Me362 aby je przejac.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Na pewno kilka sie przedostanie, lacznie z mysliwcami. Badzcie gotowi. Poderwijcie samoloty.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Z pokladu Arnische Stolz wyrusza grupa Abwehry w oslonie czwartej SS Polizei Division.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Beda na waszym lotnisku za okolo godzine. Arnische Stolz, bez odbioru. Powodzenia, Jagdgeschwader.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Jagdgeschwader przyjal. Przekazuje Branderburgerowi. Dziekuje, Arnische Stolz. Do zobaczenia.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 270; boolZad_ObronaEdelweiss = true; publicVariable "boolZad_ObronaEdelweiss";}