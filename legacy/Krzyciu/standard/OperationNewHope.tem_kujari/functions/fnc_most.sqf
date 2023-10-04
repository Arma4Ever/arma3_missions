private _stan = _this select 0;

switch (_stan) do
{
case "start":
    {
      {deleteVehicle _x} forEach [desks_0,desks_1,desks_2];
      ["bridge_start_repair"] call CBA_fnc_serverEvent;
      [] remoteExec ["Krzyc_fnc_mostLocal", 0, true];
      [[koparka, 0, ["ACE_MainActions","most1"]],ace_interact_menu_fnc_removeActionFromObject] remoteExec ["call", 0, true];
      ;};
case "end":
    {
      {deleteVehicle _x} forEach [desks_3,desks_4];
      ["bridge_end_repair"] call CBA_fnc_serverEvent;
      [] remoteExec ["Krzyc_fnc_mostLocal", 0, true];
      [[koparka, 0, ["ACE_MainActions","most2"]],ace_interact_menu_fnc_removeActionFromObject] remoteExec ["call", 0, true];
      ;};
};
