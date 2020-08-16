_EastLightBoat = ["C_Boat_Transport_02_F","C_Boat_Transport_02_F","C_Boat_Transport_02_F","C_Boat_Transport_02_F","I_Boat_Armed_01_minigun_F","C_Boat_Transport_02_F","C_Boat_Transport_02_F","C_Boat_Transport_02_F","C_Boat_Transport_02_F","C_Boat_Transport_02_F"];
				 
_WestLightBoat = [];

_ResLightBoat = [];

private _GetWayPontPos = compile preprocessFile "gpf_roamingpaths.sqf";
private  _Path = [[7217.13,12769.4,0],[6856.39,12253.8,0],[6270.91,11611.9,0],[5051.25,12373.3,0],[4613.44,10915.5,0],[4208.21,10042.6,0],[3640.96,9755.01,0],[3074.59,9320.72,0],[2893.24,8657.39,0],[2420.88,7388.36,0],[2134.57,6808.49,0],[1955.96,6054.38,0],[1396.69,5493.31,0],[332.578,4620.36,0],[1443.77,3495.02,0],[1228.53,2488.03,0],[1123.34,1705.66,0],[808.43,1365.96,0],[802.571,763.4,0],[904.107,73.024,0],[1538.59,517.567,0],[2512.45,1831.74,0],[3317.43,3075.78,0],[3710.91,2031.33,0],[4316.12,1768.81,0],[4630.1,1948.23,0],[4605.26,1306.64,0],[5019.15,1025.27,0],[5552.02,1134.74,0],[5348.77,1855.16,0],[5724.98,2216.85,0],[6153.65,1898.69,0],[6589.73,2049.23,0],[6766.53,1980.19,0],[7134.92,2377.61,0],[7569.18,2539.47,0],[7699.79,2766.09,0],[7494.45,3464.89,0],[7688.63,3076.44,0],[8275.82,2710.27,0],[8667.66,3111.04,0],[8722.09,3598.85,0],[9004.1,3600.11,0],[9116.43,3048.53,0],[9819.72,2646.64,0],[10408,2510.75,0],[10338.9,2898.8,0],[10280.4,3592.16,0],[11244.2,3610.05,0],[11973.1,3943.83,0],[12406.3,4125.8,0],[12227.7,4526.56,0],[12056.9,4971.99,0],[11496.5,4985.38,0],[11016.4,4982.03,0],[10729.5,4883.8,0],[10104.4,4716.34,0],[10116.7,4419.4,0],[9641.1,4785.56,0],[9277.17,4711.88,0],[9165.54,4322.27,0],[9072.88,3950.53,0],[8759.19,3961.69,0],[8418.7,4375.86,0],[8318.23,4735.32,0],[8582.81,4710.76,0],[8595.09,5084.74,0],[8633.04,5914.18,0],[9027.06,6675.17,0],[9147.52,8090.66,0],[8496.69,8559.52,0],[8704.33,9281.8,0],[8651.86,10067.7,0],[8842.75,10536.6,0],[8452.03,11148.3,0],[8091.45,11495.5,0],[8205.32,11859.4,0],[7218.11,11725.2,0],[7432.78,12010.5,0],[7253.78,12417.3,0],[7373.79,12775.3,0],[7217.13,12769.4,0]];

private _startpos = _Path select 0;
private _count = count _Path;
patrolon = patrolon+1; publicVariable "patrolon";
private _Side = east;
private _Model = [];
private _Timeout = 60*90;
_invert = SelectRandom [true,false];
if (_invert) then {reverse _Path;};

if (_Side == west) Then {_Model = SelectRandom _WestLightBoat;};
if (_Side == east) Then {_Model = SelectRandom _EastLightBoat;}; 
if (_Side == resistance) Then {_Model = SelectRandom _ResLightBoat;};

