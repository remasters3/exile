private _centerWorld =  [5491.72,6267.94,0];
//private _NameCity = nearestLocations [_centerWorld, ["NameCity"], 10000];
//private _NameCityCapital = nearestLocations [_centerWorld, ["NameCityCapital"], 10000];
private _NameVillage = nearestLocations [_centerWorld, ["NameVillage"], 10000];
//private _NameLocal = nearestLocations [_centerWorld, ["NameLocal"], 10000];
private _allpos = _NameVillage;
private _targets = [[8013.65,9687.79,0],[5530.35,11624.5,0],[7424.16,8112.4,0],[1559.47,4612.97,0],[6820.24,2741.86,0]];
private _target = SelectRandom _targets;
private _GPF_fnc_rescueEvac = compile preprocessFile "gpf_fn_rescueEvac.sqf";
private _numberOfunits = SelectRandom [2,2,4,4,4,6,6,8,10,12];

_places = [];
{_nl = locationPosition _x;_places = _places + [_nl];} Foreach _allpos;

private _timeout = 60*30;
private _pos = [(selectRandom _places),10,200, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
private _TotalDistance = _pos distance _target;
private _score = floor (_TotalDistance/_numberOfunits);

_gpf_rescure_extras = {
    private _group = _this select 0;
	private _score = _this select 1;
	{
		[_x,false,false] execVM "gpf_randomgear.sqf";
		_x setVariable["gpf_reward",_score,false];
		_x setVariable["gpf_target_pos",_target,false];
		
		
		_x addEventHandler ["GetInMan", {
		private _unit = _this select 0;
		private _veh = vehicle _unit;
		private _unit setVariable["gpf_rescue_veh",_veh,false];
		}];
		
		_x addEventHandler ["GetOutMan", {
			private _unit = _this select 0;
			private _veh = _unit getVariable 'gpf_rescue_veh';
			private _driver = driver _veh;
			private _reward = _unit getVariable 'gpf_reward';
			private _target = _unit getVariable 'gpf_target_pos';
			private _unitPos = GetPos _unit;
			private _dist = _unitPos distance _target;
			private _humanCrew = []; 
			{if(isplayer _x) Then {{_humanCrew = _humanCrew+[_x]} Foreach crew _veh;};
			private _crewCount = count _humanCrew;
			private _score = floor (_reward/_crewCount);
			
			if (_dist < 40) Then {
				if ((count _humanCrew) > 0) Then { 
					{
						[_x,_score]execVM 'gpf_score.sqf';
						[(Format ["%1 Evacuation",group _unit]),(Format ["%1 Has evacuated %2 to safety",name _x,name _unit]),_x] execvm "gpf_fn_msg.sqf";
					} Foreach _humanCrew;
				};
			};
		}];
		
	} Foreach units _group;
};

Sleep 60;

_evac = [_numberOfunits,resistance,_pos,_target,40,20] call _GPF_fnc_rescueEvac;
[_evac,_score] Call _gpf_rescure_extras;
[_evac] Spawn {_evac = _this select 0;
		   while {_cnt = count units _evac;_cnt > 0} Do {
            _firesmoke = false;
            {if ((_x distance _target) < 1000 ) Then {_firesmoke = true;};} Foreach units _evac;
            if (_firesmoke) Then { _Signal = 'SmokeShellPurple' createVehicle _target;};
            Sleep 10;
            };
		};



while {true} do {
  _pos = [(selectRandom _places),10,200, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
  _cnt = {alive _x} count units _evac;
  if (_cnt == 0) Then {
		_target = SelectRandom _targets;
		_numberOfunits = SelectRandom [2,2,4,4,4,6,6,8,10,12];
        _evac = [_numberOfunits,resistance,_pos,_target,40,20] call _GPF_fnc_rescueEvac;
		_TotalDistance = _pos distance _target;
        _score = floor (_TotalDistance/_numberOfunits);
		[_evac,_score] Call _gpf_rescure_extras;
		[_evac] Spawn {_evac = _this select 0;
		   while {_cnt = {alive _x} count units _evac;_cnt > 0} Do {
            _firesmoke = false;
            {if ((_x distance _target) < 1000 ) Then {_firesmoke = true;};} Foreach units _evac;
            if (_firesmoke) Then { _Signal = 'SmokeShellPurple' createVehicle _target;};
            Sleep 10;
            };
		};
        [_evac,_timeout]Spawn {
                                _evac = _this Select 0; 
        						_timeout = _this Select 1;
        						Sleep _timeout+60;
        						{deleteVehicle _x;} foreach units _evac;
        					  };
 };
 sleep 60;
};
