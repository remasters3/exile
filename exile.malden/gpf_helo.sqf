private _centerWorld =  [5491.72,6267.94,0];
private _timeout = 600;
private _maxunits = 60;
private _allPlaces = nearestLocations [_centerWorld, ["NameCity"], 20000];
private _places = [];
{_nl = locationPosition _x;_places = _places + [_nl];} Foreach _allPlaces;

_EastLightVeh = ["B_Heli_Transport_01_F","B_Heli_Transport_03_F"];
private _startpos = [7921.2,4094.34,0];

heloOn = heloOn+1; publicVariable "heloOn";
private _Side = east;
private _Model = [];
private _Timeout = 60*30;

if (_Side == west) Then {_Model = SelectRandom _WestLightVeh;};
if (_Side == east) Then {_Model = SelectRandom _EastLightVeh;};
if (_Side == resistance) Then {_Model = SelectRandom _ResLightVeh;};  

private _Safepos = SelectRandom _places; //[_startpos,10,200, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
private _Helo = [_Safepos, 0, _Model, _Side] call bis_fnc_spawnvehicle; 
private _HeloV = _Helo select 0; 
private _HeloGroup = group _HeloV;
private _crew = crew _HeloV;
_HeloV setVariable ["ExileIsPersistent", false];
{ 
 [_x,true,true,true] execVM "gpf_randomgear.sqf"; 
} forEach _crew;

private _pplace = SelectRandom _places;
[_HeloGroup,_pplace,3000] call bis_fnc_taskPatrol;

[_HeloV] Spawn {
    _HeloV = _this select 0;
	_HeloGroup = group _HeloV;
	_leader = leader _HeloGroup;
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
    _leader = leader _HeloGroup;
	_lv = vehicle _leader;
    _pos = Getpos _leader;
	_type = Typeof _lv;
	_txt = Format["%1",_type];
	sleep 1;
  };
  heloOn = heloOn-1; publicVariable "heloOn";
};

[_HeloV,_Timeout,_crew] Spawn {
    _HeloV = _this Select 0; 
	_Timeout = _this select 1; 
	_crew = _this select 2;
	_grp = group _HeloV;
    Sleep _Timeout;
	{deleteVehicle _x;} foreach units _grp;
    {deleteVehicle _x;} foreach _crew;
    //If ((count (crew _HeloV)) == 0) Then {deleteVehicle _HeloV;};	
};
