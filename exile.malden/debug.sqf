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


// [12697.4,158.103,19.3] upperdeck
// [12715,138.985,9.6] lowerdeck

//_count =  {alive} count AllPlayers;
//systemchat format ["%1",_count];ExileTraderZone
playerQuad = false;
missionon = true;
dsVictim = nil;
//waitUntil {!isNil "missionon"};

[] Spawn { 
 while {missionon} Do {
 waitUntil {!isNil "dsVictim"};
 waitUntil {deathsqdon};
 sleep 10;
 SystemChat Format ["A death squad as been sent after %1",name dsVictim];
 waitUntil {!deathsqdon};
 };
};

//{_txt = Format ["%1",markerType _x]; systemChat _txt;diag_log _txt;} forEach allMapMarkers; //_markers;
//allMapMarkers
//[] execVM "gpf_troopdrop.sqf";

