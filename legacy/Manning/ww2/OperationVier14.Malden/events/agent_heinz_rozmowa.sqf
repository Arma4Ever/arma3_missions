if(player distance agent_heinz < 15) then {


titleText ["Agent: *Ledwo zyjacy, ciezko oddychajacy agent szepcze, ale jego glos dobrze roznosi sie po pokoju*","PLAIN DOWN"];
sleep 10;

titleText ["Agent: Sii... Sieg Hail... Nazywam sie... *kaszle* Klaus Heinz... Abwehr I Amtsgruppe Ausland... *kaszle*","PLAIN DOWN"];
sleep 10;

titleText ["Pomagajacy: Spokojnie, agencie. Powiedz nam tylko, gdzie jest Edelweiss...","PLAIN DOWN"];
sleep 10;

titleText ["Agent: Ahh... Edelweiss... Saint Marie... Sprawdzcie Saint Marie... *kaszle, krew rozpryskuje sie po koszulce*","PLAIN DOWN"];
sleep 10;

titleText ["Agent: Szukacie... *kaszle* Haw... Hawth... *kaszle*... Powiedzcie Fuhrerowi, ze... *kaszle* wytrzymalem... do konca...","PLAIN DOWN"];
sleep 10;
} else {};

if(!hasInterface) then {sleep 40; lokacja_3bool = true; publicVariable "lokacja_3bool"; agent_heinz setDamage 1;}