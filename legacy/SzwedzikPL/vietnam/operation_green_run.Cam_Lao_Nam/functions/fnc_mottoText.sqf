/*
	Author: Karel Moricky, modified by SzwedzikPL
  Shows motto text

	Parameter(s):
	_this select 0: Text
	_this select 1: (Optional) X coordinates
	_this select 2: (Optional) Y coordinates
	_this select 3: (Optional) Duration
	_this select 4: (Optional) Fadein time
	_this select 5: (Optional) Delta Y
	_this select 6: (Optional) Resource layer
*/
disableserialization;

_text = _this select 0;
_x = if (count _this > 1) then {_this select 1} else {-1};
_y = if (count _this > 2) then {_this select 2} else {-1};
_w = -1;
_h = -1;
_delay = if (count _this > 3) then {_this select 3} else {4};
_fade = if (count _this > 4) then {_this select 4} else {1};
_moveY = if (count _this > 5) then {_this select 5} else {0};
_layer = if (count _this > 6) then {_this select 6} else {[] call bis_fnc_rscLayer};

if (_delay < 0) then {_delay = 4};
if (_fade < 0) then {_fade = 1};

//--- Width and Height
if (typename _x == typename []) then {
	_array = _x;
	_x = _array select 0;
	_w = _array select 1;
};
if (typename _y == typename []) then {
	_array = _y;
	_y = _array select 0;
	_h = _array select 1;
};

_layer cutrsc ["rscDynamicText","plain"];

_display = uinamespace getvariable "BIS_dynamicText";
_control = _display displayctrl 9999;
_control ctrlsetfade 1;
_control ctrlcommit 0;
_pos = ctrlposition _control;
if (_x != -1) then {_pos set [0,_x]};
if (_y != -1) then {_pos set [1,_y]};
if (_w != -1) then {_pos set [2,_w]};
if (_h != -1) then {_pos set [3,_h]};
_control ctrlsetposition _pos;

if (typeName _text == typeName "") then
{
	_control ctrlsetstructuredtext parseText _text;
}
else
{
	_control ctrlsetstructuredtext _text;
};
_control ctrlcommit 0;

_y = _pos select 1;
_pos set [1,_y + _moveY];
_control ctrlsetposition _pos;
_control ctrlsetfade 0;
_control ctrlcommit _fade;

waituntil {ctrlcommitted _control};

_y = _pos select 1;
_pos set [1,_y + _moveY];
_control ctrlsetposition _pos;
_control ctrlsetfade 1;
_control ctrlcommit _fade;

waituntil {ctrlcommitted _control};

_layer cuttext ["","plain"];
