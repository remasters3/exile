private _plyr = _this Select 0;
private _bModels = 5;
private _oModels = 5;
private _rModels = 5;
private _cModels = 5;
private _GPF_fnc_playerSupport = compile preprocessFile "gpf_fn_playerSupport.sqf";

If (Side _plyr == west) Then {[_plyr,'B_Heli_Light_01_F',_bModels] Call _GPF_fnc_playerSupport;};
If (Side _plyr == east) Then {[_plyr,'O_Heli_Light_02_unarmed_F',_oModels] Call _GPF_fnc_playerSupport;};
If (Side _plyr == resistance) Then {[_plyr,'I_Heli_light_03_unarmed_F',_rModels] Call _GPF_fnc_playerSupport;};
If (Side _plyr == civilian) Then {[_plyr,'B_Heli_Light_01_F',_cModels] Call _GPF_fnc_playerSupport;};