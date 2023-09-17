
LOG("Widzialnosc 700 - scheduled");
0 spawn {
  while {true} do {
    if (viewDistance > 700) then {
      setViewDistance 700;
    };
    sleep 5;
  };
};
