// [player,100]execVM "gpf_score.sqf";
if (isServer) then {
	private _player = _this select 0;
	private _tabs = _this select 1;

		if ((typeOf _player) == "Exile_Unit_Player") Then {
			private _respect = floor (_tabs/10);
			private _playerUID = getPlayerUID _player;
			private _moneyonplayer = _player getVariable ['ExileMoney',0];
			private _playerRespect = _player getVariable ['ExileScore',0];
			private _newmoney = _moneyonplayer+_tabs;
			private _newRespect = _playerRespect+_respect;
			if (_newmoney > 0) Then {
			_player setVariable ["ExileMoney",_newmoney,true];
			_player setVariable ["ExileScore",_newRespect];
			_title = "Reward!";
			_msg = Format ["+%1 Tabs<br/>+%2 Respect<br/>",_tabs,_respect];
			["SuccessTitleAndText", [_title, _msg]] remoteExecCall ["ExileClient_gui_toaster_addTemplateToast",[_player]];
			
			// Update money in database
			format["setPlayerMoney:%1:%2", _newmoney, _player getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
			};
			
			if (_newRespect > 0) Then {
			// Update respect in database  
			format["setAccountScore:%1:%2", _newRespect, _playerUID] call ExileServer_system_database_query_fireAndForget;
			// Send updated respect value to client
			ExileClientPlayerScore = _newRespect;
			(owner _player) publicVariableClient "ExileClientPlayerScore";
			ExileClientPlayerScore = nil;
			};
		};

};
if (true) ExitWith {};