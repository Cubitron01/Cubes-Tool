		SafeMarkers =
		{
			while {markadSafe == 1} do
			{
				Mystid_Add_SafeM = [] + (allMissionObjects "SafeStorage"+allMissionObjects "SafeStorageLocked"+allMissionObjects "LockboxStorageLocked"+allMissionObjects "LockboxStorage");
				if !(markadSafe == 1) exitWith {
					for "_i" from 0 to 8888 do {deleteMarkerLocal ("SafeMarkers" + (str _i));};
				};
				for "_i" from 0 to (count Mystid_Add_SafeM)-1 do
				{
					deleteMarkerLocal ("SafeMarkers" + (str _i));
					_selected = Mystid_Add_SafeM select _i;
					_vm = createMarkerLocal [("SafeMarkers" + (str _i)), getPos _selected];
					_vm setMarkerTypeLocal "Camp";
					_vm setMarkerSizeLocal [0.5, 0.5];
					_vm setMarkerTextLocal "Safe";
					_vm setMarkerColorLocal ("ColorYellow");
				};
				uiSleep 5;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("SafeMarkers" + (str _i));};
		};
		if (isNil "markadSafe") then {markadSafe = 0;};
		if (markadSafe == 0) then
		{
			markadSafe = 1;
			systemChat "<Admin Menu> Safe Markers: Active";
			[] spawn SafeMarkers;
		}
		else
		{
			markadSafe = 0;
			systemChat "<Admin Menu> Safe Markers: Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("VehicleMarkers" + (str _i));};
		};
};