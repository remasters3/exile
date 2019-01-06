_object = _this;
//systemChat Format ["%1",_object];
_driver = driver _object;
if (_driver == _object ) exitWith {};
_cash = _driver getVariable 'ExileMoney';
_price = 500;
if (_cash < _price ) exitWith {["ErrorTitleAndText", ["Not Enough Tabs!", format ["%1 needs to have %2 tabs to rearm and repair here!",name _driver,_price]]] call ExileClient_gui_toaster_addTemplateToast;};

_type = typeOf _object;
//systemChat Format ["%1 - %2",_cash,_price];
_cash = _driver getVariable 'ExileMoney'; _cash = _cash-_price;_driver setVariable ["ExileMoney", _cash,true];
//["InfoTitleAndText", [format ["%2 tabs removed from %1.",name _driver,_price],format ["Servicing %1... Please stand by...", _type]]] call ExileClient_gui_toaster_addTemplateToast;

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
//["SuccessTitleAndText", [format ["%1 is ready...", _type], format ["%1 is repaired, refuled and rearmed. Good Luck, it's a jungle out there.", _type]]] call ExileClient_gui_toaster_addTemplateToast;
systemChat format ["%1 is ready...", _type];

if (true) exitWith {};
