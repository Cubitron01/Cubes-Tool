 _weapon = currentWeapon player;
_mags = getArray(configfile >> 'cfgWeapons' >> _weapon >> 'magazines');
_mag = _mags select 0;
player addMagazine _mag;
player addMagazine _mag;
sleep(0.025);
systemChat format["<Admin Menu> 2 %1 given ", _mag];
				};