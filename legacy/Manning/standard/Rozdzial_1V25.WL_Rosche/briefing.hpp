if(_player != player) exitWith {};

_hq = ["sztylet_0_0_1", "sztylet_0_0_2", "sztylet_0_0_3", "sztylet_0_0_4"];
_piechota = ["sztylet_1_1_1","sztylet_1_1_2","sztylet_1_1_3","sztylet_1_1_4", "sztylet_1_1_5", "sztylet_1_1_6", "sztylet_1_1_7", "sztylet_1_1_8", "sztylet_1_1_9", "sztylet_1_1_10",
"sztylet_1_2_1","sztylet_1_2_2","sztylet_1_2_3","sztylet_1_2_4", "sztylet_1_2_5", "sztylet_1_2_6", "sztylet_1_2_7", "sztylet_1_2_8", "sztylet_1_2_9", "sztylet_1_2_10",
"sztylet_1_3_1","sztylet_1_3_2","sztylet_1_3_3","sztylet_1_3_4", "sztylet_1_3_5", "sztylet_1_3_6", "sztylet_1_3_7", "sztylet_1_3_8", "sztylet_1_3_9", "sztylet_1_3_10",
"sztylet_1_4_1","sztylet_1_4_2","sztylet_1_4_3","sztylet_1_4_4", "sztylet_1_4_5", "sztylet_1_4_6", "sztylet_1_4_7", "sztylet_1_4_8", "sztylet_1_4_9", "sztylet_1_4_10"];
_piloci = ["sztylet_2_1_1","sztylet_2_1_2","sztylet_2_2_1","sztylet_2_2_2","sztylet_2_3_1","sztylet_2_3_2"];
_czolgisci = ["sztylet_3_1_1","sztylet_3_1_2", "sztylet_3_1_3","sztylet_3_2_1","sztylet_3_2_2", "sztylet_3_2_3", "sztylet_3_3_1","sztylet_3_3_2", "sztylet_3_3_3"];
_sztylet = _hq + _piechota + _piloci + _czolgisci;
_specjalsi = ["grom_1_1", "grom_1_2", "grom_1_3", "grom_1_4", "grom_1_5"];

_jednostka = vehicleVarName player;

player createDiaryRecord [
"Diary", [
"1 Wrzesnia 2029.",
"
<font size='20' font color='#0066FF'>Sytuacja</font>
<br />
<br />
<font size='15'>Napiecie miedzy Warszawa a Berlinem rosnie. Unia Europejska zgodzila sie na referendum w sprawie przylaczenia rejonu Rosche do Nowej Rzeczpospolitej Polskiej. W celu promowania glosowania do Rosche przylatuje ambasador NRP w Niemczech Marcin Dabrowski.
<br />
<br /><img width='360' image='obrazy\marcinDabrowski.jpg' />
<br />
<br />SSR Sztylet jest postawiony w stan najwyzszej gotowosci. Oznacza to, ze kazdy zolnierz jest gotowy do boju w pelnym rynsztunku. Co przyniesie ten dzien?
</font>"
]
];

if(_jednostka in _specjalsi) then {
	player createDiaryRecord [
	"Diary", [
	"Akcja Karmel",
	"
	<font size='20' font color='#0066FF'>OD: WYDZIAL SLUZB SPECJALNYCH NRP</font>
	<br />
	<br />
	<font size='15'>1. Briefing otrzymaliscie, dzialac zgodnie z inforamcjami w nich zawartymi.
	<br />2. Upewnijcie sie ze spalicie i wyczyscicie wszystkie dokumenty/laptopy w miejscu startu.
	<br />3. Do dyspozycji macie 2 microdagry. Nie wlaczac nadawania az do przebrania sie w ubrania Gromu.
	<br />4. NIE UZYWAC MATERIALOW WYBUCHOWYCH.
	<br />Ku chwale Ojczyzny!
	</font>"
	]
	];
};


