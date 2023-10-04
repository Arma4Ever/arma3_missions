if(_player != player) exitWith {};

/***************************************
               Briefing
****************************************/
_jedynkakapral = name dowodca_1;
_nameTxt = format ["<font size = '15'> %1 </font>", _jedynkakapral];
_dowodca = name hq_1;
_nameTxt2 = format ["<font size = '15'> %1 </font>", _dowodca];

player createDiaryRecord [
"Diary", [
"Raport Sytuacyjny",
"
<img width='160' image='data\a3c.paa' /><br />
<font size='20'><font color='#0066FF'>Bieżąca Sytuacja</font></font>
<br />
<br />
<font size='15'>Operacja Boomerang<br />
Wojna w Iraku wygrana przez nas oznaczała dopiero początek problemów. Jak grzyby po deszczu wyrosły organizacje powstańcze atakujące nasze placówki i prowadzące samobójcze zamachy. Dzisiejsza operacja ma na celu zjednanie serc i umysłów Irakijczyków a także co ważniejsze pochwycenia Imana, który zagrzewa lud do walki. Kapitan "+_nameTxt2 +" będzie dowodził dzisiejszą operacją. Mamy nadzieję że jego doświadczenie pomoże osiągnąć sukces.
<br />
<br />

"
]
];


player createDiaryRecord [
"Diary", [
"Zadania",
"
<img width='160' image='data\a3c.paa' /><br />
<font size='20'><font color='#0066FF'>Plan dzialan</font></font>
<br />
<br />
<font size='15'>Zadania:<br /><br />
- Sprawdzić posterunek.<br /><br />
- Dostarczyć ciężarówkę z zaoptarzeniem.<br /><br />
- Przepytać informatora.<br /><br />
- Pojmać Imana.<br /><br />
</font>
<br />
<br />

"
]
];
player createDiaryRecord [
"Diary", [
"Technikalia",
"
<img width='160' image='data\a3c.paa' /><br />
<font size='20'><font color='#0066FF'>Technikalia</font></font>
<br />
<br />
<font size='15'>
- W przypadku utraty pojazdu w czasie konwoju śmigłowiec może podebrać z bazy kolejny i dostarczyć go na miejsce..<br />
<br />
- Zakaz opuszczania rejonu działań.<br />
<br />
- Nadużywanie przemocy wobec ludności cywilnej będzie karane. Mają nas odróżniać od rebeliantów.<br />
<br />
- Śmigłowiec powinien zachować ostrożność, przeciwnik może dysponować bronią plot.<br />
<br />
- Pierwszy pojazd w konwoju należy do saperów, reszta wedle uznania.<br />
<br />
- Część Ai może mieć wam coś do powiedzenia.<br />
<br />
</font>
<br />
<br />

"
]
];