/*
File: fn_AsADACDefault.sqf
Author: Bryan "Tonic" Boardwine

Description:
Default ADAC configuration.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player addHeadgear "H_Beret_ocamo";
player addGoggles "NVGoggles_OPFOR";
player addUniform "U_B_CTRG_3";
player addVest "V_PlateCarrier1_blk";
player addHandgunItem "hgun_Rook40_F";

player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addMagazine "30Rnd_9x21_Mag";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;