// [player,costtabs]execVM "gpf_chargeTabs.sqf";

private _player = _this select 0;
private _costtabs = _this select 1;
private _valid = 0;

	if ((typeOf _player) == "Exile_Unit_Player") Then {
		private _playerUID = getPlayerUID _player;
		private _moneyonplayer = _player getVariable ['ExileMoney',0];
		private _newmoney = _moneyonplayer-_costtabs;
			if (_costtabs <= _moneyonplayer) Then { _valid = 1;
			_player setVariable ["ExileMoney",_newmoney,true];
			["InfoTitleAndText", ["Tabs removed!", Format ["-%1 Tabs<br/>",_costtabs]]] Call ExileClient_gui_toaster_addTemplateToast;
			// Update money in database
			format["setPlayerMoney:%1:%2", _newmoney, _player getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;	
		} else { _valid = 0;
			["ErrorTitleAndText", ["Not enough Tabs", format ["You only have %2 Tabs!<br/>You need %1 Tabs to buy this.",_costtabs,_moneyonplayer]]] call ExileClient_gui_toaster_addTemplateToast;
		};
	};
_valid 