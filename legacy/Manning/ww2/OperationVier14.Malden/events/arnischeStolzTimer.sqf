if(player distance gerRadio_1 < 50) then {

titleText ["Nadajacy: Arnische Stolz, Arnische stolz, tu Jagdgeschwader, przygotuj sie na przekazanie informacji od Branderburger.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, oczekuj.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader nadawaj.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Nadaje komunikat od Branderburger: Potwierdzamy obecnosc Edelweiss. Amerykanie planuja ewakuacje.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Okolo 115 minut do ekstrakcji Edelweiss. Znamy lokacje Amerykanskiego EVAC POINT. Nie znamy obecnej lokacji Edelweiss.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Edelweiss znajduje sie w nieokreslonym punkcie AMBER na wyspie. Prosimy o rozkazy.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Tu Arnische Stolz, Jagdgeschwader przyjelismy. Oczekuj.","PLAIN DOWN"];
sleep 30;

titleText ["Arnische Stolz: Tu Arnische Stolz, mamy rozkazy od dowodcy inwazji. Przekazuje: ","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Przyspieszyc tempo dzialan. Zbombardowac punkt ewakuacji. Najwyzszy priotytet dla bombardowania.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Branderburger ma zlokalizowac punkt AMBER. 10 minut przed ewakuacja ma rozpoczac sie atak na EVAC POINT.","PLAIN DOWN"];
sleep 10;

titleText ["Nadajacy: Jagdgeschwader przyjal, przygotujemy naloty. Przekazemy reszte rozkazow do Branderburger. Bez odbioru.","PLAIN DOWN"];
sleep 10;

titleText ["Arnische Stolz: Arnische Stolz przyjal, bez odbioru.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 140; boolZad_EdelweissEvacBomb = true; publicVariable "boolZad_EdelweissEvacBomb";}