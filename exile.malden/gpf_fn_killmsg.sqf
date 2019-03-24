// if (isServer) then {[(_this Select 0),(_this Select 1)]execVM "gpf_fn_killmsg.sqf"};
systemchat Format ["Debug msg1"];
systemchat Format ["Debug %1", _this];
private = _killed = _this select 0;
private _killer = _this select 1;
private _msg = format ["%1 killed %2 from %3 meters",name _killer,name _killed,_killer distance _killed];

SystemChat _msg;
["SuccessTitleAndText", ["Kill!", _msg]] call ExileClient_gui_toaster_addTemplateToast;
["SuccessTitleAndText", ["Kill!", _msg]] remoteExecCall [ExileClient_gui_toaster_addTemplateToast,[_killer]];
if (true) ExitWith {};