if(player distance agent_1 < 15) then {

_entities = nearestObjects [agent_1, ["MAN"], 10];
_closest = _entities select 0;

_imie = name _closest;

titleText ["Naukowiec: Nie poddaje sie, bo boje sie smierci. Poddaje sie bo sie jej nie boje!","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Taa... Slyszalem wieksze bzdury. *POKAZUJE ZDJECIE EDELWEISS* Ten czlowiek. Kto to?","PLAIN DOWN"];
sleep 10;

titleText ["Naukowiec: Ha! Beze mnie to nikt. Pyl na wietrze. Nikt!","PLAIN DOWN"];
sleep 10;

titleText ["_imie: No dobra, ale mi na tobie nie zalezy. Jak mi powiesz kto to, to moze przezyjesz","PLAIN DOWN"];
sleep 10;

titleText ["Naukowiec: Na prawde nie wiesz kim jestem? Nazywam sie Julius Robert Oppenheimer. Amerykanski uczony i profesor na University of California, Berkeley. Cos swita?","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Ummm... Nie bardzo. Nie ma znaczenia, po prostu cie zastrzele.","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Fuck, spokojnie, Nazisto! Wasze urzadzenie Heisenberga? Gdyby nie ten caly 'Man In The High Castle' i te bzdury... Eh, dobra, co chcesz wiedziec?","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Gdzie jest Man In The High Castle?","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Jest... nie wiem. Byl tutaj moze z godzine temu? Poszli gdzies stad. Ten agent, ktorego zastrzeliles z zimna krwia... Pisal cos w tych dziennikach na stole.","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Dlaczego nie mam cie zabijac?","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Sluchaj, wasz wasaty przywodca nic nie wskora majac samego Man In The High Castle. Potrzebuje mnie.","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Kontynuuj...","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: To, co potrafi The Man In The High Castle to przechodzenie miedzy rzeczywistosciami... Jakby to ci prosto wytlumaczyc, zeby twoj Szkopski helm zrozumial...","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Aha. Wyobraz sobie plot. Bardzo wysoki plot. Utknales na jednej stronie i zyjesz cale zycie na tej stronie. The Man In The High Castle przeskoczyl ten plot.","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: W dodatku ciagle przeskakuje. Potrafi to robic niemal na zawolanie. Co wiecej, jest w stanie przyniesc male przedmioty z rowno... zza plota, imbecylu.","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Oh, jak mi niewiele brakuje zeby cie zastrzelic. Tego tez bysmy sie dowiedzieli, po zlapaniu Edelweiss.","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Edelweiss? Tak go nazwaliscie. No niby tak, ale bez zrozumienia fizyki tego co sie dzieje w momencie skoku, posiadanie 'EDELWEISS' nic nie znaczy.","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Ja mialem uzyc szczatkowych danych aby zbudowac bombe atomowa na podstawie waszego urzadzenia Heisenberga.","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Po roku pracy sam prezydent mowi, ze mamy wazniejsze zadanie. Zrozumiec i wykorzystac umiejetnosci The Man In The High Castle.","PLAIN DOWN"];
sleep 10;

titleText ["Oppenheimer: Ale tylko tyle ci powiem. Wiecej jak bede bezpieczny.","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Ehh... nie wiem. Zobaczymy","PLAIN DOWN"];
sleep 10;

} else {};

if(!hasInterface) then {sleep 210; pojmanieOppenheimer = true; publicVariable "pojmanieOppenheimer";}