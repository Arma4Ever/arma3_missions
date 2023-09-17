#include "script_component.hpp"
/*
 * Author: Bohemia Interactive
 * Mission intro text sitrep
 */

0 spawn {
	// Compile date
  private _dateData = date;
	private _hour = str (_dateData # 3);
	private _minute = str (_dateData # 4);

	if (_dateData select 3 < 10) then {_hour = format ["0%1", str (date select 3)]};
	if (_dateData select 4 < 10) then {_minute = format ["0%1", str (date select 4)]};

	private _time = format ["%1:%2", _hour, _minute];
  private _unitData = [player, false] call a3cs_nametags_fnc_getUnitData;

	// Compile SITREP
	private _SITREP = [
		[( LLSTRING(Intro_Date) ) + " ", ""],
		[_time, "font='tt2020style_e_vn_bold'"],
    ["", "<br/>"],
    [format ["%1 %2", _unitData # 2, _unitData # 1], ""],
    ["", "<br/>"],
    [LLSTRING(Intro_Line1), "font='tt2020style_e_vn_bold'"],
    ["", "<br/>"],
    [LLSTRING(Intro_Line2), ""]
	];

	// Display SITREP
	[
		_SITREP,
		safeZoneX - 0.01,
		safeZoneY + (1 - 0.125) * safeZoneH,
		true,
		"<t align='right' size='1.0' font='tt2020style_e_vn'>%1</t>"
	] spawn BIS_fnc_typeText2;
};
