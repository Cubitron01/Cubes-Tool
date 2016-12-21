/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-)
*/

if (!isnil "htmlz") then
{
      (findDisplay 46) displayRemoveEventHandler ["KeyDown", htmlz];
};

cubihtmlz =
{
      switch (_this) do 
      {
            
            case 36: //Key
            {
                                                if (isNull cursorTarget) exitWith {};
                          private ["_vcl","_cid","_oid","_ouid","_text","_lbcode"];
                          _vcl = (typeOf cursorTarget);
                          _cid = (cursorTarget getVariable ["CharacterID","0"]);
                          _lbcode = if ((_vcl == "LockboxStorage") || (_vcl == "LockboxStorageLocked")) then {_cid call csFnc_lbCode} else {""};
                          _oid = (cursorTarget getVariable ["ObjectID","0"]);
                          _ouid = (cursorTarget getVariable ["ObjectUID","0"]);
                          _text = format ["%1, CharacterID: %2, ObjectID: %3, ObjectUID: %4%5",_vcl,_cid,_oid,_ouid,_lbcode];
                          systemChat _text;
            };
            case 4: //Tab
            {
                  player action ["Eject",(vehicle player)];
            };

            case 37: //Key
            {
                                             _veh = cursorTarget;
                   _vID = parseNumber(cursorTarget getVariable ['CharacterID', '0']);
                   _colors = ["Green", "Red", "Blue", "Yellow", "Black"];
                   _key = format["ItemKey%1%2", _colors select floor(_vID / 2500), (_vID - (floor(_vID / 2500) * 2500))];
                   [player,_key] call BIS_fnc_invAdd;
                   systemChat format["<Admin Menu> Added the Key [%1]", _key];      
            };
            
            case 211: //Delete
            {
                  _x = cursorTarget;
                  deleteVehicle _x;
                  systemChat format["<Admin Menu> Deleted %1", _x];
            };

            case 22: //1 Key
            {
                                  _ct = cursorTarget;
            if (!isNull _ct) then
            {
                  _obj = vehicle player;
                  if ((_ct isKindOf "AllVehicles") && (locked _ct)) then {_ct lock false;};
                  if ((_obj != player) && (_obj isKindOf "AllVehicles") && (locked _obj)) then {_obj lock false;};
                  {
                        _ct animate [_x,1];
                  } forEach ["Open_hinge","Open_latch","Lights_1","Lights_2","Open_door","DoorR","LeftShutter","RightShutter"];
            };
            };
            case 21: //Tab
            {
                                  _ct = cursorTarget;
            if (!isNull _ct) then
            {
                  _obj = vehicle player;
                  if ((_ct isKindOf "AllVehicles") && (locked _ct)) then {_ct lock true;};
                  if ((_obj != player) && (_obj isKindOf "AllVehicles") && (locked _obj)) then {_obj lock true;};
                  {
                        _ct animate [_x,0];
                  } forEach ["Open_hinge","Open_latch","Lights_1","Lights_2","Open_door","DoorR","LeftShutter","RightShutter"];
            };
            };
            
      };
};

waituntil {!isnull (finddisplay 46)};
htmlz = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this select 1 call cubihtmlz; false;"];

      call cubihtmlz;