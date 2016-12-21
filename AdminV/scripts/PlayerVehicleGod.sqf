					if (isNil "cubiVEHGODMODE") then {cubiVEHGODMODE = 1;};
					if (cubiVEHGODMODE == 1) then 
					{
						cubiVEHGODMODE = 0;
						systemChat "<Admin Menu> Vehicle Godmode: ON";
						while {cubiVEHGODMODE == 0} do 
						{
							if (vehicle player != player) then 
							{
								(vehicle player) removeAllEventHandlers "handleDamage";
								(vehicle player) addEventHandler ["handleDamage",{false}];
								(vehicle player) allowDamage false;
								(vehicle player) setDammage 0;
								(vehicle player) setFuel 1;
							};
						};
					}
					else
					{
						cubiVEHGODMODE = 1;
						systemChat "<Admin Menu> Vehicle Godmode: OFF";
						while {cubiVEHGODMODE == 1} do 
						{
							if (vehicle player != player) then 
							{
								(vehicle player) addEventHandler ["handleDamage",{true}];
								(vehicle player) removeAllEventHandlers "handleDamage";
								(vehicle player) allowDamage true;
							};
						};
					};
				};