/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-)
*/



adminsList= ["76561198028331340"];  //Hier du machen deine Steam ID
if((getPlayerUID player) in adminsList) then {


_toggle = (vehicle player) addAction [("<t color=""#DF0101"">" + ("Admin Menu") +"</t>"),"AdminV\config.sqf","",5,false,true,"",""];   

};

execVM "Adminv\keybinds.sqf";