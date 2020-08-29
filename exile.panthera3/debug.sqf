_positions = [];
_vehicles = vehicles;
{

if ((typeof _x) == "Exile_Construction_Flag_Static") then {
    	_positions = _positions+[(GetPos _x)];
    	};
} foreach _vehicles;
systemchat format ["%1",_vehicles];


/*
private _cotw = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
private _centerWorld = [(_cotw select 0),(_cotw select 1),0];


_path =[];
_cnt = 0;
_names =[];
while {(_cnt <= 26)} do {
  _markerName = Format ["path_%1",_cnt];
  systemChat _markerName;
  _cnt = _cnt+1;
  _names = _names + [_markerName];

};
{
 _pos = GetMarkerPos _x;
 _pos = GetMarkerPos _markerName;
 _path = _path + [_pos];
 systemChat format ["%1",_pos];
} foreach _names;
copyToClipboard Format [" %2 ",_names,_path];
*/

//_Green_Debug_Player = _this select 0;
//if (Green_Debug_Player != _Green_Debug_Player) ExitWith {};
//debug = true;
//[[0,0,0],[0,0,0]]
//_DebugGroup = _Green_Debug_Player getVariable gpf_support_group;
//if ((group _Green_Debug_Player) == _DebugGroup) Then {[_Green_Debug_Player] join grpNull;}
//Else {[_Green_Debug_Player] join _DebugGroup;_DebugGroup selectLeader _Green_Debug_Player;};
// player addaction [Debug On,execVM 'debug.sqf';];
// player addaction [Debug Off,debug = false;];

/*
private _GetWayPontPos = compile preprocessFile gpf_roamingpaths.sqf;
private _Path = Call _GetWayPontPos;
private _cnt = 0;
private _markers = [];
{
_txt = Format [Marker_%1,_cnt];
_mkr = createMarker [_txt, _x];
_mkr setMarkerType hd_destroy;
_mkr setMarkerText _txt;
_cnt = _cnt+1;
_markers = _markers + [_mkr];
player SetPos _x;
sleep 1;
} Foreach _path;
waitUntil {!debug};
{deleteMarker _x}Foreach _markers;

*/


/*allLocationTypes = [];
allLocationTypes pushBack configName _x configClasses (configFile >> CfgLocationTypes);
_places = nearestLocations [player, allLocationTypes,500,player];
{
	systemChat format [
		| %1 | %2 | %3m |, 
		_x, 
		text _x, 
		floor (position player distance _x)
	];
} forEach [(_places Select 0)];
copyToClipboard Format ['%1',allLocationTypes];
//[Mount,Name,Strategic,StrongpointArea,FlatArea,FlatAreaCity,FlatAreaCitySmall,CityCenter,Airport,NameMarine,NameCityCapital,NameCity,NameVillage,NameLocal,Hill,ViewPoint,RockArea,BorderCrossing,VegetationBroadleaf,VegetationFir,VegetationPalm,VegetationVineyard,fakeTown,Area,Flag,b_unknown,o_unknown,n_unknown,b_inf,o_inf,n_inf,b_motor_inf,o_motor_inf,n_motor_inf,b_mech_inf,o_mech_inf,n_mech_inf,b_armor,o_armor,n_armor,b_recon,o_recon,n_recon,b_air,o_air,n_air,b_plane,o_plane,n_plane,b_uav,o_uav,n_uav,b_naval,o_naval,n_naval,b_med,o_med,n_med,b_art,o_art,n_art,b_mortar,o_mortar,n_mortar,b_hq,o_hq,n_hq,b_support,o_support,n_support,b_maint,o_maint,n_maint,b_service,o_service,n_service,b_installation,o_installation,n_installation,u_installation,b_antiair,o_antiair,n_antiair,c_unknown,c_car,c_ship,c_air,c_plane,group_0,group_1,group_2,group_3,group_4,group_5,group_6,group_7,group_8,group_9,group_10,group_11,respawn_unknown,respawn_inf,respawn_motor,respawn_armor,respawn_air,respawn_plane,respawn_naval,respawn_para,ExileTerritory,Invisible,HistoricalSite,CivilDefense,CulturalProperty,DangerousForces,SafetyZone]
*/
// player addaction [Name Target,Systemchat str(typeOf cursortarget); copyToClipboard str(typeOf cursortarget);];
/*
private _centerWorld =  getArray(configFile >> CfgWorlds >> worldName >> centerPosition); //GetMarkerPos marker_debug;
private _Size = GetMarkerSize marker_debug;
private _wreck = [];
private _Allwreck = [];
private _cnt = 0;
private _wreckings = [
Land_SharpRock_monolith,
Land_PierWooden_02_16m,
Land_PierWooden_02_barrel,
Land_PierWooden_02_30deg,
Land_Canal_Wall_10m,
Land_Canal_Wall_Stairs,
Land_Walkover_01,
Land_Tank_rust,
Land_SharpRock_spike,
Land_Shoot_House_Wall,
Land_SharpRock_wallH,
Land_PierWooden_02_hut,
Land_Shoot_House_Tunnel
];


{
 _model = _x;
 _wreck = _centerWorld nearObjects [_model, 30000];
 systemChat format [%1,_model ];
 _Allwreck = _Allwreck + _wreck;
} Foreach _wreckings;
systemChat format [%1,_Allwreck];

private _wreckPos = [];
{
 _model = typeof _x;
 _wp = GetPosWorld _x;
 _vd = vectorDir _x;
 _vu = vectorUp _x;
 _txt = format ['[%1,%2,%3,%4,%5]',_model,_wp,_vd,_vu,false];
 _wreckPos = _wreckPos + [[_model,_wp,_vd,_vu,false]];
 } Foreach _Allwreck;
copyToClipboard str(_wreckPos);
systemChat str(_wreckPos);
*/

