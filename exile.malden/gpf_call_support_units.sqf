// [player,5] execVM "gpf_call_support_units.sqf";
_player = _this select 0;
_numberOfUnits = _this select 1;
_costtabs = _numberOfUnits*10000;
_gpf_chargeTabs = compile preprocessFile "gpf_chargeTabs.sqf";
_transaction = [player,_costtabs] Call _gpf_chargeTabs;
systemchat format ["%1",_transaction];
if (_transaction == 1) {
	[_player,'I_Heli_light_03_unarmed_F',_numberOfUnits] execVM 'gpf_fn_playerSupport.sqf';
} 
else {
	systemchat FORMAT ["failed transaction"];
};




//[player,costtabs]execVM "gpf_chargeTabs.sqf";