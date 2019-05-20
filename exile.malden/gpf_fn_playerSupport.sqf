// [player,'B_Heli_Transport_01_camo_F','O_soldier_PG_F'] Call GPF_fnc_playerSupport;
private ["_player"];
private _player = param[0];
private _HeliModel = param[1];
private _Model = param[2];
private _Side = side _player;
private _DropPos = [(GetPos _player),0,100, 10, 0, 0.25, 0, [],(GetPos _player)] call BIS_fnc_findSafePos;
private _Group = group _player;
_oldGroup = _player getVariable "gpf_support_group";
if (!isNil "_oldGroup") Then {
{deleteVehicle _x;} forEach units (_player getVariable "gpf_support_group");
//[_player] join grpNull;
};
playSound "BIS_WL_Airdrop_WEST";
sleep 5;
if (!isNil "_DropHeliV") then {{deleteVehicle _x} foreach crew _DropHeli;deleteVehicle _DropHeliV;};
private _DropHeliSpawn = [_DropPos,900,1000, 5, 1, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
private _DropHeli = [_DropHeliSpawn, 0, _HeliModel, _Side] call bis_fnc_spawnvehicle;
private _DropHeliV = _DropHeli select 0;
private _CargoCount = _DropHeliV emptyPositions "cargo";
private _DropHeliGroup = group _DropHeliV;
private _DropTroopsGroup = [_DropHeliSpawn, _Side,_Model] call BIS_fnc_spawnGroup;
_player setVariable ["gpf_support_group",_DropTroopsGroup,true];
[_player,_DropTroopsGroup] Spawn {_player = _this select 0; _DropTroopsGroup = _this select 1;
	waitUntil { not alive _player };
	{deleteVehicle _x;} foreach units _DropTroopsGroup;
};


{[_x,false,false] execVM "gpf_randomgear.sqf";} foreach units _DropHeliGroup;
{[_x,false,false] execVM "gpf_randomgear.sqf";_x moveInCargo _DropHeliV;/*[_x] join _Group;*/} Foreach units _DropTroopsGroup;
_DropHeliV flyInHeight 30;
//_DropHeliV limitSpeed 100;
_DropHeliV addEventHandler ["GetOut", "_veh = _this Select 0; if (count crew _veh  <= 0) Then {deleteVehicle _veh;}"];
_DropHeliV addEventHandler ["GetOut", "_veh = _this Select 0; _alive = {alive _x} count crew _veh; if (_alive <= 0) Then {deleteVehicle _veh;}"];
//_DropHeliV lock true;
[_DropHeliV] Spawn { _DropHeliV = _this select 0;
	while {alive _DropHeliV} do {
		_DropHeliV SetDamage 0;
		_DropHeliV Setfuel 1;
		_crewAlive = {alive _x} count crew _DropHeliV; 
		if (_crewAlive == 0) Then {deleteVehicle _DropHeliV;};
		sleep 1;
	};
};

_way1 = _DropHeliGroup addWaypoint [_DropPos, 0];
_way1 setWaypointType "MOVE";
_way1 setWaypointBehaviour "CARELESS";
_way1 setWaypointCombatMode "GREEN";
_way1 setWaypointSpeed "FULL";
_way1 setWaypointCompletionRadius 1;
_way1 setWaypointTimeout [8, 9, 10];
//_way1 setWaypointStatements ["true","_veh = vehicle this;_veh limitSpeed 900; _list = (crew _veh) select {(assignedVehicleRole _x) select 0 isEqualTo 'cargo'};{unassignVehicle _x; _x action ['GetOut', vehicle _x];} forEach _list;"];
_way1 setWaypointStatements ["true","_veh = vehicle this;_list = (crew _veh) select {(assignedVehicleRole _x) select 0 isEqualTo 'cargo'};{doGetOut _x;[_x] orderGetIn false;} forEach _list;_veh lock true;"];
_Signal = "SmokeShellPurple" createVehicle _DropPos;
systemChat Format ["%1 Support units on route to %2.EXPERIMENTAL!",_Model,name _player];

_way2Pos = [_DropPos,2000,2500, 5, 1, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_way2 = _DropHeliGroup addWaypoint [_way2Pos, 0];
_way2 setWaypointType "MOVE";
_way2 setWaypointBehaviour "CARELESS";
_way2 setWaypointCombatMode "GREEN";
_way2 setWaypointSpeed "FULL";
_way2 setWaypointCompletionRadius 1000;
_way2 setWaypointStatements ["true", "_veh = vehicle this; _grp = group this;{deleteVehicle _x;} forEach units _grp; deleteVehicle _veh;"];

waitUntil {((_DropHeliV emptyPositions "cargo") == _CargoCount) or (!alive _DropHeliV)};
_DropHeliV lock true;

//[_player] join _DropTroopsGroup;
//_DropTroopsGroup selectLeader _player;

[_player] Spawn {_player = _this select 0;
private _DropTroopsGroup = _player getVariable "gpf_support_group";

  _GetInVehicle = {_unit = _this select 0; _veh = _this select 1;
	if ((typeof _unit) != "Exile_Unit_Player") Then {
		if ((_veh emptyPositions "Gunner") > 0) Then {_unit assignAsGunner _veh;[_unit]allowGetIn true;[_unit] orderGetIn true;/*_unit moveInGunner _veh;*/};
		if ((_veh emptyPositions "Commander") > 0) Then {_unit assignAsCommander _veh;[_unit]allowGetIn true;[_unit] orderGetIn true;/*_unit moveInCommander _veh;*/};
		if ((_veh emptyPositions "Cargo") > 0) Then {_unit assignAsCargo _veh;[_unit]allowGetIn true;[_unit] orderGetIn true;/*_unit moveInCargo _veh;*/};
		if ((leader group _unit) == _unit) Then {};
	};
  };
   _GetOutVehicle = {_unit = _this select 0; _veh = _this select 1;
	//if ((typeof _unit) != "Exile_Unit_Player") Then {
	unassignVehicle _unit;
	doGetOut _unit;
	//commandGetOut _unit;
	[_unit] orderGetIn false;
	//doStop _unit;
	//};
  };
  
  _followPlayer = { _unit = _this select 0;_player = _this select 1;
	//doStop _unit;
	_unit doFollow _player;
  };
  //{[_x,_player] call _followPlayer;} foreach units _DropTroopsGroup;
  private _cnt  =  {if (!isplayer _x) then {alive _x};} count units _DropTroopsGroup;
  while {(_cnt > 0)} Do {
    //systemChat format ["alive -%1",_cnt];
	 if ((vehicle _player) != _player) then {
	 		
				{
					if ((vehicle _x) != (vehicle _player)) then {[_x,(vehicle _player)] call _GetInVehicle;};
				} foreach units _DropTroopsGroup;
	 		
	 };
	 
	 if ((vehicle _player) == _player) then {
	 		{
	 		if ((vehicle _x) != _x) then {
	 			[_x,(vehicle _player)] call _GetOutVehicle;
	 			} else {
	 			
	 			};
	 		} foreach units _DropTroopsGroup;
	 };
	

	//_DropTroopsGroup setFormation "WEDGE";
	sleep 1;
	_cnt  =  {if (!isplayer _x) then {alive _x};} count units _DropTroopsGroup;
	};
};


[_player] Spawn {_player = _this select 0;
private _DropTroopsGroup = _player getVariable "gpf_support_group";
private _cnt  =  {if (!isplayer _x) then {alive _x};} count units _DropTroopsGroup;
	while {(_cnt > 0)} Do {
			if ((vehicle _player) == _player) then {
				while {(count (waypoints _DropTroopsGroup)) > 0} do
				{
					deleteWaypoint ((waypoints _DropTroopsGroup) select 0);
				};
				
				if (!(surfaceIsWater GetPos _player)) Then {

					private _pos = GetPos _player;
					_way = _DropTroopsGroup addWaypoint [_pos, 0];
					_way setWaypointType "Move";
					_way setWaypointSpeed "FULL";
					};
			
			
		};
	_cnt  =  {if (!isplayer _x) then {alive _x};} count units _DropTroopsGroup;
	sleep 10;
	};
};