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
 [[5549.7,7900.07],8,[]],
 [[1535.96,4503.44],50,[]],
 [[1533.41,4622.36],8,[]],
 [[1532.74,4615.08],8,[]],
 [[1545.6,4684.46],8,[]],
 [[1561.26,4746.78],8,[]],
 [[1527.07,4875.9],8,[]],
 [[1531.23,4898.66],8,[]],
 [[1526.78,4921.59],8,[]],
 [[1533.39,4626.22],8,[]],
 [[1534.46,4618.98],8,[]],
 [[1525.61,4878.25],8,[]],
 [[1530.63,4884.06],8,[]],
 [[1539.89,4916.27],8,[]],
 [[1536.61,4874.02],8,[]],
 [[1533.95,4929.56],8,[]],
 [[8952.33,4370.06],25,[]],
 [[8925.02,4347.06],2,[]],
 [[9971.43,2218.43],1,[]], //island
 [[6813.97,2740.29,0],10,[]], //trader trees
 [[5533.94,11627.2,0],4,[]], //nwtrader
 [[5515.66,11616.7,0],10,[]], //nwtrader
 [[5519.56,11600.6,0],10,[]], //nwtrader
 [[6510.33,6056.87],10,[]],  //db
 [[6509,6052.17],10,[]],
 [[6524.34,6051.84],10,[]],
 [[6559.24,6031.51,0],5,[]],
 [[6557.55,6032.87,0],8.5,["ROCK", "ROCKS","TREE", "SMALL TREE", "BUSH"]],
 [[6539.59,6058.01,0],8.5,["ROCK", "ROCKS","TREE", "SMALL TREE", "BUSH"]],
 [[8662.77,6454.11,0],50,[]], //small island
 [[4649.07,10191,0],20,[]], //Rockfort
 [[4649.07,10191,0],50,["TREE", "SMALL TREE", "BUSH"]], //Rockfort
 [[4669.99,10168.4,0],10,[]], //Rockfort
  [[8216.7,6773.8,0],50,["TREE", "SMALL TREE", "BUSH"]],
  [[8223.56,6794.17,0],20,[]],
 [[6481.85,6056.9,0],10,[]],
 [[5032.31,5171.91,0],10,[]],	//banditcave
 [[5029.09,5178.86,0],10,[]],	//banditcave
 [[5014.42,5169.17,0],10,[]],	//banditcave
 [[5017.66,5143.96,0],10,[]],	//banditcave
 [[5015.01,5126.27,0],10,[]],	//banditcave
 [[5021.94,5116.04,0],10,[]],	//banditcave
 [[9247.72,6846.5,1],8,[]],		//taffhouse top
 [[9317.03,6859.87,0],10,[]],	//taffhouse beach
 [[9243.24,6809.31,0],20,[]],	//taffhouse top rocks
 [[9228.15,6838.11,0],20,[]],	//taffhouse top rocks
 [[9234.16,6794.28,0],20,[]],	//taffhouse top rocks
 [[9224.04,6811.02,0],10,[]],	//taffhouse top rocks
 [[9253.38,6834.88,0],10,[]],	//taffhouse top trees
 [[9248.94,6856.22,0],2,[]],	//taffhouse top trees
 [[9259.31,6845.7,0],2,[]],		//taffhouse top trees
 [[9259.41,6826.61,0],4,[]],	//taffhouse top trees
 [[9260.73,6820.39,0],2,[]],	//taffhouse top trees
 [[9739.48,5921.2,0],2,[]],		//noctiLH rock
 [[9711.67,5933.29,0],6,[]],	//noctiLH bushes'n'rocks
 [[2832.54,7536.11,0],50,[]],	//harborPatrolStart
 [[5088.02,8404.92,0],30,[]],    //isaro-milbase patrol
 [[7648.4,10769.5,0],20,[]],	//milbase-isaro patrol
 [[7511.58,10831.7,0],20,[]]	//mil base range patrol
];
{
  private _loc = _x;
  private _pos = _loc Select 0;
  private _rad = _loc Select 1;
  private _typ = _loc Select 2;
  {_x hideObjectGlobal true} forEach nearestTerrainObjects [_pos, _typ, _rad, false];
 } ForEach _locs;
 
bridge_ASL = GetPosASL bridge_00;
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
 } Foreach [
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
			["Land_LampStreet_small_F",[(bridge_ASL select 0),(bridge_ASL select 1)+3.5,(bridge_ASL select 2)+6],(GetDir bridge_00)+90,65,12]
		   ];		   
};