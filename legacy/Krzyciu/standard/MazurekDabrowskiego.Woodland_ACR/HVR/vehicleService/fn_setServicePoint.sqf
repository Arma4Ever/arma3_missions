/**
 * Przekazany obiekt staje się punktem serwisowym
 */
params ["_object"];

HVR_VS_arr_servicePoints pushBack _object;
publicVariable "HVR_VS_arr_servicePoints";