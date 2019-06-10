// [player,costtabs]execVM "gpf_chargeTabs.sqf";
if (isServer) then {
	private _player = _this select 0;
	private _costtabs = _this select 1;


		if ((typeOf _player) == "Exile_Unit_Player") Then {
			private _playerUID = getPlayerUID _player;
			private _moneyonplayer = _player getVariable ['ExileMoney',0];
			private _newmoney = _moneyonplayer+_costtabs;
				if (_costtabs < _moneyonplayer) Then {
				_player setVariable ["ExileMoney",_newmoney,true];
				_player setVariable ["ExileScore",_newRespect];
				_title = "Tabs removed!";
				_msg = Format ["-%1 Tabs<br/>",_costtabs];
				["InfoTitleAndText", [_title, _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_player]];
				// Update money in database
				format["setPlayerMoney:%1:%2", _newmoney, _player getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;	
			};
		};

};
if (true) ExitWith {};