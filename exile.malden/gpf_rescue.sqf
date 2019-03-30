private _centerWorld =  [5491.72,6267.94,0];
//private _NameCity = nearestLocations [_centerWorld, ["NameCity"], 10000];
//private _NameCityCapital = nearestLocations [_centerWorld, ["NameCityCapital"], 10000];
private _NameVillage = nearestLocations [_centerWorld, ["NameVillage"], 10000];
//private _NameLocal = nearestLocations [_centerWorld, ["NameLocal"], 10000];
private _allpos = _NameVillage;
private _trgt = SelectRandom [[8013.65,9687.79,0],[5530.35,11624.5,0],[7424.16,8112.4,0],[1559.47,4612.97,0],[6820.24,2741.86,0]];
private _GPF_fnc_rescueEvac = compile preprocessFile "gpf_fn_rescueEvac.sqf";

_places = [];
{_nl = locationPosition _x;_places = _places + [_nl];} Foreach _allpos;

private _timeout = 60*30;
private _pos = [(selectRandom _places),10,200, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;

Sleep 60;

_evac = [["I_G_Soldier_TL_F"],resistance,_pos,_trgt,40,20] call _GPF_fnc_rescueEvac; {[_x,false,false] execVM "gpf_randomgear.sqf";removeHeadgear _x;_x addHeadgear "Headgear_H_Beret_gen_F";} Foreach units _evac;
[_evac] Spawn {_evac = _this select 0;
		   while {_cnt = count units _evac;_cnt > 0} Do {
            _firesmoke = false;
			_target = GetMarkerPos "respawn_guerrila";
            {if ((_x distance _target) < 1000 ) Then {_firesmoke = true;};} Foreach units _evac;
            if (_firesmoke) Then { _Signal = 'SmokeShellPurple' createVehicle _target;};
            Sleep 10;
            };
		};



while {true} do {
  _pos = [(selectRandom _places),10,200, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
  _cnt = {alive _x} count units _evac;
  if (_cnt == 0) Then {
        _evac = [["I_G_Soldier_TL_F"],resistance,_pos,_trgt,40,20] call _GPF_fnc_rescueEvac;{[_x,false,false] execVM "gpf_randomgear.sqf";removeHeadgear _x;_x addHeadgear "Headgear_H_Beret_gen_F";} Foreach units _evac;
		//[_pos,_trgt,resistance,"B_Heli_Light_01_F",[40,41,42]] Call GPF_fnc_playerEvac;
		[_evac] Spawn {_evac = _this select 0;
		   while {_cnt = {alive _x} count units _evac;_cnt > 0} Do {
            _firesmoke = false;
			_target = GetMarkerPos "respawn_guerrila";
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
 sleep 1;
};
