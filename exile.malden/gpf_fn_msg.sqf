//["title text","this is the main body of text",(selectrandom Allplayers)] execvm "gpf_fn_msg.sqf";
if (isServer) then {
	private _title = _this select 0;
	private _msg = _this select 1;
	private _player = _this select 2;
	private _msgtype = "SuccessTitleAndText";
	if ((_count _this) > 3) Then { _msgtype = _this select 3;} Else {_msgtype = "SuccessTitleAndText";};
		if (isplayer _player) Then {
			[_msgtype, [_title, _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_player]];
		};
};
if (true) ExitWith {};