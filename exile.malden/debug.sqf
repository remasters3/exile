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

/*
_path = [];
{ 
 _pos = GetMarkerPos _x;
 _path = _path + [_pos];
} Foreach ["path_00","path_01","path_02","path_03","path_04","path_05","path_06","path_07","path_08","path_09","path_10"];

*/
//hint str(typeOf cursortarget); copyToClipboard str(typeOf cursortarget);
//copyToClipboard str(GetPos Player);

//_txt = Format ["%1,%2,%3",GetPosASL player,vectorDir player,vectorUp player]; copyToClipboard _txt;diag_log _txt; 
//copyToClipboard str(GetPosASL Player); systemChat Format ["%1",GetPosASL Player];

// [12697.4,158.103,19.3] upperdeck
// [12715,138.985,9.6] lowerdeck

//_count =  {alive} count AllPlayers;
//systemchat format ["%1",_count];ExileTraderZone
//{_txt = Format ["%1",markerType _x]; systemChat _txt;diag_log _txt;} forEach allMapMarkers; //_markers;
//allMapMarkers
//[] execVM "gpf_troopdrop.sqf";

/*_places = [];
{
 if (typeof _x == "B_Survivor_F") Then {
 _posASL = GetPosASL _x;
 _dir = GetDir _x;
 _txt = Format ['[%1,%2],',_posASL,_dir];
 _places = _places + [[_posASL,_dir]];
 };
} Foreach allUnits;
copyToClipboard Format ['%1',_places];
*/

_places = [
[9166.86,3704.67,5.66516],
[9166.65,3723.58,5.66511],
[9135.14,3722.74,5.70165],
[9134.95,3705.56,5.70165],
[9089.1,3713.59,4.17023],
[9063.87,3715.27,4.16999],
[9056.4,3708.79,7.26196],
[9039.6,3714.77,16.0916],
[9040.28,3704.5,15.7209],
[8998.21,3714,8.98907],
[9091.85,3714.1,8.78219],
[9039.33,3723.74,15.7209]
];
_units = [];
{
  _posASL = _x select 0;
  _dir = _x select 1;
  _group = createGroup east;
  _unit = _group createUnit ["O_G_Sharpshooter_F", _posASL, [], 0, "CAN_COLLIDE"];
  _unit setDir _dir;
  _unit SetPosASL _posASL;
  [_unit,false] execVM "gpf_randomgear.sqf";
  _units = _units + [_unit];
  sleep 1;
} Foreach _places;
