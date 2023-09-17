/*
  Author: SzwedzikPL
  Inits briefing slides dialog
*/

params ["_display"];

private _titleCtrl = _display displayCtrl 1100;
_titleCtrl ctrlSetStructuredText parseText "<t align='center' size='1.6'>Operation Black Avalanche: Slajdy</t>";

private _screen1ComboCtrl = _display displayCtrl 2100;
private _screen2ComboCtrl = _display displayCtrl 2101;
private _screen3ComboCtrl = _display displayCtrl 2102;
private _combos = [_screen1ComboCtrl, _screen2ComboCtrl, _screen3ComboCtrl];
private _screens = [base_briefing_screen_1,base_briefing_screen_2, base_briefing_screen_3];
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
    ["0. Wybierz slajd", "slide_0"],
    ["1. Hakim Haftir - Fota #1", "slide_hakim_1"],
    ["2. Hakim Haftir - Info", "slide_hakim_info"],
    ["3. Hakim Haftir - Fota #2", "slide_hakim_2"],
    ["4. Kompleks - Fota #1", "slide_compound_1"],
    ["5. Kompleks - Schemat", "slide_compound_schema"],
    ["6. Kompleks - Fota #2", "slide_compound_2"],
    ["7. OP1 - Zoom", "slide_op_1"],
    ["8. OP - Schemat", "slide_op_schema"],
    ["9. OP2 - Zoom", "slide_op_2"],
    ["10. Garnizon - Zoom", "slide_garrison"],
    ["11. Transformator - Zoom", "slide_trans"],
    ["12. Plac budowy - Zoom", "slide_constr"],
    [localize "STR_Mission_Slides_AreaN", "slide_area_n"],
    [localize "STR_Mission_Slides_AreaE", "slide_area_e"],
    [localize "STR_Mission_Slides_AreaS", "slide_area_s"],
    [localize "STR_Mission_Slides_AreaW", "slide_area_w"],
    ["17. LZ - Avenger", "slide_lz_aveng"],
    ["18. LZ - Oasis", "slide_lz_oasis"],
    ["19. LZ - Winchester", "slide_lz_winch"],
    ["20. FOB Nauzad - schemat", "slide_fob"]
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
