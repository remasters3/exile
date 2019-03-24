if (isServer) then {
private _killed = _this select 0;
private _killer = _this select 1;
private _distance = floor (_killed distance _killer);
private _msg = format ["%1 killed %2 from a distance of %3 meters",name _killer,name _killed,_distance];
//[_msg] remoteExec ["SystemChat", [_killer]];
["SuccessTitleAndText", ["Kill!", _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_killer]];
};
if (true) ExitWith {};