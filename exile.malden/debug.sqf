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

_places = [];
{
 if (typeof _x == "I_HMG_01_high_F") Then {
 _posASL = GetPosASL _x;
 _dir = GetDir _x;
 _txt = Format ['[%1],',_posASL,_dir];
 _places = _places + [_posASL];
 };
} Foreach allUnits;
copyToClipboard Format ['%1',_places];

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
