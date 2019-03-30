// [player,100]execVM "gpf_score.sqf";
if (isServer) then {
	private _player = _this select 0;
	private _tabs = _this select 1;
	private _respect = floor _tabs/10;
	private _moneyonplayer = _player getVariable ['ExileMoney',0];
	private _playerRespect = _player getVariable ['ExileScore',0];
	private _newmoney = _moneyonplayer+_tabs;
	private _newRespect = _playerRespect+_respect;
	
	_player setVariable ['ExileMoney',_newmoney,true];
	_player setVariable ['ExileScore',_newRespect,true];
    _title = "Reward!";
	_msg = Format ["%1 tabs and %2 Respect",_tabs,_respect];
	["SuccessTitleAndText", [_title, _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_player]];
};
if (true) ExitWith {};