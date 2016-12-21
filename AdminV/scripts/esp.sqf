if (isNil "cubi_ESP") then {cubi_ESP = 0;};
if (cubi_ESP == 0) then {
	systemChat format["<Admin Menu> ESP ON"];
	cubiESP =	{
		disableSerialization;
		//id/006Rehwald
		if (isNil "Esp_Id_setter") then {Esp_Id_setter = 2733;};
		Esp_Id_setter cutRsc ["rscDynamicText", "PLAIN"];
		Esp_Id_setter = Esp_Id_setter + 1;
		_control = ((uiNamespace getvariable "BIS_dynamicText") displayctrl 9999);
		_control ctrlShow true; 
		_control ctrlEnable true; 
		_control ctrlSetFade 0;
		
		_uniiit = _this select 0;
		while {((((positionCameraToWorld [0,0,0]) distance _Uniiit) < Mystic_FNC_ESP_distance) && (cubi_ESP == 1))} do
		{
			if ((isNull _Uniiit) || !(alive _Uniiit)) exitWith {};
		    if (getPlayerUID _Uniiit == '') exitWith {};
        
			_p00s = (positionCameraToWorld [0,0,0]);
			_p00sU = getPos _Uniiit;
			_diiist = round(_p00s distance _p00sU);
			
			_vih = vehicle _Uniiit;
			_p00sU2 = [(getPosATL _vih) select 0, (getPosATL _vih) select 1, ((getPosATL _vih) select 2) + (((boundingBox _vih) select 1) select 2) + 0.5];
			_p00s2D = worldToScreen _p00sU2;

			if (count _p00s2D > 0) then	{
				if (_diiist <= 50) then {_control ctrlSetFade 0;};
				if (_diiist > 50) then {_control ctrlSetFade 0.05;};
				if (_diiist > 75) then {_control ctrlSetFade 0.1;};
				if (_diiist > 100) then {_control ctrlSetFade 0.15;};
				if (_diiist > 200) then {_control ctrlSetFade 0.2;};	
				if (_diiist > 300) then {_control ctrlSetFade 0.25;};
				if (_diiist > 400) then {_control ctrlSetFade 0.3;};
				if (_diiist > 500) then {_control ctrlSetFade 0.35;};
				if (_diiist > 600) then {_control ctrlSetFade 0.4;};
				if (_diiist > 700) then {_control ctrlSetFade 0.45;};		
				if (_diiist > 800) then {_control ctrlSetFade 0.5;};
				if (_diiist > 900) then {_control ctrlSetFade 0.55;};	
				if (_diiist > 1000) then {_control ctrlSetFade 0.6;};
				if (_diiist > 1100) then {_control ctrlSetFade 0.65;};
				if (_diiist > 1200) then {_control ctrlSetFade 0.7;};
				if (_diiist > 1300) then {_control ctrlSetFade 0.75;};
				if (_diiist > 1400) then {_control ctrlSetFade 0.8;};	

				_T_size = 0.35;	
				_selecteditemDescription = format['<t size=''%3'' font=''Zeppelin33'' color=''#FD1D18''>%1 (%2m)</t>',name _uniiit,round _diiist,_T_size];
				if (name _uniiit == name player) then {_selecteditemDescription = ''};
				if (_uniiit != _vih) then {
					_crewnames = [];
					{
						_crewnames = _crewnames + [name _x];
					} forEach crew _vih;
					_p00sU2 = [_p00sU2 select 0,_p00sU2 select 1,(_p00sU2 select 2) + 1.5];
					_p00s2D = worldToScreen _p00sU2;
					_selecteditemDescription = format['<t size=''%3'' font=''Zeppelin33'' color=''#1593F0''>%1 (%2m) %4</t>',_crewnames,round _diiist,_T_size,typeOf _vih];
				};
				_Control ctrlSetStructuredText (parseText _selecteditemDescription);
				if (count _p00s2D > 1) then {
					_control ctrlSetPosition [(_p00s2D select 0) - (safezoneW / 2), (_p00s2D select 1), safezoneW, safezoneH];
				};
				_control ctrlCommit 0;
			};
			uisleep 0.001;
		};
		_control ctrlShow false;
		_control ctrlEnable false;
		_a = _a - [_uniiit];
	};
	cubi_ESP = 1;
	Mystic_FNC_ESP_distance = 1500;
	_a = [];
	
	while {cubi_ESP == 1} do
	{
       	{       
			_p00s = (positionCameraToWorld [0,0,0]);
			_p00sX = getPos _x;
			_diiist = (_p00s distance _p00sX);
			if ((_x != player) && (name _x != "") && !(_x in _a) && ((player distance _x) < Mystic_FNC_ESP_distance)) then {
				_a = _a + [_x];
				[_x] spawn WhippyESP;
			};
			if ((_x in _a) && (_diiist > Mystic_FNC_ESP_distance)) then {
				_a = _a - [_x];
			};
		} forEach ([1,2,3] nearEntities ['AllVehicles',25000]); /*  ||||||||||  } forEach playableUnits;  */
		uisleep 1;
	};
} else {
	cubi_ESP = 0;
	systemChat format["<Admin Menu> ESP OFF"];
	};