if(_jednostka in _piloci) then {
	player createDiaryRecord [
	"Diary", [
	"Wskazania dla Pilotow",
	"
	<font size='20' font color='#0066FF'>Ogolne wskazowki dla zolnierzy sekcji helikopterowych</font>
	<br />
	<br />
	<font size='15'>1. Wszystkie helikoptery na ladowisku sa dla was dostepne.
	<br />2. Punkty serwisowe to obiekty Repair Depot (Huron).
	<br />3. Musicie dzielic miedzy soba zadania oznaczone [HELI], wspomaganie piechoty i utrzymywanie czystego nieba. Wsiadanie do odpowiedniego helikoptera w odpowiednim czasie moze decydowac o zyciu lub smierci jednostek zaleznych od waszej pomocy!
	<br />4. Strzelnica dla helikopterow jest otwarta. Pojawiaja sie cele VR do ktorych mozecie strzelac. Widoczne tylko dla pilotow w helmach lotniczych. Prosze nie powielac akcji wlaczenia systemu celow.
	<br />5. Upewnijcie sie, ze zawsze nosicie spadochron!
	<br />6. Kontakt ze Skrzydlem Transportowym Kukulki tylko przez radio stacjonarne RT-254 na wiezy kontrolnej! [akcja windowsa na radiu na gorze wiezy kontrolnej, po autoryzacji od HQ].
	<br />7. Nie zblizac sie do LOTNISKA KUKULKA az do wyrazniej zgody HQ (zachowac dystans co najmniej 5km).
	<br />Ku chwale Ojczyzny!
	</font>"
	]
	];
};

if(_jednostka in _czolgisci || _jednostka in _piloci) then {
	player createDiaryRecord [
	"Diary", [
	"Wskazania dla Pilotow/Czolgistow",
	"
	<font size='20' font color='#0066FF'>Ogolne wskazowki dla zolnierzy sekcji helikopterowych/pancernych SSR Sztylet w przypadku transportu 68PT na pole walki przy uzyciu helikopteru Wrobel 290HTP:</font>
	<br />
	<br />
	<font size='15'>1. Czolgi gotowe do boju zaparkowane sa przy Wroblach 290HTP (Mi290 Vehicle Transport). Zadaniem czolgistow jest przygotowanie ich do podpiecia (zaladunek wymaganych przedmiotow do czolgu musi odbyc sie przed podczepieniem).
	<br />2. Uzyj stalowych lin do podczepienia czolgow. [klawisz windowsa - akcja jest jednorazowa! odczepienie rowniez przy uzyciu windowsa! badz na ziemii w trakcie odczepiania (logiczne)] Piloci powinni miec copilota obserwujacego ladunek!
	<br />3. W trakcie manewrow powietrznych z podczepionymi 68PT nie przekraczac 200km/h
	<br />4. Czolgisci moga byc wewnatrz pojazdu w trakcie transportu w powietrzu. UWAGA! Nie wlaczac silnika ani nie ruszac wiezyczka! Moze to skutkowac zerwaniem lin nosnych!
	<br />
	<br />W RAZIE MOBILIZACJI
	<br />
	<br />1. Sztab decyduje czy czolgisci maja zostac przeniesieni w czolgach czy z piechota.
	<br />2. W trakcie transportu byc na wysokosci conajmniej 100m! Nie przekraczac 200 km/h!
	<br />
	<br />Jesli dostosujecie sie do powyzszych zalecen to nie bedzie zadnych problemow przy przenoszeniu sprzetu na teren dzialan. 
	<br />Ku chwale Ojczyzny!
	</font>"
	]
	];
};

if(_jednostka in _sztylet) then {
	player createDiaryRecord [
	"Diary", [
	"Wskazania dla zolnierzy",
	"
	<font size='20' font color='#0066FF'>Ogolne wskazowki dla zolnierzy SSR Sztylet:</font>
	<br />
	<br />
	<font size='15'>1. Zachowaj bezpieczenstwo komunikacji - ustal wywolania druzyn razem z HQ, wybieraj czestotliwosci zgodne z kodowaniem SSR. 1szego Wrzesnia ta czestotliwosc to 57.
	<br />2. Dbaj o swoj sprzet - jestes wyposazony w najnowoczesniejszy sprzet na swiecie. Dbaj o niego.
	<br />3. Dbaj o morale - na polu bitwy jedyna rodzina jest Twoja jednostka.
	<br />
	<br />Nie zawiedz swojej Ojczyzny, zolnierzu!
	</font>"
	]
	];
};

