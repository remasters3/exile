// player addaction ["Name Target","Systemchat str(typeOf cursortarget); copyToClipboard str(typeOf cursortarget);"];
/*
private _centerWorld =  getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
private _wreck = [];
private _Allwreck = [];
private _cnt = 0;
private _wreckings = [
"Land_UWreck_FishingBoat_F",
"Land_Wreck_Traw2_F",
"Land_Wreck_Traw_F"
];


{
 _model = _x;
 _wreck = _centerWorld nearObjects [_model, 25000];
 systemChat format ["%1",_model ];
 _Allwreck = _Allwreck + _wreck;
} Foreach _wreckings;
systemChat format ["%1",_Allwreck];

private _wreckPos = [];
{
 _wp = GetPos _x;
 _wreckPos = _wreckPos + [_wp];
 systemChat format ["%1",_wp];
 } Foreach _Allwreck;
{player SetPos _x;sleep 2;} foreach _wreckPos;
*/

/*[] Spawn {
  manhunton = false;
  while {!manhunton} Do {
    waitUntil {manhunton};
	SystemChat "Manhunt Time!";
	Sleep 10;
  };
};

[(GetPos ManhutFlag)] execVM "gpf_manhunt.sqf";
/*



/*
_all = [];
_configs = "getNumber (_x >> 'scope') >= 2 AND configName _x isKindof 'ship'" configClasses (configFile >> "CfgVehicles");
_classNames = _configs apply {configName _x}; 
{
_txt = format ["%1",_x];
_all = [_txt] + _all;
diag_log _txt;
} Foreach _classNames;
_STR = Format ["%1",_all];
copyToClipboard _STR;
*/

_path = [];
/*
{ 
 _pos = GetMarkerPos _x;
 _path = _path + [_pos];
} Foreach ["path_00","path_01","path_02","path_03","path_04","path_05","path_06","path_07","path_08","path_09","path_10"];
*/

//hint str(typeOf cursortarget); copyToClipboard str(typeOf cursortarget);

for "_i" from 1 to 13 do {
  _markerName = Format ["path_%1",_i];
 _pos = GetMarkerPos _markerName;
 _path = _path + [_pos];

};
copyToClipboard Format ["%1",_path];
[[5707.67,2005.71,0],[8622.13,2741.32,0],[8902.38,4883.91,0],[8935.06,8600.58,0],[7309.82,11777.1,0],[6078.81,12144.2,0],[3423.31,10117,0],[7735.03,5445.5,0],[2299.42,7478.4,0],[1155.36,5925.76,0],[1021.24,2485.33,0],[3318.59,2143.9,0],[947.376,84.5116,0]]
//_txt = Format ["%1,%2,%3",GetPosASL player,vectorDir player,vectorUp player]; copyToClipboard _txt;diag_log _txt; 
//copyToClipboard str(GetPosASL Player); systemChat Format ["%1",GetPosASL Player];

// [12697.4,158.103,19.3] upperdeck
// [12715,138.985,9.6] lowerdeck

//_count =  {alive} count AllPlayers;
//systemchat format ["%1",_count];ExileTraderZone
//{_txt = Format ["%1",markerType _x]; systemChat _txt;diag_log _txt;} forEach allMapMarkers; //_markers;
//allMapMarkers
//[] execVM "gpf_troopdrop.sqf";


/*
_places = [];
{
 if (typeof _x == "O_G_Soldier_LAT2_F") Then {
 _posASL = GetPos _x;
 _dir = GetDir _x;
 _txt = Format ['[%1],',_posASL,_dir];
 _places = _places + [_posASL];
 };
} Foreach allUnits;
copyToClipboard Format ['%1',_places];
//copyToClipboard Format ['%1',GetPosASL player];
*/
/*
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
  _cnt = _cnt+1; SystemChat Format ["%1",_cnt];
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
//  _unit = _group createUnit ["O_G_Sharpshooter_F", _posASL, [], 0, "CAN_COLLIDE"];
//  _unit setDir _dir;
//  _unit SetPosASL _posASL;
//  [_unit,false] execVM "gpf_randomgear.sqf";
//  _units = _units + [_unit];
//  sleep 1;
//} Foreach _places;
if (true) ExitWith {};
