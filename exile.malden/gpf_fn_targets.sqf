// _Barraks_00 = [_ShooterPos,_inc,_UnitsPerRun,_RespawnTime,_Side,_TroopModels,_Direction,_Timeout,_Veh,_player] Call GPF_fnc_target;
private ["_ShooterPos","_inc","_UnitsPerRun","_RespawnTime","_UnitSide","_Model","_dir","_Timeout","_Veh","_Count","_units","_BarraksGroup"];
_ShooterPos  = param[0];
_inc = param[1];
_UnitsPerRun = param[2];
_RespawnTime = param[3];
_UnitSide = param[4];
_Model = param[5];
_dir = param[6];
_Timeout = param[7];
_Veh = param[8];
_player = param[9];
//_BarraksType = param[9];
_Count = _inc;
_units = [];
_tty = 0;
if ((_player getVariable "GPF_Target")) then {SystemChat Format ["Please wait till the last run is over before trying again!"];} Else {
   _player setVariable ["GPF_Target_Score", 0,false];
   _Score = _player getVariable "GPF_Target_Score";
   //private _Barraks = createVehicle [_BarraksType, _ShooterPos, [], 0, "FORM"]; //_Barraks setDir _dir-180; _Barraks SetPos _ShooterPos;
   private _pos = [_ShooterPos, _Count, _dir] call BIS_fnc_relPos;
   private _TargetGroup = createGroup [_UnitSide, false];
   private	_vehCount = count _Veh;
   _player setVariable ["GPF_Target", true,false];
   SystemChat Format ["Your have %1 Seconds to kill %2 Units!",_Timeout,_UnitsPerRun];
   for "_i" from 1 to _UnitsPerRun do {
    if (_tty < _Timeout) Then {
           if ((count _Veh) > 0) Then {vt = createVehicle [(SelectRandom _Veh), _pos, [], 0, "FORM"];vt setFuel 0;vt SetDir _dir-90;if ((surfaceIsWater _pos)) Then {vt SetPosASL [(_pos select 0),(_pos Select 1),1];} Else {vt SetPos _pos;};} Else {
   		  if ((surfaceIsWater _pos)) Then {_posASL = [(_pos select 0),(_pos Select 1),0.2];ft = createVehicle ["Land_PierWooden_01_platform_F", _pos, [], 0, "FORM"];ft SetDir _dir;ft SetPosASL _posASL;};
   		};	
           _unit = _TargetGroup  createUnit [(selectRandom _Model), _pos,[], 0,"FORM"];_unit setFormDir _dir-180; _unit SetDir _dir-180;
   		if ((surfaceIsWater _pos)) Then { _unit SetPosASL [(_pos select 0),(_pos Select 1),3]};
   		_unit addEventHandler ["killed", "_d = _this select 0;_k = _this select 1;SystemChat format ['%1 Killed %2 from %3 meters',name _k,name _d, _k distance _d];"];
   		_unit addEventHandler ["killed", "_k = _this select 1;_score = _k getVariable 'GPF_Target_Score'; _score = _score+1; _k setVariable ['GPF_Target_Score', _score,false]; SystemChat format ['you have %1 Kills',_k getVariable 'GPF_Target_Score'];"];
   		if ((count _Veh) > 0) Then {_unit moveInDriver vt; } else {_unit disableAI "ANIM";_unit disableAI "FSM";_unit disableAI "AUTOTARGET";_unit disableAI "TARGET";};
           while {alive _unit} do {sleep 1; _tty = _tty + 1;if (_tty > _Timeout) Then {deleteVehicle _unit};};
   		_Count = _Count + _inc;
   		if ((surfaceIsWater _pos)) Then {deleteVehicle ft};
           _pos = [_ShooterPos, _Count, _dir] call BIS_fnc_relPos;
   		{deleteVehicle _x} foreach [_unit];
   		if ((count _Veh) > 0) Then {deleteVehicle vt};
   		Sleep _RespawnTime; _tty = _tty + _RespawnTime;
       };
   };
   _player setVariable ["GPF_Target", false,false];
   SystemChat Format ["Your final Score is %1",_player getVariable 'GPF_Target_Score'];
   //deleteVehicle _Barraks;
   _TargetGroup;
};