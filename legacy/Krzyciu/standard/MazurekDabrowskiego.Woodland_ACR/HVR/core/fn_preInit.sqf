"HVR_PV_setFuel" addPublicVariableEventHandler {
	(_this select 1) call HVR_fnc_setFuel;
};

"HVR_PV_setDamage" addPublicVariableEventHandler {
  	(_this select 1) call HVR_fnc_setDamage;
};

"HVR_PV_setPylonLoadout" addPublicVariableEventHandler {
  	(_this select 1) call HVR_fnc_setPylonLoadout;
};

"HVR_PV_rearmPylons" addPublicVariableEventHandler {
  	(_this select 1) call HVR_fnc_rearmPylons;
};