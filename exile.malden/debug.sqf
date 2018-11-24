_configs = "getNumber (_x >> 'scope') >= 2 AND configName _x isKindof 'Car'" configClasses (configFile >> "CfgVehicles");
_classNames = _configs apply {configName _x}; 
{
_txt = format ["%1",_x]; 
diag_log _txt;
} Foreach _classNames;


/*
_path = [];
{ 
 _pos = GetMarkerPos _x;
 _path = _path + [_pos];
} Foreach ["path_00","path_01","path_02","path_03","path_04","path_05","path_06","path_07","path_08","path_09","path_10"];

*/
//hint str(typeOf cursortarget); copyToClipboard str(typeOf cursortarget);
//copyToClipboard str(GetPos Player);

_txt = Format ["%1,%2,%3",GetPosASL player,vectorDir player,vectorUp player]; copyToClipboard _txt;diag_log _txt; 

//[12782.6,85.0975,19]
//[12761,325.057,18]
//[12706,143.824,1.89122],[0.0350701,-0.999385,0],[0,0,1]

// [12697.4,158.103,19.3] upperdeck
// [12715,138.985,9.6] lowerdeck