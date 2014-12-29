/*
    File: fn_questionDealer.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Questions the drug dealer and sets the sellers wanted.
*/
private["_sellers", "_names"];


_dealer = _this select 0;
// Get all the sellers for this dealer
_sellers = _dealer getVariable["sellers", []];
// Only cops can question dealers
if(playerSide != west) exitWith {};
// Check if there was any sellers
if(count _sellers == 0) exitWith
{
    hint localize "STR_Cop_DealerQuestion";
};

life_action_inUse = true;

_names = "";

{
    // Add the player to the wanted list
    [[_x select 0,_x select 1,"483",_val],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
    // Add to the list of names to show
    _names = _names + format["%1<br/>", _x select 1];

} forEach _sellers;

// Display the sellers to the officer
hint parseText format[(localize "STR_Cop_DealerMSG")+ "<br/><br/>%1", _names];
// Reset the dealer
_dealer setVariable["sellers", [], true];

life_action_inUse = false;
