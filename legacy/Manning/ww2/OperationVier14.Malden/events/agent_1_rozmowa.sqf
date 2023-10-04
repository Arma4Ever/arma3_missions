if(player distance agent_1 < 15) then {

_entities = nearestObjects [agent_1, ["MAN"], 10];
_closest = _entities select 0;

_imie = name _closest;

titleText ["Mitchell: Dobra, uspokoj sie! Wszystko wam powiem, chuj mnie obchodzi czy bede demokrata, republikanem czy nazista!","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Aha, nie mam nic przeciwko. *POKAZUJE ZDJECIE EDELWEISS* Ten czlowiek. Kto to?","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Fuck... Sluchaj, na stole leza dokumenty. Mozesz przeczytac co tam jest, ale ja wiem pewnie tylko troche wiecej niz wy.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Na prawde, nie powiedzieli nam nic wiecej. Przyniesli nam ta teczke, polowa slow wykreslona, nie mamy zielonego pojecia ani jak ma na imie, ani gdzie sie sie znajduje.","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": Uuuuuuuu... No niedobrze, wiec po prostu ciebie zabijemy.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Nie! Fuck! Poczekaj! Pewnie chcesz wiedziec gdzie sie on znajduje!","PLAIN DOWN"];
sleep 10;

titleText [_imie + ": No, zobaczmy co wiesz, potem zdecyduje czy cie zabic.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Dobra, dobra, sluchaj Niemiecki kolego. Zrobmy tak: ja ci powiem, co wiem a ty mnie nie zabijesz?","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Eh, patrzac po twoich oczach, i tak nie mam lepszej opcji. Wiec, gosciu ktorego szukacie to Man In The High Castle.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Z tego co mi wiadomo, jest on w posiadaniu jakichs informacji, ktore maja zatrzymac was i odeprzec wasza inwazje na wschodnie wybrzeze.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Nie wiem, czy ma on plany waszego urzadzenia Heisenberg'a, czy pracowal w CIA i zna wasz plan uderzenia, ale sam prezydent spotkal sie z nim piec albo szesc razy.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Przynajmniej na tej wyspie. Wiem na pewno, ze spotykal sie z kims w Lavalle, malym saferoom'ie CIA. Musicie uwazac, na pewno znajduje sie tam 10-15 agentow.","PLAIN DOWN"];
sleep 10;

titleText ["Mitchell: Tylko tyle wiem, na prawde!","PLAIN DOWN"];
sleep 10;

} else {};

if(!hasInterface) then {sleep 140; lokacja_2bool = true; publicVariable "lokacja_2bool";}