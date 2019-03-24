if (isServer) then {
_killed = _this select 0;
_killer = _this select 1;
_msg = format ["%1 killed %2 from a distance of %3 meters",name _killer,name _killed,_killer distance _killed];
[_msg] remoteExec ["SystemChat", [_killer]];
//["SuccessTitleAndText", ["Kill!", _msg]] call ExileClient_gui_toaster_addTemplateToast;
//["SuccessTitleAndText", ["Kill!", _msg]] remoteExecCall [ExileClient_gui_toaster_addTemplateToast,[_killer]];
};
if (true) ExitWith {};