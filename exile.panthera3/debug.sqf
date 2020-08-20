/* types of locations
Mount
NameCity
NameLocal
Hill
NameVillage
*/

private _type = "Airport";
private _centerWorld = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
private _allLocationTypes = [];
"_allLocationTypes pushBack configName _x" configClasses (configFile >> "CfgLocationTypes");
// _type = _allLocationTypes;
private _allPlaces = nearestLocations [_centerWorld, [_type],90000];
private _places = [];

{
	_pos = locationPosition _x;
	_name = text nearestLocation [_pos, _type];
	_nl = format ["%1, //%2",[(_pos select 0),(_pos select 1),100],_name];
	_places = _places + [_nl];
} Foreach _allPlaces;
copyToClipboard Format ['%1 = %2;',_type,_places];


Airport = [ //done
[4353.97,7495.4,300], //Arnoldstein Airport  [8622.31,4784.41,300], //Airport Lesce  [7988.78,1965.18,300], //Smugglers Airport  [2330.83,567.24,300], //Airport Fortieste  [734.45,9510.76,300] //Airport Vatra"
];

NameVillage = [ // done
[3217.66,3344.35,300], //Kobarid, 3321.08,6670.45,300], //Tarvisio, 7461.03,5799.64,300], //Jesenice, 1292.96,5744.13,300], //Porto Pyano, 7913.81,4937.32,300], //Bled, 4521.07,7976.7,300], //Arnoldstein, 7798.07,5671.63,300], //Koroska Bela, 1991.87,1559.14,300], //Borovo, 8432.93,4647.76,300], //Radovljica, 1586.56,7318.3,300], //Eli, 1260.06,1644,300], //Bazovica, 1610.34,7590.16,300], //Saval, 445.51,2601.64,300], //Zalia, 585,2281.72,300], //Banak, 329.79,6770.06,300], //Maribu, 1356.23,688.18,300], //Bubinela, 750.13,7668.7,300], //Melara, 260.59,1716.93,300], //Arapovo, 8434.13,8719.85,300], //Visitor's Center, 8906.2,8235.43,300], //Diego's Farm, 9401.98,7579.66,300], //Old Village (Ruins), 1036.78,9370.18,300], //Vatra, 8511.16,9110.22,300] //Workers Village
];

NameCity = [
[2609.78,1480.82,300], /*Rontus*/[1041.7,6307.94,300], /*Citta Rubina*/[8721.05,2390.73,300] /*Porto Ritmo*/
];

Hill = [ // done
  [3952.71,3639.64,300], //Krn  [4121.92,5582.1,300], //Jalovec  [5485.09,5055.14,300], //Triglav  [5108.74,5466.7,300], //Razor  [3422.15,3484.76,300], //Volnik  [4907.07,5650.21,300], //Prisojnik  [4475.64,5757.65,300], //Mojstrovka  [3491.16,3367.79,300], //Ladrski vrh  [5343.17,5412.54,300], //Stenar  [5404.21,3346.54,300], //Vogel  [3027.41,4934.03,300], //Rombon  [3908.24,5817.16,300], //Mangart  [3368.5,5513.52,300], //Kolovrat  [5348.66,5765.12,300], //Skrlatica  [5635.58,3255.68,300], //Shija  [4525.55,2691.73,300], //Kozlov Rob  [3754.81,6065.72,300], //Picco di Mezzodi (Kopa)  [5351.84,5927.63,300], //Spik  [2747.74,3639.78,300], //Mali Vrh  [2641.39,5018.8,300], //Monte Lopa  [2921.83,3126.99,300], //Matajur  [2546.28,3713.51,300], //Stol 2  [3919.99,6322.79,300], //Colrotondo  [6394.01,4549.5,300], //Mesnovec  [2470.62,5166.18,300], //Monte Poviz  [4886.6,2295.12,300], //Senica  [4545.71,2222.12,300], //Mrzli Vrh  [2177.02,4884.28,300], //Mt. Kanin  [2419.65,5521.22,300], //Punta Plagnis  [2467.09,5622.68,300], //Cime Castrein  [2480.23,5716.85,300], //Jof Fuart  [2305,5550.11,300], //Modeon del Buinz  [2184.25,3489.11,300], //Airbase Boriana  [7739.84,3271.51,300], //Ratitovec  [8147.29,4258.56,300], //Jelovica  [8054.01,5612.85,300], //Ajdna Ruins  [8435.16,5742.8,300], //Stol  [992.28,7754.3,300], //Research Base A5  [2104.22,8640.35,300], //Mt. Maleficio  [8852.96,7989.55,300], //Trident Lab  [9595.67,7669.63,300] //Grimsted's Farm
  ];
  
