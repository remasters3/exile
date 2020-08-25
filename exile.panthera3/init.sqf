West setFriend [Resistance, 0];
West setFriend [East, 0];
[] execVM "R3F_LOG\init.sqf"; //Add this to your init.sqf
[] execVM "Custom\EnigmaRevive\init.sqf";
/*[] Spawn {
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
/*[[8379.13,5083,0],40,[]]*/
];

{
  private _loc = _x;
  private _pos = _loc Select 0;
  private _rad = _loc Select 1;
  private _typ = _loc Select 2;
  {_x hideObjectGlobal true} forEach nearestTerrainObjects [_pos, _typ, _rad, false];
 } ForEach _locs;
 
/*bridge_ASL = GetPosASL bridge_00;*/
 {
  _Count = 1;
  _model = _x select 0;
  _start = _x Select 1;
  _dir = _x Select 2;
  _inc = _x select 3;
  _qty = _x select 4;
  _dia = _x select 5;

  for "_i" from 1 to _qty do {
    _pos = [ _start, _Count, _dir ] call BIS_fnc_relPos;
    _Count = _Count+_inc;
    {_x hideObjectGlobal true} forEach nearestTerrainObjects [_pos, [], _dia, false];
    _objt = createVehicle [_model, _pos, [], 0, "CAN_COLLIDE"];
	if ((_start Select 2) != 0) then {_objt SetPosASL [(_pos select 0),(_pos select 1),(_start select 2)];};

  };
 } Foreach [
			["Land_Flush_Light_green_F",[2789.19,7917.05,0],0,25,18,20],
			["Land_Flush_Light_green_F",[9933.72,214.869,0],0,20,12,20],
			["Land_Flush_Light_red_F",[9954.48,214.869,0],0,40,6,20],
			["Land_Flush_Light_green_F",[9975.24,214.869,0],0,20,12,20]/*
            ["Land_LampAirport_F",[1569.25,4572.7,0],20,25,3],
			["Land_Flush_Light_red_F",[1542.67,4838.78,0],270,3,14],
			["Land_Flush_Light_red_F",[1542.67,4848.78,0],270,3,14],
		    ["Land_Flush_Light_red_F",[1543.02,4858.88,0],270,3,14],
			["Land_Flush_Light_red_F",[1543.02,4868.88,0],270,3,14],
			["Land_Flush_Light_red_F",[1542.64,4487.78,0],270,3,14],
            ["Land_Flush_Light_yellow_F",[1520.69,4487.55,0],0,40,10],
			["Land_Flush_Light_green_F",[1501.68,4500.75,0],0,20,20],
            ["Land_Flush_Light_green_F",[1542.64,4487.78,0],0,20,20],
			["Land_LampStreet_small_F",[(bridge_ASL select 0),(bridge_ASL select 1)-3.5,(bridge_ASL select 2)+6],(GetDir bridge_00)+90,65,12],
			["Land_LampStreet_small_F",[(bridge_ASL select 0),(bridge_ASL select 1)+3.5,(bridge_ASL select 2)+6],(GetDir bridge_00)+90,65,12]*/
		   ];		   
};
