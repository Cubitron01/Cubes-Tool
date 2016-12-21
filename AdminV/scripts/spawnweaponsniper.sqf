private ["_classname"",_item","_uniqueid"];
_classname = "USBasicWeapons_EP1";
_item = _classname createVehicleLocal (position player);

clearWeaponCargoGlobal _item;
clearMagazineCargoGlobal _item;
clearBackpackCargoGlobal _item;
_item setVariable ["permaLoot",true];
_item addWeaponCargoGlobal ["Binocular_Vector", 1];
_item addWeaponCargoGlobal ["m107", 1];
_item addWeaponCargoGlobal ["DMR_DZ", 1];
_item addWeaponCargoGlobal ["ksvk", 1];
_item addWeaponCargoGlobal ["M24", 1];
_item addWeaponCargoGlobal ["SVD", 1];
_item addWeaponCargoGlobal ["SVD_CAMO", 1];
_item addWeaponCargoGlobal ["M14_EP1", 1];
_item addWeaponCargoGlobal ["M24_des_EP1", 1];
_item addWeaponCargoGlobal ["M40A3", 1];
_item addWeaponCargoGlobal ["BAF_AS50_scoped", 1];
_item addWeaponCargoGlobal ["BAF_LRR_scoped", 1];
_item addWeaponCargoGlobal ["VSS_vintorez", 1];
_item addWeaponCargoGlobal ["SCAR_H_LNG_Sniper", 1];
_item addWeaponCargoGlobal ["SCAR_H_LNG_Sniper_SD", 1];
_item addWeaponCargoGlobal ["M4SPR", 1];
_item addMagazineCargoGlobal ["10Rnd_127x99_M107", 21];
_item addMagazineCargoGlobal ["20Rnd_762x51_DMR", 22];
_item addMagazineCargoGlobal ["10Rnd_762x54_SVD", 21];
_item addMagazineCargoGlobal ["5Rnd_127x99_as50", 21];
_item addMagazineCargoGlobal ["10Rnd_9x39_SP5_VSS", 21];
_item addMagazineCargoGlobal ["20rnd_762x51_B_SCAR", 21];
_item addMagazineCargoGlobal ["20rnd_762x51_SB_SCAR", 21];
_item addMagazineCargoGlobal ["5Rnd_127x108_KSVK", 21];
_item addMagazineCargoGlobal ["5Rnd_86x70_L115A1", 20];
_item addMagazineCargoGlobal ["20Rnd_556x45_Stanag", 20];
_item addBackpackCargoGlobal ["DZ_LargeGunBag_EP1", 1];

_item setVariable ["permaLoot",true];

titleText [format["Crate spawned!"],"PLAIN DOWN"]; titleFadeOut 4;


_distance = 100;

waitUntil {(player distance _item) > _distance};
deleteVehicle _item;
titleText ["crate was deleted","PLAIN DOWN"]; titleFadeOut 4;
