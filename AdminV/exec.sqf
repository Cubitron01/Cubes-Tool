/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-)
*/

adminsList= ["76561198028331340"]; 
if((getPlayerUID player) in adminsList) then {
	[] spawn {
		_cub = -1;
		_veh = vehicle player;
execVM "Adminv\keybinds.sqf";;
		while {alive player} do
		{
			if (_cub == -1) then {
				_cub = (vehicle player) addAction [("<t color=""#DF0101"">" + ("Admin Menu") +"</t>"),"AdminV\config.sqf","",5,false,true,"",""];
				_veh = vehicle player;
			};
			if (_veh != vehicle player) then {
				_veh removeAction _cub;
				_cub = -1;      
			};
			Sleep 2;
		};
		
		_veh removeAction _cub;
		_cub = -1;
	};
};