if(_player != player) exitWith {};

/***************************************
               Briefing
****************************************/

_easyCaptain = name easy_hq_1;
_nameTxt = format ["<font size = '15'> %1 </font>", _easyCaptain];

player createDiaryRecord [ 
"Diary", [ 
"Przechwycony List", 
" 
<br /> 
<font size='15'> 
<br /> 
<br /> 
391 Aventerra Pkwy, 
<br /> 
Colombus, Ohio, 43123 
<br /> 
<br /> 
Droga Mamo, Laurie i Jenny! 
<br /> 
<br /> 
Pisze ten list w srodku nocy, *nieczytelne*, jest godzina 01:25 i wlasnie docieramy nad Drop Zone. *nieczytelne*. Nie tego sie spodziewalismy... 
<br /> 
<br /> 
Nikt nas nie przygotowal na ostry ostrzal dzial AA i niemieckie mysliwce. Nasze C47 obrywaja i nikt nie jest w stanie powiedziec gdzie mamy skakac, bo *nieczytelne* i w dodatku moja latarka szwankuje... 
<br /> 
<br /> 
Chcialbym, zebyscie wiedzialy, ze was kocham. Jak tylko wroce do domu, to zabiore was do tego nowego steakhousea - Shannahans sie nazywal? *nieczytelne*. Mama... we are all going to die... 
<br /> 
<br /> 
Corporal James M. Boyd, 
<br /> 
Dog Company, 101st Airborne Division, 
<br /> 
Service number 17 356 491 
<br /> 
<br /> 
<font color='#ad9c9c'>FOR US OFFICE OF CENZORSHIP USE ONLY:</font> 
<br /> 
Status: List zarekwirowany 
<br /> 
Powod: Demoralizacja i negatywny wydzwiek dzialan w Europie 
<br /> 
Numer urzednika:  425 
</font> 
" 
] 
];


