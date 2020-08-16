/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 53 NPCs
private _npcs = [
["Exile_Trader_AircraftCustoms", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_AircraftCustoms", "AfricanHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [8335.32, 5128.79, 11.4146], [-0.71882, 0.695196, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Vehicle", "GreekHead_A3_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [8303.68, 5151.47, 11.3114], [0.733688, -0.679486, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Aircraft", "WhiteHead_06", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Aviator",[],["","","","","",""]], [8342.72, 5136.29, 11.4146], [-0.77419, 0.632953, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["Acts_carFixingWheel"], "Exile_Trader_VehicleCustoms", "GreekHead_A3_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [8294.97, 5139.53, 11.3114], [-0.405768, 0.913976, 0], [0, 0, 1]],
["Exile_Trader_Food", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Food", "WhiteHead_17", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Tactical_Clear",[],["","","","","",""]], [8291.19, 5129.34, 11.471], [-0.673899, -0.738823, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Equipment", "WhiteHead_12", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [8295.19, 5125.32, 11.4653], [-0.672559, -0.740044, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Armory", "GreekHead_A3_09", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [8347.98, 5167.32, 11.8486], [-0.657777, -0.753213, 0], [0, 0, 1]],
["Exile_Trader_Office", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Office", "WhiteHead_03", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [8281.44, 5127.91, 11.4893], [0.740154, -0.672437, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Hardware", "WhiteHead_08", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [8298.97, 5121.49, 11.4568], [-0.674867, -0.73794, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_SpecialOperations", "WhiteHead_05", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [8355.99, 5159.56, 11.8485], [-0.683699, -0.729764, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_WasteDump", "WhiteHead_13", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [8338.28, 5174.16, 11.3114], [0.734379, -0.67874, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_SittingRifle1","InBaseMoves_SittingRifle2"], "", "WhiteHead_20", [["arifle_AK12_lush_F","muzzle_snds_B_lush_F","acc_pointer_IR","optic_Arco_lush_F",["30rnd_762x39_AK12_Lush_Mag_F",30],[],""],[],[],["U_B_CTRG_Soldier_F",[["30rnd_762x39_AK12_Lush_Mag_F",3,30]]],["V_PlateCarrierIAGL_dgtl",[]],[],"H_Cap_usblack","G_Aviator",[],["","","","","",""]], [8323.98, 5165.39, 11.3394], [0.341905, 0.939734, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_SittingRifle1","InBaseMoves_SittingRifle2"], "", "WhiteHead_18", [["arifle_ARX_ghex_F","muzzle_snds_65_TI_ghex_F","acc_flashlight","optic_Arco_lush_F",["30Rnd_65x39_caseless_green",30],["10Rnd_50BW_Mag_F",10],"bipod_02_F_lush"],[],[],["U_B_CombatUniform_mcam_wdl_f",[["30Rnd_65x39_caseless_green",3,30]]],["V_CarrierRigKBT_01_light_Olive_F",[["10Rnd_50BW_Mag_F",2,10]]],[],"","G_Bandanna_blk",[],["","","","","",""]], [8324.98, 5169.48, 11.3401], [0.0820841, -0.996625, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_11", [["srifle_LRR_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],[],[],["U_I_GhillieSuit",[["7Rnd_408_Mag",3,7]]],["V_PlateCarrierIAGL_dgtl",[]],[],"H_Bandanna_camo","",[],["","","","","",""]], [8303.55, 5156.97, 11.3114], [-0.670932, 0.741519, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "AfricanHead_01", [["srifle_LRR_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],[],[],["U_I_G_resistanceLeader_F",[["7Rnd_408_Mag",2,7]]],["V_PlateCarrier1_blk",[]],[],"H_Cap_usblack","",[],["","","","","",""]], [8312.83, 5166.33, 11.3114], [-0.698836, 0.715282, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_AircraftCustoms", "GreekHead_A3_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [2330.49, 9129.43, 76.0946], [0.338105, 0.941108, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Vehicle", "WhiteHead_02", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Tactical_Clear",[],["","","","","",""]], [2338.15, 9167.6, 75.9914], [-0.317754, -0.948173, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Aircraft", "WhiteHead_08", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [2340.37, 9125.77, 76.0946], [0.258602, 0.965984, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["Acts_carFixingWheel"], "Exile_Trader_VehicleCustoms", "WhiteHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [2323.69, 9170.63, 75.9914], [0.666261, 0.745718, 0], [0, 0, 1]],
["Exile_Trader_Food", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Food", "GreekHead_A3_06", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [2312.85, 9169.88, 76.2786], [-0.950581, 0.310476, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Equipment", "WhiteHead_17", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [2310.83, 9164.58, 76.273], [-0.951143, 0.30875, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Armory", "GreekHead_A3_08", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [2368.61, 9127.37, 76.5286], [-0.957069, 0.289861, 0], [0, 0, 1]],
["Exile_Trader_Office", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Office", "GreekHead_A3_05", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [2307.53, 9178.18, 76.297], [-0.308669, -0.951169, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Hardware", "WhiteHead_14", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [2308.9, 9159.56, 76.2645], [-0.950174, 0.311719, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_SpecialOperations", "GreekHead_A3_06", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [2365.42, 9118.57, 76.5285], [-0.946354, 0.323131, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_WasteDump", "WhiteHead_04", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [2373.06, 9145.39, 75.9914], [-0.316789, -0.948496, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_SittingRifle1","InBaseMoves_SittingRifle2"], "", "WhiteHead_20", [["arifle_AK12_lush_F","muzzle_snds_B_lush_F","acc_pointer_IR","optic_Arco_lush_F",["30rnd_762x39_AK12_Lush_Mag_F",30],[],""],[],[],["U_B_CTRG_Soldier_F",[["30rnd_762x39_AK12_Lush_Mag_F",3,30]]],["V_PlateCarrierIAGL_dgtl",[]],[],"H_Cap_usblack","G_Aviator",[],["","","","","",""]], [2359.19, 9154.81, 76.0183], [0.9972, 0.0747821, 0], [0, 0, 1]],
["Exile_Guard_01", ["InBaseMoves_SittingRifle1","InBaseMoves_SittingRifle2"], "", "WhiteHead_18", [["arifle_ARX_ghex_F","muzzle_snds_65_TI_ghex_F","acc_flashlight","optic_Arco_lush_F",["30Rnd_65x39_caseless_green",30],["10Rnd_50BW_Mag_F",10],"bipod_02_F_lush"],[],[],["U_B_CombatUniform_mcam_wdl_f",[["30Rnd_65x39_caseless_green",3,30]]],["V_CarrierRigKBT_01_light_Olive_F",[["10Rnd_50BW_Mag_F",2,10]]],[],"","G_Bandanna_blk",[],["","","","","",""]], [2363.33, 9155.59, 76.0199], [-0.87471, -0.484646, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "WhiteHead_11", [["srifle_LRR_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],[],[],["U_I_GhillieSuit",[["7Rnd_408_Mag",3,7]]],["V_PlateCarrierIAGL_dgtl",[]],[],"H_Bandanna_camo","",[],["","","","","",""]], [2343.11, 9169.98, 75.9914], [0.400023, 0.916505, 0], [0, 0, 1]],
["Exile_Guard_03", ["HubStanding_idle1","HubStanding_idle2","HubStanding_idle3"], "", "AfricanHead_01", [["srifle_LRR_F","","","optic_LRPS",["7Rnd_408_Mag",7],[],""],[],[],["U_I_G_resistanceLeader_F",[["7Rnd_408_Mag",2,7]]],["V_PlateCarrier1_blk",[]],[],"H_Cap_usblack","",[],["","","","","",""]], [2355.46, 9165.37, 75.9914], [0.364633, 0.931151, 0], [0, 0, 1]],
["Exile_Trader_Food", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Food", "WhiteHead_02", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [1948.81, 1872.94, 8.04029], [-0.0202917, 0.999794, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Armory", "WhiteHead_07", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [1961.55, 1880.94, 8.04029], [-0.999794, -0.0202918, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Equipment", "WhiteHead_08", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [1957.2, 1873.67, 8.04029], [-0.0298168, 0.999555, 0], [0, 0, 1]],
["Exile_Trader_Office", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Office", "WhiteHead_08", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [1961.35, 1892.32, 8.04029], [-0.999196, -0.0400951, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Hardware", "WhiteHead_04", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","",[],["","","","","",""]], [1954.19, 1901.09, 8.04029], [0.0202918, -0.999794, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_SpecialOperations", "WhiteHead_14", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [1945.45, 1901.33, 8.04029], [0.0202918, -0.999794, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Vehicle", "GreekHead_A3_09", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [1939.94, 1905.77, 8.15517], [-0.998087, -0.0618178, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_Aircraft", "WhiteHead_06", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [1939.89, 1907.58, 8.15395], [-0.996447, -0.084223, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_AircraftCustoms", "WhiteHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [1945.62, 1914, 7.96736], [-0.0613974, 0.998113, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_VehicleCustoms", "WhiteHead_03", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [1949.2, 1914.17, 7.91794], [-0.0421802, 0.99911, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["AidlPercMstpSnonWnonDnon_G01","AidlPercMstpSnonWnonDnon_G02","AidlPercMstpSnonWnonDnon_G03","AidlPercMstpSnonWnonDnon_G04","AidlPercMstpSnonWnonDnon_G05","AidlPercMstpSnonWnonDnon_G06"], "Exile_Trader_WasteDump", "WhiteHead_13", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [1940.47, 1929.56, 7.97866], [0.0204703, -0.99979, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_05", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]], [1980.55, 7894.75, 4.97744], [0.0168293, -0.999858, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Diving", "WhiteHead_03", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [1875.49, 7884.68, 4.96344], [-0.0757567, -0.997126, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_BoatCustoms", "WhiteHead_09", [[],[],[],["U_B_T_Soldier_AR_F",[]],[],[],"","G_Aviator",[],["","","","","",""]], [1970.08, 7891.92, 4.97744], [0.99996, -0.00892071, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "WhiteHead_11", [[],[],[],["U_BG_Guerilla1_1",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [1871.03, 7876.24, 4.96344], [0.999673, 0.0255616, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_05", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [2876.45, 1248.92, 2.50144], [0.0238829, -0.999715, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "WhiteHead_10", [[],[],[],["U_BG_Guerilla1_1",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [2937.78, 1218.62, 2.51164], [-0.998288, -0.058485, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_BoatCustoms", "WhiteHead_03", [[],[],[],["U_B_T_Soldier_AR_F",[]],[],[],"","G_Aviator",[],["","","","","",""]], [2878.92, 1206.39, 2.50144], [-0.999911, 0.0133029, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Diving", "WhiteHead_15", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [2934.57, 1221.52, 2.51164], [-0.0407553, -0.999169, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_WasteDump", "WhiteHead_03", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [9114.95, 9927.72, 3.08393], [-0.999574, 0.0291692, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["HubStandingUA_idle1","HubStandingUA_idle2","HubStandingUA_idle3","HubStandingUA_move1","HubStandingUA_move2"], "Exile_Trader_BoatCustoms", "WhiteHead_09", [[],[],[],["U_B_T_Soldier_AR_F",[]],[],[],"","G_Aviator",[],["","","","","",""]], [9107.19, 9930.01, 3.08772], [0.996336, -0.0855289, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"], "Exile_Trader_Boat", "WhiteHead_11", [[],[],[],["U_BG_Guerilla1_1",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [9108.98, 9931.16, 3.08685], [-0.0808572, -0.996726, 0], [0, 0, 1]],
["Exile_Trader_Diving", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Diving", "WhiteHead_03", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [9109.09, 9925.65, 3.0868], [0.712961, -0.701203, 0], [0, 0, 1]]
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
	'Flag ransom needs to be paid within 48 hours or the base will be delted'
	];
	_txt = SelectRandom _msgs;
    SystemChat Format ["%1",_txt];
	sleep 300;
   };
};


/*
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
*/
[] Spawn {
 {
    _location = createLocation [ "NameLocal" ,(_x select 0), 30, 30];
    _location setText (_x select 1);
 } Foreach [
 /*
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
  */
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