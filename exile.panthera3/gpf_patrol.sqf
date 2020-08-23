_EastLightVeh = ["Exile_Car_Offroad_Armed_Guerilla11","Exile_Car_HMMWV_M2_Desert"];
				 
_WestLightVeh = ["Exile_Car_SUV_Armed_Black","B_LSV_01_armed_F",];
_WestLightVeh = _WestLightVeh+["Exile_Car_HMMWV_M2_Desert"];

_ResLightVeh = [];

private _GetWayPontPos = compile preprocessFile "gpf_roamingpaths.sqf";
private _Path = Call _GetWayPontPos;
private _startpos = _Path select 0;
private _count = count _Path;
patrolon = patrolon+1; publicVariable "patrolon";
private _Side = SelectRandom [West];
private _Model = [];
private _Timeout = 60*30;

if (_Side == west) Then {_Model = SelectRandom _WestLightVeh;};
if (_Side == east) Then {_Model = SelectRandom _EastLightVeh;}; 
if (_Side == resistance) Then {_Model = SelectRandom _ResLightVeh;};  





_Safepos = [_startpos,0,100, 10, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_PatrolCar = [_Safepos, 0, _Model, _Side] call bis_fnc_spawnvehicle; //_PatrolCar setVariable ["ExileOwnerUID", nil];
_PatrolCarV = _PatrolCar select 0; _PatrolCarV setVariable ["ExileIsPersistent", false];
_PatrolCarGroup = group _PatrolCarV; 
_crew = crew _PatrolCarV;
(driver _PatrolCarV) action ["lightOn", _PatrolCarV];


{[_x,false,true] execVM "gpf_randomgear.sqf";} ForEach _crew;

[_PatrolCarV] Spawn{_PatrolCarV = _this select 0;
   while {alive _PatrolCarV} Do {
       {
        if (!alive _x) Then { _pos = GetPos _PatrolCarV;_x SetPos _pos;};
       } foreach crew _PatrolCarV;
    sleep 10;
    };
};


{
  _way = _PatrolCarGroup addWaypoint [_x, 0];
  _way setWaypointType "MOVE";
  _way setWaypointBehaviour "AWARE";
  _way setWaypointCombatMode "RED";
  _way setWaypointSpeed "NORMAL";
  _way setWaypointCompletionRadius 50;
} foreach _Path;

_way = _PatrolCarGroup addWaypoint [(_Path Select _count-1), 0];
_way setWaypointType "MOVE";
_way setWaypointBehaviour "AWARE";
_way setWaypointCombatMode "RED";
_way setWaypointSpeed "NORMAL";
_way setWaypointCompletionRadius 50;
_way setWaypointStatements ["true", "_veh = Vehicle this; {deleteVehicle _x;} ForEach crew _veh; deleteVehicle _veh;patrolon = patrolon-1; publicVariable 'patrolon';"];

[_PatrolCarV] Spawn {
    _PatrolCarV = _this select 0;
	_PatrolCarGroup = group _PatrolCarV;
	_leader = leader _PatrolCarGroup;
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
 	_driver = driver _PatrolCarV ;
     if (!isPlayer _driver) Then {_PatrolCarV  SetDamage 0;};
    _leader = leader _PatrolCarGroup;
	_lv = vehicle _leader;
    _pos = Getpos _leader;
	_type = Typeof _lv;
	_txt = Format["%1",_type];
	sleep 1;
  };

  patrolon = patrolon-1; publicVariable "patrolon";
};



[_PatrolCarV,_Timeout,_crew] Spawn {
    _PatrolCarV = _this Select 0; 
	_Timeout = _this select 1; 
	_crew = _this select 2;
	_grp = group _PatrolCarV;
    Sleep _Timeout;
	{deleteVehicle _x;} foreach units _grp;
    {deleteVehicle _x;} foreach _crew;
    //If ((count (crew _PatrolCarV)) == 0) Then {deleteVehicle _PatrolCarV;};	
};

//_output = [_crew,_PatrolCarV];
//_output;