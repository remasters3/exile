//[_PositionsASL]execVM"gpf_staticNPC.sqf";
private _PositionsASL = _this select 0;
private _units = [];
{
private _group = createGroup [east, true];
private _unit = _group createUnit ["O_G_Sharpshooter_F", _x, [], 0, "FORM"];
_unit SetPosASL [(_x Select 0),(_x Select 1),(_x Select 2)];
[_unit,false,true] execVM "gpf_randomgear.sqf";
_units = _units + [_unit];
//player SetPosASL _x; SystemChat Format ["%1 Units spawned",count _units];
sleep 1;
} Foreach _PositionsASL;