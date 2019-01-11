_pos = _this Select 0;
manhunton = false; publicVariable "manhunton";

while {!manhunton} Do {
 _contenders = [];
 {
  _plyr = _x;
  if ((_plyr distance _pos) < 10) Then {_contenders = [];_contenders = _contenders + [_plyr];};
 } Foreach AllPlayers;
_playerstostart = 1;
if ((count _contenders) >= _playerstostart) Then {
    Contender = SelectRandom _contenders; publicVariable "Contender";
    if (alive Contender) then { manhunton = true; publicVariable "manhunton";};
    /*    _nearStart = true;
        if ((_vic distance GetMarkerPos _x) < 75) Then {_nearStart = false;} Foreach allMapMarkers;
        if (_nearStart) then {systemchat "its on";manhunton = true;publicVariable "manhunton";};
        if (manhunton) then {dsVictim = _vic;publicVariable "dsVictim";};
    	} Else {manhunton = false; publicVariable "manhunton";};*/
    	Systemchat format ["%1 is the Target!. Check your map for last known location.",name Contender];
    	} Else {
		 Systemchat format ["%1 more players needed to start the Manhunt, check your map!",_playerstostart-count _contenders];
		};
sleep 5;
};


//_notNearTrader = true;
//{if ((_vic distance GetMarkerPos _x) < 75) Then {_notNearTrader = false;}} Foreach allMapMarkers;
// waituntil {((count AllPlayers) > 1)};