/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 * Exile.Malden by [FPS]kuplion
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

// 70 Vehicles
private _vehicles = [
["Exile_Sign_WasteDump", [7410.4, 8074.21, 170.342], [-0.535676, -0.844424, 0], [0, 0, 1], false],
["Land_HelipadEmpty_F", [7436.66, 8117.48, 169.252], [0, 1, 0], [0, 0, 1], true],
["Exile_Sign_VehicleCustoms", [7431.35, 8129.08, 170.311], [0.069323, 0.997594, 0], [0, 0, 1], false],
["Exile_Sign_Vehicles", [7450.73, 8121.39, 169.997], [0.998014, -0.0629868, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations", [6066.99, 10760.2, 121.291], [0.999444, -0.0333287, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations", [6122.13, 10760.5, 121.364], [-0.999904, 0.013865, 0], [0, 0, 1], false],
["Exile_Sign_SpecialOperations_Small", [6092.33, 10755.8, 121.461], [-0.98429, -0.176559, 0], [0, 0, 1], false],
["Exile_Sign_AircraftCustoms", [7963.51, 9637.76, 33.7203], [-0.0171928, -0.999852, 0], [0, 0, 1], false],
["Exile_Sign_Aircraft", [7963.34, 9635.77, 33.6934], [0.0322365, 0.99948, 0], [0, 0, 1], false],
["Land_HelipadEmpty_F", [7920.04, 9637.63, 30.7535], [0, 1, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [7941.42, 9598.11, 31.04], [0, 1, 0], [0, 0, 1], true],
["Land_HelipadEmpty_F", [7936.26, 9676.75, 30.4458], [0, 1, 0], [0, 0, 1], true],
["Land_CampingChair_V2_F", [7962.29, 9634.88, 31.3436], [0, 0.999946, -0.0103981], [-0.00077204, 0.0103981, 0.999946], false],
["Exile_Sign_WasteDump", [8042.22, 9682.22, 31.4124], [0.999979, -0.00642216, 0], [0, 0, 1], false],
["Land_PlasticBarrier_02_F", [7442.38, 8127.04, 169.423], [0.991248, -0.127534, -0.0340989], [0.0343797, 0, 0.999409], false],
["Land_PlasticBarrier_03_F", [7434.35, 8128, 169.689], [-0.996985, 0.0775958, 0], [0, 0, 1], false],
["Land_PlasticBarrier_03_F", [7435.26, 8126.26, 169.689], [-0.571507, -0.820598, 0], [0, 0, 1], false],
["Land_PlasticBarrier_03_F", [7437.33, 8125.64, 169.689], [-0.0355539, -0.999368, 0], [0, 0, 1], false],
["PlasticBarrier_03_blue_F", [7441.41, 8125.63, 169.555], [-0.0255537, 0.999673, 0.000879049], [0.0343797, 0, 0.999409], false],
["Exile_Sign_TraderCity", [7364.16, 8160.39, 170.082], [0.999992, 0.00405318, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [7447.03, 8031.31, 171.995], [0.5484, 0.836216, 0], [0, 0, 1], false],
["Exile_Sign_Food", [7385.34, 8070.16, 170.281], [-0.49214, -0.870516, 0], [0, 0, 1], false],
["Exile_Sign_Hardware", [7439.66, 8139.77, 170.52], [0.0770637, 0.997026, 0], [0, 0, 1], false],
["Exile_Sign_Hardware", [7425.98, 8134.38, 170.311], [0.997784, -0.0665425, 0], [0, 0, 1], false],
["Exile_Sign_Equipment", [7370.9, 8079.97, 170.015], [-0.652676, -0.757637, 0], [0, 0, 1], false],
["PlasticBarrier_03_blue_F", [7449.1, 8114, 169.642], [-0.0255537, 0.99919, -0.0310958], [0.0343797, 0.0319659, 0.998897], false],
["Land_PlasticBarrier_03_F", [7446.63, 8115.07, 169.665], [0.851883, 0.523731, 0.00125283], [0, -0.00239211, 0.999997], false],
["Land_PortableLight_double_F", [7451.29, 8138.41, 170.56], [0.872459, 0.488687, 0], [0, 0, 1], true],
["Exile_Construction_WorkBench_Preview", [7438.75, 8129.69, 169.463], [-0.0663431, -0.997797, 0.000609395], [-0.00880253, 0.00119599, 0.999961], false],
["ShootingMat_01_OPFOR_F", [7434.37, 8132.35, 169.452], [-0.604602, 0.796528, -9.38198e-005], [0.000488106, 0.000488281, 1], false],
["Land_CanisterFuel_F", [7437.39, 8139.69, 169.751], [-0.429192, 0.903175, 0.00829775], [0, -0.00918692, 0.999958], false],
["Land_CanisterPlastic_F", [7445.7, 8138.66, 169.804], [0, 0.999721, 0.0236006], [-0.00138107, -0.0236006, 0.999721], false],
["Exile_Sign_Foolbox", [7451.35, 8131.17, 170.509], [0.996696, -0.0812205, 0], [0, 0, 1], false],
["Land_PortableLight_double_F", [7434.28, 8059.75, 170.324], [0.0497714, -0.998761, 0], [0, 0, 1], true],
["Land_PortableLight_double_F", [7389.33, 8100.2, 170.324], [0.477131, 0.878832, 0], [0, 0, 1], true],
["Land_Laptop_unfolded_F", [7392.77, 8102.39, 170.438], [-0.283054, 0.958809, -0.0237975], [0.00411396, 0.0260258, 0.999653], false],
["Land_Notepad_F", [7393.25, 8102.72, 170.284], [0, 0.999904, -0.0138534], [-0.0109997, 0.0138526, 0.999844], false],
["Land_MapBoard_F", [7392.01, 8099.98, 170.438], [-0.492222, -0.87047, 0.000211641], [0.00382882, -0.00192194, 0.999991], false],
["Land_File_research_F", [7392.34, 8102.13, 170.294], [0.948683, -0.31618, 0.00550785], [0, 0.0174174, 0.999848], false],
["Land_Photos_V1_F", [7393.31, 8102.47, 170.286], [0, 1, 0], [0, 0, 1], false],
["Land_Photos_V2_F", [7392.8, 8103.83, 169.474], [0, 0.999848, -0.0174174], [0, 0.0174174, 0.999848], false],
["Land_File1_F", [7392.81, 8103.73, 169.482], [0, 1, 0], [0, 0, 1], false],
["Land_File2_F", [7392.98, 8103.74, 169.48], [-0.532235, 0.846597, 0], [0, 0, 1], false],
["Land_CampingChair_V2_F", [7391.98, 8101.2, 169.978], [-0.302242, -0.953231, -0.00067483], [0.00382882, -0.00192194, 0.999991], false],
["Exile_Sign_Office", [7395.82, 8101.18, 170.281], [-0.862092, 0.506751, 0], [0, 0, 1], false],
["Exile_Sign_Armory", [7403.71, 8114.81, 170.281], [-0.865108, 0.501585, 0], [0, 0, 1], false],
["Land_CampingChair_V2_F", [7397.35, 8123.46, 169.964], [-0.486485, 0.873689, 0.000237457], [0.000488106, 0, 1], false],
["Land_PortableLight_double_F", [7394.63, 8105.76, 170.495], [0.0497714, -0.998761, 0], [0, 0, 1], true],
["Exile_ConcreteMixer", [4488.07, 8372.28, 371.738], [-0.399399, 0.915973, -0.0383965], [-0.0575043, 0.0167695, 0.998204], true],
["Exile_ConcreteMixer", [5170.86, 1186.99, 22.595], [0.989922, -0.140705, -0.0160267], [0.00559929, -0.0741935, 0.997228], true],
["Land_CampingChair_V2_F", [7716.54, 5096.73, 0.707105], [-0.0624025, -0.998051, 0], [0, 0, 1], false],
["Exile_Sign_Boat", [7743.88, 5064.63, 0.0825628], [0.00343829, 0.999994, 0], [0, 0, 1], false],
["Exile_Sign_BoatCustoms", [7697.65, 5074.28, -1.2109], [-0.502897, 0.864347, 0], [0, 0, 1], false],
["Land_HelipadEmpty_F", [7704.83, 5134.45, -1.17619], [0, 1, 0], [0, 0, 1], true],
["Exile_Sign_RussianRoulette", [3226.13, 8495.04, 48.8491], [-0.445615, 0.895225, 0], [0, 0, 1], false],
["Exile_RussianRouletteChair", [3229.31, 8492.97, 48.0178], [-0.536285, 0.843173, -0.0381859], [-0.0622787, 0.0055884, 0.998043], true],
["Exile_RussianRouletteChair", [3231.01, 8493.29, 48.1216], [0.444022, 0.895728, 0.0226919], [-0.0622787, 0.0055884, 0.998043], true],
["Exile_RussianRouletteChair", [3228.22, 8490.93, 47.9612], [-0.98274, -0.174874, -0.0603446], [-0.0622787, 0.0055884, 0.998043], true],
["Exile_RussianRouletteChair", [3229.26, 8489.03, 48.0363], [-0.299248, -0.954082, -0.0133311], [-0.0622787, 0.0055884, 0.998043], true],
["Exile_RussianRouletteChair", [3230.87, 8489.63, 48.1336], [0.548332, -0.835356, 0.0388938], [-0.0622787, 0.0055884, 0.998043], true],
["Exile_RussianRouletteChair", [3232.15, 8491.39, 48.2036], [0.980315, -0.187379, 0.0622217], [-0.0622787, 0.0055884, 0.998043], true],
["Exile_Sign_Locker", [7449.34, 8101.14, 170.281], [0.998429, -0.0560343, 0], [0, 0, 1], false],
["Exile_Locker", [7449.06, 8098.22, 169.24], [0.992411, -0.122967, 0], [0, 0, 1], true],
["Exile_Locker", [7449.55, 8103.65, 169.24], [0.993994, -0.109433, 0], [0, 0, 1], true],
["Exile_Sign_BoatAndDiving_Small", [7748.23, 5098.87, -1.16874], [0, 1, 0], [0, 0, 1], false],
["Exile_Sign_Armory", [7396.52, 8124.2, 170.499], [-0.865108, 0.501585, 0], [0, 0, 1], false],
["Exile_Sign_TraderCity", [7253.03, 8172.67, 168.661], [0.423437, -0.905926, 0], [0, 0, 1], false],
["KartSteertingWheel_01_orange_F", [7443.3, 8127.19, 169.252], [0.996059, -0.0801971, -0.0378807], [0.0374495, -0.00687427, 0.999275], false],
["Land_WaterCooler_01_new_F", [7390.05, 8071.24, 170.215], [0.84198, -0.533521, 0.0801558], [-0.0947706, 0, 0.995499], false],
["Land_WaterCooler_01_old_F", [7390.28, 8071.6, 170.237], [0.833274, -0.547139, 0.079327], [-0.0947706, 0, 0.995499], false]
];
//DeepFriedHaggis
_vehicles = _vehicles + [
];
{
    private _vehicle = (_x select 0) createVehicle (_x select 1);
    _vehicle allowDamage false;
    _vehicle setPosWorld (_x select 1);
    _vehicle setVectorDirAndUp [_x select 2, _x select 3];
    _vehicle enableSimulationGlobal (_x select 4);
    _vehicle setVariable ["ExileIsLocked", -1, true];

    if (_vehicle isKindOf "Exile_RussianRouletteChair") then
    {
        ExileRouletteChairs pushBack _vehicle;
        ExileRouletteChairPositions pushBack [_x select 1, getDir _vehicle];
    };
}
forEach _vehicles;

// 242 Simple Objects
private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
private _simpleObjects = [
["a3\structures_f_heli\furniture\officechair_01_f.p3d", [7409.96, 8075.54, 169.927], [-0.849555, -0.527426, 0.00880506], [0.00639417, 0.00639427, 0.999959]],
["a3\structures_f\wrecks\wreck_cardismantled_f.p3d", [7448.36, 8117.03, 170.036], [0.282878, 0.958305, -0.0404029], [0.0343797, 0.0319659, 0.998897]],
["a3\structures_f\walls\cncbarrier_f.p3d", [6067.03, 10764.2, 120.641], [0.611081, 0.791568, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [6067, 10760.2, 120.635], [0.99978, -0.0209967, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [6066.82, 10755.7, 120.64], [0.654238, -0.756288, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [6122.48, 10756.2, 120.716], [-0.595555, -0.803315, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [6122.12, 10760.5, 120.709], [-0.999999, 0.00152923, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [6122.65, 10764.7, 120.706], [-0.668838, 0.743408, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [6075.68, 10748, 121.075], [0.611081, 0.791568, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [6105.19, 10782.8, 120.706], [-0.603903, -0.797057, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [6077.45, 10745.3, 120.731], [-0.875212, -0.483739, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_stripes_f.p3d", [6117.45, 10760.5, 120.709], [-0.999999, 0.00152923, 0], [0, 0, 1]],
["a3\structures_f\civ\market\cratesplastic_f.p3d", [6095.36, 10749, 120.566], [0, 0.999896, -0.0143936], [0, 0.0143936, 0.999896]],
["a3\structures_f\civ\market\cratesplastic_f.p3d", [6087.67, 10751.1, 120.553], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\market\cratesshabby_f.p3d", [6088.92, 10751.6, 121.08], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\market\crateswooden_f.p3d", [6092.93, 10752.8, 121.263], [-0.804018, 0.594605, 0], [0, 0, 1]],
["a3\props_f_exp\commercial\market\woodencrate_01_stack_x5_f.p3d", [6085.48, 10748.3, 121.3], [0, 0.999946, -0.0103923], [0, 0.0103923, 0.999946]],
["a3\props_f_exp\commercial\market\woodencrate_01_stack_x3_f.p3d", [6095.19, 10745.4, 121.094], [0, 0.999896, -0.0143936], [0, 0.0143936, 0.999896]],
["a3\props_f_exp\commercial\market\woodencrate_01_f.p3d", [6089.35, 10749, 120.999], [0, 0.996409, -0.084672], [0.062433, 0.0845068, 0.994465]],
["a3\structures_f_epa\mil\scrapyard\pallet_milboxes_f.p3d", [6088.12, 10752.8, 120.77], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\constructions\pallet_f.p3d", [6093.27, 10753.4, 120.421], [0.952056, -0.305924, 0], [0, 0, 1]],
["a3\structures_f\civ\constructions\pallet_f.p3d", [6092.31, 10751.9, 120.421], [-0.779088, 0.626914, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\sleeping_bag_blue_folded_f.p3d", [6089.51, 10749.5, 121.398], [-0.672077, -0.732588, 0.10783], [0.068981, 0.0830468, 0.994155]],
["a3\structures_f\civ\camping\ground_sheet_folded_blue_f.p3d", [6089.5, 10748.9, 121.399], [-0.811387, 0.584506, 0.00171546], [0.0640043, 0.0859302, 0.994243]],
["a3\structures_f\civ\camping\sleeping_bag_blue_f.p3d", [6087.39, 10748.1, 120.366], [0.0342806, -0.999358, 0.0103862], [0, 0.0103923, 0.999946]],
["a3\structures_f\wrecks\wreck_heli_attack_02_f.p3d", [8031.73, 9683.13, 33.1814], [0.904076, -0.427372, -0.000407918], [0.00158197, 0.00239208, 0.999996]],
["a3\structures_f\wrecks\wreck_offroad_f.p3d", [8062.63, 9652.51, 31.3151], [-0.3009, 0.953655, 0.000797697], [0.0127978, 0.00320161, 0.999913]],
["a3\structures_f\wrecks\wreck_plane_transport_01_f.p3d", [7871.99, 9783.58, 30.2131], [0.739031, -0.673671, 0.000465193], [0, 0.000690534, 1]],
["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_04_f.p3d", [7883.32, 9795.63, 30.4177], [0, 1, -0.000690534], [0, 0.000690534, 1]],
["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_01_f.p3d", [7873.76, 9765.95, 30.4275], [0, 0.999997, -0.00239208], [-0.00077204, 0.00239208, 0.999997]],
["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_02_f.p3d", [7901.59, 9778.59, 30.6153], [0, 0.999997, -0.00239208], [-0.00077204, 0.00239208, 0.999997]],
["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_04_f.p3d", [7891.31, 9778.12, 30.4377], [0, 1, -0.00077204], [-0.00158221, 0.000772039, 0.999998]],
["a3\structures_f\wrecks\wreck_slammer_f.p3d", [7958.24, 9745.7, 31.7904], [-0.836431, -0.548072, 0.000378462], [0, 0.000690534, 1]],
["a3\structures_f\wrecks\wreck_t72_hull_f.p3d", [8022.19, 9843.97, 30.754], [0.540019, -0.841651, 0.00140307], [0.00239211, 0.00320186, 0.999992]],
["a3\structures_f_epb\items\luggage\luggageheap_03_f.p3d", [7966.9, 9635.77, 31.3345], [0, 0.999946, -0.0103981], [0.000771824, 0.0103981, 0.999946]],
["a3\structures_f_epb\items\luggage\luggageheap_01_f.p3d", [7965.44, 9634.53, 31.3522], [0, 0.999946, -0.0103981], [0.000771824, 0.0103981, 0.999946]],
["a3\structures_f_epb\items\luggage\luggageheap_04_f.p3d", [7959.57, 9634.04, 31.3436], [0, 0.999946, -0.0103981], [-0.00077204, 0.0103981, 0.999946]],
["a3\structures_f_epa\civ\constructions\pallets_stack_f.p3d", [7967.7, 9638.51, 31.2241], [0, 0.999937, -0.0111984], [0.000771824, 0.0111984, 0.999937]],
["a3\structures_f_heli\civ\market\pallettrolley_01_khaki_f.p3d", [7967.95, 9639.92, 31.3263], [0.944555, -0.328341, 0.00294805], [0.000771824, 0.0111984, 0.999937]],
["a3\structures_f_heli\civ\garbage\wheeliebin_01_f.p3d", [8040.1, 9684.67, 30.8875], [0.926471, -0.376364, -0.00131594], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f_epb\civ\garbage\garbagecontainer_closed_f.p3d", [8042.66, 9686.76, 31.1434], [-0.975107, 0.221725, 0.0018022], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f\items\vessels\barreltrash_f.p3d", [8039.62, 9680.01, 30.7877], [0, 0.999997, -0.00239208], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f_epb\items\vessels\barreltrash_grey_f.p3d", [8039.63, 9680.74, 30.7859], [0, 0.999997, -0.00239208], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f_epb\civ\garbage\garbagecontainer_open_f.p3d", [8039.51, 9682.91, 31.1147], [0, 0.999997, -0.00239208], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f_argo\military\fortifications\barricade_01_10m_f.p3d", [8044.24, 9678.48, 30.3755], [0.853413, -0.521236, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [8036.38, 9685.14, 30.4169], [0, 0.999997, -0.00239208], [0.00158197, 0.00239208, 0.999996]],
["a3\structures_f\civ\garbage\garbagebags_f.p3d", [8046.37, 9685.71, 30.7866], [0, 0.999997, -0.00239208], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f_argo\civilian\garbage\garbagebarrel_01_english_f.p3d", [8043.24, 9684.52, 30.9773], [0, 0.999997, -0.00239208], [0.00239211, 0.00239207, 0.999994]],
["a3\props_f_exp\civilian\garbage\garbageheap_01_f.p3d", [8037.99, 9675.47, 30.8509], [0, 0.999997, -0.00239208], [0.00239211, 0.00239207, 0.999994]],
["a3\props_f_exp\civilian\garbage\garbageheap_04_f.p3d", [8043.98, 9689.46, 30.862], [-0.681308, -0.731989, 0.00338076], [0.00239211, 0.00239207, 0.999994]],
["a3\structures_f_epb\items\luggage\luggageheap_04_f.p3d", [8031.9, 9679.45, 30.8983], [-0.960469, 0.278386, 0.000853517], [0.00158197, 0.00239208, 0.999996]],
["a3\structures_f_epb\civ\garbage\garbagecontainer_closed_f.p3d", [7960.59, 9636.91, 31.5986], [-0.999641, 0.0267799, -0.00105028], [-0.00077204, 0.0103981, 0.999946]],
["a3\structures_f\civ\garbage\junkpile_f.p3d", [8034.34, 9680.99, 30.6654], [0, 0.999997, -0.00239208], [0.00158197, 0.00239208, 0.999996]],
["a3\props_f_exp\civilian\garbage\garbageheap_02_f.p3d", [8036.78, 9682.43, 30.4531], [0.700313, 0.71383, -0.00281542], [0.00158197, 0.00239208, 0.999996]],
["a3\structures_f_epb\civ\garbage\garbagecontainer_closed_f.p3d", [7408.73, 8076.5, 170.039], [0.64552, 0.76369, -0.00901117], [0.00639417, 0.00639427, 0.999959]],
["a3\structures_f\items\vessels\barreltrash_f.p3d", [7406.45, 8076.78, 169.672], [0, 0.99998, -0.0063944], [0.00639417, 0.00639427, 0.999959]],
["a3\structures_f_epb\items\vessels\barreltrash_grey_f.p3d", [7407.65, 8077.41, 169.66], [0, 0.99998, -0.0063944], [0.00639417, 0.00639427, 0.999959]],
["a3\structures_f\items\vessels\barreltrash_f.p3d", [7404.83, 8077.72, 169.676], [0, 0.99998, -0.0063944], [0.00639417, 0.00639427, 0.999959]],
["a3\structures_f\civ\garbage\garbage_square3_f.p3d", [7414.11, 8077.37, 169.292], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbage_square5_f.p3d", [7409.46, 8080.91, 169.279], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\garbage\garbagewashingmachine_f.p3d", [7422.36, 8077.34, 169.692], [0, 1, 0], [0, 0, 1]],
["a3\props_f_exp\civilian\garbage\garbageheap_01_f.p3d", [7406.45, 8079.96, 169.7], [0, 0.99998, -0.0063944], [0.00639417, 0.00639427, 0.999959]],
["a3\structures_f\civ\garbage\tyres_f.p3d", [7415.08, 8072.94, 169.512], [0, 1, 0], [0, 0, 1]],
["a3\props_f_exp\civilian\garbage\garbageheap_02_f.p3d", [7416.2, 8066.19, 169.616], [0, 0.998205, -0.0598926], [0.0598924, 0.0597851, 0.996413]],
["a3\props_f_exp\civilian\garbage\garbageheap_04_f.p3d", [7420.21, 8064.09, 169.944], [-0.996417, 0.0633011, 0.0560945], [0.0598924, 0.0597851, 0.996413]],
["a3\structures_f\wrecks\wreck_offroad2_f.p3d", [7438.34, 8126.81, 170.156], [0.997949, -0.0540295, -0.0343295], [0.0343797, 0, 0.999409]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7446.69, 8063.03, 169.659], [0.419792, -0.90762, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_corner_f.p3d", [7448.29, 8064.23, 169.661], [0.827453, 0.561534, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7437.16, 8056.93, 169.659], [0.419792, -0.90762, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_corner_f.p3d", [7438.67, 8058.11, 169.661], [0.638174, 0.769892, 0], [0, 0, 1]],
["a3\structures_f\items\electronics\portable_generator_f.p3d", [7443.12, 8138.78, 169.815], [0.39943, 0.916495, 0.0221877], [-0.00138107, -0.0236006, 0.999721]],
["a3\structures_f_heli\furniture\workbench_01_f.p3d", [7439.6, 8139.15, 169.97], [0.0648764, 0.997851, 0.00916756], [0, -0.00918692, 0.999958]],
["a3\structures_f_bootcamp\civ\sportsgrounds\gymbench_01_f.p3d", [7432.27, 8130.79, 170.053], [-0.808681, -0.588092, 0.0134941], [0.0106021, 0.00836461, 0.999909]],
["a3\structures_f_bootcamp\civ\sportsgrounds\gymrack_03_f.p3d", [7431.8, 8132.37, 170.038], [-0.999246, 0.0374503, 0.0102818], [0.0106021, 0.00836461, 0.999909]],
["a3\structures_f_bootcamp\civ\sportsgrounds\gymrack_03_f.p3d", [7433.84, 8130.32, 170.033], [-0.0968271, -0.995257, 0.00935237], [0.0106021, 0.00836461, 0.999909]],
["a3\structures_f\items\tools\grinder_f.p3d", [7440.68, 8139.16, 170.369], [0, 0.999958, 0.00918692], [0, -0.00918692, 0.999958]],
["a3\structures_f_epa\items\tools\fireextinguisher_f.p3d", [7447.48, 8138.61, 169.847], [0, 0.999754, 0.0221871], [-0.0206342, -0.0221824, 0.999541]],
["a3\structures_f_epa\items\tools\fireextinguisher_f.p3d", [7446.94, 8139.15, 169.855], [0, 0.999721, 0.0236006], [-0.00138107, -0.0236006, 0.999721]],
["a3\structures_f\items\tools\axe_fire_f.p3d", [7446.59, 8138.86, 169.49], [-0.422501, -0.906096, -0.021974], [-0.00138107, -0.0236006, 0.999721]],
["a3\structures_f\items\vessels\bucket_f.p3d", [7431.52, 8133.23, 169.616], [0, 0.999965, -0.00836508], [0.0106021, 0.00836461, 0.999909]],
["a3\structures_f_heli\civ\constructions\tooltrolley_02_f.p3d", [7436.04, 8139.74, 169.957], [-0.997795, 0.0663632, 0.000616123], [0, -0.00928371, 0.999957]],
["a3\structures_f_heli\civ\constructions\gastank_01_khaki_f.p3d", [7441.84, 8129.21, 169.809], [-0.4921, -0.870281, 0.0211803], [0.0020712, 0.0231596, 0.99973]],
["a3\structures_f_heli\civ\constructions\gastank_01_khaki_f.p3d", [7442.42, 8129.39, 169.804], [-0.780964, 0.624444, -0.0128478], [0.0020712, 0.0231596, 0.99973]],
["a3\structures_f_heli\civ\constructions\gastank_01_yellow_f.p3d", [7442.93, 8129.2, 169.807], [0, 0.999732, -0.0231597], [0.0020712, 0.0231596, 0.99973]],
["a3\structures_f_heli\civ\constructions\gastank_01_blue_f.p3d", [7442.77, 8129.78, 169.794], [0.821762, -0.569715, 0.0114954], [0.0020712, 0.0231596, 0.99973]],
["a3\structures_f_epa\items\tools\shovel_f.p3d", [7439.7, 8129.59, 170.357], [-0.572655, 0.819774, -0.0060215], [-0.00880253, 0.00119599, 0.999961]],
["a3\structures_f\items\tools\wrench_f.p3d", [7440.44, 8129.86, 170.335], [-0.89109, 0.453827, 0], [0, 0, 1]],
["a3\structures_f\walls\new_wiredfence_10m_f.p3d", [7405.4, 8082.8, 170.454], [-0.854225, 0.519904, 0], [0, 0, 1]],
["a3\structures_f\walls\new_wiredfence_10m_f.p3d", [7410.58, 8091.35, 170.454], [-0.854225, 0.519904, 0], [0, 0, 1]],
["a3\structures_f\walls\new_wiredfence_5m_f.p3d", [7410.03, 8097.25, 170.332], [-0.542433, -0.840099, 0], [0, 0, 1]],
["a3\structures_f\walls\new_wiredfence_pole_f.p3d", [7413.52, 8095.5, 170.325], [0.860863, -0.508837, 0], [0, 0, 1]],
["a3\structures_f_epb\items\luggage\luggageheap_03_f.p3d", [7450, 8136.14, 169.969], [0, 0.999754, 0.0221871], [-0.0206342, -0.0221824, 0.999541]],
["a3\structures_f_epb\items\luggage\luggageheap_01_f.p3d", [7450.45, 8134.84, 169.953], [0, 0.999754, 0.0221871], [-0.0206342, -0.0221824, 0.999541]],
["a3\structures_f_epb\items\luggage\luggageheap_02_f.p3d", [7430.29, 8133.42, 172.841], [0.444263, -0.895896, -0.000216848], [0.000488106, 0, 1]],
["a3\structures_f_epb\items\luggage\luggageheap_03_f.p3d", [7429.24, 8131.7, 173.045], [0, 1, 0], [0.000488106, 0, 1]],
["a3\structures_f\items\vessels\bucket_f.p3d", [7435.25, 8139.99, 169.645], [0, 0.999957, 0.00928371], [0, -0.00928371, 0.999957]],
["a3\structures_f_epa\items\tools\butanetorch_f.p3d", [7436.46, 8139.86, 170.57], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\items\tools\butanecanister_f.p3d", [7436.3, 8139.91, 170.539], [0.923841, 0.382775, 0], [0, 0, 1]],
["a3\structures_f_epa\items\tools\ducttape_f.p3d", [7435.76, 8139.77, 170.462], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\furniture\icebox_f.p3d", [7383.5, 8071.6, 169.862], [-0.495626, -0.868536, 0], [0, 0, 1]],
["a3\structures_f\civ\constructions\woodenbox_f.p3d", [7449.75, 8138.01, 169.477], [0.791729, 0.610872, -0.000386448], [0.000488106, 0, 1]],
["a3\structures_f\civ\camping\toiletbox_f.p3d", [7447.61, 8089.06, 170.46], [0.996407, -0.0846885, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\toiletbox_f.p3d", [7447.36, 8085.96, 170.46], [0.996407, -0.0846885, 0], [0, 0, 1]],
["a3\structures_f\civ\camping\toiletbox_f.p3d", [7447, 8082.78, 170.46], [0.996407, -0.0846885, 0], [0, 0, 1]],
["a3\structures_f_epa\mil\scrapyard\paperbox_closed_f.p3d", [7444.82, 8133.73, 170.002], [0, 0.999728, -0.0233186], [0.00226385, 0.0233186, 0.999726]],
["a3\structures_f_epa\mil\scrapyard\paperbox_open_full_f.p3d", [7442.98, 8134.22, 169.959], [-0.638795, -0.769133, 0.0193865], [0.00226385, 0.0233186, 0.999726]],
["a3\structures_f\ind\cargo\cargo20_red_f.p3d", [7417.05, 8139.19, 170.533], [0, 0.999324, -0.0367757], [0, 0.0367757, 0.999324]],
["a3\structures_f\ind\cargo\cargo20_white_f.p3d", [7410.79, 8137.14, 170.589], [-0.598188, -0.801349, -0.00334784], [-0.00239208, -0.00239211, 0.999994]],
["a3\structures_f_epa\civ\camping\woodentable_large_f.p3d", [7386.26, 8072.02, 169.622], [-0.857203, 0.514978, 0], [0, 0, 1]],
["a3\structures_f\items\electronics\portable_generator_f.p3d", [7435.24, 8060.67, 169.599], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\items\electronics\portable_generator_f.p3d", [7390.14, 8099.48, 169.599], [-0.52028, -0.853996, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\ketchup_01_f.p3d", [7385.27, 8072.17, 170.158], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\mustard_01_f.p3d", [7385.4, 8072.35, 170.158], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\tableware_01_tray_f.p3d", [7385.84, 8072.55, 170.061], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\items\food\ricebox_f.p3d", [7385.51, 8072.21, 170.15], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_dented_f.p3d", [7387.26, 8071.89, 170.082], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_v2_f.p3d", [7386.91, 8071.28, 170.096], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_v3_f.p3d", [7386.96, 8071.37, 170.096], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\items\food\bakedbeans_f.p3d", [7385.56, 8072.35, 170.114], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epa\mil\scrapyard\paperbox_closed_f.p3d", [7388, 8069.8, 169.931], [0, 1, 0], [-0.0947706, 0, 0.995499]],
["a3\structures_f_epb\items\luggage\luggageheap_03_f.p3d", [7371.45, 8082.83, 169.521], [0, 1, 0], [-0.0646648, 0, 0.997907]],
["a3\structures_f_epb\items\luggage\luggageheap_01_f.p3d", [7372.26, 8083.8, 169.577], [0, 1, 0], [-0.0646648, 0, 0.997907]],
["a3\structures_f_epb\items\luggage\luggageheap_02_f.p3d", [7372.33, 8078.83, 169.374], [0, 1, 0], [-0.0646648, 0, 0.997907]],
["a3\structures_f_epb\items\luggage\luggageheap_04_f.p3d", [7374.13, 8078.35, 169.685], [0, 1, 0], [-0.0646648, 0, 0.997907]],
["a3\structures_f\civ\market\cratesplastic_f.p3d", [7370.67, 8079.88, 169.192], [0, 1, 0], [-0.0646648, 0, 0.997907]],
["a3\structures_f\civ\market\cratesshabby_f.p3d", [7370.16, 8081.17, 169.688], [0, 1, 0], [-0.0646648, 0, 0.997907]],
["a3\props_f_exp\commercial\market\woodencrate_01_stack_x5_f.p3d", [7375.81, 8077.04, 170.202], [0.335648, -0.941987, 0], [0, 0, 1]],
["a3\structures_f\civ\constructions\wheelcart_f.p3d", [7444.62, 8138.57, 169.826], [-0.835948, -0.548628, -0.0141064], [-0.00138107, -0.0236006, 0.999721]],
["a3\structures_f\civ\market\marketshelter_f.p3d", [7384.4, 8087.49, 170.772], [-0.839136, 0.543922, 0], [0, 0, 1]],
["a3\structures_f\items\documents\map_f.p3d", [7376.47, 8076.97, 170.519], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_epb\civ\accessories\woodpile_large_f.p3d", [7422.14, 8140.38, 169.534], [0.935779, -0.348826, 0.0513669], [-0.0654601, -0.028727, 0.997442]],
["a3\structures_f_epa\civ\camping\woodenlog_f.p3d", [7420.69, 8139.31, 169.467], [0, 0.999324, -0.0367757], [0, 0.0367757, 0.999324]],
["a3\structures_f\civ\accessories\woodpile_f.p3d", [7421.54, 8138.68, 169.486], [0.952769, 0.30349, -0.0111686], [0, 0.0367757, 0.999324]],
["a3\structures_f_bootcamp\civ\sportsgrounds\gymrack_01_f.p3d", [7435.33, 8130.21, 170.53], [-0.116515, -0.993143, 0.00954344], [0.0106021, 0.00836461, 0.999909]],
["a3\structures_f_exp\civilian\accessories\picnictable_01_f.p3d", [7382.71, 8084.12, 169.5], [0.881757, -0.471704, 0], [0, 0, 1]],
["a3\structures_f\furniture\tabledesk_f.p3d", [7392.69, 8102.38, 169.866], [-0.308002, 0.951241, -0.0165706], [0, 0.0174174, 0.999848]],
["a3\structures_f_heli\furniture\officechair_01_f.p3d", [7392.43, 8103.11, 170.134], [-0.283056, 0.958958, -0.0167051], [0, 0.0174174, 0.999848]],
["a3\structures_f\items\stationery\pensandpencils_f.p3d", [7392.06, 8102.21, 170.293], [0, 0.999848, -0.0174174], [0, 0.0174174, 0.999848]],
["a3\structures_f_heli\furniture\officecabinet_01_f.p3d", [7395.6, 8101.86, 170.24], [0.866597, -0.498991, -0.00427711], [0.00382882, -0.00192194, 0.999991]],
["a3\structures_f_epc\items\documents\document_01_f.p3d", [7392.34, 8102.35, 170.288], [-0.0140832, -0.999749, 0.0174156], [0, 0.0174174, 0.999848]],
["a3\structures_f\items\valuables\money_f.p3d", [7392.33, 8104.13, 169.511], [0, 0.999848, -0.0174174], [0, 0.0174174, 0.999848]],
["a3\structures_f\items\valuables\money_f.p3d", [7392.46, 8103.87, 169.51], [0.989439, 0.14495, 0], [0, 0, 1]],
["a3\structures_f\furniture\chairwood_f.p3d", [7393.67, 8101.66, 169.465], [0.850299, -0.526283, -0.00426716], [0.00382882, -0.00192194, 0.999991]],
["a3\structures_f\civ\market\cratesplastic_f.p3d", [7394.57, 8120.01, 169.673], [0, 0.999928, 0.0120096], [0.0208924, -0.012007, 0.99971]],
["a3\structures_f\civ\market\cratesshabby_f.p3d", [7394.28, 8118.41, 170.188], [0, 0.999928, 0.0120096], [0.0208924, -0.012007, 0.99971]],
["a3\structures_f\civ\market\crateswooden_f.p3d", [7396.18, 8121.58, 170.184], [0.989004, 0.147731, -0.006851], [0.0112091, -0.0286878, 0.999526]],
["a3\structures_f_epb\items\luggage\luggageheap_01_f.p3d", [7396.28, 8120.91, 170.669], [0.756507, 0.653905, 0.0102787], [0.0112143, -0.0286854, 0.999526]],
["a3\structures_f\civ\constructions\woodenbox_f.p3d", [7399.04, 8123.61, 169.456], [0.441485, 0.897269, -0.000215492], [0.000488106, 0, 1]],
["a3\weapons_f\ammoboxes\supplydrop.p3d", [7393.01, 8116.15, 170.321], [-0.835621, 0.548814, 0.0232402], [0.028762, 0.00146424, 0.999585]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [7395.51, 8119.61, 169.521], [0.603191, -0.797288, -0.022215], [0.0209806, -0.0119822, 0.999708]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [7395.08, 8119.03, 169.523], [0, 0.999928, 0.0120096], [0.0208924, -0.012007, 0.99971]],
["a3\structures_f_epb\items\military\ammobox_rounds_f.p3d", [7395.99, 8119.68, 169.512], [0, 0.999928, 0.0119848], [0.0209806, -0.0119822, 0.999708]],
["a3\structures_f_epa\mil\scrapyard\paperbox_closed_f.p3d", [7395.73, 8104.17, 170.078], [0, 0.999919, -0.0127559], [-0.00260671, 0.0127559, 0.999915]],
["a3\structures_f_epa\mil\scrapyard\paperbox_closed_f.p3d", [7393.68, 8104.88, 170.063], [0.883364, -0.468614, 0.00828096], [-0.00260671, 0.0127559, 0.999915]],
["a3\structures_f_epa\mil\scrapyard\paperbox_open_empty_f.p3d", [7396.79, 8106.21, 170.018], [-0.868363, 0.495855, -0.00858937], [-0.00260671, 0.0127559, 0.999915]],
["a3\structures_f_epa\mil\scrapyard\pallet_milboxes_f.p3d", [7396.65, 8108.65, 169.862], [0, 0.999969, 0.00783513], [-0.00464508, -0.00783505, 0.999959]],
["a3\structures_f_epa\mil\scrapyard\paperbox_open_full_f.p3d", [7390.17, 8111, 170.055], [0, 0.999989, 0.00464468], [0.00844308, -0.00464451, 0.999954]],
["a3\supplies_f_heli\cargonets\cargonet_01_barrels_f.p3d", [7398.88, 8109.05, 169.954], [0.860339, -0.509722, 2.64961e-006], [-0.00464508, -0.00783505, 0.999959]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [7399.57, 8111.11, 170.263], [0, 0.999684, -0.0251301], [-0.0117109, 0.0251284, 0.999616]],
["a3\supplies_f_heli\cargonets\cargonet_01_ammo_f.p3d", [7392.01, 8114.27, 170.271], [-0.871953, 0.489495, 0.00963846], [0.00844737, -0.00464213, 0.999954]],
["a3\structures_f\items\electronics\portable_generator_f.p3d", [7395.59, 8106.67, 169.768], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\constructions\pallet_vertical_f.p3d", [7390.18, 8101.5, 170.21], [-0.867453, 0.497443, -0.00866554], [0, 0.0174175, 0.999848]],
["a3\structures_f\civ\constructions\pallets_f.p3d", [7389.77, 8102.42, 169.778], [0.31456, 0.949152, -0.0127455], [0.0160161, 0.00811817, 0.999839]],
["a3\structures_f_heli\civ\market\pallettrolley_01_khaki_f.p3d", [7392.66, 8113.82, 169.986], [-0.512766, -0.858528, 0.000341897], [0.00844308, -0.00464451, 0.999954]],
["a3\structures_f_heli\civ\market\pallettrolley_01_yellow_f.p3d", [7397.96, 8110.4, 169.979], [-0.958026, 0.286672, -0.00220411], [-0.00464508, -0.00783505, 0.999959]],
["a3\structures_f_epa\civ\constructions\pallets_stack_f.p3d", [7394.4, 8115.92, 169.825], [0.335653, 0.941976, 0.00429899], [0.0208924, -0.012007, 0.99971]],
["a3\structures_f\items\food\can_v1_f.p3d", [7386.81, 8071.35, 170.095], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [7447.35, 8107.72, 169.626], [-0.0507864, -0.99871, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [7442.4, 8107.88, 169.626], [-0.0178677, -0.99984, 0], [0, 0, 1]],
["a3\structures_f\walls\cncbarrier_f.p3d", [7437.68, 8107.79, 169.626], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_exp\cultural\fortress_01\fortress_01_bricks_v1_f.p3d", [5177.76, 1190.43, 22.9799], [-0.6083, 0.793707, 0], [0, 0, 1]],
["a3\structures_f_exp\cultural\fortress_01\fortress_01_bricks_v2_f.p3d", [5167.55, 1199.29, 23.1654], [0, 1, 0], [0, 0, 1]],
["a3\structures_f\civ\constructions\bricks_v1_f.p3d", [5174.77, 1196.5, 22.6398], [0, 0.999995, 0.00320178], [0.0383701, -0.00319942, 0.999258]],
["a3\structures_f\civ\constructions\woodenbox_f.p3d", [5173.24, 1187.02, 22.5839], [-0.895372, -0.444435, -0.0280385], [0.00559929, -0.0741935, 0.997228]],
["a3\structures_f\civ\accessories\woodpile_f.p3d", [5167.51, 1190.62, 23.0243], [0.986994, 0.160756, 0.000267574], [0.00558833, -0.0359741, 0.999337]],
["a3\structures_f\civ\market\cratesplastic_f.p3d", [5174.81, 1185.65, 22.7063], [0, 0.997244, 0.0741947], [0.00559929, -0.0741935, 0.997228]],
["a3\structures_f\civ\market\crateswooden_f.p3d", [5170.98, 1200.45, 23.5432], [0.248693, 0.968535, -0.00954942], [0.0383701, 0, 0.999264]],
["a3\structures_f\civ\market\cratesshabby_f.p3d", [5174.89, 1196.44, 24.4475], [0.956947, -0.287809, -0.0376669], [0.0383701, -0.00319942, 0.999258]],
["a3\props_f_exp\naval\boats\boat_03_abandoned_cover_f.p3d", [7716.57, 5098.77, 1.16619], [-0.466967, 0.884274, 0], [0, 0, 1]],
["a3\props_f_exp\naval\boats\boat_01_abandoned_blue_f.p3d", [7710.6, 5050.49, -0.520999], [0, 0.998205, -0.0598926], [-0.0183958, 0.0598825, 0.998036]],
["a3\props_f_exp\naval\boats\boat_03_abandoned_f.p3d", [7699.85, 5052.65, -0.0807747], [-0.365831, 0.928524, -0.0633337], [-0.0207953, 0.0598786, 0.997989]],
["a3\props_f_exp\naval\boats\boat_01_abandoned_red_f.p3d", [7770.03, 5079.55, 0.0861081], [0, 0.997361, -0.0726076], [-0.0654601, 0.0724518, 0.995221]],
["a3\structures_f\wrecks\uwreck_fishingboat_f.p3d", [7747.18, 5106.76, -1.2455], [0.740835, 0.670107, -0.04604], [0.0215965, 0.0447447, 0.998765]],
["a3\props_f_exp\naval\boats\boat_06_wreck_f.p3d", [7692.75, 5076.08, -0.424637], [0.250357, -0.967919, 0.0212996], [-0.0231957, 0.0159971, 0.999603]],
["a3\structures_f\naval\rowboats\rowboat_v2_f.p3d", [7746.25, 5068.92, -0.132631], [0.981059, 0.193181, 0.0142647], [-0.028787, 0.0725775, 0.996947]],
["a3\props_f_exp\naval\boats\boat_04_wreck_f.p3d", [7726.12, 5093.51, -0.737458], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_exp\naval\piers\pierwooden_03_f.p3d", [7720.28, 5088.35, -19.0596], [-0.306849, 0.951758, 0], [0, 0, 1]],
["a3\structures_f_exp\naval\piers\pierwooden_02_barrel_f.p3d", [7716.46, 5099.66, -19.669], [-0.328224, 0.9446, 0], [0, 0, 1]],
["a3\structures_f_exp\naval\piers\pierwooden_03_f.p3d", [7734.33, 5060.49, -19.0307], [-0.493987, 0.869469, 0], [0, 0, 1]],
["a3\structures_f_epc\civ\accessories\tableplastic_01_f.p3d", [3229.97, 8491.11, 48.5141], [-0.855942, 0.513999, -0.0562896], [-0.0622787, 0.0055884, 0.998043]],
["a3\structures_f\items\vessels\waterbarrel_f.p3d", [5168.04, 1187.91, 23.2827], [0, 0.999353, 0.0359747], [0.00558833, -0.0359741, 0.999337]],
["a3\structures_f\items\vessels\waterbarrel_f.p3d", [4490.33, 8374.22, 372.553], [0, 0.999514, 0.0311871], [-0.105017, -0.0310146, 0.993987]],
["exile_assets\model\exile_item_beer.p3d", [3230.15, 8491.86, 48.966], [0, 0.999984, -0.00559927], [-0.0622797, 0.0055884, 0.998043]],
["exile_assets\model\exile_item_beer.p3d", [3230.38, 8491.34, 48.9831], [0, 0.999984, -0.00559927], [-0.0622797, 0.0055884, 0.998043]],
["exile_assets\model\exile_item_beer.p3d", [3229.17, 8490.55, 48.9119], [0, 0.999984, -0.00559927], [-0.0622797, 0.0055884, 0.998043]],
["exile_assets\model\exile_item_beer.p3d", [3229.74, 8490.35, 48.9485], [0, 0.999984, -0.00559927], [-0.0622797, 0.0055884, 0.998043]],
["exile_assets\model\exile_item_beer.p3d", [3228.89, 8492.88, 47.9924], [0, 0.999984, -0.00559927], [-0.0622787, 0.0055884, 0.998043]],
["a3\structures_f_epa\items\food\canteen_f.p3d", [3229.2, 8490.59, 48.1553], [0, 0.999984, -0.00559927], [-0.0622787, 0.0055884, 0.998043]],
["exile_assets\model\exile_item_macascheese.p3d", [3230.6, 8491.81, 48.9906], [0, 0.999984, -0.00559927], [-0.0622797, 0.0055884, 0.998043]],
["exile_assets\model\exile_item_knife.p3d", [3230.47, 8492.02, 48.9829], [-0.356849, -0.934007, -0.0170382], [-0.0622797, 0.0055884, 0.998043]],
["a3\structures_f_heli\items\food\tableware_01_spoon_f.p3d", [3229.32, 8490.82, 48.9258], [0, 0.999984, -0.00559927], [-0.0622797, 0.0055884, 0.998043]],
["a3\structures_f_heli\items\food\tableware_01_knife_f.p3d", [3229.55, 8490.84, 48.9356], [0.0186882, -0.999825, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\tableware_01_fork_f.p3d", [3229.51, 8491.03, 48.9355], [0.547786, -0.836618, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\tableware_01_tray_f.p3d", [3229.58, 8491.27, 48.94], [-0.986027, 0.154456, -0.0623947], [-0.0622797, 0.0055884, 0.998043]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7394.8, 8142.87, 172.906], [-0.851419, 0.524485, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_corner_f.p3d", [7394.1, 8141.01, 172.908], [-0.532761, -0.846266, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7396.3, 8145.34, 172.906], [-0.851419, 0.524485, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7395.73, 8139.69, 172.906], [-0.540424, -0.841393, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7398.32, 8146.2, 172.906], [0.520553, 0.853829, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7359.04, 8137.21, 176.628], [0.830725, -0.556682, -0.00081111], [0.000976388, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_corner_f.p3d", [7358.39, 8135.58, 176.63], [-0.598088, -0.80143, 0.000583966], [0.000976388, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7360.65, 8139.59, 176.626], [0.821564, -0.570116, -0.000802165], [0.000976388, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7359.9, 8134.23, 176.627], [0.56448, 0.825446, -0.000551152], [0.000976388, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_short_f.p3d", [7361.93, 8141.47, 176.62], [0.831575, -0.555412, -0.00081194], [0.000976388, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7363.74, 8141.68, 176.623], [0.550988, 0.834513, -0.000537978], [0.000976388, 0, 1]],
["a3\structures_f\naval\piers\pierladder_f.p3d", [7366.66, 8141.08, 172.695], [-0.551971, -0.833863, 0], [0, 0, 1]],
["a3\structures_f\naval\piers\pierladder_f.p3d", [7402.99, 8140.47, 170.031], [-0.856138, 0.516747, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7400.77, 8144.71, 172.906], [0.520553, 0.853829, 0], [0, 0, 1]],
["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [7398.27, 8138.14, 172.906], [0.520553, 0.853829, 0], [0, 0, 1]],
["a3\signs_f\signt\arrowdesk_f.p3d", [7252.52, 8173.96, 167.405], [0.457784, -0.889047, 0.00542568], [-0.00720815, 0.00239104, 0.999971]],
["a3\structures_f_bootcamp\items\sport\karttyre_01_x4_f.p3d", [7443.3, 8127.97, 169.296], [0, 1, 0], [0.0343797, 0, 0.999409]],
["a3\structures_f_bootcamp\items\sport\karttyre_01_f.p3d", [7441.99, 8128.14, 169.195], [0, 1, 0], [0.0343797, 0, 0.999409]],
["a3\structures_f\civ\garbage\tyre_f.p3d", [7443.55, 8127.19, 169.136], [0, 1, 0], [0.0343797, 0, 0.999409]],
["a3\props_f_exp\civilian\garbage\tyre_01_f.p3d", [7443.78, 8128.48, 169.403], [0.99863, -0.0394795, -0.0343529], [0.0343797, 0, 0.999409]],
["a3\structures_f_heli\items\food\mustard_01_f.p3d", [7382.62, 8084.85, 170.25], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\tableware_01_tray_f.p3d", [7383.61, 8085.09, 170.154], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f_epa\items\food\ricebox_f.p3d", [7382.5, 8084.71, 170.243], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_dented_f.p3d", [7382.57, 8082.93, 170.174], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_v2_f.p3d", [7381.9, 8083.15, 170.188], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_v3_f.p3d", [7381.99, 8083.12, 170.188], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f_epa\items\food\bakedbeans_f.p3d", [7382.65, 8084.69, 170.206], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_v1_f.p3d", [7381.94, 8083.26, 170.187], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\tableware_01_tray_f.p3d", [7382.3, 8084.09, 170.154], [0.825514, -0.564382, 0], [0, 0, 1]],
["a3\structures_f_heli\items\food\mustard_01_f.p3d", [7383.04, 8085.6, 170.25], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_v2_f.p3d", [7382.81, 8083.86, 170.188], [0.977895, 0.209096, 0], [0, 0, 1]],
["a3\structures_f\items\food\can_dented_f.p3d", [7382.4, 8082.87, 170.174], [0.128342, -0.99173, 0], [0, 0, 1]],
["a3\structures_f_exp\naval\piers\pierwooden_03_f.p3d", [7726.54, 5074.11, -19.0521], [-0.493987, 0.869469, 0], [0, 0, 1]],
["a3\structures_f\naval\rowboats\rowboat_v3_f.p3d", [7743.54, 5065.64, -0.0297874], [0, 0.998436, -0.0559124], [-0.045553, 0.0558544, 0.997399]],
["a3\structures_f_exp\civilian\accessories\plank_01_4m_f.p3d", [7737.05, 5047.35, 0.344399], [0, 1, 0], [0, 0, 1]],
["a3\structures_f_exp\naval\piers\pierwooden_03_f.p3d", [7742.09, 5046.91, -19.0746], [-0.493987, 0.869469, 0], [0, 0, 1]]
];

{
    private _simpleObject = createSimpleObject [_x select 0, _x select 1];
    _simpleObject setVectorDirAndUp [_x select 2, _x select 3];

    {
        if ((toLower _x) in _invisibleSelections) then
        {
            _simpleObject hideSelection [_x, true];
        };
    }
    forEach (selectionNames _simpleObject);
}
forEach _simpleObjects;


Seapatrolon = 0; publicVariable "Seapatrolon";[] Spawn { while {true} Do {if (Seapatrolon < 5) Then {sleep 240;[]execVM "gpf_boats.sqf";};Sleep 300;};};
patrolon = 0; publicVariable "patrolon";[] Spawn { while {true} Do {if (patrolon < 6) Then {sleep 60;[]execVM "gpf_patrol.sqf";};Sleep 300;};};
heloOn = 0; publicVariable "heloOn";[] Spawn { while {true} Do {if (heloOn < 2) Then {sleep 60;[]execVM "gpf_helo.sqf";};Sleep 300;};};
troopson = 0; publicVariable "troopson";[] Spawn { while {true} Do {if (troopson < 3) Then {sleep 30;[]execVM "gpf_troops.sqf";};Sleep 300;};};
deathsqdon = false; publicVariable "deathsqdon";[] Spawn { while {true} Do {waituntil {((count AllPlayers) > 3)}; if (!deathsqdon) Then {[]execVM "gpf_deathsquad.sqf";};sleep 2700;};};
[]Spawn{[]execVM "gpf_rescue.sqf";};

GPF_Benifits = [
"76561198121313381", //sadass.insane
"76561197971753110", //remasters
"76561197969191559", //stig
"76561197970725589", //budpico
"76561198073182638", //tafster
"76561198072402038", //BillyBob
"76561198134042521", //Nocti aka spsch
"76561198007836691", //Esset
"76561198051860460", //Bazzoka
"76561197988774700",  //Major Gun
"76561197984067176", //fraz
"76561197969969342", //Harbo
"76561198283876559", //Roderick
"76561198069085435", //Kevin
"76561198142649422", //ultracores
"76561198380422020",  //ihate
"76561197998636347", //heppy
"76561197989449088", //hatchethero
"76561198075299194" //Solid
];
publicVariable "GPF_Benifits";

[] spawn {
    //waituntil {((count AllPlayers) > 0)};
	{_x execVM "gpf_BambiNPC.sqf" } Foreach [
	[[3823.36,3280.39],300,1],
	[[3151.14,6339.17],300,1],
	[[7121.23,6079.1],300,1],
	[[5558.22,11197.1],200,1],
	[[6010.19,8635.74],400,2],
	[[8237.62,3175.62],300,1],
	[[5403.96,2785.38],300,1]
	];
};

[] spawn { 
	{_x execVM "gpf_GuardNPC.sqf";} Foreach [
	[[9739.08,3954.33,0],300,6,false], //milbase truck
	[[10116.1,4035.11,0],300,6,false], //milbase banana
	[[7228.2,10581.6,0],200,6,false], //milbase box
	[[9521,4238.48,0],200,4,false],   //SandMilBase
	[[7728.5,4186.25,0],100,4,false], //montimilbase
	[[1005.39,12348.4,0],50,4,false], //morrayHummingBird
	[[5551.19,7887.43,0],100,4,false],//FOB Hillside
	[[1059.92,637.339,0],50,6,false]  //Faro SW Harbor
	];
};

[] Spawn {
 {[(_x Select 0),(_x Select 1)] execVM "gpf_staticNPC.sqf";} Foreach [
 [[[12573.8,12774,0.00143909+10],[12664.1,12774.8,0.00118256+10],[12581.3,12745.6,0.00143814+20],[12588.2,12745,0.861816+20],[12581.3,12799.8,0.00143814+20],[12657.6,12799.8,0.00143242+20],[12648.9,12794.8,0.00120163+20],[12656.6,12745.9,0.00143814+20],[12620.1,12748.4,0.00143909+6],[12618,12794.4,0.00143909+6],[12586,12774.6,0.00143909+6],[12654.1,12776.1,0.00143862+6],[12582.1,12762,0.00141692+2],[12582,12786.2,0.00142622+2],[12657.1,12785.4,0.00142288+2],[12657.2,12761.9,0.00142097+2],[12615.7,12808.6,0.00143909+10],[12624,12736.5,0.00143909+10],[12648.9,12752.4,0.00143814+20],[12589.6,12793.4,0+20]],west],//seafort
 [[[2913.62,48.2814,21.0014],[2921.13,46.5778,21.0014],[2913.63,41.0477,20.0014],[2926.08,55.3898,42.0007],[2920.78,50.5389,46.0014],[3025.89,124.953,15.0014],[3140.46,102.58,14.0014],[2863.35,101.73,17.0016],[2895.39,31.4037,25.0014],[2982.52,121.034,20.0014],[2838.23,82.5841,8.00144],[2935.65,48.9374,20.0014],[2903.28,49.1912,20.0014]],west], //ussfreedom
 [[[150.659,10306,7.00144],[142.021,10298.6,7.00144],[157.659,10291.6,7.00144],[132.494,10314.3,7.00144],[145.119,10314.7,4.00144],[157.463,10313.2,7.00144],[157.185,10304.6,4.00144],[143.517,10290.8,4.00144],[133.414,10292.2,7.00144],[140.123,10303.8,5.00186]],west], //fuel dock
 [[[3019.65,7215.73,3.00143],[3053.23,7221.1,14.0014],[3050,7217.65,3.00142],[3050.08,7219.42,7.0029],[3021.06,7227.51,4.00143],[3044.4,7212.24,14.0014],[3050.09,7214.7,10.0014],[3044.67,7224.08,4.00142],[3028.86,7210.61,0.00143909]],east], //Pirate Cove
 [[[5021.91,5149.99,134.068],[5021.92,5147.49,134.052],[5021.69,5145.19,134.052],[5027.81,5180.67,137.168],[5025.85,5179.77,137.13],[5035.53,5181.49,136.473],[5036.37,5187.61,137.677],[5029,5189.15,138.83],[5031.22,5190.04,138.64],[5024.29,5167.88,134.748],[5021.18,5166.79,134.383],[5014.05,5171.99,134.876],[5016.7,5153.63,133.987],[5020.23,5172.55,135.321]],east] //Pirate Cave
 ];
};



if (true) ExitWith {};