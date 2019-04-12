//[player,30000,1] execVM "gpf_fn_hunt.sqf";
private _target = _this select 0;
private _reward = _this select 1;
private _mins = _this select 2;
private _timeout = _mins*60;
_target setVariable ["GPF_huntOn", true,false];


[_target,_reward,_timeout] Spawn {_target = _this select 0;_reward = _this select 1;_timeout = _this select 2;
	private _sleeptime = 60;
    private _pos = GetPos _target;
	private _rewardr = floor(_reward);
	_target setVariable ["GPF_bounty",_rewardr,true];
	_target addMPEventHandler [
	"MPKilled",
	"if (isServer) Then {
		_dst = (_this Select 0) distance (_this Select 1); 
		_score = floor (_target getVariable 'GPF_bounty');
		[(_this Select 1),_score]execVM 'gpf_score.sqf';
		};"
	];
	_txt = Format ["%1 Tabs bounty on %2's head!",_rewardr,name _target];
	_HuntPosMarker = createMarkerLocal [_txt,(GetPos _target)];
	_HuntPosMarker setMarkerText _txt;
	_HuntPosMarker setMarkerType "hd_destroy";
	while  {_target getVariable 'GPF_huntOn'} do {
		if (_timeout > 0) Then {
			if (Alive _target) Then {
				_HuntPosMarker SetMarkerPos GetPos _target;
				} Else {
				_target setVariable ["GPF_huntOn", false,false];
				};
			} Else {
			_target setVariable ["GPF_huntOn", false,false];
			};
			Sleep _sleeptime;
			_timeout = _timeout-_sleeptime;
	};
	DeleteMarker _HuntPosMarker;
};