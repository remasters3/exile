//[[9967.92,2256.35,0]]execVM "gpf_BambiNPC.sqf"
private _pos = _this select 0; //= [9967.92,2256.35,0];
private _bambiNPC = [];
private _pistols = [
            ["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"],
			["Exile_Weapon_Makarov","Exile_Magazine_8Rnd_9x18"],
			["Exile_Weapon_Colt1911","Exile_Magazine_7Rnd_45ACP"]
		   ];
private _priweapons = [
			   ["Exile_Weapon_M1014","30Rnd_762x39_Mag_F","Exile_Magazine_8Rnd_74Slug"],
			   ["SMG_05_F","30Rnd_9x21_Mag_SMG_02"],
			   ["hgun_PDW2000_F","30Rnd_9x21_Mag"],
			   ["SMG_02_F","30Rnd_9x21_Mag_SMG_02"]
			  ];
while {true} Do {
 private _list = _pos nearObjects ["Man", 20];
 private _players = [];

  if ((count _list) > 0) Then {
    {if (_x == player) Then {_players = _players + [_x];}; } Foreach _list;
   };
  if ((count _players) == 0 ) Then {{_u = _x select 0; _p = _x select 1; deleteVehicle _u;deleteVehicle _p;} foreach _bambiNPC; SystemChat "No players near";} Else {
    private _units = []; {_u = _x Select 0;_units = _units + [_u]} Foreach _bambiNPC;  
    if ( ({alive _x} count _units) == 0) Then {
	private _HasRifle = SelectRandom [0,0,0,0,1,0,0,0,0,0];
    private _fetchpistol = SelectRandom _pistols;
    private _sndgun = _fetchpistol Select 0;
    private _sndammo = _fetchpistol Select 1; 
	private _group = createGroup east;
	_unit = _group createUnit ["O_G_Sharpshooter_F", [0,0,0], [], 0, "FORM"];
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	_unit forceAddUniform "Exile_Uniform_BambiOverall";
	for "_i" from 1 to 2 do {_unit addItemToUniform _sndammo;};
	_unit addWeapon _sndgun;
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "Exile_Item_XM8";
	_unit linkItem "ItemRadio";
	if (_HasRifle == 0) Then { private _fetchrifle = SelectRandom _priweapons;private _prigun = _fetchrifle Select 0;private _priammo = _fetchrifle Select 1;
     _unit addWeapon _prigun;
	 _unit addItemToUniform _priammo;
	};
	_chute = "Steerable_Parachute_F" createVehicle [0,0,0]; 
    _chute setPos [(_pos select 0), (_pos select 1), 100]; 
    _unit moveIndriver _chute;
	[_group,_pos,30] call bis_fnc_taskPatrol;
	_bambiNPC = _bambiNPC + [[_unit,_chute]];
	SystemChat "bambi away";
	};
  
  {SystemChat Format ["%1",name _x];}Foreach _players;
   
  };
sleep 5;
};