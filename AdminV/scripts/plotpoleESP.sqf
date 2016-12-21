		whipbuttt_Add =
		{
			while {markaddP == 1} do
			{
				whipbuttt_Add = [] + (allMissionObjects "Plastic_Pole_EP1_DZ");
				if !(markaddP == 1) exitWith {
					for "_i" from 0 to 8888 do {deleteMarkerLocal ("PlotPoleMarker" + (str _i));};
				};
				for "_i" from 0 to (count whipbuttt_Add)-1 do
				{
					deleteMarkerLocal ("PlotPoleMarker" + (str _i));
					_selected = whipbuttt_Add select _i;
					_vm = createMarkerLocal [("PlotPoleMarker" + (str _i)), getPos _selected];
					_vm setMarkerTypeLocal "mil_dot";
					_vm setMarkerSizeLocal [0.5, 0.5];
					_vm setMarkerTextLocal (typeof (whipbuttt_Add select _i));
					_vm setMarkerColorLocal ("ColorOrange");
				};
				uiSleep 5;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("PlotPoleMarker" + (str _i));};
		};
		if (isNil "markaddP") then {markaddP = 0;};
		if (markaddP == 0) then
		{
			markaddP = 1;
			systemChat "<Admin Menu> Plot Pole Markers: Active";
			[] spawn whipbuttt_Add;
		}
		else
		{
			markaddP = 0;
			systemChat "<Admin Menu> Plot Pole Markers: Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("PlotPoleMarker" + (str _i));};
		};
};