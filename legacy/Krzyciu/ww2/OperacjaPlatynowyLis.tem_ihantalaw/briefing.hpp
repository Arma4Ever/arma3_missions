/*
 * Briefing
 * Dokumentacja: https://community.bistudio.com/wiki/createDiaryRecord
 */

/*
    INFO: Jeśli chcesz użyć stringtable w briefingu, pamiętaj aby zamienić:
    & na &amp;
    < na &lt;
    > na &gt;
    " na &quot;
    ' na &apos;

    Wtedy możesz smiało użyć stringtable (przykład w stringtable.xml) i zamienić wpis
    briefingu na "player createDiaryRecord ["Diary", ["Briefing", LLSTRING(Briefing)]];"
    "
*/

private _adm = player createDiaryRecord ["diary", ["Techniczne","
<br/>
Interakcje pod menu interakcji.<br/><br/>
Wyłączona stamina - mapa jest mała, a dzięki temu można sensownie gospodarować zabranym sprzętem - np. broń automatyczna dla AT w plecaku.<br/><br/>
Nastąpiło gwałtowne załamanie pogody, gdy nadejdzie zamieć, jednostki nie będące w pojazdach/budynkach/w pobliżu ognisk zaczną zamarzać.
Aby temu zapobiec należy schować się w pojeździe/budynku lub postawić ognisko. Stawia się je poprzez interakcję - podobnie jak stawia się np. okopy. Do postawienia ogniska konieczne jest posiadanie racji żywnościowej w ekwipunku - można ją pobrać ze skrzyni przy HQ.<br/><br/>
"]];

// NOTES: SITUATION
private _sit = player createDiaryRecord ["diary", ["Sytuacja","
<br/>Sowieci są w trudnej sytuacji. Nasze ataki doprowadziły do prawie całkowitego okrążenia ich wojsk.
<br/>Pozostał jeden  wąski korytarz, przez który wycofują swoje siły.
<br/>W celu utrzymania korytarza rzucili swoje siły do ataku na nasze pozycje. Według informacji naszego agenta, atak ma nastąpić o 6:00. Musicie jak najszybciej umocnić lukę pomiędzy naszymi siłami.
<br/>Po odparciu uderzenia ruszycie do ataku w celu ostatacznego domknięcia kotła.
"]];
