#include "script_component.hpp"

if (isMultiplayer && {!(isNull A4ES_HC_1)}) then {
  // Exec on headless
  [] remoteExec ["Krzyc_fnc_initDynamicAILocal", owner A4ES_HC_1];
} else {
  // Exec on server
  0 call FUNC(initDynamicAILocal);
};
