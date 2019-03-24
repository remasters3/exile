_EastLightVeh = ["Exile_Car_Tempest","Exile_Car_Zamak"];
				 
_WestLightVeh = [];

_ResLightVeh = [];

private _GetWayPontPos = compile preprocessFile "gpf_roamingpaths.sqf";
private _Path = Call _GetWayPontPos;
private _startpos = _Path select 0;
private _count = count _Path;

troopson = troopson+1; publicVariable "troopson";
private _Side = east;
private _Model = [];
private _Timeout = 60*30;

if (_Side == west) Then {_Model = SelectRandom _WestLightVeh;};
if (_Side == east) Then {_Model = SelectRandom _EastLightVeh;}; 
if (_Side == resistance) Then {_Model = SelectRandom _ResLightVeh;};  

_Safepos = _startpos;
_TroopTruck = [_Safepos, 0, _Model, _Side] call bis_fnc_spawnvehicle; //_TroopTruck setVariable ["ExileOwnerUID", nil];
_TroopTruckV = _TroopTruck select 0; _TroopTruckV setVariable ["ExileIsPersistent", false];
_TroopTruckGroup = group _TroopTruckV;
_crew = crew _TroopTruckV;
(driver _TroopTruckV) action ["lightOn", _TroopTruckV];

_grp = [ _startpos, EAST, 12] call BIS_fnc_spawnGroup;
{[_x] join _TroopTruckGroup; _x moveInCargo _TroopTruckV; } ForEach units _grp;

{[_x,false,true] execVM "gpf_randomgear.sqf";} ForEach units _TroopTruckGroup;

[_TroopTruckV] Spawn{_TroopTruckV = _this select 0;
   while {alive _TroopTruckV} Do {
       {
        if (!alive _x) Then { _pos = GetPos _TroopTruckV;_x SetPos _pos;};
       } foreach crew _TroopTruckV;
    sleep 10;
    };
};

{
  _way = _TroopTruckGroup addWaypoint [_x, 0];
  _way setWaypointType "MOVE";
  _way setWaypointBehaviour "AWARE";
  _way setWaypointCombatMode "RED";
  _way setWaypointSpeed "NORMAL";
  _way setWaypointCompletionRadius 50;
} foreach _Path;

_way = _TroopTruckGroup addWaypoint [(_Path Select _count-1), 0];
_way setWaypointType "MOVE";
_way setWaypointBehaviour "AWARE";
_way setWaypointCombatMode "RED";
_way setWaypointSpeed "NORMAL";
_way setWaypointCompletionRadius 50;
_way setWaypointStatements ["true", "_veh = Vehicle this; {deleteVehicle _x;} ForEach crew _veh; deleteVehicle _veh;troopson = troopson-1; publicVariable 'troopson';"];

[_TroopTruckV] Spawn {
    _TroopTruckV = _this select 0;
	_TroopTruckGroup = group _TroopTruckV;
	_leader = leader _TroopTruckGroup;
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
    _leader = leader _TroopTruckGroup;
	_lv = vehicle _leader;
    _pos = Getpos _leader;
	_type = Typeof _lv;
	_txt = Format["%1",_type];
	sleep 1;
  };

  troopson = troopson-1; publicVariable "troopson";
};



[_TroopTruckV,_Timeout,_TroopTruckGroup] Spawn {
    _TroopTruckV = _this Select 0; 
	_Timeout = _this select 1; 
	_grp = _this select 2;
	_crew = crew _TroopTruckV;

    Sleep _Timeout;
	{deleteVehicle _x;} foreach units _grp;
    {deleteVehicle _x;} foreach _crew;
    //If ((count (crew _TroopTruckV)) == 0) Then {deleteVehicle _TroopTruckV;};	
};

//_output = [_crew,_TroopTruckV];
//_output;