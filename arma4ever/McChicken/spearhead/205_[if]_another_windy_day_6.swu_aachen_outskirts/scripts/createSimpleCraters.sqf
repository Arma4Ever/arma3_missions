0 spawn {
  private _data = call compile preprocessFileLineNumbers "scripts\data_craters.sqf";
  {
    _x params ["_model", "_posWorld", "_vector"];
    private _object = createSimpleObject [_model, [0,0,0]];
    _object setPosWorld _posWorld;
    _object setVectorDirAndUp _vector;
    sleep 0.01;
  } forEach _data;
};
