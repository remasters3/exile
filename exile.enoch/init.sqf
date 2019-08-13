West setFriend [Resistance, 0];
West setFriend [East, 0];
[] execVM "R3F_LOG\init.sqf"; //Add this to your init.sqf
[] execVM "Custom\EnigmaRevive\init.sqf";
/*[] Spawn { //dont use me
	private _centerWorld =  getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
	private _AllSimpleThings = [];
	private _SimpleThings = [
	"Land_PierWooden_02_16m_F",
	"Land_SharpRock_wallH",
	"Land_PierWooden_02_30deg_F",
	"Land_PierWooden_02_barrel_F",
	"Land_PierWooden_02_hut_F",
	"Land_Shoot_House_Tunnel_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_Canal_Wall_10m_F",
	"Land_Walkover_01_F",
	"Land_SharpRock_spike",
	"Land_Fortress_01_outterCorner_90_F",
	"Land_Fortress_01_5m_F",
	"Land_Pier_F",
	"Land_SharpRock_monolith",
	"Land_HBarrierWall_corner_F",
	"Land_HBarrierWall6_F"
	];
	
	{
	_model = _x;
	_SimpleThing = _centerWorld nearObjects [_model, 30000];
	_AllSimpleThings = _AllSimpleThings + _SimpleThing;
	} Foreach _SimpleThings;
	
	{[_x] call BIS_fnc_replaceWithSimpleObject;} Foreach _AllSimpleThings;
};*/


if (isServer) then {
private _locs = [

 [[0,0,0],8.5,["ROCK", "ROCKS","TREE", "SMALL TREE", "BUSH"]]
];
{
  private _loc = _x;
  private _pos = _loc Select 0;
  private _rad = _loc Select 1;
  private _typ = _loc Select 2;
  {_x hideObjectGlobal true} forEach nearestTerrainObjects [_pos, _typ, _rad, false];
 } ForEach _locs;


 {
  _Count = 1;
  _model = _x select 0;
  _start = _x Select 1;
  _dir = _x Select 2;
  _inc = _x select 3;
  _qty = _x select 4;

  for "_i" from 1 to _qty do {
    _pos = [ _start, _Count, _dir ] call BIS_fnc_relPos;
    _Count = _Count+_inc;
    {_x hideObjectGlobal true} forEach nearestTerrainObjects [_pos, [], 1, false];
    _objt = createVehicle [_model, _pos, [], 0, "CAN_COLLIDE"];
	if ((_start Select 2) != 0) then {_objt SetPosASL [(_pos select 0),(_pos select 1),(_start select 2)];};

  };
 } Foreach [/*
			["Land_LampStreet_small_F",[0,0,0],90,65,2] //streetlap at 0.0.0 with a direction of 90deg, inverval of 65m, times two.
		   */];		   
};