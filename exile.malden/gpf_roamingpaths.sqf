//_WaypointPos = compile preprocessFile 'gpf_roamingpaths.sqf'; _wayponts = Call _WaypointPos;
private _paths =[
[[7648.4,10769.5,0],[7217.88,10793.4,0],[6707.51,10890.6,0],[6437.11,10313,0],[5068.35,9828.51,0],[5215.8,9617.44,0],[5391.6,9301.26,0],[4893.17,8652.49,0],[5077.88,8426.07,0],[5171.29,8313.15,0],[5227.71,8258.9,0]],	//north mil base range to Isaro
[[2832.54,7536.11,0],[3356.68,8718.44,0],[3646.61,8648.78,0],[4104.24,9099.14,0],[4322.1,9382.91,0],[4835.83,10126,0],[5122.39,10561.9,0],[5792.01,11145.3,0],[6705.3,10890.8,0],[7341.48,10713.6,0],[7511.58,10831.7,0]],	//goisse to north mil base range
[[1054.03,680.169,0],[2378.23,3647.91,0],[3791.29,4023.38,0],[3625.89,3656.41,0],[3954.37,3531.24,0],[4249.05,3987.53,0],[4476.43,3700.08,0],[5075.85,3400.11,0],[5406.7,2802.08,0],[4892.23,2395.9,0],[5072.92,1213.06,0]],//faro to south mixer
[[8228.24,8739.72,0],[5730.94,9374.4,0],[4842.28,8109.35,0],[2996.8,6056.06,0],[5791.8,3539.89,0],[7921.02,4094.8,0],[8264.06,2870.03,0]],																					//bosquet to LePort
[[5386.68,3492.07,0],[3051.39,6324.32,0],[4888.11,7310.3,0],[5222.24,9211.81,0],[6226.13,9302.91,0],[7270.38,8412.08,0],[7229.94,7755.6,0],[7036.56,7665.12,0],[7343.52,5083.69,0],[7787.07,4366.45,0],[7686.32,4227.08,0]]	//chopoi to monte mil base
];
_Path = SelectRandom _paths;
_Path