-- 
DELETE FROM `creature` WHERE  `guid` IN (73432,73433,84486,84487,84489,84490,84503,84505);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(73432, 33710, 530, 0, 0, '', 0, 0, 0, 8548.1, -7754.100, 118.607, 1.40439, 300, 8, 0, 156, 0, 1, 0, 0, 0, 0),
(73433, 33710, 530, 0, 0, '', 0, 0, 0, 8594.34, -7815.63, 140.119, 1.56563, 300, 8, 0, 156, 0, 1, 0, 0, 0, 0),
(84486, 33710, 530, 0, 0, '', 0, 0, 0, 8586.59, -7770.78, 136.252, 2.92054, 300, 8, 0, 156, 0, 1, 0, 0, 0, 0),
(84487, 33710, 530, 0, 0, '', 0, 0, 0, 8523.49, -7711.34, 145.702, 3.74723, 300, 8, 0, 156, 0, 1, 0, 0, 0, 0),
(84489, 33710, 530, 0, 0, '', 0, 0, 0, 8593.53, -7706.91, 138.27, 0.817381, 300, 8, 0, 156, 0, 1, 0, 0, 0, 0),
(84490, 33711, 530, 0, 0, '', 0, 0, 0, 6978.07, -7336.59, 40.9312, 5.48650, 600, 0, 0, 273, 0, 2, 0, 0, 0, 0),
(84503, 33711, 530, 0, 0, '', 0, 0, 0, 7623.59, -7638.87, 128.367, 5.14092, 600, 0, 0, 273, 0, 2, 0, 0, 0, 0),
(84505, 33711, 530, 0, 0, '', 0, 0, 0, 7989.65, -7596.35, 126.338, 4.20237, 600, 0, 0, 273, 0, 2, 0, 0, 0, 0);

UPDATE `creature_template` SET `unit_flags`=32768 WHERE  `entry` IN (33710,33711);
DELETE FROM `creature_addon` WHERE `guid` IN (84490,84503,84505);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`) VALUES
(84490, 844900, 0, 0, 1), (84503, 845030, 0, 0, 1), (84505, 845050, 0, 0, 1);

DELETE FROM `waypoint_data` WHERE `id` IN (844900,845030,845050);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(844900, 1, 6982.59, -7340.89, 38.8286, 5.6781),
(844900, 2, 6998.68, -7352.41, 36.3988, 5.6977),
(844900, 3, 7021.79, -7361.33, 35.6609, 6.0943),
(844900, 4, 7049.16, -7357.21, 31.9638, 0.1088),
(844900, 5, 7078.58, -7364.78, 37.4213, 5.5438),
(844900, 6, 7059.98, -7377.15, 35.6663, 3.5057),
(844900, 7, 7032.39, -7366.72, 35.1236, 3.0109),
(844900, 8, 7008.51, -7368.13, 37.2217, 3.5929),
(844900, 9, 6987.21, -7359.86, 37.6881, 2.5231),
(845030, 1, 7624.13, -7648.26, 128.025, 4.7058),
(845030, 2, 7630.63, -7666.89, 129.355, 5.2854),
(845030, 3, 7646.15, -7674.99, 127.317, 5.7873),
(845030, 4, 7655.93, -7670.98, 126.257, 1.0003),
(845030, 5, 7642.45, -7651.94, 126.725, 2.0197),
(845050, 1, 7987.38, -7604.32, 123.664, 4.3209),
(845050, 2, 7975.17, -7633.94, 119.96,  4.3641),
(845050, 3, 7959.57, -7657.42, 121.599, 3.9589),
(845050, 4, 7929.47, -7653.83, 117.318, 3.0690),
(845050, 5, 7908.85, -7632.77, 120.138, 2.3849),
(845050, 6, 7926.49, -7617.92, 119.668, 0.1795),
(845050, 7, 7950.33, -7612.84, 118.945, 0.4552),
(845050, 8, 7974.45, -7595.02, 122.506, 0.9288);