//["title text","this is the main body of text",(selectrandom Allplayers)] execvm "gpf_fn_msg.sqf";
if (isServer) then {
private _title = _this select 0;
private _msg = _this select 1;
private _player = _this select 2;
["SuccessTitleAndText", [_title, _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_player]];
};
if (true) ExitWith {};