if(_jednostka in _hq) then {
	player createDiaryRecord [
	"Diary", [
	"Wskazania dla HQ",
	"
	<font size='20' font color='#0066FF'>Zalecenia dla HQ SSR Sztylet w Gross Malchau.</font>
	<br />
	<br />
	<font size='15'>1. Twoim glownym zadaniem jest utrzymanie pelnej gotowosci bojowej formacji SSR Sztylet.
	<br />
	<br /><font size='20' font color='#0066FF'>W przypadku mobilizacji.</font>
	<br />1. Oczekuj na kontakt od Sztabu Poznan lub Sztabu Warszawa [zadzwonia do ciebie na telefon w budynku Sztabu, na stoliku].
	<br />2. Ty podejmujesz decyzje czy czolgisci maja wsiasc do czolgow czy ruszyc razem z piechota.
	<br />3. Piechota ma zaladowac sie do Wrobli 290HTO [Mi290 Taru Bench, obsadzone przez AI].
	<br />4. Helikoptery przenoszace czolgi powinny wyruszyc od 3 do 5 minut po starcie Skrzydla Transportowego Kukulki.
	<br />5. Upewnij sie, ze skrzynki z wyposazeniem zostana zaladowane do samochodow Star 25NU/Star 25CKM [Punishery przy VTOLach].
	<br />6. Jeden z pilotow musi nadac do Skrzydla Transportowego Kukulki [uzywajac radia RT-254 na gorze wiezy kontrolnej].
	<br />
	<br />Nie zawiedz swojej Ojczyzny, zolnierzu!
	</font>"
	]
	];
};


if(_jednostka in _sztylet) then {
	player createDiaryRecord [
	"Diary", [
	"Obchody 2WS",
	"
	<font size='20' font color='#0066FF'>Obchody Rocznicy Wybuchu 2giej Wojny Swiatowej</font>
	<br />
	<br />
	<font size='15'>Duza czesc waszej formacji zostala wytypowania do wziecia udzialu w defiladzie i obchodach Rocznicy Wybuchu 2giej Wojny Swiatowej w Warszawie, z rozkazu Sztabu Poznan.
	<br />Z ponad 400 stacjonujacych zolnierzy zostalo was okolo 60ciu na terenie Gross Malchau.
	<br />Dodatkowo, okolo godziny 1000-1015 ma miec miejsce wizytacja bazy przez ambasadora Marcina Dabrowskiego.
	<br />
	</font>"
	]
	];
};

if(_jednostka in _sztylet) then {
	player createDiaryRecord [
	"Diary", [
	"SSR Sztylet",
	"
	<font size='20' font color='#0066FF'>Sily Szybkiego Reagowania</font>
	<br /><font size='20' font color='#8B0000'>Dywizja Sztylet</font>
	<br />
	<br />
	<font size='15'>SSR Sztylet to jedna z 5 dywizji Sil Szybkiego Reagowania nalezaca do Sztabu Poznan (Sztab Zachod).
	<br />Sily Szybkiego Reagowania to wysoce wyszkolona i swietnie wyposazona formacja, ktora odpowiada na wszelkiego rodzaju zagrozenia dla Nowej Rzeczpospolitej Polskiej z szybkoscia i skutecznoscia, ktorej zazdroszcza inne galezie Wojska Polskiego.
	<br />Dwuletnie szkolenie rekruta owocuje elitarnoscia i zabojcza skutecznoscia pojedynczego zolnierza. Wyobraz sobie 10 tysiecy takich maszyn do zabijania. To wlasnie sila, z ktora musza zmierzyc sie wrogowie NRP.
	<br />
	<br /><img width='360' image='obrazy\sztyletLogo.jpg' />
	<br />
	<br />
	</font>"
	]
	];
};

