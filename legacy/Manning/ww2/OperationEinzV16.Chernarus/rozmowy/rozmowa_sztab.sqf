if(player distance oficer_nkvd_1 < 50) then {

titleText ["Oficer: *Mowi z wyraznym akcentem, ale da sie go zrozumiec* Uff, dobrze ze wy nas nie zabic! My na prawde nic nie wiedziec, my chciec tylko przezyc. My jence teraz.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Jesli nic nie wiecie, to zastrzelimy was na miejscu.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Naukowiec 1: Czekaj! Czekaj! Ja cos wiem! Nie zastrzel, prosze!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Czlowiek w garniturze: Заткнись! Я убью тебя сам!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Niemiecki! Albo strzelam!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Naukowiec 2: Sluchajcie... Ja wam powiem co wiem, chociaz na prawde to nie wiele...","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Oficer: Блядь... To byc dobrze. Ja tez wam mowic co my wiem. Pierwsze, na stole byc dokumenty. Pozniej je przeczytac. Dwa byc.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Oficer: Drugie. Doktorzy to z Moskwy. Garnitur to Partyjny. Czlonek Коммунистическая партия Советского Союза... Partii Komunizmu.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Partyjny: Mala poprawka. Ja jestem z NKGB. Agent, wiec zabicie mnie nic wam nie da. Dokladnie czemu tutaj jestem, mialem ustalic w Czernogorsku, ale... Machina wojenna Wielkiej Rzeszy pokrzyzowala mi plany, haha.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Partyjny: Cokolwiek powiedza wam ci idioci... Nie ma znaczenia przy mojej wiedzy.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Naukowiec 2: Idioci? Nawet nie wiesz, po co tu jestes, ты, блядь. My wiemy. Anomalia fizyczna! Tak, zrodlo energii!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Naukowiec 1: Wlasnie, sam Stalin nam powiedzial, ze znalezlismy jakies paliwo tutaj, cos co wytwarza energie. Bez konca, praktycznie!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Naukowiec 2: Tak, tak, sluchajcie. Jest teczka na stole, Scisle Tajne dokumenty. Zobaczcie potem! My wiemy wiecej niz jest tam zapisane!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Oficer: Teczki rozeslane dwa dzien temu. Dzis rano przyjechac naukowcy. Ja... chiec bardzo ich od razu do Czernogorsk, ale doktor Kurchatov poza miastem byc, pomagal ewakuacje gotowac.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Oficer: Potem co... Moze... пять... znaczy piec, szesc godzin temu - brak kontaktu, все в пиздец, to siedze z naukowcami dalij.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Oficer: Potem... z dwa godzin temu, wycofuja sie nasi, bo wy wyskoczyliscie. My juz mielismy jechac, nu ale... Wy dobry zolnierze sa!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Czyli po kolei - zlapalismy was w czasie wycofania, macie jakiegos naukowca, Kurchatova w Czernogorsku ktory wie cos o jakims zrodle energii. Mamy w niewoli agenta NKGB i dwoch naukowcow z Moskwy...","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Oficer: Ah, да. No, i artyleria.","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Oh, oczywiscie, jest artyleria jeszcze!","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;

titleText ["Przesluchujacy: Dobra. *Daj znak do rozstrzelania tych ludzi, lub probuj ich transportowac wszedzie ze soba*","PLAIN DOWN"];
titleFadeOut 10;
sleep 10;
} else {};

if(!hasInterface) then {sleep 210; 
bool_chernogorskZadania = true; 
publicVariable "bool_chernogorskZadania"; 
bool_katjusze =true;
publicVariable "bool_katjusze";
bool_zad_katjusze =true;
publicVariable "bool_zad_katjusze";};
