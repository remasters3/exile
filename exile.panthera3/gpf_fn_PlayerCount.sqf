// gpf_fn_PlayerCount compile preprocessFile "gpf_fn_PlayerCount.sqf";[(getPos player),300] call gpf_fn_PlayerCount;
_pos = _this select 0;
_rad = _this select 1;
_list = _pos nearObjects ["Man", _rad];
_FinalCount = 0;
_RealPlayers = [];
if ((count _list) > 0) Then {
	
	{if (isPlayer _x) Then {_RealPlayers = _RealPlayers + [_x];}; } Foreach _list;

	};
	
if ((count _RealPlayers) == 0) Then {

	_FinalCount = 0;
	} else {
	 _FinalCount = count _RealPlayers;
	};

_FinalCount 