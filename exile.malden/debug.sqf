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
/*
for "_i" from 0 to 80 do {
  _markerName = Format ["path_%1",_i];
 _pos = GetMarkerPos _markerName;
 _path = _path + [_pos];

};
copyToClipboard Format ["%1",_path];
[[7217.13,12769.4,0],[6856.39,12253.8,0],[6270.91,11611.9,0],[5051.25,12373.3,0],[4613.44,10915.5,0],[4208.21,10042.6,0],[3640.96,9755.01,0],[3074.59,9320.72,0],[2893.24,8657.39,0],[2420.88,7388.36,0],[2134.57,6808.49,0],[1955.96,6054.38,0],[1396.69,5493.31,0],[332.578,4620.36,0],[1443.77,3495.02,0],[1228.53,2488.03,0],[1123.34,1705.66,0],[808.43,1365.96,0],[386.934,522.964,0],[904.107,73.024,0],[1538.59,517.567,0],[2512.45,1831.74,0],[3317.43,3075.78,0],[3710.91,2031.33,0],[4316.12,1768.81,0],[4638.9,2011.28,0],[4665.37,1309.57,0],[5025.02,1047.26,0],[5552.02,1134.74,0],[5348.77,1855.16,0],[5724.98,2216.85,0],[6153.65,1898.69,0],[6600.19,2120.85,0],[6766.53,1980.19,0],[7134.92,2377.61,0],[7569.18,2539.47,0],[7699.79,2766.09,0],[7498.85,3511.81,0],[7688.63,3076.44,0],[8275.82,2710.27,0],[8667.66,3111.04,0],[8704.5,3645.77,0],[9007.03,3655.82,0],[9116.43,3048.53,0],[9819.72,2646.64,0],[10427,2359.74,0],[10319.8,2890,0],[10380.1,3517.39,0],[11244.2,3610.05,0],[11973.1,3943.83,0],[12406.3,4125.8,0],[12227.7,4526.56,0],[12056.9,4971.99,0],[11496.5,4985.38,0],[11016.4,4982.03,0],[10729.5,4883.8,0],[10104.4,4716.34,0],[10116.7,4419.4,0],[9641.1,4785.56,0],[9277.17,4711.88,0],[9165.54,4322.27,0],[9072.88,3950.53,0],[8759.19,3961.69,0],[8418.7,4375.86,0],[8318.23,4735.32,0],[8582.81,4710.76,0],[8595.09,5084.74,0],[8633.04,5914.18,0],[9027.06,6675.17,0],[9147.52,8090.66,0],[8496.69,8559.52,0],[8704.33,9281.8,0],[8651.86,10067.7,0],[8842.75,10536.6,0],[8452.03,11148.3,0],[8091.45,11495.5,0],[8205.32,11859.4,0],[7218.11,11725.2,0],[7432.78,12010.5,0],[7253.78,12417.3,0],[7373.79,12775.3,0]]

*/
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
