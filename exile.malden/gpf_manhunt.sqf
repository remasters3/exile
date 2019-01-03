_pos = _this Select 0;
manhunton = false; publicVariable "manhunton";

while {!manhunton} Do {
 _contenders = [];
 {
  _plyr = _x;
  if ((_plyr distance _pos) < 20) Then {_contenders = [];_contenders = _contenders + [_plyr];};
 } Foreach AllPlayers;

 Contender = SelectRandom _contenders; publicVariable "Contender";
if (alive Contender) then { manhunton = true; publicVariable "manhunton";};
/*    _nearStart = true;
    if ((_vic distance GetMarkerPos _x) < 75) Then {_nearStart = false;} Foreach allMapMarkers;
    if (_nearStart) then {systemchat "its on";manhunton = true;publicVariable "manhunton";};
    if (manhunton) then {dsVictim = _vic;publicVariable "dsVictim";};
	} Else {manhunton = false; publicVariable "manhunton";};*/
sleep 5;
};


//_notNearTrader = true;
//{if ((_vic distance GetMarkerPos _x) < 75) Then {_notNearTrader = false;}} Foreach allMapMarkers;
// waituntil {((count AllPlayers) > 1)};