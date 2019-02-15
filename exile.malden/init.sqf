West setFriend [Resistance, 0];
West setFriend [East, 0];
[] execVM "R3F_LOG\init.sqf"; //Add this to your init.sqf
[] execVM "Custom\EnigmaRevive\init.sqf";

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
 [[9971.43,2218.43],300,[]], //island
 [[6813.97,2740.29,0],10,[]], //trader trees
 [[5533.94,11627.2,0],4,[]], //nwtrader
 [[6510.33,6056.87],10,[]],//db
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
 [[5032.31,5171.91,0],10,[]] //banditcave
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