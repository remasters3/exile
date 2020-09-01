/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

if (!hasInterface || isServer) exitWith {};

// 53 NPCs
private _npcs = [
/*Boat Traders*/
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
["Exile_Trader_Diving", ["c4coming2cDf_genericstani1","c4coming2cDf_genericstani2","c4coming2cDf_genericstani3"], "Exile_Trader_Diving", "WhiteHead_03", [["arifle_SDAR_F","","","",[],[],""],[],[],["U_I_Wetsuit",[]],["V_RebreatherIA",[]],[],"","G_I_Diving",[],["","","","","",""]], [9109.09, 9925.65, 3.0868], [0.712961, -0.701203, 0], [0, 0, 1]],
/* debug island*/
["Exile_Trader_Vehicle",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Vehicle","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10021.2,447.001,6.63123],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_WasteDump",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_WasteDump","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10027.9,447.001,6.39551],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_AircraftCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_AircraftCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10034.7,447.001,6.13053],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_Aircraft",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Aircraft","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10032.6,447.001,6.21296],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_Boat",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Boat","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10042.7,449.52,5.69022],[1,-4.37114e-008,0],[0,0,1]],
["Exile_Trader_BoatCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_BoatCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10042.7,451.159,5.57218],[1,-4.37114e-008,0],[0,0,1]],
["Exile_Trader_Equipment",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Equipment","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10034.4,448.406,7.19141],[0,1,0],[0,0,1]],
["Exile_Trader_Armory",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Armory","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10029.4,448.406,7.18601],[0,1,0],[0,0,1]],
["Exile_Trader_Diving",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Diving","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10034.4,457.824,7.18838],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_Food",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Food","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10029.4,457.824,7.20146],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_Office",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Office","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10024.4,457.824,7.20163],[-8.74228e-008,-1,0],[0,0,1]],
["Exile_Trader_SpecialOperations",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_SpecialOperations","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10024.4,448.406,7.17698],[0,1,0],[0,0,1]],
["Exile_Trader_VehicleCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_VehicleCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[10023.2,447.001,6.57595],[-8.74228e-008,-1,0],[0,0,1]],
/* Smugglers Airport*/
["Exile_Trader_Vehicle",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Vehicle","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8388.55,2169.73,9.92198],[-0.587977,0.808878,0],[0,0,1]],
["Exile_Trader_WasteDump",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_WasteDump","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8383.14,2165.8,9.92144],[-0.587977,0.808878,0],[0,0,1]],
["Exile_Trader_AircraftCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_AircraftCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8377.66,2161.82,9.92676],[-0.587976,0.808878,0],[0,0,1]],
["Exile_Trader_Aircraft",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Aircraft","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8379.35,2163.05,9.92535],[-0.587978,0.808877,0],[0,0,1]],
["Exile_Trader_Equipment",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Equipment","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8378.71,2160.84,10.7459],[0.588095,-0.808792,0],[0,0,1]],
["Exile_Trader_Armory",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Armory","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8382.75,2163.79,10.7423],[0.587975,-0.808879,0],[0,0,1]],
["Exile_Trader_Diving",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Diving","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8384.27,2153.24,10.7482],[-0.588084,0.8088,0],[0,0,1]],
["Exile_Trader_Food",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Food","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8388.31,2156.18,10.7599],[-0.587993,0.808866,0],[0,0,1]],
["Exile_Trader_Office",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Office","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8392.36,2159.12,10.7604],[-0.587993,0.808866,0],[0,0,1]],
["Exile_Trader_SpecialOperations",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_SpecialOperations","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8386.8,2166.73,10.7334],[0.588017,-0.808849,0],[0,0,1]],
["Exile_Trader_VehicleCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_VehicleCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[8386.97,2168.59,9.92427],[-0.587978,0.808877,0],[0,0,1]],
/*airport fortieste*/
["Exile_Trader_Vehicle",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Vehicle","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2008.59,499.367,8.00144],[-0.0727409,0.997351,0],[0,0,1]],
["Exile_Trader_WasteDump",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_WasteDump","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2001.93,498.881,8.00144],[-0.0727409,0.997351,0],[0,0,1]],
["Exile_Trader_AircraftCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_AircraftCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[1995.17,498.39,8.00432],[-0.0727399,0.997351,0],[0,0,1]],
["Exile_Trader_Aircraft",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Aircraft","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[1997.25,498.543,8.00144],[-0.0727424,0.997351,0],[0,0,1]],
["Exile_Trader_Equipment",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Equipment","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[1995.54,497.005,9.07353],[0.0728901,-0.99734,0],[0,0,1]],
["Exile_Trader_Armory",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Armory","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2000.53,497.373,9.06428],[0.0727438,-0.997351,0],[0,0,1]],
["Exile_Trader_Diving",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Diving","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[1996.26,487.613,9.06366],[-0.0728725,0.997341,0],[0,0,1]],
["Exile_Trader_Food",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Food","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2001.24,487.983,9.07925],[-0.0727597,0.99735,0],[0,0,1]],
["Exile_Trader_Office",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Office","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2006.23,488.341,9.07992],[-0.0727602,0.99735,0],[0,0,1]],
["Exile_Trader_SpecialOperations",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_SpecialOperations","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2005.52,497.737,9.05671],[0.0727936,-0.997347,0],[0,0,1]],
["Exile_Trader_VehicleCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_VehicleCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2006.65,499.226,8.00144],[-0.0727424,0.997351,0],[0,0,1]],
/*NorthWest Island Trader Airfield*/
["Exile_Trader_Vehicle",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Vehicle","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2743.09,8356.43,17.511],[0.017297,-0.99985,0],[0,0,1]],
["Exile_Trader_WasteDump",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_WasteDump","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2749.77,8356.53,17.4614],[0.017297,-0.99985,0],[0,0,1]],
["Exile_Trader_AircraftCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_AircraftCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2756.54,8356.65,17.4614],[0.0172954,-0.99985,0],[0,0,1]],
["Exile_Trader_Aircraft",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Aircraft","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2754.46,8356.61,17.4614],[0.017302,-0.99985,0],[0,0,1]],
["Exile_Trader_Equipment",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Equipment","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2756.25,8358.05,18.4704],[-0.017434,0.999848,0],[0,0,1]],
["Exile_Trader_Armory",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Armory","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2751.25,8357.96,18.4685],[-0.0172967,0.99985,0],[0,0,1]],
["Exile_Trader_Diving",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Diving","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2756.06,8367.47,18.4725],[0.0174239,-0.999848,0],[0,0,1]],
["Exile_Trader_Food",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Food","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2751.06,8367.38,18.4835],[0.017319,-0.99985,0],[0,0,1]],
["Exile_Trader_Office",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_Office","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2746.06,8367.3,18.4834],[0.0173194,-0.99985,0],[0,0,1]],
["Exile_Trader_SpecialOperations",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_SpecialOperations","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2746.25,8357.88,18.4569],[-0.0173449,0.99985,0],[0,0,1]],
["Exile_Trader_VehicleCustoms",["HubBriefing_loop","HubBriefing_scratch","HubBriefing_stretch","HubBriefing_think"],"Exile_Trader_VehicleCustoms","WhiteHead_05",[[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Combat",[],["","","","","",""]],[2745.04,8356.45,17.4614],[0.017302,-0.99985,0],[0,0,1]]
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
	
gpf_TempTransport = {
	_plyrpos = _this Select 0;
	_dir = _this select 1;
	_uid = getPlayerUID player;
    _isBenifit = _uid in GPF_Benifits;
	_TempTransport = [];
	_pos = [_plyrpos,3,_dir] call BIS_fnc_relPos;
	_posASL = [(_pos select 0),(_pos select 1),(_plyrpos select 2)];
	_isWater = surfaceIsWater _pos;
	if (_isWater) Then {
	_TempTransport = createVehicle ['C_Scooter_Transport_01_F', [0,0,0], [], 0, 'FORM'];
	_posASL = [(_pos select 0),(_pos select 1),(_plyrpos select 2)+2];
	} else {
	_TempTransport = createVehicle ['B_Quadbike_01_F', [0,0,0], [], 0, 'FORM'];
	};
	_TempTransport addEventHandler ["GetOut", "_veh = _this select 0;if (count crew _veh <= 0) Then {deleteVehicle _veh;};playerQuad = false;"];
	_TempTransport Addaction ["Call Air Evac (1000 tabs)",{[player] execVM 'gpf_call_evac.sqf';}];
	_TempTransport addaction ["<t color='#ff0000'>-----------EXPERIMENTAL--------</t>",{}];
	_TempTransport Addaction ["<t color='#ff0000'>Call Support 1 Units ( 10k tabs )</t>",{[player,1] execVM 'gpf_call_support_units.sqf';}];
	_TempTransport Addaction ["<t color='#ff0000'>Call Support 2 Units ( 20k tabs )</t>",{[player,2] execVM 'gpf_call_support_units.sqf';}];
	_TempTransport Addaction ["<t color='#ff0000'>Call Support 3 Units ( 30k tabs )</t>",{[player,3] execVM 'gpf_call_support_units.sqf';}];
	_TempTransport Addaction ["<t color='#ff0000'>Call Support 4 Units ( 40k tabs )</t>",{[player,4] execVM 'gpf_call_support_units.sqf';}];
	_TempTransport Addaction ["<t color='#ff0000'>Call Support 5 Units ( 50k tabs )</t>",{[player,5] execVM 'gpf_call_support_units.sqf';}];
	_TempTransport addaction ["<t color='#ff0000'>---------------------------------</t>",{}];
	_TempTransport setdir _dir;
	_TempTransport setposASL _pos;
	_TempTransport 
};
	

[] Spawn {
	pveh = [];
    while {missionon} Do {
	   player enableFatigue false;
	   waitUntil {inputAction "User20" > 0};
	   if (vehicle player != player) then {systemchat "Get out of the vehicle first!"} else {
			if (playerQuad) Then { deleteVehicle pveh; pveh = [(GetPosASL player),(getDir player)] Call gpf_TempTransport; playerQuad = true;} 
							Else {pveh = [(GetPosASL player),(getDir player)] Call gpf_TempTransport; playerQuad = true;};
	    /*player moveInDriver pveh;*/
		};
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



[] Spawn {
 while {missionon} Do {
    _Zones = [
      [debug_flag,300]
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