player createDiaryRecord [
"Diary", [
"List Eisenhower'a [ENG]",
"
<img width='320' image='pics\eisenhowerletter.jpg' /><br />
<br />
<font size='20' color='#4286f4'>Soldiers, Sailors and Airmen of the Allied Expeditionary Force!</font>
<font size='15'>
<br />
<br />
You are about to embark upon the Great Crusade, toward which we have
striven these many months. The eyes of the world are upon you. The 
hopes and prayers of liberty-loving people everywhere march with you. 
In company with our brave Allies and brothers-in-arms on
other Fronts, you will bring about the destruction of the German war
machine, the elimination of Nazi tyranny over the oppressed peoples of
Europe, and security for ourselves in a free world.
<br />
<br />
Your task will not be an easy one. Your enemy is well trained, well
equipped and battle hardened. He will fight savagely.
<br />
<br />
But this is the year 1944! Much has happened since the Nazi triumphs of
1940-41. The United Nations have inflicted upon the Germans great defeats,
in open battle, man-to-man. Our air offensive has seriously reduced their
strength in the air and their capacity to wage war on the ground. Our Home
Fronts have given us an overwhelming superiority in weapons and munitions
of war, and placed at our disposal great reserves of trained fighting men.
The tide has turned! The free men of the world are marching together to
Victory!
<br />
<br />
I have full confidence in your courage and devotion to duty and skill in
battle. We will accept nothing less than full Victory! 
<br />
<br />
Good luck! And let us beseech the blessing of Almighty God upon this great
and noble undertaking.
<br />
<br />
SIGNED: Dwight D. Eisenhower
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"List Eisenhower'a [PL]",
"
<img width='320' image='pics\eisenhowerletter.jpg' /><br />
<br />
<font size='20' color='#4286f4'>Zolnierze, marynarze i lotnicy Alianckich Sil Ekspedycyjnych!</font>
<font size='15'>
<br />
<br />
Jestescie o krok od rozpoczecia Wielkiej Krucjaty, do ktorej dazylismy przez wiele miesiecy. Oczy calego swiata sa zwrocone na was. Nadzieja i modlitwy ludzi wolnosci krocza z wami. We wspolpracy z naszymi sojusznikami na innych frontach dokonacie zniszczenia Niemieckiej machiny wojny, wyeliminujecie Nazistowska opresjie Europejczykow, wywalczycie wolnosc dla nas.
<br />
<br />
Wasze zadanie nie bedzie latwe. Wasz wrog jest dobrze wyszkolony, dobrze wyposazony i zaprawiony w boju. Bedzie stawial zaciekly opor.
<br />
<br />
Ale to jas NASZ rok 1944! Wiele sie wydarzylo od czasow zwyciestw Nazistow w latach 1940-41. Zjednoczone Narody zadaly Niemcom wielkie straty w otwartych bitwach, twarza w twarz. Nasza ofensywa powietrzna powaznie ograniczyla ich sile w powietrzu i ich zdolnosc do walki naziemnej. Nasz kraj dal nam przytlaczajaca przewage w broni i sprzecie bojowym, oraz dal nam do dyspozycji duze rezerwy wyszkolonych zolnierzy. Sprawy przyjely nowy obrot! Wolni ludzie swiata maszeruja wspolnie ku zwyciestwu!
<br />
<br />
Mam pelne zaufanie do waszej odwagi, poswiecenia i umiejetnosciach na polu bitwy. Nie zaakceptujemy niczego poza pelnym zwyciestwem!
<br />
<br />
Powodzenia! I modlmy sie do Wszechmogacego o blogoslawienstwo w tym wielkim i szlachetnym przedsiewzieciu.
<br />
<br />
PODPISANO: Dwight D. Eisenhower
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Transkrypt z briefingu",
"
<img width='320' image='pics\landingMap.jpg' /><br />
<font size='20' color='#4286f4'>U.S. Army 101st Division Office of Internal Affairs</font>
<br />
<br />
<font size='15'><font  color='#4286f4'>Obecni:</font> General Taylor, 101st Airborne Division<br />Porucznik Howard, 327th Glider Infantry Regiment,<br />Kapitan Milner, 401st Glider Infantry Regiment,<br />Podporucznik Sanders, 502nd Parachute Infantry Regiment (Dog Company),<br />Porucznik Sink, 506th Parachute Infantry Regiment (Fox Company),<br />Kapitan "+_nameTxt+", 506th Parachute Infantry Regiment (Easy Company),<br />Major Summyers, 321st Artillery Regiment</font>
<br />
<br />
Lincolnshire, England, June 5th 1944,
<br />
1632 hrs
<br />
<br />
<font size='15'>[[G]eneral Taylor]: Spocznijcie. Mam nadzieje, ze wszyscy czuja sie dobrze. Dostalismy zielone swiatlo na operacje Boston. Wszyscy na to czekalismy. Teraz znamy szczegoly. Ruszycie razem ze skrzydlem L4 zaraz za Pathfinderami, okolo godziny 0. Lot bedzie trwal od godziny do poltorej, pogoda nie pozwala naszym Dacotom na rozwiniecie pelnej predkosci. Jakies pytanie, poruczniku?
<br />
[Porucznik Howard, 327th GIR]: Tak, jesli pogoda sie nie poprawila to dlaczego skaczemy dzis?
<br />
[G]: Pogoda poprawila sie wystarczajaco, Poruczniku. Kazdy dzien, ktory tracimy, to dzien w ktorym wrog staje sie silniejszy. Tak jak mowilem, 327th Glider Regiment wspolnie z 401st Glider Regiment wyrusza okolo godziny 2315 dzis w nocy. Ruszycie razem z trzema kompaniamii 82iej. Brytyjczycy z 9th Airborne wyrusza godzine przed wami, bedziecie mieli sygnaly Eureka. Nastepnie wyruszy 506th Parachute Regiment, wszystkie kompanie razem. Przelecicie okolo 5 mil za linie 327mej i 401szej, zrzucicie sie na polnocny wschod od Chef-du-Pont. Waszym zadaniem bedzie zabezpieczenie mostu. Nie musicie sie martwic o polnoc i polnocny wschod - 82ga bedzie skakala w tym rejonie, powinniscie miec bezpieczna flanke. Uwazajcie na poludnie i poludniowy wschod. Tak, Poruczniku?
<br />
[Porucznik Sink, Fox Company, 506th PIR]: Czy my rowniez bedziemy mieli sygnaly Eureka?
<br />
[G]: Tak, aczkolwiek wasz zrzut bedzie skoncentrowany wokol 3 sygnalow na polnocny wschod, okolo 2 mile od miasteczka.
<br />
[Porucznik Sink]: Zrozumialem.
<br />
[G]: O czym ja... A, tak. Po wyladowaniu i zabezpieczeniu Drop Zone, przygotujcie uderzenie na miasteczko. Kapitanowie poszczegolnych kompanii  musza dogadac sie kto i co na miejscu, ogolny plan jest taki, ze Fox zabezpieczy poludnie, Dog polnoc a Easy wejdzie do miasta, ma to byc zrobione szybko i sprawnie, kapitanie " + _nameTxt + ". Kazdy napotkany Niemiec ma zostac zastrzelony, chociaz oficjalnie mam wam przypomniec o Konwencji Genewskiej i tym calym gownie. Nie przejmujcie sie, Niemiec zrobi to samo. Medycy maja miec Garandy.
<br />
[Kapitan "+_nameTxt +", Easy Company, 506th PIR]: Czy mozemy liczyc na jakiekolwiek wsparcie?
<br />
[G]: Od godziny 0230 beda ruszaly glidery z artyleria, mozdzierzami, Willysami i tak dalej. W zaleznosci od tego jak sprawnie bedziecie dzialac, mozecie liczyc na wsparcie od okolo godziny 0330, moze 0400. W sumie Brytole maja wylaczyc Eureki okolo 0400, wiec powiedzmy, ze wsparcie bedzie dostepne od 0430. W wasz rejon, kapitanie " + _nameTxt + " doleci kompania... bodajze Able z 403rd Field Artillery Battalion z dzialami 175mm i George z 326th Engineer Battalion z radiami i ciezszym sprzetem dla was. Zrozumial? 
<br />
[Kapitan "+_nameTxt+"]: Tak jest.
<br />
[G]: Teraz tak, 506th Regiment. Dotrzecie w rejon dzialania okolo 0130, macie nastepujace zadania: Dog Company, musicie zabezpieczyc zamek Chateau de Bosson. Szwaby maja tam wezel logistyczny i jesli pokiereszujecie ich wystarczajaco, to zaburzycie linie dostaw do plazy w trakcie jutrzejszego desantu na plaze Utah. Po drodze macie zabezpieczyc przejscie przez rzeke na polnoc od Chef-du-Pont. Dodatkowo, mozecie sie spotkac z operatorem francuskiego Ruchu Oporu, siedzi on gdzies na polnoc od Chef-du-Pont, moze bedzie mial jakies dodatkowe informacje dla was. Kompania Fox, wy sie udacie na poludnie, zabezpieczycie elektrownie, zeby miec mozliwosc odciecia pradu Niemcom w Carentan w pozniejszym czasie. Omincie baze wojskowa na wschod od Chef-du-Pont, zajmie sie tym Easy. Nastepnie, Fox, kontynuujecie aby zabezpieczyc baze wojskowa o kryptonimie MARS, musicie wysadzic znajdujace sie tam dziala. Oczywscie, po drodze przejdziecie i zabezpieczycie male przejscie przez rzeke Merderet na poludnie od miasta. W koncu Easy, kapitanie " + _nameTxt + ", waszym zadaniem jest zabezpieczenie bazy wojskowej o kryptonimie WENUS, na wschod od Chef-du-Pont. Nastepnie, poczekacie na wykonanie zadan przez Dog i Fox, skomunikujecie sie na radiu i uderzycie na miasteczko. Wszystko jasne?
<br />
[Kapitan "+_nameTxt+"]: Tak.
<br />
[G]: Swietnie. W przypadku zagubienia sie, braku komunikacji lub duzych strat ktorejkolwiek z kompanii Dog, Easy lub Fox, zadania maja zostac podzielone pomiedzy pozostalymi kompaniami. Nie akceptujemy porazki.
<br />
[Kapitan "+_nameTxt+"]: Tak, Generale. Curahee.
<br />
[G]: Curahee. 506sta odmaszerowac. Niech Bog bedzie z wami.
<br />
<br />
*Podporucznik Sanders oraz Kapitan "+_nameTxt +" opuszczaja pokoj briefingu*
</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Podrecznik Spadochroniarza",
"
<img width='320' image='pics\handoutPic.jpg' /><br />
<font size='20' color='#4286f4'>Podrecznik Spadochroniarza</font>
<br />
<font size='15'>Witaj zolnierzu!</font>
<br />
<br />
<font size='15'>Juz za kilka godzin znajdziesz sie we wrogim terytorium! Aby byc na to przygotowany, zapoznaj sie z niniejszym podrecznikiem. Niech Bog ma Ciebie w swojej opiece!</font>
<br />
<br />
<font size='15' color='#4286f4'>1. </font><font size='15'>Przed wylotem sprawdz swoj ekwipunek!</font>
<br />
<font size='15' color='#4286f4'>2. </font><font size='15'>W trakcie lotu obserwuj swojego Jump Mastera! </font> <font size='15' color='#f4d641'> (Uwaznie czytaj co jest napisane w lewym dolnym rogu. Zachecam Dowodcow Sekcji II do czytania swoich kwestii na glos- kwestie Jump Masterow zaczynaja sie od [Jump Master]) </font>
<br />
<font size='15' color='#4286f4'>3. </font><font size='15'>Zachowaj odstepy w trakcie wyskoku!</font><font size='15' color='#f4d641'> (Bedziecie wyrzucani ze skryptu, nie scrollujcie i nie uzywajcie zadnych akcji w trakcie lotu!)</font>
<br />
<font size='15' color='#4286f4'>4. </font><font size='15'>W trakcie spadania nie szarp za zadne sznury!</font><font size='15' color='#f4d641'> (Spadochrony nie sa sterowalne - mozecie probowac krecic sie spamujac W, S, A lub D, ale bardzo niewiele to daje - zachecam do ogladania ambientu w trakcie spadania)</font>
<br />
<font size='15' color='#4286f4'>5. </font><font size='15'>Po wyladowaniu zdejmij spadochron, odepnij zasobnik i wypakuj swoj sprzet!</font><font size='15' color='#f4d641'> (Po wyladowaniu scrollem myszki na akcje Odepnij zasobnik - trwa to okolo 5 sekund i w poblizu pojawi sie plecak na ziemii (Spadochron taki sam jak mieliscie na plecach). Podejdz i normalnie uzyj scrolla aby zobaczyc co sie w nim znajduje. Kliknij dwa razy w jedyny spadochron w liscie wyposazenia. Prosze nie zakladac tego spadochronu - nie bedziecie w stanie przebiec 20 metrow)</font>
<br />
<font size='15' color='#4286f4'>6. </font><font size='15'>Gdy juz bedziesz gotowy udaj sie w wyznaczone miejsce zbiorki!</font>
<br />
<img width='160' image='pics\cricket.jpg' /><br />
<font size='15' color='#4286f4'>7. </font><font size='15'>W drodze do Rendezvous Point, wysluchuj obecnosci innych zolnierzy - wroga lub przyjaciela. Uzyj Cricketa aby dac znac, ze jestes w poblizu. Pamietaj <font color='#f44141'>POJEDYNCZE KLIKNIECIE</font> to zawolanie,<font color='#f44141'>PODWOJNE KLIKNIECIE</font> to odzew!</font><font size='15' color='#f4d641'> (Pod scrollem macie dwie akcje Kliknij RAZ (pojedyncze klikniecie) i Kliknij DWA (podwojne klikniecie). Zasieg slyszalnosci klika to okolo 50 metrow)</font>
<br />
<font size='15' color='#4286f4'>8. </font><font size='15'>Najpewniejszym sposobem identyfikacji jest wywolanie glosowe. Krzyknij <font color='#f44141'>FLASH(FLASZ, BLYSK)</font> i jesli uslyszysz <font color='#f44141'>THUNDER (FANDER, GRZMOT)</font> to znaczy ze znalazles innego Skoczka! Ponow zawolanie maksymalnie <font color='#f44141'>3</font> razy, jesli nie uslyszysz odzewu to znaczy ze znalazles wroga!</font><font size='15' color='#f4d641'> (Najpewniejszy sposob na identyfikacje sojusznikow to krzykniecie wywolan - niektorzy maja sciszona gre, wiec Cricket'y moga nie dzialac tak, jak powinny)</font>
<br />
<font size='15' color='#4286f4'>9. </font><font size='15'>Spokoj i opanowanie to twoja najskuteczniejsza bron! Nie szarzuj w pozycje wroga bez wsparcia, staraj sie trzymac blisko swojego Rifle Squad i zawsze wykonuj polecenia wyzszego stopniem!</font>
<br />
<font size='15' color='#4286f4'>10. </font><font size='15'>Strzelaj, aby zabic - jeden Niemiec mniej przybliza nas o jeden krok do zwyciestwa!</font>
<br />
<br />
<font size='15'>Przestrzeganie tych prostych porad z pewnoscia przyczyni sie do twojego sukcesu na tej wielkiej i jakze waznej wyprawie! To jest nasz czas na Rendezvous With Destiny!</font>
<br />
<br />
<font size='15'>Created by 101st Airborne Division Headquarters Battalion with pre-print adjustment by 506th Infantry Regiment Headquarters.</font>
"
]
];

player createDiaryRecord [
"Diary", [
"Zarys Kampanii",
"
<font size='20' color='#892626'>Mama, We re All Gonna Die!</font>
<br />
<br />
<font size='15'>Jest rok 1944. Wojska Aliantow szykuja sie do inwazji na okupowana przez Niemcow Europe. Na punkt desantu wybrana zostaje Normandia - region Francji z plaskim terenem i silnym ruchem oporu.
<br />
<br />
5 czerwca w sztabie generalnym wojsk Aliantow panuje zamieszanie. Po miesiacu kiepskiej pogody w koncu dobre nowiny: pogoda ma sie poprawic na dwa lub trzy dni. Sily Ekspedycyjne postawione zostaly w stan najwyzszej gotowosci. Operacja Overlord dostaje zielone swiatlo. O godzinie 2341 czasu lokalnego podrywaja sie pierwsze C47 w eskorcie brytyjskich i amerykanskich mysliwcow. Nerwowa atmosfera w srodku daje sie wszystkim we znaki. Nikt nie wie czego mozna sie spodziewac.
<br />
<br />
Okolo godziny 0120 spadochroniarze z kompanii Dog, Easy i Fox dolatuja nad Chef-du-Pont - male miasteczko o wielkim znaczeniu strategicznym. Znajduje sie tam jedyny most, po ktorym moga poruszac sie dywizje pancerne, ladujace sie w tym momencie na barki desantowe po drugiej stronie kanalu La Manche. Do tej pory wszystko przebiegalo sprawnie - wszystkie punkty orientacyjne wygladaja na czyste i piloci zaczynaja szukac brytyjskich sygnalow Eureka.
</font>
<br />
<br />
"
]
];

player createDiaryRecord [
"Diary", [
"Od MM",
"
<br />
<font size='20'>Od MM</font></font>
<br />
<br />
<font size='15'>Prosze zastosowac sie do zalecen w zakladce Podrecznik Spadochroniarza. Sa tam proste informace o tym jak wyglada mechanika gry. W tej misji nie ma zadnych opisow postaci (oprocz dowodcy operacji, "+_nameTxt+"), waszym zadaniem jest wczuc sie w klimat i sytuacje. Nie robcie sobie ruskich noktowizji -  ma byc ciemno, strasznie i przytlaczajaco. Jesli ktos podjasni sobie gre to bedzie terminatorem.
<br />
<br />
Chcialbym, zeby wszyscy bawili sie tak dobrze, jak ja bawilem sie robiac ta misje. Briefing jest dlugi, ale warto go przeczytac - mysle, ze doda do atmosfery. Lokalizacje i czas niektorych wydarzen zostaly zmienione. Zalaczone sa 2 wersje listu Eisenhowera. Zadania sa opisane w zakladce zadania. Briefing przed przejsciem na mape. Dodatkowe informacje techniczne sa pod zakladka Podrecznik Spadochroniarza. Jesli pojawia sie dodatkowe zadania, to info bedzie w opisie tego zadania. Zadania z gwiazdka sa opcjonalne.
<br />
<br />
Nie wchodzic do czerwonego obszaru az do pojawienia sie zadania <font color='#892626'>Zabezpiecz miasteczko Chef-du-Pont</font>. Dowodca operacji, przeczytaj opis postaci.
<br />
<br />
Wysadzania czolgow i dzial PaK dokonujemy poprzez klawisz windowsa (akcja ACE).
<br />
<br />
Zakonczenie misji poprzez akcje z radiem na stole obok dworca w Chef-du-Pont. Stoi ono po prawej stronie patrzac na wejscie od drogi idacej Wschod-Zachod.
<br />
<br />
Za koniec desyncu mozecie uznac koniec napisow poczatkowych, w momencie kiedy Eisenhower przestanie mowic (PAMIETAJCIE O PODGLOSNIENIU MUZYKI!)
<br />
<br />
Smialo zadawajcie pytania, zebysmy nie musieli restartowac misji :)
</font>
"
]
];



