#include "script_component.hpp"

LOG("intro");

[false] call A4ESFUNC(ui,toggleScreenshotMode);

0 fadeEnvironment 0;

//Loading circle
with localNamespace do
{
   private _ctrl = findDisplay 46 ctrlCreate ["RscPictureKeepAspect", -1];
   _ctrl ctrlSetPosition [(safeZoneX + (safeZoneWAbs/ 2)- 1.22),(safeZoneY + (safeZoneH/2)+0.835),0.07,0.07];
   _ctrl ctrlSetText "A3\Missions_F_Exp\data\Img\lobby\ui_campaign_lobby_background_tablet_radial_left_ca.paa";
   _ctrl ctrlCommit 0;
   _ctrl spawn {
     params ["_ctrl"];
     sleep 37;
     ctrlDelete _ctrl;
   };
   localNamespace setVariable [QGVAR(angle), 0];
   localNamespace setVariable [QGVAR(ctrl), _ctrl];
   onEachFrame
   {
    with localNamespace do
    {
     if (GVAR(angle) > 359) then {GVAR(angle) = 0};
     GVAR(ctrl) ctrlSetAngle [GVAR(angle), 0.5, 0.5];
     GVAR(angle) = GVAR(angle) + 0.5;
    };
   };
};

cutText ["", "BLACK FADED", 999];
sleep 10;

playMusic "Track_O_07";

// Map objects creation screen
titleText ["<t size='1.4' color='#6b6b6b'>Wczytywanie...</t>", "PLAIN DOWN", -1, false, true];
waitUntil {
  sleep 0.1;
  private _status = missionNamespace getVariable ["a4es_modules_3DENCompObjectsSpawn", [false]];
  _status # 0
};
sleep 5;
waitUntil {
  sleep 0.5;
  private _status = missionNamespace getVariable ["a4es_modules_3DENCompObjectsSpawn", [false, 0, 0, false]];
  private _counter = _status # 1;
  private _count = _status # 2;
  if (_count > 0) then {
    private _percent = floor ((_counter / _count) * 100);
    titleText [format [
      "<t color='#6b6b6b'><t size='1.4'>%5</t><br/><t size='1.6'>%1%2</t><br/>%3/%4</t>",
      _percent,
      "%",
      _counter,
      _count,
      LLSTRING(Intro_CreatingObjects)
    ], "PLAIN DOWN", 0.001, false, true];
    titleFadeOut 9999;
  };
  _status # 3
};
titleText ["<t size='1.4' color='#6b6b6b'>Synchronizacja...</t>", "PLAIN DOWN", -1, false, true];

sleep 12;

preloadTitleRsc ["SplashArma3", "PLAIN"];
titleRsc ["SplashArma3", "PLAIN", 1];
sleep 4;
titleFadeOut 2;
sleep 4;

preloadTitleRsc [QGVAR(logo), "PLAIN"];
titleRsc [QGVAR(logo), "PLAIN", 2];
sleep 4;
titleFadeOut 2;
sleep 4;

// Terminate loading circle
onEachFrame{};

sleep 3;

// Slideshow
titleRsc [QGVAR(introSlideshow), "PLAIN", -1];
titleFadeOut 9999999;

waitUntil {missionNamespace getVariable [QGVAR(introSlideshowEnd), false]};
titleRsc ["Default", "PLAIN", 0.001];
[QGVAR(introEnded), true] call CBA_fnc_serverEvent;

0 spawn FUNC(camera);

