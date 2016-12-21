/*Credits to all i know: Oma, Opa, Mutter;vater,Onkel,Bruder,Schwester,Nachbar,Postbote,Milchman und Frau Merkel :-)
Modified by Cubi alias Cubi aka Cubi und dann nochmal Cubi :-)
*/


r_player_blood = r_player_bloodTotal;
r_player_inpain = false;
r_player_infected = false;
r_player_injured = false;
dayz_hunger	= 0;
dayz_thirst = 0;
dayz_temperatur = 100;
dayz_combat = 0;

r_fracture_legs = false;
r_fracture_arms = false;
r_player_dead = false;
r_player_unconscious = false;
r_player_loaded = false;
r_player_cardiac = false;
r_player_lowblood = false;
r_doLoop = false;
r_action = false;
r_player_timeout = 0;
r_handlerCount = 0;
r_interrupt = false;

disableUserInput false;
dayz_sourceBleeding = objNull;
player setVariable ["USEC_injured",false,true];
player setVariable['USEC_inPain',false,true];
player setVariable['USEC_infected',false,true];
player setVariable['USEC_lowBlood',false,true];
player setVariable['USEC_BloodQty',12000,true];
player setVariable['USEC_isCardiac',false,true];
{player setVariable[_x,false,true];} forEach USEC_woundHit;
player setVariable ["unconsciousTime", r_player_timeout, true];
player setVariable['NORRN_unconscious',false,true];
player setVariable ['messing',[dayz_hunger,dayz_thirst],true];
player setHit ['legs',0];
player setVariable ['hit_legs',0,false];
player setVariable ['hit_hands',0,true];
player setVariable['medForceUpdate',true,true];

disableSerialization;
_UIfix = (uiNameSpace getVariable 'DAYZ_GUI_display') displayCtrl 1303;
_UIfix2 = (uiNameSpace getVariable 'DAYZ_GUI_display') displayCtrl 1203;
_UIfix ctrlShow false;
_UIfix2 ctrlShow false;
systemChat "<Admin Menu> Healed Yourself";