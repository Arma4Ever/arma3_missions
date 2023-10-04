if (!hasInterface) exitWith {};

if ((player distance koparka) < 50) then
{
cutText ["", "BLACK FADED", 999];
sleep 0.1;
titleText ["<t font='PuristaBold' size='2'>Naprawianie mostu.</t>", "PLAIN",2,true,true];
sleep 1;
titleText ["<t font='PuristaBold' size='2'>Naprawianie mostu..</t>", "PLAIN",2,true,true];
sleep 1;
titleText ["<t font='PuristaBold' size='2'>Naprawianie mostu...</t>", "PLAIN",2,true,true];
sleep 1;
titleText ["<t font='PuristaBold' size='2'>Naprawianie mostu.</t>", "PLAIN",2,true,true];
sleep 1;
titleText ["<t font='PuristaBold' size='2'>Naprawianie mostu..</t>", "PLAIN",2,true,true];
sleep 1;
titleText ["<t font='PuristaBold' size='2'>Naprawianie mostu...</t>", "PLAIN",2,true,true];
sleep 3;
titleFadeOut 2;
sleep 4;
titleCut ["", "BLACK IN", 4];
};
