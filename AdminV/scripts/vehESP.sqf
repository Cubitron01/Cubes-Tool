/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-)
*/


	VehicleMarkers =
		{
			while {markadVeh == 1} do
			{
				cube_veh = [] + (allMissionObjects "LandVehicle"+allMissionObjects "Ship"+allMissionObjects "LockboxStorageLocked"+allMissionObjects "Air");
				if !(markadVeh == 1) exitWith {
					for "_i" from 0 to 8888 do {deleteMarkerLocal ("VehicleMarkers" + (str _i));};
				};
				for "_i" from 0 to (count cube_veh)-1 do
				{
					deleteMarkerLocal ("VehicleMarkers" + (str _i));
					_selected = cube_veh select _i;
					_vm = createMarkerLocal [("VehicleMarkers" + (str _i)), getPos _selected];
					_vm setMarkerTypeLocal "mil_dot";
					_vm setMarkerSizeLocal [0.5, 0.5];
					_vm setMarkerTextLocal (typeof (cube_veh select _i));
					_vm setMarkerColorLocal ("ColorBlue");
				};
				uiSleep 5;
			};
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("VehicleMarkers" + (str _i));};
		};
		if (isNil "markadVeh") then {markadVeh = 0;};
		if (markadVeh == 0) then
		{
			markadVeh = 1;
			systemChat "<Admin Menu> Vehicle Markers: Active";
			[] spawn VehicleMarkers;
		}
		else
		{
			markadVeh = 0;
			systemChat "<Admin Menu> Vehicle Markers: Disabled";
			
			for "_i" from 0 to 8888 do {deleteMarkerLocal ("VehicleMarkers" + (str _i));};
		};
};