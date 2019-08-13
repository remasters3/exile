if (isServer) then {
private _killed = _this select 0;
private _killer = _this select 1;
	if (isplayer _killer) Then {
	private _distance = floor (_killed distance _killer);
	private _msg = format ["%1 killed Friendly %2 from a distance of %3 meters. Check your fire!",name _killer,name _killed,_distance];
	//[_msg] remoteExec ["SystemChat", [_killer]];
	["ErrorTitleAndText", ["Friendly Kill!", _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_killer]];
	};
};
if (true) ExitWith {};