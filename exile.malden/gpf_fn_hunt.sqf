//[player,30000,1] execVM "gpf_fn_hunt.sqf";
private _target = _this select 0;
private _reward = _this select 1;
private _mins = _this select 2;
private _timeout = _mins*60;
_target setVariable ["GPF_huntOn", false,false];
{
	if (isplayer _x) Then {
		private _msg = format ["%1 Wanted Dead.<br/> %2 Tabs Bounty.<br/> See the Map.<br/>",name _target,floor(_reward)];
		["InfoTitleAndText", ["The Hunt is on!", _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_x]];
	};
} Foreach AllPlayers;

[_target,_reward,_timeout] Spawn {_target = _this select 0;_reward = _this select 1;_timeout = _this select 2;
	private _sleeptime = 30;
    private _pos = GetPos _target;
	private _rewardr = floor(_reward);
	_target setVariable ["GPF_bounty",_rewardr,true];
	_target addMPEventHandler [
	"MPKilled",
	"if (isServer) Then {
		_score = floor (_target getVariable 'GPF_bounty');
		[(_this Select 1),_score]execVM 'gpf_score.sqf';
		};"
	];
	_txt = Format ["%2's Last Known Location. %1 Tabs Reward.",_rewardr,name _target];
	_HuntPosMarker = createMarkerLocal [_txt,(GetPos _target)];
	_HuntPosMarker setMarkerText _txt;
	_HuntPosMarker setMarkerType "hd_destroy";
	_HuntPosMarker setMarkerAlpha 0.8;
	_target setVariable ["GPF_huntOn", true,false];
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
	
	{
		if (isplayer _x) Then {
			private _msg = format ["%1 is no longer wanted dead.",name _target,floor(_reward)];
			["InfoTitleAndText", ["The Hunt is off!", _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_x]];
		};
	} Foreach AllPlayers;
	DeleteMarker _HuntPosMarker;
};