//{player SetPos _x;sleep 2;} foreach _wreckPos;
//[]
//[]
/*[] Spawn {
  manhunton = false;
  while {!manhunton} Do {
    waitUntil {manhunton};
	SystemChat Manhunt Time!;
	Sleep 10;
  };
};

[(GetPos ManhutFlag)] execVM gpf_manhunt.sqf;
/*



/*
_all = [];
_configs = getNumber (_x >> 'scope') >= 2 AND configName _x isKindof 'ship' configClasses (configFile >> CfgVehicles);
_classNames = _configs apply {configName _x}; 
{
_txt = format [%1,_x];
_all = [_txt] + _all;
diag_log _txt;
} Foreach _classNames;
_STR = Format [%1,_all];
copyToClipboard _STR;
*/

//_path = [];
/*
{ 
 _pos = GetMarkerPos _x;
 _path = _path + [_pos];
} Foreach [path_00,path_01,path_02,path_03,path_04,path_05,path_06,path_07,path_08,path_09,path_10];
*/

//hint str(typeOf cursortarget); copyToClipboard str(typeOf cursortarget);


/*
[[5707.67,2005.71,0],[8622.13,2741.32,0],[8902.38,4883.91,0],[8935.06,8600.58,0],[7309.82,11777.1,0],[6078.81,12144.2,0],[3423.31,10117,0],[7735.03,5445.5,0],[2299.42,7478.4,0],[1155.36,5925.76,0],[1021.24,2485.33,0],[3318.59,2143.9,0],[947.376,84.5116,0]]
//_txt = Format [%1,%2,%3,GetPosASL player,vectorDir player,vectorUp player]; copyToClipboard _txt;diag_log _txt; 
//copyToClipboard str(GetPosASL Player); systemChat Format [%1,GetPosASL Player];
*/

// [12697.4,158.103,19.3] upperdeck
// [12715,138.985,9.6] lowerdeck

//_count =  {alive} count AllPlayers;
//systemchat format [%1,_count];ExileTraderZone
//{_txt = Format [%1,markerType _x]; systemChat _txt;diag_log _txt;} forEach allMapMarkers; //_markers;
//allMapMarkers
//[] execVM gpf_troopdrop.sqf;

//[_x,200,45,360] execVM gpf_fn_enemyWave.sqf;

