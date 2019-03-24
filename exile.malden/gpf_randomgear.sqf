//[player,false,killmsg] execVM "gpf_randomgear.sqf";
_unit = _this Select 0;
_air = _this Select 1;
_killmsg = false;
if ((count _this) > 2) Then {_killmsg = _this select 2;} Else {_killmsg = false;};
_rocketChance = [0,0,1,1,1,1,1,1,1,1]; //20% chance unit will get a rocket launcher
_rockets = [
["launch_NLAW_F","NLAW_F"],
["launch_RPG32_F","RPG32_F"],
["launch_RPG7_F","RPG7_F"],
["launch_B_Titan_F","Titan_AA"],
["launch_B_Titan_short_F","Titan_AT"]
];
_priweapons = [
               ["arifle_AK12_GL_F","30Rnd_762x39_Mag_F"],
               ["Exile_Weapon_PK","Exile_Magazine_100Rnd_762x54_PK_Green"],
			   ["arifle_AKM_F","30Rnd_762x39_Mag_F"],
			   ["arifle_AK12_F","30Rnd_762x39_Mag_F"],
			   ["LMG_03_F","200Rnd_556x45_Box_F"]
			  ];
			  
_uni = [
        "U_I_C_Soldier_Bandit_1_F",
        "U_I_C_Soldier_Bandit_1_F",
        "U_I_C_Soldier_Para_2_F",
        "U_I_C_Soldier_Para_4_F",
		"U_I_pilotCoveralls"
       ];

_headgear = [
   "H_ShemagOpen_khk",
   "H_Shemag_olive",
   "H_ShemagOpen_tan"
];

_vests = ["V_BandollierB_cbr","V_HarnessO_gry","V_BandollierB_blk"];
_bags = ["B_FieldPack_cbr","B_Messenger_Gray_F","B_Carryall_oucamo","B_FieldPack_oli"];
_riflescopes = ["optic_Aco","optic_AMS","optic_DMS","optic_Arco"];

_pistols = [
            ["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"],
			["hgun_ACPC2_F","9Rnd_45ACP_Mag"],
			["hgun_P07_F","30Rnd_9x21_Mag"]
		   ];
_nvgs = [];
_foods = ["Exile_Item_EMRE","Exile_Item_MountainDupe","Exile_Item_MacasCheese_Cooked"];
_meds = ["Exile_Item_InstaDoc","Exile_Item_Vishpirin"];
_items = ["Exile_Item_DuctTape","1Rnd_HE_Grenade_shell"];

private _fetchrifle = SelectRandom _priweapons;
private _fetchpistol = SelectRandom _pistols;
private _prigun = _fetchrifle Select 0;
private _priammo = _fetchrifle Select 1;
private _sndgun = _fetchpistol Select 0;
private _sndammo = _fetchpistol Select 1;
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;
//adding storage
_unit forceAddUniform (SelectRandom _uni);
_unit addVest (SelectRandom _vests);
if (_air) Then {_unit addBackpack "B_Parachute";} else {_unit addBackpack (SelectRandom _bags);};


//adding ammo
_unit addItemToUniform _sndammo;
_unit addItemToUniform "Exile_Item_CanOpener";
for "_i" from 1 to 2 do {_unit addItemToUniform (SelectRandom _meds);};
for "_i" from 1 to 1 do {_unit addItemToUniform (SelectRandom _items);};
for "_i" from 1 to 1 do {_unit addItemToUniform (SelectRandom _foods);};

if (!_air) Then {
  for "_i" from 1 to 3 do {_unit addItemToBackpack _priammo;};
  for "_i" from 1 to 3 do { _unit addItemToBackpack (SelectRandom _items);};
  for "_i" from 1 to 2 do {_unit addItemToBackpack (SelectRandom _foods);};
  for "_i" from 1 to 2 do {_unit addItemToBackpack (SelectRandom _meds);};
};

//adding items to vest
_unit addItemToVest _priammo;
_unit addItemToVest _priammo;
for "_i" from 1 to 3 do {_unit addItemToVest (SelectRandom _foods);};
for "_i" from 1 to 2 do {_unit addItemToVest (SelectRandom _meds);};
for "_i" from 1 to 2 do {_unit addItemToVest (SelectRandom _items);};

//putting a hat on
_unit addHeadgear (SelectRandom _headgear);

//adding rifle
_unit addWeapon _prigun;
_unit addPrimaryWeaponItem (SelectRandom _riflescopes);

//aadding sidearm
_unit addWeapon _sndgun;

//Adding binos
_unit addWeapon "Binocular";

//Gadgets
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
_unit linkItem "Exile_Item_XM8";

//exile cash
_AIMoney = SelectRandom [100,110,120,130,140,150,100,160,170,180,190,195,100,200,300,400,500,600,800,900];
_unit setVariable
[
	"ExileMoney",
	_AIMoney,
	true
];
if (!_air) Then {
   if ((selectRandom _rocketChance) == 0) Then {
   removeBackpack _unit;
   private _rocket = SelectRandom _rockets;
   private _rocketluancher = _rocket select 0;
   private _rocketammo = _rocket select 1;
   _unit addBackpack "B_Carryall_oucamo";
   _unit addWeapon  _rocketluancher;
   for "_i" from 1 to 3 do {_unit addItemToBackpack _rocketammo;};
   };  
};

//if (_killmsg) Then {_unit addMPEventHandler ["MPKilled",'/*if (isServer) then {*/[(_this Select 0),(_this Select 1)]execVM "gpf_fn_killmsg.sqf"};'];};
if (_killmsg) Then {_unit addMPEventHandler ["MPKilled",'[(_this Select 0),(_this Select 1)]execVM "gpf_fn_killmsg.sqf";'];};

if (true) ExitWith {};