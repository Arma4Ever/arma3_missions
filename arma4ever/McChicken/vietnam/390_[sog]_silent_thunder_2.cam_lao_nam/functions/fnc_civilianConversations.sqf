/*
Ambientowe rozmowy z obcokrajowcami by McChicken
Uwaga! Do wywołania lokalnie u gracza! Używać razem z modułem "dodaj akcję" z A4ES.
0 spawn mission_fnc_civilianConversations;

Jednostkom, które mają znać język obcy ustaw w init jednostki:
this setVariable ["knowLanguage", true];
*/

private _pool = [ //Zbiór wszystkich możliwych wypowiedzi
['Toi se khong noi chuyen voi ban','Nie będę z wami rozmawiać'], //Format każdej nowej wypowiedzi: "['Text w obcym języku','Text wyświetlany dla znającego język"],"
['Bien di','Idź precz!'],
['Ban kiem tra bat hahn','Sprowadzacie nieszczęście'],
['Dung giet toi','Nie zabij mnie'],
['Dat nauoc nay tha dep truoc ban','Zanim przyjechaliście było szczęście'],
['Nhung gi ban dang tim kiem khong co o day','Nie ma tu czego szukacie'],
['Chung toi la nong dan, hay de chung toi yen','Jesteśmy farmerami, zostawcie nas'],
['Dung giet chung','Nie zabijajcie nas'],
['Ban kiem tra bat hahn','Sprowadzacie nieszczęście'],
['Toi khong muson noi chuyen voi ban','Nie chcę z wami rozmawiać'],
['De toi yen','Zostaw mnie w spokoju'],
['Di xa khoi toi','Odejdź ode mnie!'],
['Anh trong lua','Hoduje ryż'],
['Ban dang tim gi o day?','Czego tutaj szukacie?'],
['Thoi khong thich vu khi cua ban','Nie podoba mi się wasza broń.']
];

private _sentence = selectRandom _pool;

if (ACE_Player getVariable ["knowVietnamsee", false]) then // przypadek 1: gdy postać gracza zna język obcy
{
  [
  	["Mieszkaniec wioski", (_sentence # 1), 0] // zamiast mieszkaniec wioski możecie wpisać własną nazwę, która wyświetli się nad zdaniem "wypowiadanym" przez postać.
  ] spawn BIS_fnc_EXP_camp_playSubtitles;
}
else // przypadek 2: gdy gracz nie zna języka obcego
{
  [
  	["Mieszkaniec wioski", (_sentence # 0), 0]
  ] spawn BIS_fnc_EXP_camp_playSubtitles; // shows a subtitle immediately
};

sleep 10;
BIS_fnc_EXP_camp_playSubtitles_terminate = true; 
