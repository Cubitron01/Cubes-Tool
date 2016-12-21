							   _veh = cursorTarget;
                   _vID = parseNumber(cursorTarget getVariable ['CharacterID', '0']);
                   _colors = ["Green", "Red", "Blue", "Yellow", "Black"];
                   _key = format["ItemKey%1%2", _colors select floor(_vID / 2500), (_vID - (floor(_vID / 2500) * 2500))];
                   [player,_key] call BIS_fnc_invAdd;
                   systemChat format["<Admin Menu> Added the Key [%1]", _key];	
		};