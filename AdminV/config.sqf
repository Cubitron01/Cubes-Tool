/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-) Version 0.85
*/


_pathtoscripts = "AdminV\scripts\";
    _EXECscript1 = 'player execVM "'+_pathtoscripts+'%1"';
	_EXECtempVeh = '["%1"] execVM "AdminV\scripts\tempvehicle.sqf"';
		ActionMenu =
		[
			["",true],
				 ["Main Menu >>", [2], "#USER:MainScripts", -5, [["expression", ""]], "1", "1"],
				 ["Marker Menu >>", [3], "#USER:Marker", -5, [["expression", ""]], "1", "1"],
				 ["Give Me Ammo", [4], "", -5, [["expression", format[_EXECscript1,"givemeammo.sqf"]]], "1", "1"],
				 ["Delete Cursor Object", [5], "", -5, [["expression", format[_EXECscript1,"deleteobject.sqf"]]], "1", "1"],
				 ["Key Binding", [6],  "", -5, [["expression", format[_EXECscript1,"keybindings.sqf"]]], "1", "1"],
				 ["Vehicle Menu >>", [7], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
				 ["Gear/Skin Menu >>", [8], "#USER:GearMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];
MainScripts =
[
	["",true],
		["",true],
		["Godmode", [],  "", -5, [["expression", format[_EXECscript1,"PlayerGod.sqf"]]], "1", "1"],
		["Teleport", [],  "", -5, [["expression", format[_EXECscript1,"Teleport.sqf"]]], "1", "1"],
		["Vehicle Godmode", [], "", -5, [["expression", format[_EXECscript1, "PlayerVehicleGod.sqf"]]], "1", "1"],
		["Zombie Shield", [],  "", -5, [["expression", format[_EXECscript1,"Zombieshield.sqf"]]], "1", "1"],
		["Zombieaggro", [],  "", -5, [["expression", format[_EXECscript1,"zombieaggro.sqf"]]], "1", "1"],
		["No Grass", [],  "", -5, [["expression", format[_EXECscript1,"nograss.sqf"]]], "1", "1"],
		["Heal Myself", [],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		["Heal Player", [],  "", -5, [["expression", format[_EXECscript1,"healall.sqf"]]], "1", "1"],
	    ["Set Humanity >>", [], "#USER:Humanity", -5, [["expression", ""]], "1", "1"],
	    ["Spawn Box >>", [], "#USER:Boxes", -5, [["expression", ""]], "1", "1"],
	    ["Unlock/Lock Doors/Safes/Vehicles >>", [], "#USER:Security", -5, [["expression", ""]], "1", "1"],
	    ["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
Humanity =
[
	["",true],
		["",true],
		["Set Humanity +10k", [],  "", -5, [["expression", format[_EXECscript1,"humanity.sqf"]]], "1", "1"],
		["Set Humanity -10k", [], "", -5, [["expression", format[_EXECscript1, "humanitytakeaway.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Marker =
[
	["",true],
		["",true],
		["Player ESP", [],  "", -5, [["expression", format[_EXECscript1,"esp.sqf"]]], "1", "1"],
		["Player ESP MAP", [],  "", -5, [["expression", format[_EXECscript1,"MapESP.sqf"]]], "1", "1"],
		["Safe Markers", [],  "", -5, [["expression", format[_EXECscript1,"safeESP.sqf"]]], "1", "1"],
		["Plot Pole Markers", [],  "", -5, [["expression", format[_EXECscript1,"plotpoleESP.sqf"]]], "1", "1"],
		["Vehicle Markers", [],  "", -5, [["expression", format[_EXECscript1,"vehESP.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
Boxes =
[
	["",true],
		["",true],
		["Cinder Box", [2],  "", -5, [["expression", format[_EXECscript1,"spawnbuildingcinder.sqf"]]], "1", "1"],
		["Wood Box", [3],  "", -5, [["expression", format[_EXECscript1,"spawnbuildingwood.sqf"]]], "1", "1"],
		["Misc Box", [4],  "", -5, [["expression", format[_EXECscript1,"spawnbuildingmisc.sqf"]]], "1", "1"],
		["Sniper Box", [5],  "", -5, [["expression", format[_EXECscript1,"spawnweaponsniper.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Security =
[
	["",true],
		["",true],
		["Unlock/Lock Door", [2],  "", -5, [["expression", format[_EXECscript1,"unlock.sqf"]]], "1", "1"],
		["Get Safe Code (Cursor)", [3],  "", -5, [["expression", format[_EXECscript1,"unlock2.sqf"]]], "1", "1"],
		["Get Vehicle Key (Cursor)", [4],  "", -5, [["expression", format[_EXECscript1,"key.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleMenu = 
[
	["",true],
	    ["Fix Vehicle", [2],  "", -5, [["expression", format[_EXECscript1,"Fixcar.sqf"]]], "1", "1"],
		["Flip Vehicle", [3],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
		["Temp Veh Menu >>", [4], "#USER:VehicleTempMenu", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

VehicleTempMenu=
[
["",true],
	["Spawn Temporary Vehicle -- AIR",[],"",-5,[["expression",""]],"1","0"],
	["MH-6J Little Bird",[],"",-5,[["expression",format[_EXECtempVeh,"MH6J_DZ"]]],"1","1"],
	["Gyro",[],"",-5,[["expression",format[_EXECtempVeh,"CSJ_GyroC"]]],"1","1"],
	["Merlin",[],"",-5,[["expression",format[_EXECtempVeh,"BAF_Merlin_DZE"]]],"1","1"],
	["Mi17",[],"",-5,[["expression",format[_EXECtempVeh,"Mi17_Civilian_DZ"]]],"1","1"],
	["A-10 Jet",[],"",-5,[["expression",format[_EXECtempVeh,"A10"]]],"1","1"],
	["UH-60M",[],"",-5,[["expression",format[_EXECtempVeh,"UH60M_MEV_EP1_DZ"]]],"1","1"],
	["",[],"",-5,[["expression",""]],"1","0"],
		["Next page",[],"#USER:VehicleTempMenu2",-5,[["expression",""]],"1","1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleTempMenu2 =
[
["",true],
	["Spawn Temporary Vehicle -- WHEELED",[],"",-5,[["expression",""]],"1","0"],
	["SUV (Camo)",[],"",-5,[["expression",format[_EXECtempVeh,"SUV_Camo"]]],"1","1"],
	["Armored SUV",[],"",-5,[["expression",format[_EXECtempVeh,"ArmoredSUV_PMC_DZE"]]],"1","1"],
	["MTVR (Fuel)",[],"",-5,[["expression",format[_EXECtempVeh,"MTVR_Refuel_DES_EP1"]]],"1","1"],
	["Ural Truck",[],"",-5,[["expression",format[_EXECtempVeh,"Ural_TK_CIV_EP1"]]],"1","1"],
	["Vodnik",[],"",-5,[["expression",format[_EXECtempVeh,"GAZ_Vodnik_MedEvac"]]],"1","1"],
	["Mountain Bike",[],"",-5,[["expression",format[_EXECtempVeh,"MMT_USMC"]]],"1","1"],
	["Motorcycle",[],"",-5,[["expression",format[_EXECtempVeh,"M1030_US_DES_EP1"]]],"1","1"],
	["ATV",[],"",-5,[["expression",format[_EXECtempVeh,"ATV_US_EP1"]]],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

GearMenu = 
[
	["",true],
		["M4 Holo", [2],  "", -5, [["expression", format[_EXECscript1,"m4h.sqf"]]], "1", "1"],
		["DMR", [3],  "", -5, [["expression", format[_EXECscript1,"dmr.sqf"]]], "1", "1"],
		["M4 CCO SD", [4],  "", -5, [["expression", format[_EXECscript1,"m4.sqf"]]], "1", "1"],
		["", [], "", -5, [["expression", ""]], "1", "0"],	
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
   showCommandingMenu "#USER:ActionMenu";
   
      
