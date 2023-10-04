//---- Deklaracja zakończeń (opcjonalne) ----//
// Dokumentacja BI: https://community.bistudio.com/wiki/Debriefing

class CfgDebriefing {
    class End1 {
        title = "Chef-du-Pont Zdobyte!";
        subtitle = "Swietna robota, Easy Company.";
        description = "Nalezy wam sie troche odpoczynku!";
        pictureBackground = "pics\endbkgrd.jpg";
        picture = "pics\endlittle.jpg";
        pictureColor[] = {1,1,1,1};
    };
    class End2 {
        title = "MISJA ZAKOŃCZONA";
        subtitle = "Misja nie powiodła się";
        description = "Misja zakończona niepowodzeniem";
        pictureBackground = "pics\endbkgrd.jpg";
        picture = "pics\endlittle.jpg";
        pictureColor[] = {1,1,1,1};
    };

    //Poniższa klasa zostanie wywołana AUTOMATYCZNIE w przypadku gdy wszyscy gracze zginą
    class endDeath {
        title = "MISJA ZAKOŃCZONA";
        subtitle = "Wszystkie jednostki poległy";
        description = "Misja zakończona niepowodzeniem";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.6,0.1,0.2,1};
    };
};
