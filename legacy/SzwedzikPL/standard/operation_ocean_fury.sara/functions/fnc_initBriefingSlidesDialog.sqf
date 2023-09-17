/*
  Author: SzwedzikPL
  Inits briefing slides dialog
*/

params ["_display"];

private _titleCtrl = _display displayCtrl 1100;
_titleCtrl ctrlSetStructuredText parseText "<t align='center' size='1.6'>USS Freedom : Slajdy</t>";

private _screen1ComboCtrl = _display displayCtrl 2100;
private _screen2ComboCtrl = _display displayCtrl 2101;
private _screen3ComboCtrl = _display displayCtrl 2102;
private _combos = [_screen1ComboCtrl, _screen2ComboCtrl, _screen3ComboCtrl];
private _screens = [carrier_briefing_screen_1,carrier_briefing_screen_2, carrier_briefing_screen_3];
{
  private _currentSlideIndex = 0;
  private _currentSlide = (_screens select _forEachIndex) getVariable ["mission_currentSlide", "slide_0"];
  private _comboCtrl = _x;
  {
    private _index = _comboCtrl lbAdd (_x # 0);
    _comboCtrl lbSetData [_index, _x # 1];
    if (_currentSlide isEqualTo (_x # 1)) then {
      _currentSlideIndex = _index;
    };
  } forEach [
    ["Wybierz slajd", "slide_0"],
    ["Studio: Ambasador", "slide_studio_morris"],
    ["Studio: Zoom", "slide_studio_zoom"],
    ["Studio: Overview", "slide_studio_overview"],
    ["Vallejo: Info", "slide_vallejo_info"],
    ["Vallejo: Zoom", "slide_vallejo_zoom"],
    ["Vallejo: Overview", "slide_vallejo_overview"],
    ["Arcadia: Info", "slide_arcadia_info"],
    ["Arcadia: Zoom", "slide_arcadia_zoom"],
    ["Arcadia: Overview", "slide_arcadia_overview"],
    ["Chantico: Info", "slide_chantico_info"],
    ["Chantico: Zoom", "slide_chantico_zoom"],
    ["Chantico: Overview", "slide_chantico_overview"]
  ];
  _comboCtrl lbSetCurSel _currentSlideIndex;
} forEach _combos;

private _saveButtonCtrl = _display displayCtrl 2400;
_saveButtonCtrl setVariable ["dialog_combos", _combos];
_saveButtonCtrl setVariable ["dialog_screens", _screens];

_saveButtonCtrl ctrlAddEventHandler ["ButtonClick", {
  params ["_button"];
  private _combos = _button getVariable ["dialog_combos", []];
  private _screens = _button getVariable ["dialog_screens", []];
  private _slides = _combos apply {_x lbData (lbCurSel _x)};

  {
    private _slide = _slides param [_forEachIndex, ""];
    if !(_slide isEqualTo "") then {
      _x setVariable ["mission_currentSlide", _slide, true];
      _x setObjectTextureGlobal [0, format ["data\slides\%1.paa", _slide]];
    };
  } forEach _screens;

  closeDialog 0;
}];