private _Safepos = _startpos;//[_startpos,0,100, 10, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
private _SeaPatrolBoat = [_Safepos, 0, _Model, _Side] call bis_fnc_spawnvehicle; //_SeaPatrolBoat setVariable ["ExileOwnerUID", nil];
private _SeaPatrolBoatV = _SeaPatrolBoat select 0; _SeaPatrolBoatV setVariable ["ExileIsPersistent", false];
private _SeaPatrolBoatGroup = group _SeaPatrolBoatV; 
private _crew = crew _SeaPatrolBoatV;
(driver _SeaPatrolBoatV) action ["lightOn", _SeaPatrolBoatV];
private _CargoGroup = [ getPos _SeaPatrolBoatV, EAST, 5] call BIS_fnc_spawnGroup;
{[_x] join _SeaPatrolBoatGroup; _x moveincargo _SeaPatrolBoatV;} Foreach units _CargoGroup;

//player moveincargo _SeaPatrolBoatV;

{[_x,false,true] execVM "gpf_randomgear.sqf";} ForEach units _SeaPatrolBoatGroup;

[_SeaPatrolBoatV] Spawn{_SeaPatrolBoatV = _this select 0;
   while {alive _SeaPatrolBoatV} Do {
       {
        if (!alive _x) Then { _pos = GetPos _SeaPatrolBoatV;_x SetPos _pos;};
       } foreach crew _SeaPatrolBoatV;
    _SeaPatrolBoatV setFuel 1;
    sleep 10;
    };
};


{
  _way = _SeaPatrolBoatGroup addWaypoint [_x, 0];
  _way setWaypointType "MOVE";
  _way setWaypointBehaviour "AWARE";
  _way setWaypointCombatMode "RED";
  _way setWaypointSpeed "NORMAL";
  _way setWaypointCompletionRadius 50;
} foreach _Path;

_way = _SeaPatrolBoatGroup addWaypoint [(_Path Select _count-1), 0];
_way setWaypointType "MOVE";
_way setWaypointBehaviour "AWARE";
_way setWaypointCombatMode "RED";
_way setWaypointSpeed "NORMAL";
_way setWaypointCompletionRadius 50;
_way setWaypointStatements ["true", "_veh = Vehicle this; {deleteVehicle _x;} ForEach crew _veh; deleteVehicle _veh;SeaPatrolon = SeaPatrolon-1; publicVariable 'SeaPatrolon';"];

[_SeaPatrolBoatV] Spawn {
    _SeaPatrolBoatV = _this select 0;
	_SeaPatrolBoatGroup = group _SeaPatrolBoatV;
	_leader = leader _SeaPatrolBoatGroup;
	_lv = vehicle _leader;
	_side = side _leader;
	_pos = Getpos _leader;
	_type = Typeof _lv;
    _txt = Format["%1",_type];
    _smc = "colorwhite";
	_pos = Getpos _leader;
	if (_Side == west ) Then {_smc = "ColorWEST";};
	if (_Side == east ) Then {_smc = "ColorEAST";};
	if (_Side == resistance ) Then {_smc = "ColorGUER";};

 while {alive _leader} Do {
    _leader = leader _SeaPatrolBoatGroup;
	_lv = vehicle _leader;
    _pos = Getpos _leader;
	_type = Typeof _lv;
	_txt = Format["%1",_type];
	sleep 1;
  };

  SeaPatrolon = SeaPatrolon-1; publicVariable "SeaPatrolon";
};



[_SeaPatrolBoatV,_Timeout,_crew] Spawn {
    _SeaPatrolBoatV = _this Select 0; 
	_Timeout = _this select 1; 
	_crew = _this select 2;
	_grp = group _SeaPatrolBoatV;
    Sleep _Timeout;
	{deleteVehicle _x;} foreach units _grp;
    {deleteVehicle _x;} foreach _crew;
    //If ((count (crew _SeaPatrolBoatV)) == 0) Then {deleteVehicle _SeaPatrolBoatV;};	
};

//_output = [_crew,_SeaPatrolBoatV];
//_output;