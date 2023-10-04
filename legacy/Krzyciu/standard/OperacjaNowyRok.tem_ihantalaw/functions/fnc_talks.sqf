// Rozbudowany system do dialogów. Tutaj znajdują się tylko teksty wyświetlane na ekranie, całe menu obsługuje plik dialogs.hpp
_talker = _this select 0;

switch (_talker) do
{
case "report":
    {
        if (((player distance rep_1) < 5) && (alive rep_1)) then
        {
        titleText ["<t color='#8a2aa5' shadow = 1 size='1.4'>Cywil:</t><t color ='#FFFFFF' shadow = 2 size ='1.3'>Jest nas tu dwóch, uważajcie!</t>", "PLAIN DOWN", -1, true, true];
      };};
case "intel1":
    {
        "Laptop" hintC "Nie znajdujesz nic ciekawego.";
      };
case "intel2":
    {
        "Laptop" hintC "Znajdujesz raporty od japońskiego zwiadu - współpracują z rebeliantami.";
      };
};
