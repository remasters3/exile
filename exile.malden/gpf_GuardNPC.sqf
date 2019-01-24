//[[0,0,0],300,6,true] execM "gpf_GuardNPC.sqf";
private  _pos = _this select 0;
private  _rad = _this select 1;
private  _npgcnt = _this select 2;
private _patrol = _this select 3;
private _guardNPC = [];
private _gpf_TroopDrop = compile preprocessFile "gpf_TroopDrop.sqf";
private _grp = createGroup [east, false];
while {true} Do {
  private _list = _pos nearObjects ["Man", _rad];
  private _RealPlayers = [];

  if ((count _list) > 0) Then {
    {if (isPlayer _x) Then {_RealPlayers = _RealPlayers + [_x];}; } Foreach _list;
   };
  if ((count _RealPlayers) == 0) Then { {deleteVehicle _x} foreach units _grp; } Else {
    if ( ({alive _x} count units _grp) < _npgcnt) Then {
	Sleep 30;
	private _troops = [_pos,"O_Heli_Transport_04_bench_F",East,_npgcnt,0,_patrol] Call _gpf_TroopDrop;
	{
	  _x setSkill 0.85;
	 [_x] Join _grp;
	} foreach units _troops;
	Sleep 300;
	};
  
  //{SystemChat Format ["%1 is in the bambi zone",name _x];}Foreach _RealPlayers;
   
  };
sleep 30;
};