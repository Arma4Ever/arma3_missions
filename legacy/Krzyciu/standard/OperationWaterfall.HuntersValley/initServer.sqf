/***********************************************************************
    initServer.sqf
    Poniższy kod wykona się na serwerze w trakcie ładowania misji przez serwer
************************************************************************/
if (isServer) then {
enemyCommunicationChannel = radioChannelCreate [[0, 1, 0, 1], "Kontroler", "Kontoler", [P1, P2, P3, P4, P5, P6, P7, P8, P9, P10, Kontroler]];
publicVariable "enemyCommunicationChannel";
};
