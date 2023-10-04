if(player distance gerRadio_1 < 50) then {

titleText ["Nadajacy: Arnische Stolz, Arnische stolz, tu Jagdgeschwader, przygotuj sie na przekazanie informacji od Branderburger.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, oczekuj.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader nadawaj.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Nadaje komunikat od Branderburger: Mamy solidne informacje o Amerykanskim parku maszyn w miejscowosci Le Port oraz o punkcie ewakuacji Edelweiss.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Branderburger oczekuje dalszych rozkazow. Potwierdz, Arnische Stolz.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader przyjelismy. Oczekuj.","PLAIN DOWN"];
sleep 30;

titleText ["Arnische Stolz: Tu Arnische Stolz, mamy rozkazy od dowodcy inwazji. Przekazuje: ","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Wstrzymac dalsze dzialania. Zbombardowac Park Maszyn i zniszyc wszystkie czolgi w srodku. Zajac Chapoi.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Jagdgeschwader ma to zadanie jako zadanie glowne. Priorytet wysoki.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Jagdgeschwader przyjal, przygotujemy naloty. Wykonujemy zadanie, bez odbioru.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Arnische Stolz przyjal, bez odbioru.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 130; boolZad_usHQ_map = true; publicVariable "boolZad_depot_map";}