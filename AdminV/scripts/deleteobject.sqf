private ["_x","_player","_objectID","_objectUID"];

_x = cursorTarget;
deleteVehicle _x;

_objectID = _x getVariable ["ObjectID", "0"];
_objectUID = _x getVariable ["ObjectUID", "0"];

PVDZ_obj_Destroy = [_objectID, _objectUID, (name _player)];
publicVariableServer "PVDZ_obj_Destroy";
if (isServer) then {
PVDZ_obj_Destroy call server_deleteObj;
};
deletevehicle _x; 

systemChat format["<Admin Menu> Deleted %1", _x];
titleText [format["Object Removed!"],"PLAIN DOWN"]; titleFadeOut 4;
};