//copyToClipboard Format ['%1',GetPosASL player];
/*
_statisPos = [
	[4673.28,10182.2,45.8736], //0-bighouse entrance step
	[4658.39,10169.8,44.1546], //1-small house entance X
	[4673.26,10172.9,45.9087], //2-bighouse entance upper X
	[4641.49,10174.4,67.731], //3-castle top
	[4653.81,10215,45.344], //4-bighouse seaside upper
	[4626.22,10196.1,42.5326], //5-seaside ground
	[4636.44,10212.5,40.8005], //6 -rockside ground X
	[4624.84,10173.6,51.6185] //7-broken castle smallhouse
	];
player setposASL (_statisPos select 7);
*/

///// trader positioms
/*
_traders = [];
{
 if (typeof _x == "O_G_Soldier_LAT2_F") Then {
 _posASL = GetPosASL _x;
 _dir = GetDir _x;
 _dirVector = vectorDir _x;
 _UpVector = vectorUp _x;
 _name = vehicleVarName _x;
 _animations = ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"];
 _head = "WhiteHead_05";
 _modelinfo = [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]];
 _txt = [_name, _animations, _name, _head, _modelinfo, _posASL, _dirVector, _UpVector];
 _traders = _traders + [_txt];
 };
} forEach allUnits;
copyToClipboard Format ['%1',_traders];
*/
//copyToClipboard Format ['%1',GetPosASL player];
// [_posASL,_dirVector,_UpVector]
// %1 - %2,%3,%4],
/* [Angelos Kanelloupou - [8680.86,6461.19,-0.0131063],[-0.390274,0.920699,0],[0,0,1]],]
_cnt = 0;
_places = [];
{
  _placeASL = [(_x select 0),(_x select 1),(_x select 2)+5];
   _places = _places + [_placeASL];
  } foreach [
  [3019.65,7215.73,0.00142765-2],
  [3053.23,7221.1,0.00143909+9],
  [3050,7217.65,0.00142312-2],
  [3050.08,7219.42,0.00289536+2],
  [3021.06,7227.51,0.00142741-1],
  [3044.4,7212.24,0.00144005+9],
  [3050.09,7214.7,0.00143909+5],
  [3044.67,7224.08,0.00142336-1],
  [3028.86,7210.61,0.00143887-5]
  ];
{
  player SetPosASL _x; player SetDamage 0;
  _cnt = _cnt+1; SystemChat Format [%1,_cnt];
  sleep 2;
} Foreach _places;
copyToClipboard Format ['%1',_places];
/*

//{ if ((side _x) == east) Then {_x SetDamage 1;};} Foreach allUnits;
//_places = [
//[[[9100.71,3749,4.38746],192.388],[[9077.14,3749.07,4.38518],0],[[9164.8,3705.64,5.66464],0],[[9165.42,3722.3,5.6648],0],[[9133.93,3721.36,5.70165],0],[[9139.07,3716.93,5.67625],14.2313],[[9133.53,3706.4,5.70165],0],[[9138.28,3701.08,5.6791],36.8862],[[9091.04,3722.71,4.17019],0],[[9096.32,3717.93,4.17019],52.1042],[[9040.35,3723.37,15.7209],0],[[8998.57,3713.86,8.97995],0],[[9040.31,3704.97,15.7209],0],[[9042.99,3706.74,6.86623],337.264],[[9090.6,3704.05,4.17019],0],[[9112.59,3713.78,16.1177],0],[[9067.71,3714.03,4.17011],0],[[9055.48,3711.73,7.26196],0],[[9029.73,3713.8,11.9889],0],[[9044.54,3714.27,7.25537],0]]
//];
//_units = [];
//{
//  _posASL = _x select 0;
//  _dir = _x select 1;
//  _group = createGroup east;
//  _unit = _group createUnit [O_G_Sharpshooter_F, _posASL, [], 0, CAN_COLLIDE];
//  _unit setDir _dir;
//  _unit SetPosASL _posASL;
//  [_unit,false] execVM gpf_randomgear.sqf;
//  _units = _units + [_unit];
//  sleep 1;
//} Foreach _places;
if (true) ExitWith {};
*/
debug = false;