if(player distance radiooperator < 50) then {

titleText ["Radiooperator: *Mowi bardzo dobrze po niemiecku* Haha! Zabilem tego skurwiela!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Swietnie... Kim jestescie?","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Jestem waszym przyjacielem! Nie widzicie? Zabilem tego NKVDziste, drugi juz sie poddal, haha, tchorze!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Na stole jest moj dziennik, zapisalem prawie wszystkie informacje jakie byly na radiu w ciagu ostatniego tygodnia, rozpisalem gdzie i ilu zolnierzy jest, plany obrony... Wszystko!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Ah, widze... bardzo dobrze... Teraz powiedz mi, co dzieje sie w Czernogorsku?","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Oh, Czernogorsk.. Chyba nikt tak na prawde nie wie. Miala byc tam ewakuacja, ale cos poszlo nie tak. Stracilismy kontakt moze z piec godzin przed waszym desantem. Wszystkie radia pierdolnelo.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Wiem na pewno, ze wycofali sie oficerowie, na barkach Morze Kaspijskie. Nie sadze, zeby wycofali kogos wiecej. Jest tam naukowiec, Kurchatov. On powinnien wiedziec wiecej. Nadawal jakims kodem do Moskwy, spisalem wszystko w dzienniku.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Nie przestraszcie sie, w miescie sa masowe groby. NKVD rozstrzelalo cywili... Warto sprawdzic czy ktos przezyl. Dodatkowo, sa dwie glowne blokady w miescie. Na jednej z nich na pewno znajdziecie informacje gdzie jest Kurchatov.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Z tego co mi wiadomo... Nie ma tam zadnych Sowietow. Zadnych. Albo uciekli na zachod, albo przez Morze Kaspijskie na poludnie.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Myslalem, ze to Wehrmacht zajal miasto. Ale nie slyszalem strzalow, walki. Wiec cos musialo sie tam stac. Nie wiem co.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Dobrze... Moze nawet przezyjesz. Jesli twoje informacje sie nam przydadza, to Rzesza zadba o ciebie *zabij lub zostaw radiooperatora*","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Radiooperator: Bede tu czekal, trzymal na muszce tego psa! *wskazuje na oficera w rogu pokoju*","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;
} else {};

if(!hasInterface) then {sleep 120; bool_zadCzernogorsk = true; publicVariable "bool_zadCzernogorsk";};
