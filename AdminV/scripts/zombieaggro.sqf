	if (isNil "Cubilablubb") then {
		Cubilablubb = 1;
	};
	
	if (Cubilablubb == 1) then
	{
		systemChat "<Admin Menu> No Zombie Aggro Enabled";
		player_zombieCheck = {};
		player_zombieAttack = {};
		Cubilablubb = 0;
	} else {
        systemChat "<Admin Menu> No Zombie Aggro Disabled";
		player_zombieCheck = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieCheck.sqf';
		player_zombieAttack = compile preprocessFileLineNumbers '\z\addons\dayz_code\compile\player_zombieAttack.sqf';
		Cubilablubb = 1;
	};
};