if(_jednostka in _sztylet) then {
	player createDiaryRecord [
	"Diary", [
	"Killhouse",
	"
		<font size='20' font color='#0066FF'>Killhouse</font>
		<br />
		<br />
		<font size='15'>Killhouse w bazie SSR jest dla uzytku wszystkich stacjonujacych zolnierzy. Regularny trening CQB oraz strzelniczy zapewnia Tobie jak i Twojej jednostce maksymalna zdolnosc bojowa. 
		<br />
		<br />1. Osoby wchodzace na teren Killhousa musza byc ustawione przy glosniku na starcie.
		<br /><img width='360' image='obrazy\obrazKillhouse.jpg' />
		<br />2. Osoby bedace wewnatrz scian (na zdjeciu) otrzymaja licznik (jak hint) oraz countdown do startu.
		<br />3. Za trafienie celu TERRORYSTA dostaniecie 50 punktow. Za trafienie celu CYWIL -100. Czas liczony jest w pelnych sekundach. Koncowy wynik to wszystkie punkty podzielone przez czas. Im wiekszy wynik, tym lepszy ranking.
		<br />4. Przy tym samym laptopie mozna przerwac KILLHOUSE RUN w dowolnym momencie. Podany zostanie obecny wynik i cele zostana zresetowane.
		<br />5. UWAGA! CELE WSTAJA PO POSTRZELENIU! Punkty nie powielaja sie (jesli trafisz cel raz, to po tym jak wstanie nie dostaniesz punktow za ponowne trafienie) [jest to jakis problem z Animate/AnimateSource funkcjami. Za cholere nie moge wyczaic o co chodzi].
		<br />7. Przed wejsciem do strefy startu znajduje sie skrzynka z ammunicja.
		<br />8. W strefie startu maja byc tylko osoby, ktore beda braly udzial w KILLHOUSE RUN.
		<br />9. Nie uzywac granatow.
		<br />Powodzenia, zolnerze! Pamietajcie, praktyka czyni mistrza!
		</font>"
		]
		];
};

player createDiaryRecord [
"Diary", [
"Techniczne",
"
<font size='20' font color='#0066FF'>Techniczne</font>
<br />
<br />
<font size='15'>1. Misja jest skomplikowana technicznie. Czytajcie zadania, bo w nich zawarte sa wskazowki co trzeba zrobic [perfidne instrukcje sa w kwadratowych nawiasach, pominac je przy RolePlay, sa OC (poza wiedza postaci)]. W razie watpliwosci prosze mnie pytac via steam lub shoutbox (bede mial otwarta strone na drugim ekranie).
<br />2. Wiekszosc akcji dostepna jest pod klawiszem windowsa.
<br />3. Misja moze miec pare lagow, niestety, efekty, ktore probuje osiagnac siedza na serwerze dosyc mocno (:sadface:).
<br />4. Kazda formacja (piechota, czolgi, piloci i specjalsi) maja swoje briefingi, ktore nie sa widoczne dla innych.
<br />5. Prosze nie robic sobie smieszkow z uniwersum misji. Jesli fajnie to pojdzie to bedzie kontynuacja.
<br />6. Przy markerze Skrzydlo Transportowe KUKULKI znajduja sie pojazdy (przy VTOLach Y32 Xi-an i Mi290 Transportowych), ktorych bedziecie uzywac w razie mobilizacji.
<br />7. Radia dlugie sa do odebrania w budynku SZTAB. Zglosic sie po nie powinni dowodcy druzyn/helek/czolgow.
<br />8. Wokol bazy dostepne jest kilkanascie obiektow z akcjami. Warto sobie pochodzic (oczywscie za pozwoleniem) i posprawdzac co i jak.
<br />9. Dostepny jest killhouse. Dokladniejsze informacje w odpowiedniej zakladce. Dodatkowo jest strzelnica.
<br />10. Helikoptery sa uziemione az do czasu przybycia Ambasadora (ok 1.5h) lub do ewentualnej mobilizacji. Mam problem z szalejacymi triggerami, nie moge rozwiazac problemu (przepraszam pilotow).
<br />11. Jednym z elementow ambientu sa cywilne i policyjne pojazdy jezdzace po drogach. Zjezdzajcie na bok aby je ominac!
<br />12. W wypadku mobilizacji jeden z pilotow ma uzyc akcji na radiu RT-254 na gorze wiezy kontrolnej, pamietajcie, ze piechota MA BYC W MI290 TARU (BENCH), obsadzone sa przez AI na markerze Skrzydlo Transportowe Kukulki.
<br />13. W misji sa akcje pod windowsem. Aby wiedziec kto moze je wykonac w kwadracie przed nazwa akcji jest skrot. [DD] - dowodca druzyny, [DO] - dowodca operacji, [S] - specjalsi, [P] - piloci, [C] - czolgisci. Ktos POWYZEJ tej roli moze wykonac akcje, lub mozna ja wykonac na prosbe kogos z grupy docelowej.



</font>"
]
];
