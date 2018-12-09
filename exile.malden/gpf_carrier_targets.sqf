/* this addAction ["<t color='#ff0000'>Spawn Target</t>", {_player = _this select 1; [_player] execVM 'gpf_carrier_targets.sqf';}]; */
private _player = _this select 0; 
private _GPF_fnc_target = compile preprocessFile 'gpf_fn_targets.sqf';
[
(GetPos _player),
100,
10,
10,
East,
["O_A_soldier_F"],
(GetDir _player),
100,
["O_Lifeboat"]
] Call _GPF_fnc_target;