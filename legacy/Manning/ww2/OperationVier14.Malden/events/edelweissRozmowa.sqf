if(player distance edelweiss < 50) then {

titleText ["Edelweiss: Haha, w koncu skonczylismy zabawe w chowanego.","PLAIN DOWN"];
sleep 10;

titleText ["Dowodca: Edelweiss. W imieniu Großgermanisches Reich i Fuhrera aresztuje cie. Poddaj sie dobrowolnie.","PLAIN DOWN"];
sleep 10;

titleText ["Edelweiss: Spokojnie. Moze pozwolisz mi cos wam powiedziec, zanim przejdziemy do oficjalnej czesci spotkania?","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Masz minute.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Minute? Awe, jestes dobry pieskiem wasatego Adolfa, co nie?","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Nic nie wiecie. Jestescie pionkami w czyms zdecydowanie wiekszym. Wasza wiara w Fuhrera, Rzesze...","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Wasze slepe przekonanie, ze stal i olow dadza wam to, co wymyslil sobie jakis chory umysl.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Jestescie pylem. Niczym. Ograniczeni do tego co widzicie, co dotykacie, do czego i kogo strzelacie.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Zadna ilosc naboji, medali, zabojstw czy czolgow nie zmieni naszej natury.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Tysiacletnia Rzesza? Ha, dobre. Gwarantuje wam, ze nie przetrwacie dziesieciu lat.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Poza wami istnieje caly swiat. Wiele swiatow. Jestescie tylko pasazerami na jednym z nich.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Karaluchy w helmach. Zabierac wolnosc ludziom, ktorych nie jestescie w stanie ograniczyc.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Co sie dzieje pytasz? Dzieje sie to, czego nigdy nie zrozumiesz.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Wiem, ze nie strzelisz. Nic nie mozesz zrobic. Podziwiaj przedstawienie.","PLAIN DOWN"];
sleep 10;

titleText ["Dowdoca: Do zobaczenia w innym swiecie.","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 160; edelweissMovement = false; publicVariable "edelweissMovement"; sleep 3; edelweiss switchMove "";}