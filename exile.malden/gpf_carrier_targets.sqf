/* this addAction ["<t color='#ff0000'>Spawn Target</t>", {_player = _this select 1; [_player] execVM 'gpf_carrier_targets.sqf';}]; */
private _StartObj = _this select 0;
private _player = _this select 1;
private _GPF_fnc_target = compile preprocessFile 'gpf_fn_targets.sqf';

[
(GetPos _StartObj),
50,
20,
2,
East,
["O_A_soldier_F"],
(GetDir _StartObj),
100,
/*["O_Lifeboat"],*/
[],
_player
] Call _GPF_fnc_target;