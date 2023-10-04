private _talker = _this select 0;

switch (_talker) do
{
case "drewno":
    {
        if (((player distance civ_1) < 10) && (alive civ_1)) then
        {
        titleText ["<t color='#b32cbf' shadow = 1 size='1.4'>Właściciel:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Wszystko już zapłacone, drewno jest wasze. Powodzenia z tym mostem, bardzo nam się przyda.</t>", "PLAIN DOWN", -1, true, true];
      };};
case "starzy":
    {
        if (((player distance old_1) < 10) && (alive old_1)) then
        {
        titleText ["<t color='#b32cbf' shadow = 1 size='1.4'>Starszyzna:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Zgodnie z umową. Jest woda są wiadomości.</t>", "PLAIN DOWN", -1, true, true];
        sleep 5;
        titleText ["<t color='#b32cbf' shadow = 1 size='1.4'>Starszyzna:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Bombiarz znajduje się w wiosce na południowy zachód.</t>", "PLAIN DOWN", -1, true, true];
      };};
case "bomber":
    {
        if (((player distance bomber_1) < 15) && (alive bomber_1)) then
        {
        titleText ["<t color='#b32cbf' shadow = 1 size='1.4'>Cywil:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Błagam pomóżcie! Zmusili mnie do tego, powiedzieli że zabiją całą moją rodzinę jak się nie zgodzę.</t>", "PLAIN DOWN", -1, true, true];
      };};
};
