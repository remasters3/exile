// if (isServer) then {[(_this Select 0),(_this Select 1]execVM "gpf_fn_killmsg.sqf"};
private = _killed = _this select 0;
private _killer = _this select 1;
private _msg = Format ["You killed %1",name _killed];
_msg remoteExecCall ["systemChat", _killer];
["SuccessTitleAndText", [format ["Bandit Kill", name _killer], format ["%1", _msg]]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",_killer];
//["SuccessTitleAndText", [format ["Bandit Kill for %1", _killer], format ["%1", _msg]]] call ExileClient_gui_toaster_addTemplateToast;