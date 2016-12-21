if (isNil 'L5Hm6daj99') then {
		L5Hm6daj99 = 0;
	};
    if (L5Hm6daj99 == 0) then {
        L5Hm6daj99 = 1;
        L5Hm6daj99Disabled = 1;
        systemChat "Godmode ON";
        
        [] spawn {
            while {L5Hm6daj99 == 1} do
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
                player setDamage 0;
            };
        };
        
    }
    else
    {
        L5Hm6daj99 = 0;
        L5Hm6daj99Disabled = 0;
        systemChat "Godmode OFF";
        
        fnc_usec_damageHandler = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\fn_damageHandler.sqf';
        player allowDamage true;
        player removeAllEventHandlers 'HandleDamage';
        player addeventhandler ['HandleDamage',{_this call fnc_usec_damageHandler;} ];
    };