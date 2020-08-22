//[_pos,_rad,_npbcnt] execM "gpf_ZombieNPC.sqf";
private  _pos = _this select 0;
private  _rad = _this select 1;
private  _npbcnt = _this select 2;
private _ZombieNPC = [];
private _pistols = [
            ["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"],
			["Exile_Weapon_Makarov","Exile_Magazine_8Rnd_9x18"],
			["Exile_Weapon_Colt1911","Exile_Magazine_7Rnd_45ACP"],
			["hgun_Rook40_F","16Rnd_9x21_Mag"]
		   ];
private _priweapons = [
			   ["Exile_Weapon_M1014","Exile_Magazine_8Rnd_74Slug"],
			   ["SMG_05_F","30Rnd_9x21_Mag_SMG_02"],
			   ["hgun_PDW2000_F","30Rnd_9x21_Red_Mag"],
			   ["SMG_02_F","30Rnd_9x21_Mag_SMG_02"],
			   ["SMG_01_F","30Rnd_45ACP_Mag_SMG_01_tracer_green"]
			  ];
while {true} Do {
  private _list = _pos nearObjects ["Man", _rad];
  private _ZombiePlayers = [];

  if ((count _list) > 0) Then {
    {if (isPlayer _x) Then {_ZombiePlayers = _ZombiePlayers + [_x];}; } Foreach _list;
   };
  if ((count _ZombiePlayers) == 0) Then {{_u = _x select 0; _p = _x select 1; deleteVehicle _u;deleteVehicle _p;} foreach _ZombieNPC; } Else {
    private _units = []; {_u = _x Select 0;_units = _units + [_u]} Foreach _ZombieNPC;
    if ( ({alive _x} count _units) < _npbcnt) Then {
	Sleep 30;
	 private _HasRifle = SelectRandom [0,0,0,0,1,0,0,0,0,0];
     private _fetchpistol = SelectRandom _pistols;
     private _sndgun = _fetchpistol Select 0;
     private _sndammo = _fetchpistol Select 1; 
	 _group = createGroup [west,true];
	_unit = _group createUnit ["B_G_Soldier_AR_F", [0,0,0], [], 0, "FORM"];
	_unit setSkill 0.85;
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	_unit forceAddUniform "Exile_Uniform_ZombieOverall";
	for "_i" from 1 to 2 do {_unit addItemToUniform _sndammo;};
	_unit addWeapon _sndgun;
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "Exile_Item_XM8";
	_unit linkItem "ItemRadio";
	if (_HasRifle == 1) Then {  _fetchrifle = SelectRandom _priweapons; _prigun = _fetchrifle Select 0; _priammo = _fetchrifle Select 1;
     _unit addWeapon _prigun;
	 _unit addItemToUniform _priammo;
	};
	_chute = "Steerable_Parachute_F" createVehicle [0,0,0]; 
    _chute setPos [(_pos select 0), (_pos select 1), 100]; 
    _unit moveIndriver _chute;
	_unit addMPEventHandler ["MPKilled",'if (isServer) then {_this call DMS_fnc_OnKilled;};'];
	[_group,_pos,30] call bis_fnc_taskPatrol;
	_ZombieNPC = _ZombieNPC + [[_unit,_chute]];
	//SystemChat "Zombie away";
	};
  
  //{SystemChat Format ["%1 is in the Zombie zone",name _x];}Foreach _ZombiePlayers;
   
  };
sleep 30;
};