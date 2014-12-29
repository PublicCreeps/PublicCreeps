/*
    File: fn_weed.sqf
    Author: Aero

    Description:
    weed effects.
*/
private["_damage"];


closeDialog 0;

sleep 4;
"chromAbberation" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;


_damage = damage player; 
_damage = _damage - 0.05;
player setDamage (_damage); 
[] call life_fnc_hudUpdate; 


for "_i" from 0 to 20 do
{
    if(life_drug > 0.15) then
    {
        
        "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
        "radialBlur" ppEffectCommit 1;
        addcamShake[random 3, 1, random 3];
        sleep 1;

    } else {
        "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
        "radialBlur" ppEffectCommit 1;
        addcamShake[random 3, 1, random 3];
        sleep 1;

    };
};
if (life_drug > 0.22) then {

            player playMoveNow "Incapacitated";
            sleep 20;

            _damage = damage player; 
            _damage = _damage - 0.25;
            player setDamage (_damage); 
            [] call life_fnc_hudUpdate; 

            player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
            sleep 15;
            life_drug = 0;

            player playMoveNow "amovppnemstpsraswrfldnon";

            [[getPlayerUID player,profileName,"45"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
            
};
//Stop effects
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;
life_weed = true;
//Deactivate ppEffects
"radialBlur" ppEffectEnable false;
resetCamShake;
if(life_drug != 0) then {life_drug = life_drug - 0.02;};