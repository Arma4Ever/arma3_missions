if(player distance radio_hotel < 50) then {

titleText ["Nadajacy: *Na Radiu* Warszawa, Warszawa, tutaj Sztylet 0-0, wywolanie Eksterminator, powtarzam Eksterminator.","PLAIN DOWN"];
titleFadeOut 15;
sleep 20;

titleText ["Warszawa: *Na Radiu* Tu, Warszawa, Sztylet nadawaj.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Nadajacy: *Na Radiu* Warszawa, mamy zle wiadomosci, wyglada na to, ze Niemcy przeprowadzili zamach na ambasadora.","PLAIN DOWN"];
titleFadeOut 105;
sleep 15;

titleText ["Warszawa: *Na Radiu* Oczekuj jedna...","PLAIN DOWN"];
titleFadeOut 15;
sleep 30;

titleText ["Warszawa: *Na Radiu* Sztylet, tu Warszawa, wywolanie Miedziany Drut, mamy rozkazy.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Nadajacy: *Na Radiu* Warszawa, nadawaj.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* Z chwila obecna kazdy niemiecki zolnierz to wrog. Powtarzam, Marszalek Kikke wypowiedzial wojne Niemcom.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Nadajacy: *Na Radiu* Przyjalem... Co dalej, Warszawa?","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* Podaje kolejne rozkazy: ewakuowac wszystkich Polskich cywili z miasta Ratzlingen.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* Podaje kolejne rozkazy: oczyscic miasto Schlieckau z niemieckiej obecnosci.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* Podaje kolejne rozkazy: zajac i utrzymac niemiecki FOB w Hanstedt.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* Podaje kolejne rozkazy: przygotowac uderzenie na lotnisko 'KUKULKA'","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* Podaje kolejne rozkazy: Lotnictwo, zlikwidowac polnocnego FOBa","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Nadajacy: *Na Radiu* Sztylet przyjal, KU CHWALE OJCZYZNY!","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;

titleText ["Warszawa: *Na Radiu* KU CHWALE OJCZYZNY! Warszawa bez odbioru.","PLAIN DOWN"];
titleFadeOut 15;
sleep 15;
} else {sleep 245; bool_rozmowaHQhotel = true; publicVariable "bool_rozmowaHQhotel";};