private _plyr = _this Select 0;

_FirstRun = isNil {_plyr getVariable 'GPF_EvacOn'}; if (_FirstRun) Then {_plyr setVariable ["GPF_EvacOn", false,false];};
_cash = _plyr getVariable 'ExileMoney';
_price = 1000;
//60 * (pi / 180)
//systemChat Format ["%1 - %2", name _plyr,_cash];
if (_cash >= _price) Then {
    private _pos = [(GetPos _plyr),0,100, 10, 0, 0.25, 0, [],(GetPos _plyr)] call BIS_fnc_findSafePos;
    private _evacReturn = [];
    if ((_plyr getVariable "GPF_EvacOn")) then {SystemChat Format ["no helicopters are available at this time! Please try again later."];} Else {
        Systemchat "Click on the map where you would like to go.";
        openMap true;waitUntil {inputAction 'ActionInMap' > 0}; 
        private _cords = (findDisplay 12 displayCtrl 51) ctrlMapScreenToWorld getMousePosition; openMap false;
        GPF_fnc_plyrEvac = compile preprocessFile 'gpf_fn_evac.sqf';_evacReturn = [_pos,_cords,(Side _plyr),"I_Heli_light_03_unarmed_F",[40,41,42]] Call GPF_fnc_plyrEvac;
		_cash = _plyr getVariable 'ExileMoney'; _cash = _cash-_price;_plyr setVariable ["ExileMoney", _cash,true];
		_plyr setVariable ["GPF_EvacOn", true,false];
		sleep 1;
		["InfoTitleAndText", ["Get to the Choppa!",format ["%2 tabs removed from %1. Helicopter on route.",name _plyr,_price]]] call ExileClient_gui_toaster_addTemplateToast;
    	Systemchat Format ["%1 tabs removed from %2. Get to the Choppa!",_price,name _plyr];
        
        
        [_evacReturn,_plyr] Spawn { _things = _this select 0; _plyr = _this select 1;
		  _vehs = _things select 0;
		  _markers = _things select 1;
          _EvacHeliV = _vehs select 0;
          _HeliPadE = _vehs select 1;
          _HeliPadT = _vehs select 2;
		  _EvacPosMarker = _markers select 0;
		  _TargetPosMarker = _markers select 1;
          _pilot = driver _EvacHeliV;
		  _EvacPosMarker setMarkerTextLocal Format ["%1! Get to the Choppa!",name _plyr];
		  _TargetPosMarker setMarkerTextLocal Format [" Drop Zone for %1.",name _plyr];
    	  {[_x,true] execVM "gpf_randomgear.sqf";} foreach crew _EvacHeliV;
         While {(alive _EvacHeliV)} do {
    	    sleep 5;
              if ((!alive _pilot)) Then {_EvacHeliV SetDamage 1;};
             };
    	 _plyr setVariable ["GPF_EvacOn", false,false];
        };
    };
} Else {
  ["InfoTitleAndText", ["Not Enough Tabs",format ["You need atleast %1 tabs to call evac",_price]]] call ExileClient_gui_toaster_addTemplateToast;
};