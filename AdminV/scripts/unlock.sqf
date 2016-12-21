private ["_backpack","_charID","_id","_inventory","_obj","_result"];

_obj = cursortarget;
_type = typeOF _obj;

if ((_type in ['VaultStorage','VaultStorageLocked','LockboxStorageLocked','LockboxStorage'])) then {
	_charID = _obj getVariable ["CharacterID","0"];
	systemchat format["%1 - Unlock code: %2",typeOF _obj,_charID];
};

if (!isNull _obj) then {
	if ((_obj isKindOf "AllVehicles") && !(_obj isKindOf "Man")) then {
		if (locked _obj) then {
			[nil,nil,nil,[_obj,"krynomore Magic"]] execVM "\z\addons\dayz_code\actions\unlock_veh.sqf";
		} else {
			cutText ["Vehicle is Already Open.", "PLAIN"];
		};
	};
	{_obj animate [_x,1];} forEach ["Open_hinge","Open_latch","Lights_1","Lights_2","Open_door","DoorR","LeftShutter","RightShutter"];
	dayz_combination = _obj getVariable["CharacterID","0"];
};