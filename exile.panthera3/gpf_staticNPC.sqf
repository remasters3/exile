//[_PositionsASL]execVM"gpf_staticNPC.sqf";
private _PositionsASL = _this select 0;
private _Side = _this select 1;
private _units = [];
private _model = "";
if (_Side == east) Then {_model = "O_G_Sharpshooter_F";};
if (_Side == west) Then {_model = "B_G_Sharpshooter_F";};
if (_Side == resistance) Then {_model = "I_Soldier_AR_F";};
private _group = createGroup [_Side, true];
{
private _unit = _group createUnit [_model, _x, [], 0, "FORM"];
dostop _unit;
_unit disableAI "PATH";
_unit SetPosASL [(_x Select 0),(_x Select 1),(_x Select 2)];
[_unit,false,true] execVM "gpf_randomgear.sqf";
_units = _units + [_unit];
//player SetPosASL _x; SystemChat Format ["%1 Units spawned",count _units];
sleep 1;
} Foreach _PositionsASL;