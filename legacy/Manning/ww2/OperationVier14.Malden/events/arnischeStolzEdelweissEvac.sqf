if(player distance gerRadio_1 < 50) then {

titleText ["Nadajacy: Arnische Stolz, Arnische stolz, tu Jagdgeschwader, przygotuj sie na przekazanie informacji od Branderburger.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, oczekuj.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader nadawaj.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Nadaje komunikat od Branderburger: Zlokalizowalismy punkt ewakuacji Edelweiss.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Branderburger oczekuje dalszych rozkazow. Potwierdz, Arnische Stolz.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader przyjelismy. Oczekuj.","PLAIN DOWN"];
sleep 30;

titleText ["Arnische Stolz: Tu Arnische Stolz, mamy rozkazy od dowodcy inwazji. Przekazuje: ","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Obserwowac punkt ewakuacji. Miasteczko Chapoi przejac. W razie wzmozonego ruchu w punkcie Evac, nadac.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Branderburger musi przyspieszyc. Priorytet wysoki.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: W przypadku wykonania zadania Das Orakel vom Berge, Jagdgeschwader ma zbombardowac sztab.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Jagdgeschwader przyjal, przekaze rozkazy do dowodcy Branderburger, bez odbioru.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Arnische Stolz przyjal, bez odbioru.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 140; boolZad_EdelweissEvac = true; publicVariable "boolZad_EdelweissEvac";}