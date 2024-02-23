if (!hasInterface) exitWith {}; // podwójne zabezpieczenie

while {sleep 1800; alive player} do {
hint parseText
  "
  <t size='1.5' color='#00ff00'>Przypomnienie</t><br/><br/>
    <t size='1'>Jeżeli doświadczasz problemów z płynnością gry spróbuj zrestartować aplikację TeamSpeak.</t>
    <br/><br/>
    <img size='3' image='data\ts3logo.paa'/>
  ";
};
