// [_DropPos,_HeliModel,_Side,_Model,_timeout,_patrol] Call GPF_fnc_TroopDrop;
private ["_DropPos","_HeliModel","_Side","_Model","_DropHeliSpawn","_DropHeli","_DropHeliV","_DropHeliGroup","_DropTroopsGroup","_way1","_way2","_way2Pos","_models"];
// Find a victim

while {!deathsqdon} Do {
waituntil {((count AllPlayers) > 0)};
_vic = SelectRandom AllPlayers; systemchat Format ["%1",name _vic];
if (alive _vic) then {
    _notNearTrader = true;
    {if ((_vic distance GetMarkerPos _x) < 75) Then {_notNearTrader = false;}} Foreach allMapMarkers;
    if (_notNearTrader) then {systemchat "its on";deathsqdon = true;publicVariable "deathsqdon";};
    if (deathsqdon) then {dsVictim = _vic;publicVariable "dsVictim";};
	} Else {deathsqdon = false; publicVariable "deathsqdon";};
sleep 5;
};

systemchat Format ["is %1 Alive? %2",name dsVictim,alive dsVictim];
["InfoTitleAndText", ["Death Squad!",format ["A death squad hs been sent for %1",name dsVictim]]] call ExileClient_gui_toaster_addTemplateToast;
waitUntil {deathsqdon};

// spawn the bandits
_vic = dsVictim;
_DropPos = GetPos _vic;
_HeliModel = SelectRandom ["O_Heli_Transport_04_bench_F"];
_Side = East;
_Model = ["O_G_Sharpshooter_F"];
_Timeout = 600;
_patrol = false;
_models = 6;//[(SelectRandom _Model),(SelectRandom _Model),(SelectRandom _Model),(SelectRandom _Model),(SelectRandom _Model),(SelectRandom _Model)];
_DropHeliSpawn = [_DropPos,900,1000, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_DropHeli = [_DropHeliSpawn, 0, _HeliModel,_Side] call bis_fnc_spawnvehicle;
_DropHeliV = _DropHeli select 0;
_DropHeliGroup = group _DropHeliV;
_DropTroopsGroup = [_DropHeliSpawn, _Side,_models] call BIS_fnc_spawnGroup;
{[_x,true] execVM "gpf_randomgear.sqf";} foreach units _DropTroopsGroup;
{removeBackpack _x;_x addBackpack "B_Parachute";} foreach units _DropTroopsGroup;

if (_patrol) then {[_DropTroopsGroup, _DropPos, 50,[]] call BIS_fnc_taskPatrol;} else {
 [_vic,_DropTroopsGroup] Spawn { _vic = _this select 0; _DropTroopsGroup = _this select 1;
  while {deathsqdon} Do {Sleep 30;
    if (alive _vic) then { 
    _notNearTrader = true;{if ((_vic distance GetMarkerPos _x) < 75) Then {_notNearTrader = false;}} Foreach allMapMarkers;
	if (_notNearTrader) then {_DropPos = GetPos _vic; 
	                         _way = _DropTroopsGroup addWaypoint [_DropPos, 0];
	                         _way setWaypointType "Move";
	                         _way setWaypointSpeed "FULL";
							 } Else {deathsqdon = false; publicVariable "deathsqdon";};
	} Else {deathsqdon = false; publicVariable "deathsqdon";};
  };
 }; 
};

{_x moveInCargo _DropHeliV;} Foreach units _DropTroopsGroup;
_DropHeliV flyInHeight 100;

_way1 = _DropHeliGroup addWaypoint [_DropPos, 0];
_way1 setWaypointType "MOVE";
_way1 setWaypointBehaviour "CARELESS";
_way1 setWaypointCombatMode "GREEN";
_way1 setWaypointSpeed "FULL";
_way1 setWaypointCompletionRadius 300;
_way1 setWaypointStatements ["true","_veh = vehicle this;_list = (crew _veh) select {(assignedVehicleRole _x) select 0 isEqualTo 'cargo'};{unassignVehicle _x; _x action ['GetOut', vehicle _x]} forEach _list;"];

_way2Pos = [_DropPos,2000,2500, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
_way2 = _DropHeliGroup addWaypoint [_way2Pos, 0];
_way2 setWaypointType "MOVE";
_way2 setWaypointBehaviour "CARELESS";
_way2 setWaypointCombatMode "GREEN";
_way2 setWaypointSpeed "FULL";
_way2 setWaypointCompletionRadius 100;
_way2 setWaypointStatements ["true", "_veh = vehicle this; _veh SetDamage 1; _grp = group this;{deleteVehicle _x;} forEach units _grp"];

if (_Timeout > 0) Then {
   [_Timeout,_DropTroopsGroup,_DropHeliGroup,_DropHeliV]Spawn { _Timeout = _this select 0;_DropTroopsGroup = _this select 1;_DropHeliGroup = _this	select 2; _DropHeliV = _this select 3;
   Sleep _Timeout; 
   deathsqdon = false;publicVariable "deathsqdon";
   };
};
[_Timeout,_DropTroopsGroup,_DropHeliGroup,_DropHeliV]Spawn { _Timeout = _this select 0;_DropTroopsGroup = _this select 1;_DropHeliGroup = _this	select 2; _DropHeliV = _this select 3;
waitUntil {!deathsqdon};
   {deleteVehicle _x;}foreach units _DropTroopsGroup;
   {deleteVehicle _x;}foreach units _DropHeliGroup;
   deleteVehicle _DropHeliV;
   dsVictim = nil;publicVariable "dsVictim";
};
_DropTroopsGroup 