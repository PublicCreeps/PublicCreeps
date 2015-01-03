/*

    File: fn_initZeus.sqf

    Author: John "Paratus" VanderZwet

    

    Description:

    Zeus Initialization file.

*/

player addRating 9999999;

waitUntil {!(isNull (findDisplay 46))};

[] spawn life_fnc_copMarkers;
[] spawn life_fnc_GangMarkers;
[] spawn life_fnc_MedicMarkers;



if(life_adminlevel < 2) exitWith

{

    endMission "Loser";

};