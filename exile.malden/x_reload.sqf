_object = _this;
//systemChat Format ["%1",_object];
_driver = driver _object;
if (_driver == _object ) exitWith {};
_cash = _driver getVariable 'ExileMoney';
_price = 1000;
if (_cash == _price ) exitWith {["ErrorTitleAndText", ["Not Enough Tabs", format ["you need %1 to rearm and repair here!",_price]]] call ExileClient_gui_toaster_addTemplateToast;};
_type = typeOf _object;
//systemChat Format ["%1 - %2",_object,_type];
x_reload_time_factor = 1;

_object setVehicleAmmo 1;

systemChat format ["Servicing %1... Please stand by...", _type];

_magazines = getArray(configFile >> "CfgVehicles" >> _type >> "magazines");

if (count _magazines > 0) then {
	_removed = [];
	{
		if (!(_x in _removed)) then {
			_object removeMagazines _x;
			_removed = _removed + [_x];
		};
	} forEach _magazines;
	{
		systemChat format ["Reloading %1", _x];
		sleep x_reload_time_factor;
		_object addMagazine _x;
	} forEach _magazines;
};

_count = count (configFile >> "CfgVehicles" >> _type >> "Turrets");

if (_count > 0) then {
	for "_i" from 0 to (_count - 1) do {
		scopeName "xx_reload2_xx";
		_config = (configFile >> "CfgVehicles" >> _type >> "Turrets") select _i;
		_magazines = getArray(_config >> "magazines");
		_removed = [];
		{
			if (!(_x in _removed)) then {
				_object removeMagazines _x;
				_removed = _removed + [_x];
			};
		} forEach _magazines;
		{
			systemChat format ["Reloading %1", _x];
			sleep x_reload_time_factor;
			_object addMagazine _x;
			sleep x_reload_time_factor;
		} forEach _magazines;
		_count_other = count (_config >> "Turrets");
		if (_count_other > 0) then {
			for "_i" from 0 to (_count_other - 1) do {
				_config2 = (_config >> "Turrets") select _i;
				_magazines = getArray(_config2 >> "magazines");
				_removed = [];
				{
					if (!(_x in _removed)) then {
						_object removeMagazines _x;
						_removed = _removed + [_x];
					};
				} forEach _magazines;
				{
					systemChat format ["Reloading %1", _x]; 
					sleep x_reload_time_factor;
					_object addMagazine _x;
					sleep x_reload_time_factor;
				} forEach _magazines;
			};
		};
	};
};
_object setVehicleAmmo 1;	// Reload turrets / drivers magazine

sleep x_reload_time_factor;
systemChat "Repairing...";
_object setDamage 0;
sleep x_reload_time_factor;
systemChat "Refueling...";
while {fuel _object < 0.99} do {
	//_object setFuel ((fuel _vehicle + 0.1) min 1);
	_object setFuel 1;
	sleep 0.01;
};
sleep x_reload_time_factor;
systemChat format ["%1 is ready...", _type];

if (true) exitWith {};
