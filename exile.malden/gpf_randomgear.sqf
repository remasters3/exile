//[player] execVM "gpf_randomgear.sqf";
_unit = _this Select 0;
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
		"U_BG_Guerilla2_1",
		"U_BG_Guerilla3_1"
       ];

_headgear = [
   "H_ShemagOpen_khk",
   "H_Shemag_olive",
   "H_ShemagOpen_tan"
];

_vests = ["V_BandollierB_cbr","V_HarnessO_gry","V_BandollierB_blk"];
_bags = ["B_FieldPack_cbr","B_Messenger_Gray_F","B_Carryall_oucamo","B_FieldPack_oli"];
_riflescopes = ["optic_Aco","optic_AMS","optic_DMS","optic_Arco"];
_at = [];
_pistols = [
            ["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder"],
			["hgun_ACPC2_F","9Rnd_45ACP_Mag"]
		   ];
_nvgs = [];

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
_unit addBackpack (SelectRandom _bags);

//adding ammo
for "_i" from 1 to 3 do {_unit addItemToUniform _sndammo;};
for "_i" from 1 to 3 do {_unit addItemToBackpack _priammo;};
for "_i" from 1 to 3 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Exile_Item_EMRE";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "Exile_Item_InstaDoc";};

//adding items to vest
_unit addItemToVest "Exile_Item_CanOpener";
_unit addItemToVest "Exile_Item_DuctTape";
_unit addItemToVest "Exile_Item_MacasCheese_Cooked";
_unit addItemToVest "Exile_Item_Moobar";
_unit addItemToVest "Exile_Item_MountainDupe";
_unit addItemToVest "Exile_Item_Vishpirin";

//putting a hat on
_unit addHeadgear (SelectRandom _headgear);

//adding rifle
_unit addWeapon _prigun;
_unit addPrimaryWeaponItem (SelectRandom _riflescopes);

//aadding sidearm
_unit addWeapon _sndgun;

//Adding binos
_unit addWeapon "Binocular";

//items
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