_EvacPos = _this Select 0;
_TargetPos = _this Select 1;
_Side = _this Select 2;
_Model = _this Select 3;
_Wait = _this Select 4;

_EvacHeliSpawn = [_EvacPos,1000,1100, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_EvacHeli = [_EvacHeliSpawn, 0, _Model, _Side] call bis_fnc_spawnvehicle;
_EvacHeliV = _EvacHeli select 0;
_EvacHeliGroup = group _EvacHeliV;
_EvacPosMarker = createMarkerLocal ["EvacPoint",_EvacPos]; _EvacPosMarker setMarkerTextLocal "Landing Zone.";_EvacPosMarker setMarkerTypeLocal "hd_pickup";
_TargetPosMarker = createMarkerLocal ["DropPoint",_TargetPos]; _TargetPosMarker setMarkerTextLocal "Drop Zone."; _TargetPosMarker setMarkerTypeLocal "hd_arrow";
_HeliPadE = "Land_HelipadEmpty_F" createVehicle _EvacPos; 
[_EvacHeliV,_HeliPadE,_EvacPosMarker] spawn {_EvacHeliV =_this select 0;_HeliPadE =_this select 1;_EvacPosMarker = _this select 2;
        while {(alive _HeliPadE)} Do {
		  if ((_HeliPadE distance _EvacHeliV) < 1) Then {sleep 10;DeleteVehicle _HeliPadE;deleteMarker _EvacPosMarker;};
		  sleep 1;
		  };
};
_HeliPadT = "Land_HelipadEmpty_F" createVehicle _TargetPos; 
[_EvacHeliV,_HeliPadT,_TargetPosMarker] spawn {_EvacHeliV =_this select 0;_HeliPadT =_this select 1;_TargetPosMarker =_this select 2;
        while {(alive _HeliPadT)} Do { 
		  if ((_HeliPadT distance _EvacHeliV) < 1) Then {sleep 10;DeleteVehicle _HeliPadT;deleteMarker _TargetPosMarker;};
		  sleep 1;
		  };

};
_Signal = "SmokeShellPurple" createVehicle _EvacPos;

_way1 = _EvacHeliGroup addWaypoint [_EvacPos, 0];
_way1 setWaypointType "TR UNLOAD";
_way1 setWaypointBehaviour "CARELESS";
_way1 setWaypointCombatMode "GREEN";
_way1 setWaypointSpeed "FULL";
_way1 setWaypointCompletionRadius 1;
_way1 setWaypointTimeout _Wait;

_way2 = _EvacHeliGroup addWaypoint [_TargetPos, 0];
_way2 setWaypointType "TR UNLOAD";
_way2 setWaypointBehaviour "CARELESS";
_way2 setWaypointCombatMode "GREEN";
_way2 setWaypointSpeed "FULL";
_way2 setWaypointCompletionRadius 1;

_way3Pos = [_TargetPos,3000,4000, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_way3 = _EvacHeliGroup addWaypoint [_way3Pos, 0];
_way3 setWaypointType "MOVE";
_way3 setWaypointBehaviour "CARELESS";
_way3 setWaypointCombatMode "GREEN";
_way3 setWaypointSpeed "FULL";
_way3 setWaypointCompletionRadius 10;
_way3 setWaypointTimeout _Wait;
_way3 setWaypointStatements ["true", "_veh = vehicle this; _veh SetDamage 1; _grp = group this;{deleteVehicle _x;} forEach units _grp"];

[_EvacHeliV ] Spawn {_EvacHeliV = _this select 0:sleep 300;_EvacHeliV SetDamage 1;};
_markers = [_EvacPosMarker,_TargetPosMarker];
_vehicles = [_EvacHeliV,_HeliPadE,_HeliPadT];
[_vehicles,_markers] Spawn {
       _vehicles = _this select 0;
	   _markers = _this select 1;
       _EvacHeliV = _vehicles select 0;
       _HeliPadE = _vehicles select 1;
	   _HeliPadT = _vehicles select 2;
	   waitUntil {not alive _EvacHeliV};
	   _EvacHeliV SetDamage 1;
	   {deleteVehicle _x} foreach _vehicles;
	   {deleteMarkerLocal _x} foreach _markers;
};

_vehicles 