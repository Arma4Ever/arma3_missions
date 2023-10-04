#include "config\hvr_config.hpp"

#include "core\style.hpp"
#include "vehicleService\gui.hpp"

class CfgFunctions 
{
    /**
     * Funkcje podstawowe
     */
    class HVR 
    {
        class core
        {
            file = "HVR\core";
            tag = "HVR";

            class preInit {preInit=1;};

            class setFuel {};
            class setDamage {};
            class setPylonLoadout {};
            class rearmPylons {};
            class removeWeaponFromPylon {};
        }
    }

    /**
     * Funkcje systemu przezbrajania pojazdów
     */
    class HVR_VS
    {
        class vehicleService
        {
            file = "HVR\vehicleService";
            tag = "HVR_VS";

            class preInit {preInit=1;};
            class postInit {postInit=1;};
            
            class setServicePoint {};
            
            class addServicePointAction {};
            class createServiceAreaDisplay {};
            class getVehicleServiceAreaDisplay {};
            class getVehiclesForServiceArea {};
            class guiFillButtons {};
            class guiResetButtons {};
            class guiSetPanelContent {};
            class removeServicePointAction {};
            class refuelVehicle {};
            class repairVehicle {};
            class rearmPylons {};
            class setPylonLoadout {};
            class viewServiceAreaVehicle {};
            class viewServiceAreaVehicleSelect {};
            class viewUpdateVehicleList {};
            class viewServiceAreaVehiclePylonSelect {};
            class viewServiceAreaVehiclePylon {};
        }
    }
}