_convict = _this select 0;
_sentence = _this select 1;
_jailtime = _sentence*60;
_freedom = GetPos _convict;
_convict setpos [7405.92,8090.8,0.00143433];
sleep _jailtime;
_convict SetPos [7414.23,8101.78,0.00143433];
