/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-)
*/


private ["_vehicle","_type","_name","_hitpoints","_player"];

_vehicle = cursorTarget;
_type = typeOf _vehicle;
_name = getText(configFile >> "cfgVehicles" >> _type >> "displayName");
_hitpoints = _vehicle call vehicle_getHitpoints;
_player = player;

{
    private ["_damage","_selection"];
    _damage = [_vehicle,_x] call object_getHit;

    if (_damage > 0) then {
		_selection = getText(configFile >> "cfgVehicles" >> _type >> "HitPoints" >> _x >> "name");
		_strH = "hit_" + (_selection);
		_vehicle setHit[_selection,0];
	    _vehicle setVariable [_strH,0,true];	
	};
} count _hitpoints;
PVDZ_veh_Save = [_vehicle]; 
publicVariableServer "PVDZ_veh_Save";
_vehicle setDamage 0;
_vehicle setFuel 1;
_vehicle setVehicleAmmo 1;
_vehicle setVelocity [0,0,1];
titleText [format["%1 permanently repaired and refuelled.", _name], "PLAIN DOWN"]; titleFadeOut 3;

