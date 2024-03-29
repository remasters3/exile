/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 * Exile.Malden by [FPS]kuplion
 */
if (!hasInterface || isServer) exitWith {};

// 34 NPCs
private _npcs = [
["Exile_Trader_WasteDump", ["HubStandingUC_idle1","HubStandingUC_idle2","HubStandingUC_idle3","HubStandingUC_move1","HubStandingUC_move2"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [7411.572754, 8075.570313, 169.244049], [0.613128, 0.789984, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]], [7449.861816, 8121.39502, 168.96315], [-0.999882, -0.0153407, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_VehicleCustoms", "WhiteHead_11", [[],[],[],["U_C_Driver_4",[]],[],[],"H_Cap_red","",[],["","","","","",""]], [7431.910156, 8128.353027, 169.271439], [-0.0400096, -0.999199, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [6094.801758, 10752.504883, 120.321442], [0.43812, 0.898916, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubSittingChairUB_idle1","HubSittingChairUB_idle2","HubSittingChairUB_idle3","HubSittingChairUB_move1"], "Exile_Trader_Aircraft", "GreekHead_A3_06", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]], [7962.304688, 9634.816406, 30.83971], [-0.19408, -0.980986, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["Acts_passenger_flatground_leanright"], "Exile_Trader_AircraftCustoms", "WhiteHead_20", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [7963.081543, 9638.761719, 30.797403], [0, 1, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_WasteDump", "WhiteHead_19", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [8040.352051, 9686.99707, 30.365921], [-0.999942, -0.0107787, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_repairVehiclePne"], "", "WhiteHead_03", [[],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"","G_Tactical_Clear",[],["","","","","",""]], [7446.290039, 8117.503906, 169.210556], [0.992839, -0.119461, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_01", [["LMG_Mk200_F","","","optic_Aco",["200Rnd_65x39_cased_Box",200],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[["200Rnd_65x39_cased_Box",1,200]]],[],"H_ShemagOpen_tan","G_Tactical_Clear",[],["","","","","",""]], [7394.834961, 8141.146973, 172.487885], [-0.998549, -0.0538522, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_02", [["Exile_Weapon_AK74","","acc_flashlight","optic_MRCO",["Exile_Magazine_30Rnd_545x39_AK",30],[],"bipod_01_F_blk"],[],["Exile_Weapon_Taurus","","","",["Exile_Magazine_6Rnd_45ACP",6],[],""],["U_C_HunterBody_grn",[["Exile_Magazine_30Rnd_545x39_AK",1,30],["Exile_Magazine_6Rnd_45ACP",3,6]]],["V_Rangemaster_belt",[["Exile_Magazine_30Rnd_545x39_AK",2,30]]],[],"H_Booniehat_tna_F","G_Diving",["Laserdesignator_02_ghex_F","","","",[],[],""],["","ItemGPS","ItemRadio","ItemCompass","Exile_Item_XM8",""]], [7363.0942383, 8141.150879, 176.205551], [-0.737407, 0.675449, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_16", [["arifle_MX_SW_Black_F","","acc_pointer_IR","optic_Arco_blk_F",["100Rnd_65x39_caseless_mag",100],[],""],[],["TaurusTracker455","","","",["6Rnd_45ACP",6],[],""],["Exile_Uniform_BambiOverall",[["6Rnd_45ACP",3,6]]],["V_TacVest_blk",[["100Rnd_65x39_caseless_mag",3,100]]],[],"H_Cap_usblack","G_Spectacles",["Laserdesignator","","","",[],[],""],["ItemMap","O_UavTerminal","ItemRadio","","",""]], [7445.914063, 8064.48291, 169.24144], [0.220919, -0.975292, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_05", [["srifle_DMR_03_multicam_F","","","optic_Hamr",["20Rnd_762x51_Mag",20],[],""],[],["exile_rifle_SA61","","","",["10Rnd_765x17ball",10],[],""],["U_B_CTRG_1",[["20Rnd_762x51_Mag",3,20]]],["V_HarnessO_ghex_F",[]],[],"H_Cap_police","G_Sport_Blackred",["Binocular","","","",[],[],""],["","","ItemRadio","","",""]], [7436.754883, 8058.538574, 169.24144], [0.862849, -0.505462, 0], [0, 0, 1]],
["Exile_Trader_Food", ["InBaseMoves_table1"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [7385.985352, 8071.183105, 169.24144], [0.470612, 0.882341, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubSittingAtTableU_idle1","HubSittingAtTableU_idle2","HubSittingAtTableU_idle3"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [7392.478027, 8102.961914, 169.510895], [0.309659, -0.950848, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingHighB_idle2"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [7438.88623, 8139.212891, 169.444153], [-0.120449, -0.99272, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [7372.134766, 8081.200684, 169.0557251], [0.954735, 0.297458, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_repairVehicleKnl"], "", "WhiteHead_04", [[],[],["Exile_Weapon_TaurusGold","","","",["Exile_Magazine_6Rnd_45ACP",6],[],""],["U_C_Driver_1_orange",[["Exile_Magazine_6Rnd_45ACP",1,6]]],[],[],"","G_Shades_Red",["Rangefinder","","","",[],[],""],["ItemMap","","","","ItemWatch",""]], [7449.632324, 8115.0493164, 169.174103], [-0.754156, 0.656696, 0], [0, 0, 1]],
["Exile_Guard_01", ["AmovPercMstpSnonWnonDnon_exercisePushup","AmovPercMstpSnonWnonDnon_exercisePushup","AmovPercMstpSnonWnonDnon_exercisekneeBendA","AmovPercMstpSnonWnonDnon_exercisekneeBendA","AmovPercMstpSnonWnonDnon_exercisekneeBendB"], "", "WhiteHead_16", [[],[],[],["Exile_Uniform_BambiOverall",[]],[],[],"","",[],["","","","","",""]], [7434.295898, 8132.274414, 169.457458], [0.812844, 0.582481, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_15", [["srifle_DMR_03_F","","","",["20Rnd_762x51_Mag",20],[],""],[],[],["U_BG_Guerrilla_6_1",[["20Rnd_762x51_Mag",1,20]]],["V_TacVest_khk",[["20Rnd_762x51_Mag",2,20]]],[],"H_ShemagOpen_tan","G_Tactical_Black",[],["","","","","",""]], [7413.272949, 8096.419922, 169.24144], [-0.533821, -0.845597, 0], [0, 0, 1]],
["Exile_Guard_03", ["Acts_AidlPsitMstpSsurWnonDnon01","Acts_AidlPsitMstpSsurWnonDnon02","Acts_AidlPsitMstpSsurWnonDnon03","Acts_AidlPsitMstpSsurWnonDnon04","Acts_AidlPsitMstpSsurWnonDnon05"], "", "WhiteHead_02", [[],[],[],["U_I_C_Soldier_Para_5_F",[]],[],[],"","",[],["","","","","",""]], [7398.419922, 8081.890625, 169.277664], [0.964356, 0.26461, 0], [0, 0, 1]],
["Exile_Guard_02", ["InBaseMoves_HandsBehindBack1","InBaseMoves_HandsBehindBack2"], "", "WhiteHead_04", [[],[],[],["U_B_CTRG_Soldier_2_F",[]],[],[],"","",[],["","","","","",""]], [7401.353516, 8087.356445, 169.24144], [0.862491, -0.506073, 0], [0, 0, 1]],
["Exile_Guard_03", ["AmovPercMstpSnonWnonDnon_exercisePushup","AmovPercMstpSnonWnonDnon_exercisePushup","AmovPercMstpSnonWnonDnon_exercisekneeBendA","AmovPercMstpSnonWnonDnon_exercisekneeBendA","AmovPercMstpSnonWnonDnon_exercisekneeBendB"], "", "WhiteHead_02", [[],[],[],["U_C_man_sport_3_F",[]],[],[],"","",[],["","","","","",""]], [7408.622559, 8096.326172, 169.24144], [0.294512, -0.955648, 0], [0, 0, 1]],
["Exile_Guard_01", ["Acts_LyingWounded_loop1","Acts_LyingWounded_loop2","Acts_LyingWounded_loop3"], "", "WhiteHead_13", [[],[],[],["U_BG_Guerrilla_6_1",[]],["V_Rangemaster_belt",[]],[],"","",[],["","","","","",""]], [7406.581543, 8085.864258, 169.24144], [0.7416, 0.670842, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_SittingRifle1"], "", "GreekHead_A3_07", [["srifle_DMR_03_F","muzzle_snds_B","acc_flashlight","optic_AMS",["20Rnd_762x51_Mag",20],[],"bipod_01_F_blk"],[],[],["U_BG_Guerrilla_6_1",[["20Rnd_762x51_Mag",1,20]]],["V_TacVest_khk",[["20Rnd_762x51_Mag",2,20]]],[],"H_ShemagOpen_tan","G_Combat",[],["","","","","",""]], [7382.519531, 8085.872559, 169.24144], [-0.84981, 0.527089, 0], [0, 0, 1]],
["Exile_Guard_02", ["HubSittingChairUB_idle1"], "", "WhiteHead_01", [[],[],["hgun_Pistol_heavy_01_F","","","",["11Rnd_45ACP_Mag",11],[],""],["U_BG_Guerilla1_1",[["11Rnd_45ACP_Mag",3,11]]],["V_PlateCarrierIA2_dgtl",[]],[],"H_Hat_camo","G_Aviator",[],["","","","","",""]], [7382.847168, 8082.269043, 169.24144], [0.872359, -0.488865, 0], [0, 0, 1]],
["Exile_Guard_03", ["Acts_passenger_flatground_leanright"], "", "AfricanHead_02", [["SMG_02_F","","","",[],[],""],[],[],["U_BG_Guerilla2_3",[]],[],[],"H_Cap_grn","G_Squares_Tinted",[],["","","","","",""]], [7393.885742, 8078.0996094, 169.282303], [-0.846427, 0.532505, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["HubSittingChairA_idle1","HubSittingChairA_idle2","HubSittingChairA_idle3","HubSittingChairA_move1"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]], [7397.379883, 8123.375, 169.508438], [0.402267, -0.915522, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubSittingChairUC_idle1","HubSittingChairUC_idle2","HubSittingChairUC_idle3","HubSittingChairUC_move1"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]], [7716.561035, 5096.872559, 0.202058], [0.091717, 0.995785, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["AdvePercMstpSnonWnonDnon_relax","AdvePercMstpSnonWnonDnon"], "Exile_Trader_BoatCustoms", "WhiteHead_20", [[],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","Exile_Glasses_Diving_AAF",[],["","","","","",""]], [7697.682129, 5072.438965, -2.190878], [0.514499, -0.857491, 0], [0, 0, 1]],
["Exile_Guard_01", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_12", [["srifle_DMR_03_F","","","optic_Aco",["20Rnd_762x51_Mag",20],[],""],[],[],["U_Tank_green_F",[["20Rnd_762x51_Mag",1,20]]],["V_HarnessOGL_brn",[["20Rnd_762x51_Mag",2,20]]],[],"H_ShemagOpen_khk","G_Tactical_Black",[],["","","","","",""]], [3226.123047, 8475.222656, 48.167206], [0.461532, -0.887124, 0], [0, 0, 1]],
["Exile_Trader_RussianRoulette", ["AmovPsitMstpSrasWrflDnon_WeaponCheck1","AmovPsitMstpSrasWrflDnon_WeaponCheck2","AmovPsitMstpSrasWrflDnon_Smoking"], "Exile_Trader_RussianRoulette", "GreekHead_A3_06", [["MMG_01_tan_F","","","optic_AMS_snd",["150Rnd_93x64_Mag",150],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVestIR_blk",[["150Rnd_93x64_Mag",1,150]]],[],"H_Cap_grn","G_Squares_Tinted",[],["","","","","",""]], [3226.0170898, 8494.485352, 47.806061], [0.696464, -0.717592, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_17", [["LMG_Mk200_F","","","optic_ACO_grn",["200Rnd_65x39_cased_Box",200],[],"bipod_01_F_snd"],[],[],["U_I_C_Soldier_Para_1_F",[]],["V_TacVestIR_blk",[["200Rnd_65x39_cased_Box",1,200]]],[],"H_Booniehat_khk","G_Squares_Tinted",[],["","","","","",""]], [3232.715576, 8477.918945, 48.810417], [-0.988415, -0.151779, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["AdvePercMstpSnonWrflDnon","AdvePercMstpSnonWrflDnon_relax"], "Exile_Trader_Diving", "WhiteHead_01", [["arifle_SDAR_F","","","",["20Rnd_556x45_UW_mag",20],[],""],[],[],["U_I_Wetsuit",[["20Rnd_556x45_UW_mag",3,20]]],["V_RebreatherIA",[]],[],"","Exile_Glasses_Diving_AAF",[],["","","","","",""]], [7748.584473, 5103.027832, -2.501379], [0.539923, -0.841714, 0], [0, 0, 1]],
["Exile_Guard_01", ["Acts_TreatingWounded01","Acts_TreatingWounded02","Acts_TreatingWounded03","Acts_TreatingWounded04","Acts_TreatingWounded05","Acts_TreatingWounded06"], "", "WhiteHead_17", [[],[],[],["U_C_Scientist",[]],["V_TacVestIR_blk",[]],["B_AssaultPack_blk",[]],"H_Cap_blk","G_Aviator",[],["","","","","",""]], [7405.790039, 8085.768555, 169.24144], [0.966792, -0.255566, 0], [0, 0, 1]],
//Airfield
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]],[8073.01,9697.04,30.7739],[-0.0535578,0.998565,0],[0,0,1]],
["Exile_Trader_Office", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]],[8067.53,9705.66,30.7893],[0.117174,-0.993111,0],[0,0,1]],
["Exile_Trader_Hardware", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]],[8078.06,9705.5,30.755],[0.0151181,-0.999886,0],[0,0,1]],
["Exile_Trader_Equipment",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [8067.4,9697.19,30.7685],[-0.0946288,0.995513,0],[0,0,1]],
["Exile_Trader_Armory",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]],[8078.03,9696.87,30.7693],[-0.0332415,0.999447,0],[0,0,1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]],[8072.82,9705.83,30.7855],[0.0288037,-0.999585,0],[0,0,1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]],[8063.63,9695.21,30.2756],[0.117168,-0.993112,0],[0,0,1]],
//NW harbor
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]],[5521.58,11616.8,4.90378],[-0.69885,-0.715268,0],[0,0,1]],
["Exile_Trader_Office", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]],[5514.5,11615.2,4.867],[0.677559,0.735468,0],[0,0,1]],
["Exile_Trader_Hardware", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]],[5516.66,11612.6,4.86527],[0.632354,0.77468,0],[0,0,1]],
["Exile_Trader_Equipment",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [5515.28,11622.8,4.90192],[-0.660378,-0.750933,0],[0,0,1]],
["Exile_Trader_Armory",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]],[5519.68,11618.7,4.90357],[-0.654639,-0.755942,0],[0,0,1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]],[5513.64,11624.6,4.90641],[-0.670163,-0.742214,0],[0,0,1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]],[5499.82,11625.2,3.16623],[-0.0712243,0.99746,0],[0,0,1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]],[5530.19,11642.5,3.18189],[-0.826542,0.562875,0],[0,0,1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]],[5490.79,11690.1,3.03665],[0.470249,-0.882534,0],[0,0,1]],
["Exile_Trader_Diving", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Diving", "WhiteHead_01", [["arifle_SDAR_F","","","",["20Rnd_556x45_UW_mag",20],[],""],[],[],["U_I_Wetsuit",[["20Rnd_556x45_UW_mag",3,20]]],["V_RebreatherIA",[]],[],"","Exile_Glasses_Diving_AAF",[],["","","","","",""]],[5488.42,11691.5,3.03665],[-0.873511,-0.486805,0],[0,0,1]],
//Nain
["Exile_Guard_01", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_01", [["LMG_Mk200_F","","","optic_Aco",["200Rnd_65x39_cased_Box",200],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[["200Rnd_65x39_cased_Box",1,200]]],[],"H_ShemagOpen_tan","G_Tactical_Clear",[],["","","","","",""]], [6805.9,2729.25,12.5414],[0.266765,0.963762,0],[0,0,1]],
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [6831.21,2720.12,13.0142],[0.955126,-0.296199,0],[0,0,1]],
["Exile_Trader_Office", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]],[6834.44,2711.17,12.8064],[-0.935639,0.352958,0],[0,0,1]],
["Exile_Trader_Hardware", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [6832.49,2723.13,12.8562],[0.935527,-0.353254,0],[0,0,1]],
["Exile_Trader_Equipment",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [6828.51,2712.94,12.9301],[0.945724,-0.324969,0],[0,0,1]],
["Exile_Trader_Armory",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]],[6829.96,2716.49,12.7689],[0.932862,-0.360233,0],[0,0,1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]],[6838.64,2720.49,12.8101],[-0.948811,0.315845,0],[0,0,1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]],[6829.13,2720.41,12.5414],[-0.878825,0.477144,0],[0,0,1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]], [6812.03,2725.55,12.5414],[0.533077,0.846067,0],[0,0,1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]],[6793.59,2844.86,1.48463],[0.881928,0.471385,0],[0,0,1]],
["Exile_Trader_Diving", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Diving", "WhiteHead_01", [["arifle_SDAR_F","","","",["20Rnd_556x45_UW_mag",20],[],""],[],[],["U_I_Wetsuit",[["20Rnd_556x45_UW_mag",3,20]]],["V_RebreatherIA",[]],[],"","Exile_Glasses_Diving_AAF",[],["","","","","",""]],[6813.76,2843.31,-0.336792],[-0.333192,-0.942859,0],[0,0,1]],
//USS Freedom
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [12767.6,106.572,22.7823],[0.0105886,-0.999944,0],[0,0,1]],
["Exile_Trader_Office", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]],[12764.1,94.0222,22.7844],[0.999647,-0.026559,0],[0,0,1]],
["Exile_Trader_Hardware", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [12773.1,92.363,22.7844],[-0.998269,0.0588224,0],[0,0,1]],
["Exile_Trader_Equipment",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [12772.1,105.854,22.7825],[-0.566148,-0.824304,0],[0,0,1]],
["Exile_Trader_Armory",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]],[12772.2,99.2214,22.784],[-0.276418,0.961038,0],[0,0,1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]],[12767.4,90.173,22.7844],[-0.04092,0.999162,0],[0,0,1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]],[12780.7,74.6185,22.6794],[-0.999199,-0.0400128,0],[0,0,1]],
//["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]], [12768.8,110.615,22.6794],[-0.0708273,0.997489,0],[0,0,1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]],[12774.4,91.9587,22.6794],[0.997155,0.075377,0],[0,0,1]],
["Exile_Trader_Diving", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Diving", "WhiteHead_01", [["arifle_SDAR_F","","","",["20Rnd_556x45_UW_mag",20],[],""],[],[],["U_I_Wetsuit",[["20Rnd_556x45_UW_mag",3,20]]],["V_RebreatherIA",[]],[],"","Exile_Glasses_Diving_AAF",[],["","","","","",""]],[12774.3,95.7876,22.6794],[0.992368,0.123313,0],[0,0,1]],
//["Exile_Trader_Aircraft", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Aircraft", "GreekHead_A3_06", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]],[12765.6,88.1018,22.6794],[0.0489956,-0.998799,0],[0,0,1]],
//Arette beach
["Exile_Guard_01", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_01", [["LMG_Mk200_F","","","optic_Aco",["200Rnd_65x39_cased_Box",200],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[["200Rnd_65x39_cased_Box",1,200]]],[],"H_ShemagOpen_tan","G_Tactical_Clear",[],["","","","","",""]], [1651.93,4637.01,8.68236],[0.579301,0.815114,0],[0,0,1]],
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [1624.9,4615.65,3.70543],[-0.963584,0.267405,0],[0,0,1]],
["Exile_Trader_Office", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]],[1618.09,4660.8,8.26177],[0.669892,0.742459,0],[0,0,1]],
["Exile_Trader_Hardware", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [1617.42,4664.7,4.35463],[0.7528,-0.658249,0],[0,0,1]],
["Exile_Trader_Equipment",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]], [1607.97,4660.31,4.05008], [0, 0, 0], [0, 0, 1]],
["Exile_Trader_Armory",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]], [1612.11,4660.27,4.0518], [0, 0, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]],[1608.01,4618.96,3.86495],[-0.996224,-0.0868263,0],[0,0,1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]],[1580.69,4623.31,3.05133],[-0.981005,0.193983,0],[0,0,1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]], [1562.38,4577.53,2.93144], [0, 0, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]], [1556.74,4573.52,2.9433],[-0.581708,0.813398,0],[0,0,1]],
["Exile_Trader_Aircraft", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Aircraft", "GreekHead_A3_06", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]],[1555.12,4551.67,3.38077],[-0.97659,0.215111,0],[0,0,1]]/*,
// Deep Fried Haggis
["Exile_Trader_SpecialOperations", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_SpecialOperations", "GreekHead_A3_05", [["MMG_01_tan_F","","","optic_Hamr",["150Rnd_93x64_Mag",150],[],"bipod_01_F_blk"],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[["150Rnd_93x64_Mag",1,150]]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]],[8685.89,6450.81,2.35],[-0.999798,0.0201226,0],[0,0,1]],
["Exile_Trader_Diving", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Diving", "WhiteHead_01", [["arifle_SDAR_F","","","",["20Rnd_556x45_UW_mag",20],[],""],[],[],["U_I_Wetsuit",[["20Rnd_556x45_UW_mag",3,20]]],["V_RebreatherIA",[]],[],"","Exile_Glasses_Diving_AAF",[],["","","","","",""]],[8652.42,6418.22,0.5],[-0.329131,0.944284,0],[0,0,1]],
["Exile_Trader_Office", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Office", "WhiteHead_09", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]],[8681.05,6461.59,2.4],[0.672483,-0.740112,0],[0,0,1]],
["Exile_Trader_Hardware", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Hardware", "AfricanHead_01", [["Exile_Weapon_LeeEnfield","","","optic_Hamr",["Exile_Magazine_10Rnd_303",10],[],""],[],[],["U_C_WorkerCoveralls",[["Exile_Magazine_10Rnd_303",3,10]]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]],[8692.72,6463.36,1.4],[-0.763458,0.645858,0],[0,0,1]],
["Exile_Trader_Equipment",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Equipment", "WhiteHead_16", [["arifle_MX_GL_Black_F","","","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],[],["U_BG_Guerrilla_6_1",[["30Rnd_65x39_caseless_mag",2,30]]],["V_I_G_resistanceLeader_F",[["30Rnd_65x39_caseless_mag",1,30]]],[],"H_Watchcap_khk","G_Tactical_Clear",[],["","","","","",""]],[8688.3,6457.94,1.85],[-0.993064,-0.117572,0],[0,0,1]],
["Exile_Trader_Armory",["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "Exile_Trader_Armory", "WhiteHead_19", [["srifle_DMR_06_olive_F","muzzle_snds_B_khk_F","","optic_AMS_khk",["20Rnd_762x51_Mag",20],[],"bipod_01_F_khk"],[],[],["U_I_C_Soldier_Para_3_F",[]],["V_Rangemaster_belt",[["20Rnd_762x51_Mag",3,20]]],[],"H_Shemag_olive","G_Shades_Blue",[],["","","","","",""]],[8688.25,6454.58,1.95],[-0.993064,-0.117572,0],[0,0,1]],
["Exile_Trader_Food", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Food", "GreekHead_A3_05", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]],[8690.08,6460.63,1.5],[-0.763458,0.645858,0],[0,0,1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_11", [[],[],[],["U_Tank_green_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]],[8665.46,6421.71,2],[-0.901885,0.431975,0],[0,0,1]],
["Exile_Trader_Vehicle", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Vehicle", "AfricanHead_01", [[],[],[],["U_C_Driver_1_red",[]],[],[],"H_RacingHelmet_1_red_F","",[],["","","","","",""]],[8680.96,6460.58,6.29489],[0.662493,0.749068,0],[0,0,1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "GreekHead_A3_06", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Black",[],["","","","","",""]],[8673.37,6427.29,1.6],[-0.897413,0.441192,0],[0,0,1]],
["Exile_Trader_Aircraft", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Aircraft", "GreekHead_A3_06", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]],[8682.88,6462.63,6.26478],[-0.707796,-0.706417,0],[0,0,1]]*/
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
	[_trader,false,false] execVM "gpf_randomgear.sqf";
}
forEach _npcs;

playerQuad = false;
missionon = true;
GPF_Target = false;

gpf_SpawnLandTransport = {
	_pos = _this Select 0;
	_quad = createVehicle ['B_Quadbike_01_F', _pos, [], 0, 'FORM'];
	_quad addEventHandler ["GetOut", "_veh = _this select 0;if (count crew _veh <= 0) Then {deleteVehicle _veh;};playerQuad = false;"];
	_quad addAction ["Convert to JetSki (free)","_veh = (_this Select 0); _dir = GetDir _veh;_pos = GetPos _veh;deleteVehicle _veh;pveh = [_pos] Call gpf_SpawnSeaTransport;pveh SetDir _dir;pveh SetPos _pos;"];
	_quad addAction ["Convert to Mozzie (free)","_veh = (_this Select 0); _dir = GetDir _veh;_pos = GetPos _veh;deleteVehicle _veh;pveh = [_pos] Call gpf_SpawnAirTransport;pveh SetDir _dir;pveh SetPos _pos;"];
	_quad Addaction ["Call Air Evac (1000 tabs)",{[player] execVM 'gpf_call_evac.sqf';}];
	private _uid = getPlayerUID player;
    private _isBenifit = _uid in GPF_Benifits;
	//if (_isBenifit) Then {
		_quad addaction ["<t color='#ff0000'>-----------EXPERIMENTAL--------</t>",{}];
		_quad Addaction ["<t color='#ff0000'>Call Support 1 Units ( 10k tabs )</t>",{[player,1] execVM 'gpf_call_support_units.sqf';}];
		_quad Addaction ["<t color='#ff0000'>Call Support 2 Units ( 20k tabs )</t>",{[player,2] execVM 'gpf_call_support_units.sqf';}];
		_quad Addaction ["<t color='#ff0000'>Call Support 3 Units ( 30k tabs )</t>",{[player,3] execVM 'gpf_call_support_units.sqf';}];
		_quad Addaction ["<t color='#ff0000'>Call Support 4 Units ( 40k tabs )</t>",{[player,4] execVM 'gpf_call_support_units.sqf';}];
		_quad Addaction ["<t color='#ff0000'>Call Support 5 Units ( 50k tabs )</t>",{[player,5] execVM 'gpf_call_support_units.sqf';}];
		_quad addaction ["<t color='#ff0000'>---------------------------------</t>",{}];
		//};
	_quad
	};
	
gpf_SpawnSeaTransport = {
	_pos = _this Select 0;
	_jetski = createVehicle ['C_Scooter_Transport_01_F', _pos, [], 0, 'FORM'];
	_jetski addEventHandler ["GetOut", "_veh = _this select 0;if (count crew _veh <= 0) Then {deleteVehicle _veh;};playerQuad = false;"];
	_jetski addAction ["Convert to Quad (free)","_veh = (_this Select 0); _dir = GetDir _veh;_pos = GetPos _veh;deleteVehicle _veh;pveh = [_pos] Call gpf_SpawnLandTransport;pveh SetDir _dir;pveh SetPos _pos;"];
	_jetski addAction ["Convert to Mozzie (free)","_veh = (_this Select 0); _dir = GetDir _veh;_pos = GetPos _veh;deleteVehicle _veh;pveh = [_pos] Call gpf_SpawnAirTransport;pveh SetDir _dir;pveh SetPos _pos;"];
	_jetski Addaction ["Call Air Evac (1000 tabs)",{[player] execVM 'gpf_call_evac.sqf';}];
	private _uid = getPlayerUID player;
    private _isBenifit = _uid in GPF_Benifits;
	//if (_isBenifit) Then {
		_jetski addaction ["<t color='#ff0000'>-----------EXPERIMENTAL--------</t>",{}];
		_jetski Addaction ["<t color='#ff0000'>Call Support 1 Units ( 10k tabs )</t>",{[player,1] execVM 'gpf_call_support_units.sqf';}];
		_jetski Addaction ["<t color='#ff0000'>Call Support 2 Units ( 20k tabs )</t>",{[player,2] execVM 'gpf_call_support_units.sqf';}];
		_jetski Addaction ["<t color='#ff0000'>Call Support 3 Units ( 30k tabs )</t>",{[player,3] execVM 'gpf_call_support_units.sqf';}];
		_jetski Addaction ["<t color='#ff0000'>Call Support 4 Units ( 40k tabs )</t>",{[player,4] execVM 'gpf_call_support_units.sqf';}];
		_jetski Addaction ["<t color='#ff0000'>Call Support 5 Units ( 50k tabs )</t>",{[player,5] execVM 'gpf_call_support_units.sqf';}];
		_jetski addaction ["<t color='#ff0000'>---------------------------------</t>",{}];
		//};
	_jetski
	};
	
    
gpf_SpawnAirTransport = {
	_pos = _this Select 0;
    _model = selectRandom ["RwG_Mozzie_Carl_Black","RwG_Mozzie_Carl_Blue","RwG_Mozzie_Carl_Exile","RwG_Mozzie_Carl_Green","RwG_Mozzie_Carl_Orange","RwG_Mozzie_Carl_Pink","RwG_Mozzie_Carl_Red","RwG_Mozzie_Carl_White","RwG_Mozzie_Carl_Yellow"];
	_air = createVehicle [_model, _pos, [], 0, 'FORM'];
	_air addEventHandler ["GetOut", "_veh = _this select 0;if (count crew _veh <= 0) Then {deleteVehicle _veh;};playerQuad = false;"];
	_air addAction ["Convert to Quad (free)","_veh = (_this Select 0); _dir = GetDir _veh;_pos = GetPos _veh;deleteVehicle _veh;pveh = [_pos] Call gpf_SpawnLandTransport;pveh SetDir _dir;pveh SetPos _pos;"];
	_air addAction ["Convert to JetSki (free)","_veh = (_this Select 0); _dir = GetDir _veh;_pos = GetPos _veh;deleteVehicle _veh;pveh = [_pos] Call gpf_SpawnSeaTransport;pveh SetDir _dir;pveh SetPos _pos;"];
	_air Addaction ["Call Air Evac (1000 tabs)",{[player] execVM 'gpf_call_evac.sqf';}];
	private _uid = getPlayerUID player;
    private _isBenifit = _uid in GPF_Benifits;
	//if (_isBenifit) Then {
		_air addaction ["<t color='#ff0000'>-----------EXPERIMENTAL--------</t>",{}];
		_air Addaction ["<t color='#ff0000'>Call Support 1 Units ( 10k tabs )</t>",{[player,1] execVM 'gpf_call_support_units.sqf';}];
		_air Addaction ["<t color='#ff0000'>Call Support 2 Units ( 20k tabs )</t>",{[player,2] execVM 'gpf_call_support_units.sqf';}];
		_air Addaction ["<t color='#ff0000'>Call Support 3 Units ( 30k tabs )</t>",{[player,3] execVM 'gpf_call_support_units.sqf';}];
		_air Addaction ["<t color='#ff0000'>Call Support 4 Units ( 40k tabs )</t>",{[player,4] execVM 'gpf_call_support_units.sqf';}];
		_air Addaction ["<t color='#ff0000'>Call Support 5 Units ( 50k tabs )</t>",{[player,5] execVM 'gpf_call_support_units.sqf';}];
		_air addaction ["<t color='#ff0000'>---------------------------------</t>",{}];
		//};
	_air
	};
	

[] Spawn {
    while {missionon} Do {
	   player enableFatigue false;
	   waitUntil {inputAction "User20" > 0};
	   if (playerQuad) Then { deleteVehicle pveh; pveh = [(GetPos player)] Call gpf_SpawnLandTransport; playerQuad = true;} 
					   Else {pveh = [(GetPos player)] Call gpf_SpawnLandTransport; playerQuad = true;}; 
	sleep 1;
	   };
};


[] Spawn {
  while {missionon} do {
    _msgs = [
	'Tired of walking? Bind "USE ACTION 20" in "Custom Controls" to spawn temporary transport',
	'You can call air evacs from your temporary transport.',
	'Temporary transport will disappear after use.',
	'For more details about the server please see www.chernochumz.com',
	'Protection money for your base needs to be paid every 7 days or your base will be deleted',
	'Flag ransom needs to be paid within 48 hours or the base will be deleted'
	];
	_txt = SelectRandom _msgs;
    SystemChat Format ["%1",_txt];
	sleep 300;
   };
};



[] Spawn {
 while {missionon} Do {
    _Zones = [
      [ussfreedom,200]
     ];
    sleep 20;
	private _isVil = false;
    private _uid = getPlayerUID player;
    private _isBenifit = _uid in GPF_Benifits;
	{_zone = _x select 0; _rad = _x select 1;if ((_zone distance player) < _rad) Then{_isVil = true;};} Foreach _Zones;
 	if (_isVil) Then {
	    if (!_isBenifit) Then { _dmg = damage player; _dmg = _dmg+0.4; player Setdamage _dmg; systemChat FORMAT ["Leave this place or die!"];};
		};
 };
};

[] Spawn {
 {
    _location = createLocation [ "NameLocal" ,(_x select 0), 30, 30];
    _location setText (_x select 1);
 } Foreach [
  [[12623,12775,77.0662],"Seafort"],
  [[3025.7,77.6329,99.3498],"USS Freedom"],
  [[9221.45,3784.24,19.7751],"USS Liberty"],
  [[7250.29,10462.4,0],"Shooting Range"],
  [[5551.19,7887.43,0],"FOB Hillside"],
  [[108.629,10302.2,0],"Fuel Dock"],
  [[3028.8,7225.74,11.7131],"Pirate Cove"],
  [[5034.32,5171.57,0],"Bandit Cave"],
  [[4641.64,10174,2.12099],"Grumpy Old Castle"],
  [[8662.6,6465.91,0],"The Rock"]
 ];
};



[] execVM "ClaimVehicles_Client\ClaimVehicles_Client_init.sqf";
[] execVM "Addons\StatusBar\Statusbar.sqf";
[] execVM "gpf_rearm.sqf";



//player setVariable ["GPF_Target", false,true];

//[] Spawn { 
// while {missionon} Do {
// waitUntil {!isNil "dsVictim"};
// waitUntil {deathsqdon};
// sleep 5;
// SystemChat Format ["A death squad as been sent after %1",name dsVictim];
// waitUntil {!deathsqdon};
// };
//};
//
//[] Spawn {
//  SystemChat 'if u bind "use action 20" in custom controls you can spawn a temp quad'
//};