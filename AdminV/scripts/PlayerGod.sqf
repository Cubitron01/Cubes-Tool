if(isNil 'gmadmin') then {gmadmin = 0;};
		if(gmadmin == 0) then
		{
			gmadmin = 1;
			gmdadmin = 1;
			hint 'God ON';
			cutText ['God ON', 'PLAIN'];
			
			[] spawn {
				while {gmadmin == 1} do
				{
					r_player_inpain = false;
					r_player_infected = false;
					r_player_injured = false;
					dayz_hunger = 0;
					dayz_thirst = 0;
					dayz_temperatur = 37;
					fnc_usec_damageHandler = {};
					player allowDamage false;
					player removeAllEventhandlers 'handleDamage';
					player addEventhandler ['handleDamage', {false}];
					uiSleep 0.5;
				};
				uiSleep 1;
				fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
				player allowDamage true;
				player removeAllEventHandlers 'HandleDamage';
				player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
			};
			
			_sl = format['%1 G_o_d ON',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		}
		else
		{
			gmadmin = 0;
			gmdadmin = 0;
			hint 'God OFF';
			cutText ['God OFF', 'PLAIN'];
			
			fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
			player allowDamage true;
			player removeAllEventHandlers 'HandleDamage';
			player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
			
			_sl = format['%1 G_o_d OFF',name player];
			PVAH_WriteLogReq = [player,toArray _sl];
			publicVariableServer 'PVAH_WriteLogReq';
		};