private _plyr = _this Select 0;

_FirstRun = isNil {_plyr getVariable 'GPF_EvacOn'}; if (_FirstRun) Then {_plyr setVariable ["GPF_EvacOn", false,false];};

//systemChat Format ["%1 - %2", name _plyr,_plyr getVariable 'GPF_EvacOn'];

private _pos = [(GetPos _plyr),0,50, 10, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
private _evacReturn = [];
if ((_plyr getVariable "GPF_EvacOn")) then {SystemChat Format ["no helicopters are available at this time! Please try again later."];} Else {
    Systemchat "Click on the map where you would like to go.";
    openMap true;waitUntil {inputAction 'ActionInMap' > 0}; 
    private _cords = (findDisplay 12 displayCtrl 51) ctrlMapScreenToWorld getMousePosition;
    If (Side _plyr == resistance) Then {GPF_fnc_plyrEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"I_Heli_light_03_unarmed_F",[40,41,42]] Call GPF_fnc_plyrEvac;};	
    //If (Side _plyr == west) Then {PF_fnc_plyrEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"B_Heli_Light_01_F",[40,41,42]] Call GPF_fnc_plyrEvac;};
    //If (Side _plyr == east) Then {PF_fnc_plyrEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"O_Heli_Light_02_unarmed_F",[40,41,42]] Call GPF_fnc_plyrEvac;};
    //If (Side _plyr == resistance) Then {GPF_fnc_plyrEvac = compile preprocessFile 'gpf_fn_evac.sqf'; _evacReturn = [_pos,_cords,(Side _plyr),"I_Heli_light_03_unarmed_F",[40,41,42]] Call GPF_fnc_plyrEvac;};
    //If (Side _plyr == civilian) Then {PF_fnc_plyrEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"C_Heli_Light_01_civil_F",[40,41,42]] Call GPF_fnc_plyrEvac;};
    openMap false;
	Systemchat "Evac is on route, please make your way to the landing zone.";
	sleep 1;
	["InfoTitleAndText", ["Go to the Landing Zone!",format ["Evac for %1 is on route. Please make your way to the purple smoke.",name _plyr]]] call ExileClient_gui_toaster_addTemplateToast;
    _plyr setVariable ["GPF_EvacOn", true,false];
    
    [_evacReturn,_plyr] Spawn { _evacReturn = _this select 0; _plyr = _this select 1;
      _EvacHeliV = _evacReturn select 0;
      _HeliPadE = _evacReturn select 1;
      _HeliPadT = _evacReturn select 2;
      _pilot = driver _EvacHeliV;
	  {[_x,true] execVM "gpf_randomgear.sqf";} foreach crew _EvacHeliV;
     While {(alive _EvacHeliV)} do {
	    sleep 5;
          if ((!alive _pilot)) Then {_EvacHeliV SetDamage 1;};
         };
	 _plyr setVariable ["GPF_EvacOn", false,false];
    };
};