NameLocal = [ //done
[4846.34,5232.24,300], //Trenta  [5404.55,3882.18,300], //Ukanc  [3570.13,3534.46,300], //Dreznica  [3473.41,5421.4,300], //Log Pod Mangartom  [3024.39,4563.32,300], //Bovec  [3002.2,4324.77,300], //Cezsoca  [3503.04,3278.31,300], //Ladra  [3523.11,5549.25,300], //Strmec  [2974.97,3821.69,300], //Trnovo  [3384.46,3212.58,300], //Idrsko  [4429.37,2757.99,300], //Dolje  [6025.19,3915.89,300], //Stara Fuzina  [5985.29,3759.13,300], //Ribcev Laz  [3013.04,3329.57,300], //Suzid  [4593.39,2620.7,300], //Tolmin  [6186.02,3984.98,300], //Studor  [2858.47,3396.1,300], //Staro Selo  [3420.58,2830.72,300], //Livek  [4789.51,2581.26,300], //Podljubinj  [4375.63,2517.76,300], //Volce  [2560.76,3965.96,300], //Srpenica  [6267.85,4032.63,300], //Srednja Vas  [3172.45,5879.04,300], //Cave del Predil  [2379.23,4195.34,300], //Zaga  [5325.73,2553.98,300], //Sela  [6456.72,4014.89,300], //Cesnjica  [5067.66,6418.56,300], //Kranjska Gora  [6537.15,4140.98,300], //Jereka  [4761.15,2271.17,300], //Modrej  [4812.96,6522.85,300], //Podkoren  [4055.74,6553.04,300], //Fusine  [2338.6,5203.74,300], //Sella Nevea  [3148.69,6238.14,300], //Riofreddo  [6523.38,3735.46,300], //Boh. Bistrica  [6570.37,3860.54,300], //Bitnje  [5284.91,2330.45,300], //Klavze  [4891.38,2163.99,300], //Baca  [5511.51,6402.3,300], //Gozd Mar.  [5424.25,2343.28,300], //Kneza  [6699.78,4489.36,300], //Goreljek  [3988.49,2121.51,300], //Bolhowo  [2431.84,3176.51,300], //FOB Boriana  [4472.15,2055.48,300], //Sela Pri Volcah  [6772.28,4175.26,300], //Koprivnik  [6381.86,5740.02,300], //Radovna  [6807.58,4710.77,300], //Mrzli Studenec  [3709.67,2069.44,300], //Bajo Fuerta  [5814.73,2375.8,300], //Koritnica  [3854.39,1976.79,300], //Ditchwood  [6143.95,6299.91,300], //Belca  [4780.08,1845.9,300], //Taff Grove  [4496.82,1818.65,300], //Pikia  [6954.81,3968.41,300], //Nomenj  [6375.11,6105.47,300], //Mojstrana  [7047.45,4256.04,300], //Gorjuse  [6711.47,3021.71,300], //Podbrdo  [6436.18,6213.7,300], //Dovje  [3630.24,1662.09,300], //Chabola  [4776.17,1556.29,300], //Ramon's Villa  [7404.96,4451.87,300], //Obrne  [3513.52,1495.69,300], //Cape Goat  [6970.59,6016.83,300], //Hrusica  [5539.39,7238.79,300], //Hoopsberg  [7451.89,4661.87,300], //Boh. Bela  [7189.11,3130.39,300], //Sorica  [5788.94,7136.95,300], //Kelch  [7485.91,5083.95,300], //Gorje  [5995.37,7143.97,300], //Mork  [2533.98,1719.04,300], //Rontus Hospital  [7617.99,5515.96,300], //Kocna  [6118.58,7371.2,300], //Senzatoka  [7800.64,5459.8,300], //Blejska Dobrava  [6946.01,1879,300], //Fishers Corner  [8009.67,4717.66,300], //Ribno  [6750.56,1563.33,300], //Belley  [8034.04,5270.52,300], //Breg  [5965.58,926.2,300], //Zappado  [7043.22,7147.45,300], //Kleinfort  [8111.18,5418.37,300], //Zirovnica  [7204.62,7054.3,300], //Freckle  [8209.23,5195.33,300], //Vrba  [8283.25,4875.39,300], //Lesce  [8314.93,4582.73,300], //Lancovo  [747.06,6018.99,300], //Villa Simona  [2270.1,7867.52,300], //Volkovo  [7312.22,1403.54,300], //Rockburn  [1288.18,7194.1,300], //Felis Prison  [8480.49,3479.68,300], //Drazgose  [7019.83,1134.1,300], //Foxhill  [8585.82,4281.64,300], //Kamna Gorica  [8405,3146.5,300], //Zelezniki  [861.16,2114.11,300], //Fortieste Island  [7867.08,1943.23,300], //Smugglers Den  [639.28,6421.05,300], //Isla Rubina  [8655.94,5026.98,300], //Begunje  [8692.2,3982.73,300], //Kropa  [1176.23,7478.54,300], //Savagia  [8708.46,3122.03,300], //Selca  [6672.41,432.2,300], //Cato  [7876.93,1406.76,300], //New Skooma  [2262.18,9076.93,300], //Mello  [1628.08,8851.74,300], //Borna  [8279.46,8488.18,300], //Maintenance Shed / Power Station  [1827.64,9429,300],   //Gazetovo  [9621.88,6969,300],   //Power Station  [8185.33,8954.19,300], //Ammo Bunker  [9121.35,8065.48,300], //VIP Helipad  [8321.83,9610.88,300] //Research Lab Nero
];


ViewPoint = [
[8273.71,8624.22,100], //Malcolm's Hacienda
[9324.03,8874,100] //Central Paddocks
];


//_Green_Debug_Player = _this select 0;
//if (Green_Debug_Player != _Green_Debug_Player) ExitWith {};
//debug = true;
//
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
for _i from 1 to 13 do {
  _markerName = Format [path_%1,_i];
 _pos = GetMarkerPos _markerName;
 _path = _path + [_pos];

};
copyToClipboard Format [%1,_path];
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
_places = [];
{
 if (typeof _x == O_G_Soldier_LAT2_F) Then {
 _posASL = GetPosASL _x;
 _dir = GetDir _x;
 _dirVector = vectorDir _x;
 _UpVector = vectorUp _x;
 _name = name _x;
 //_txt = Format ['%1 - %2,%3,%4],',_name,_posASL,_dirVector,_UpVector];
 _txt = Format ['%1',_posASL];
 _places = _places + [_posASL];
 };
} forEach allUnits;// (allMissionObjects );//allUnits;
copyToClipboard Format ['%1',_places];
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