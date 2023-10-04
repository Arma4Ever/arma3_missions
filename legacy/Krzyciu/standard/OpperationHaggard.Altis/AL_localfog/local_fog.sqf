// BY ALIAS

private ["_obj_fog"];

if (!isServer) exitwith {};

_fog_type	= _this select 1;

if ((_fog_type!="low")and(_fog_type!="high")and(_fog_type!="medium")) exitwith {hint "Wrong value for the fog type!"};

if (_fog_type=="low") then {_obj_fog = _this select 0; if (!isNil {_obj_fog getVariable "is_ON"}) exitwith {}; _obj_fog setVariable ["is_ON",true,true]; [[_obj_fog],"AL_localfog\low_fog.sqf"] remoteExec ["execVM",0,true]};
if (_fog_type=="high") then {_obj_fog = _this select 0; if (!isNil {_obj_fog getVariable "is_ON"}) exitwith {}; _obj_fog setVariable ["is_ON",true,true]; [[_obj_fog],"AL_localfog\high_fog.sqf"] remoteExec ["execVM",0,true]};
if (_fog_type=="medium") then {["AL_localfog\medium_fog.sqf"] remoteExec ["execVM",0,true]};