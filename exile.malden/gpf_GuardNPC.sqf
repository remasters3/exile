//[[0,0,0],300,6,true] execM "gpf_GuardNPC.sqf";
private  _pos = _this select 0;
private  _rad = _this select 1;
private  _npgcnt = _this select 2;
private _patrol = _this select 3;
private _guardNPC = [];
private _gpf_TroopDrop = compile preprocessFile "gpf_TroopDrop.sqf";
private _grp = [];
while {true} Do {
  private _list = _pos nearObjects ["Man", _rad];
  private _RealPlayers = [];

  if ((count _list) > 0) Then {
    {if (isPlayer _x) Then {_RealPlayers = _RealPlayers + [_x];}; } Foreach _list;
   };
  if ((count _RealPlayers) == 0) Then { if ((count _grp) > 0)Then {/*{deleteVehicle _x;} foreach _grp;*/_grp = [];}; } Else {
    if ( ({alive _x} count _grp) < _npgcnt) Then {
	Sleep 30;
	private _troops = [_pos,"O_Heli_Transport_04_bench_F",East,_npgcnt,900,_patrol] Call _gpf_TroopDrop;
	{
	  _x setSkill 0.85;
	 _grp = _grp + [_x];
	} foreach units _troops;
	_wavetime = ({alive _x} count _grp)*60;
	Sleep _wavetime;
	};
  };
sleep 30;

};