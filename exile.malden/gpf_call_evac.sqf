_FirstRun = isNil {_player getVariable 'GPF_EvacOn'}; if (_FirstRun) Then {_player setVariable ["GPF_EvacOn", false,false];};
private _plyr = _this Select 0;
private _pos = [(GetPos _plyr),0,50, 5, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
private _evacReturn = [];
if ((_player getVariable "GPF_Target")) then {SystemChat Format ["no helicopters are available at this time! Please try again in a few mins."];} Else {
    openMap true;waitUntil {inputAction 'ActionInMap' > 0};
    private _cords = (findDisplay 12 displayCtrl 51) ctrlMapScreenToWorld getMousePosition; 			   
    If (Side _plyr == west) Then {PF_fnc_playerEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"B_Heli_Light_01_F",[40,41,42]] Call GPF_fnc_playerEvac;};
    If (Side _plyr == east) Then {PF_fnc_playerEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"O_Heli_Light_02_unarmed_F",[40,41,42]] Call GPF_fnc_playerEvac;};
    If (Side _plyr == resistance) Then {GPF_fnc_playerEvac = compile preprocessFile 'gpf_fn_evac.sqf'; _evacReturn = [_pos,_cords,(Side _plyr),"I_Heli_light_03_unarmed_F",[40,41,42]] Call GPF_fnc_playerEvac;};
    If (Side _plyr == civilian) Then {PF_fnc_playerEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"C_Heli_Light_01_civil_F",[40,41,42]] Call GPF_fnc_playerEvac;};
    openMap false;
    _player setVariable ["GPF_EvacOn", true,false];
    
    [_evacReturn] Spawn { _evacReturn _this select 0;
      _EvacHeliV = _evacReturn select 0;
      _HeliPadE = _evacReturn select 1;
      _HeliPadT = _evacReturn select 2;
      _pilot = driver _EvacHeliV;
     While {(alive _EvacHeliV} do {
         if ((!alive _pilot)) Then {_EvacHeliV SetDamage 1;};
         };
	 _player setVariable ["GPF_EvacOn", false,false];
    };
};