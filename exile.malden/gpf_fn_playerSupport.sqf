// [player,'B_Heli_Transport_01_camo_F','O_soldier_PG_F'] Call GPF_fnc_playerSupport;
private ["_player"];
_player = param[0];
_HeliModel = param[1];
_Model = param[2];

_Side = side _player;
_DropPos = GetPos _player;
_Group = group _player;
{ if (!isPlayer _x) Then {deleteVehicle _x;}; } forEach units _Group;
if (!isNull _DropHeliV) then {{deleteVehicle _x} foreach crew _DropHeli;deleteVehicle _DropHeliV;};
_DropHeliSpawn = [_DropPos,900,1000, 5, 1, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_DropHeli = [_DropHeliSpawn, 0, _HeliModel, _Side] call bis_fnc_spawnvehicle;
_DropHeliV = _DropHeli select 0;
_CargoCount = _DropHeliV emptyPositions "cargo";
_DropHeliGroup = group _DropHeliV;
_DropTroopsGroup = [_DropHeliSpawn, _Side,_Model] call BIS_fnc_spawnGroup;
{[_x,false,true] execVM "gpf_randomgear.sqf";} foreach units _DropHeliGroup;
{[_x,false,true] execVM "gpf_randomgear.sqf";_x moveInCargo _DropHeliV;[_x] join _Group;} Foreach units _DropTroopsGroup;
_DropHeliV flyInHeight 100;
_DropHeliV limitSpeed 100;
_DropHeliV addEventHandler ["GetOut", "_veh = _this Select 0; if (count crew _veh  <= 0) Then {deleteVehicle _veh;}"];
_DropHeliV addEventHandler ["GetOut", "_veh = _this Select 0; _alive = {alive _x} count crew _veh; if (_alive <= 0) Then {deleteVehicle _veh;}"];

_way1 = _DropHeliGroup addWaypoint [_DropPos, 0];
_way1 setWaypointType "MOVE";
_way1 setWaypointBehaviour "CARELESS";
_way1 setWaypointCombatMode "GREEN";
_way1 setWaypointSpeed "FULL";
_way1 setWaypointCompletionRadius 1;
_way1 setWaypointTimeout [8, 9, 10];
//_way1 setWaypointStatements ["true","_veh = vehicle this;_veh limitSpeed 900; _list = (crew _veh) select {(assignedVehicleRole _x) select 0 isEqualTo 'cargo'};{unassignVehicle _x; _x action ['GetOut', vehicle _x];} forEach _list;"];
_way1 setWaypointStatements ["true","_veh = vehicle this;_list = (crew _veh) select {(assignedVehicleRole _x) select 0 isEqualTo 'cargo'};{doGetOut _x;} forEach _list;"];


_way2Pos = [_DropPos,2000,2500, 5, 1, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_way2 = _DropHeliGroup addWaypoint [_way2Pos, 0];
_way2 setWaypointType "MOVE";
_way2 setWaypointBehaviour "CARELESS";
_way2 setWaypointCombatMode "GREEN";
_way2 setWaypointSpeed "FULL";
_way2 setWaypointCompletionRadius 1000;
_way2 setWaypointStatements ["true", "_veh = vehicle this; _grp = group this;{deleteVehicle _x;} forEach units _grp; deleteVehicle _veh;"];

[_DropHeliV] Spawn { _DropHeliV = _this select 0;
	while {alive _DropHeliV} do {
		_DropHeliV SetDamage 0;
		_DropHeliV Setfuel 1;
		_crewAlive = {alive _x} count crew _DropHeliV; 
		if (_crewAlive == 0) Then {deleteVehicle _DropHeliV;};
		sleep 1;
	};
};

waitUntil {((_DropHeliV emptyPositions "cargo") == _CargoCount) or (!alive _DropHeliV)};
[_player] Spawn {_player = _this select 0;

  _GetInVehicle = {_unit = _this select 0; _veh = _this select 1;
	if ((typeof _unit) != "Exile_Unit_Player") Then {
	if ((_veh emptyPositions "Gunner") > 0) Then {_unit assignAsGunner _veh;/*[_unit]allowGetIn true;[_unit] orderGetIn true;*/_unit moveInGunner _veh;};/*_unit moveInGunner _veh;*/
	if ((_veh emptyPositions "Commander") > 0) Then {_unit assignAsCommander _veh;/*[_unit]allowGetIn true;[_unit] orderGetIn true;*/_unit moveInCommander _veh;};/*_unit moveInCommander _veh;*/
	if ((_veh emptyPositions "Cargo") > 0) Then {_unit assignAsCargo _veh;/*[_unit]allowGetIn true;[_unit] orderGetIn true;*/_unit moveInCargo _veh;};/*_unit moveInCargo _veh;*/
	};
  };
  _GetOutVehicle = {_unit = _this select 0; _veh = _this select 1;
	//if ((typeof _unit) != "Exile_Unit_Player") Then {
	unassignVehicle _unit;
	doGetOut _unit;
	commandGetOut _unit;
	doStop _unit;
	_unit doFollow _player;
	//[_unit] orderGetIn false;
	//commandGetOut _unit;
	//};
  };
  _cnt  =  {if (!isplayer _x) then {alive _x};} count units group _player;
  while {(_cnt > 0)} Do {
    systemChat format ["alive -%1",_cnt];
	if ((vehicle _player) != _player) then { {[_x,(vehicle _player)] call _GetInVehicle;} foreach units group _player;
	} Else {
	{
	 if ((vehicle _x) != _x) Then {[_x] Call _GetOutVehicle;};
	} Foreach units group _player; 
	group _player setFormation "STAG COLUMN";
	};
	sleep 1;
	_cnt  =  {if (!isplayer _x) then {alive _x};} count units group _player;
	};
	
};