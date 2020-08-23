//_GetWaypointPos = compile preprocessFile 'gpf_roamingpaths.sqf'; _waypoints = Call _GetWaypointPos;
private _path =[];
private _cotw = getArray(configFile >> "CfgWorlds" >> worldName >> "centerPosition");
private _centerWorld = [(_cotw select 0),(_cotw select 1),0];
private _allPlaces = nearestLocations [_centerWorld, ["NameCity","NameVillage","NameLocal","Airport"], 20000];
private _places = [];
{_nl = locationPosition _x;_places = _places + [_nl];} Foreach _allPlaces;
private _start = selectRandom _places;
private _allPlaces = nearestLocations [_start, ["NameCity","NameVillage"], 5000];
private _places = [];
{_nl = locationPosition _x;_pos = [(_nl select 0),(_nl select 1),0];_places = _places + [_pos];} Foreach _allPlaces;
_Path = _places;
private _invert = selectRandom [true,false];
if (_invert) then {reverse _Path;};
_Path 