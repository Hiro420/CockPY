--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1, monster_id = 21010101, pos = { x = 1466.6, y = 289.4, z = -734.8 }, rot = { x = 0.0, y = 10.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 2, monster_id = 21010101, pos = { x = 1469.1, y = 289.6, z = -730.4 }, rot = { x = 0.0, y = 226.7, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 3, monster_id = 21010101, pos = { x = 1464.6, y = 289.4, z = -731.3 }, rot = { x = 0.0, y = 125.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 6, monster_id = 21010101, pos = { x = 1624.6, y = 276.9, z = -674.1 }, rot = { x = 0.0, y = 217.7, z = 0.0 }, level = 8 },
	{ config_id = 7, monster_id = 20010801, pos = { x = 1546.0, y = 289.6, z = -891.7 }, rot = { x = 0.0, y = 269.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 8, monster_id = 20010801, pos = { x = 1548.6, y = 289.7, z = -894.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 9, monster_id = 20010801, pos = { x = 1549.6, y = 289.2, z = -890.1 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 10, monster_id = 21020201, pos = { x = 1543.6, y = 268.7, z = -736.0 }, rot = { x = 0.0, y = 343.2, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 21, monster_id = 21010101, pos = { x = 1357.4, y = 300.7, z = -912.1 }, rot = { x = 0.0, y = 147.5, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 22, monster_id = 21010101, pos = { x = 1360.6, y = 300.7, z = -914.1 }, rot = { x = 0.0, y = 312.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 23, monster_id = 21010101, pos = { x = 1359.9, y = 300.5, z = -911.4 }, rot = { x = 0.0, y = 219.4, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 25, monster_id = 21010101, pos = { x = 1411.9, y = 300.3, z = -782.8 }, rot = { x = 0.0, y = 273.8, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 27, monster_id = 21020201, pos = { x = 1444.5, y = 284.4, z = -656.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 28, monster_id = 20011401, pos = { x = 1449.5, y = 284.7, z = -653.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 29, monster_id = 21010401, pos = { x = 1411.2, y = 307.7, z = -774.0 }, rot = { x = 0.0, y = 203.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 30, monster_id = 21010401, pos = { x = 1413.6, y = 307.7, z = -775.0 }, rot = { x = 0.0, y = 217.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 31, monster_id = 21020101, pos = { x = 1459.3, y = 259.2, z = -436.5 }, rot = { x = 0.0, y = 263.3, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 32, monster_id = 20011001, pos = { x = 1398.0, y = 277.6, z = -523.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 33, monster_id = 20011001, pos = { x = 1400.4, y = 277.5, z = -525.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 34, monster_id = 20011001, pos = { x = 1399.8, y = 277.4, z = -523.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 35, monster_id = 21010101, pos = { x = 1395.9, y = 267.4, z = -474.8 }, rot = { x = 0.0, y = 196.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 36, monster_id = 21010101, pos = { x = 1392.0, y = 268.2, z = -476.1 }, rot = { x = 0.0, y = 165.7, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 37, monster_id = 20010501, pos = { x = 1420.0, y = 245.5, z = -342.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 38, monster_id = 20010701, pos = { x = 1421.4, y = 245.4, z = -343.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 39, monster_id = 21010101, pos = { x = 1338.6, y = 230.0, z = -319.1 }, rot = { x = 0.0, y = 123.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 40, monster_id = 21010101, pos = { x = 1342.2, y = 229.9, z = -314.5 }, rot = { x = 0.0, y = 126.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 41, monster_id = 21010501, pos = { x = 1334.6, y = 230.1, z = -313.0 }, rot = { x = 0.0, y = 131.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 42, monster_id = 21020201, pos = { x = 1255.5, y = 232.9, z = -295.8 }, rot = { x = 0.0, y = 85.9, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 43, monster_id = 21010401, pos = { x = 1254.8, y = 292.8, z = -358.7 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 44, monster_id = 21010401, pos = { x = 1252.1, y = 292.7, z = -362.6 }, rot = { x = 0.0, y = 107.6, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 45, monster_id = 20011201, pos = { x = 1221.9, y = 311.5, z = -406.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 46, monster_id = 20011201, pos = { x = 1222.2, y = 311.1, z = -404.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 47, monster_id = 20011201, pos = { x = 1220.3, y = 311.1, z = -405.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 48, monster_id = 21020201, pos = { x = 1215.3, y = 307.4, z = -599.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 50, monster_id = 21010101, pos = { x = 1284.3, y = 286.0, z = -502.7 }, rot = { x = 0.0, y = 71.2, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 51, monster_id = 21010501, pos = { x = 1231.0, y = 298.0, z = -539.1 }, rot = { x = 0.0, y = 77.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 52, monster_id = 21010101, pos = { x = 1235.6, y = 296.2, z = -539.9 }, rot = { x = 0.0, y = 71.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 53, monster_id = 21010101, pos = { x = 1239.0, y = 294.7, z = -535.1 }, rot = { x = 0.0, y = 62.8, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 54, monster_id = 21010401, pos = { x = 1128.2, y = 343.0, z = -596.7 }, rot = { x = 0.0, y = 79.6, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 55, monster_id = 21010401, pos = { x = 1130.7, y = 342.1, z = -600.0 }, rot = { x = 0.0, y = 42.5, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 56, monster_id = 21010101, pos = { x = 1144.4, y = 336.7, z = -584.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 57, monster_id = 21010101, pos = { x = 1148.4, y = 336.4, z = -585.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 58, monster_id = 21010401, pos = { x = 1188.3, y = 352.0, z = -719.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 59, monster_id = 21010401, pos = { x = 1216.9, y = 340.0, z = -697.0 }, rot = { x = 0.0, y = 292.8, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 60, monster_id = 21010101, pos = { x = 1203.0, y = 327.8, z = -694.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 62, monster_id = 21010101, pos = { x = 1570.9, y = 270.6, z = -659.6 }, rot = { x = 0.0, y = 248.2, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 63, monster_id = 21010401, pos = { x = 1600.4, y = 272.5, z = -646.3 }, rot = { x = 0.0, y = 155.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 64, monster_id = 21010401, pos = { x = 1605.2, y = 276.5, z = -643.1 }, rot = { x = 0.0, y = 215.2, z = 0.0 }, level = 8, ban_excel_drop = true, disableWander = true },
	{ config_id = 69, monster_id = 21010101, pos = { x = 1614.2, y = 289.6, z = -865.8 }, rot = { x = 0.0, y = 62.6, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 70, monster_id = 21010101, pos = { x = 1617.1, y = 289.6, z = -864.0 }, rot = { x = 0.0, y = 221.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 77, monster_id = 21010501, pos = { x = 1495.4, y = 286.9, z = -880.3 }, rot = { x = 0.0, y = 346.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 78, monster_id = 21010501, pos = { x = 1491.7, y = 288.1, z = -879.6 }, rot = { x = 0.0, y = 346.1, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 79, monster_id = 21010101, pos = { x = 1545.6, y = 268.3, z = -731.4 }, rot = { x = 0.0, y = 195.8, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 80, monster_id = 21010101, pos = { x = 1540.2, y = 268.5, z = -735.1 }, rot = { x = 0.0, y = 34.2, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 82, monster_id = 21010101, pos = { x = 1408.5, y = 300.3, z = -780.6 }, rot = { x = 0.0, y = 146.4, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 83, monster_id = 21020201, pos = { x = 1515.3, y = 289.6, z = -1010.5 }, rot = { x = 0.0, y = 69.4, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 90, monster_id = 21020201, pos = { x = 1679.9, y = 283.8, z = -959.6 }, rot = { x = 0.0, y = 283.3, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 91, monster_id = 21010401, pos = { x = 1305.8, y = 359.3, z = -864.2 }, rot = { x = 0.0, y = 72.7, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 92, monster_id = 21010101, pos = { x = 1575.7, y = 273.7, z = -708.0 }, rot = { x = 0.0, y = 155.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 93, monster_id = 21010101, pos = { x = 1540.6, y = 257.6, z = -680.0 }, rot = { x = 0.0, y = 79.7, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 94, monster_id = 21010101, pos = { x = 1633.6, y = 277.1, z = -672.4 }, rot = { x = 0.0, y = 105.0, z = 0.0 }, level = 8 },
	{ config_id = 95, monster_id = 21010401, pos = { x = 1606.1, y = 272.6, z = -647.7 }, rot = { x = 0.0, y = 231.4, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 96, monster_id = 20010801, pos = { x = 1556.5, y = 286.4, z = -850.6 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 97, monster_id = 20010801, pos = { x = 1553.9, y = 287.2, z = -848.7 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 98, monster_id = 20010801, pos = { x = 1556.5, y = 287.3, z = -846.6 }, rot = { x = 0.0, y = 36.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 99, monster_id = 24010101, pos = { x = 1579.4, y = 286.9, z = -948.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 100, monster_id = 21010501, pos = { x = 1557.1, y = 295.1, z = -956.5 }, rot = { x = 0.0, y = 69.3, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 101, monster_id = 21010501, pos = { x = 1602.7, y = 288.0, z = -927.4 }, rot = { x = 0.0, y = 234.8, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 102, monster_id = 21010501, pos = { x = 1587.7, y = 287.9, z = -976.4 }, rot = { x = 0.0, y = 354.2, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 103, monster_id = 20011401, pos = { x = 1442.5, y = 283.3, z = -650.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 104, monster_id = 20011401, pos = { x = 1443.7, y = 284.8, z = -661.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 105, monster_id = 21010401, pos = { x = 1113.4, y = 306.8, z = -722.3 }, rot = { x = 0.0, y = 184.7, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 106, monster_id = 21010401, pos = { x = 1104.7, y = 299.2, z = -729.8 }, rot = { x = 0.0, y = 141.0, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 107, monster_id = 21010101, pos = { x = 1129.1, y = 296.4, z = -729.9 }, rot = { x = 0.0, y = 238.2, z = 0.0 }, level = 8 },
	{ config_id = 108, monster_id = 21010101, pos = { x = 1121.7, y = 294.6, z = -728.1 }, rot = { x = 0.0, y = 223.9, z = 0.0 }, level = 8 },
	{ config_id = 109, monster_id = 21010101, pos = { x = 1401.7, y = 247.9, z = -347.5 }, rot = { x = 0.0, y = 112.7, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 110, monster_id = 21010101, pos = { x = 1406.6, y = 247.4, z = -346.8 }, rot = { x = 0.0, y = 193.9, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 112, monster_id = 21020201, pos = { x = 1069.2, y = 345.6, z = -590.0 }, rot = { x = 0.0, y = 235.6, z = 0.0 }, level = 15, disableWander = true },
	{ config_id = 116, monster_id = 21010101, pos = { x = 1454.1, y = 295.0, z = -757.5 }, rot = { x = 0.0, y = 70.6, z = 0.0 }, level = 8, disableWander = true },
	{ config_id = 117, monster_id = 21010101, pos = { x = 1456.3, y = 295.2, z = -755.1 }, rot = { x = 0.0, y = 241.5, z = 0.0 }, level = 8, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 137, gadget_id = 70310003, pos = { x = 1262.2, y = 248.5, z = -311.9 }, rot = { x = 0.0, y = 123.9, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 138, gadget_id = 70310003, pos = { x = 1304.9, y = 242.7, z = -327.2 }, rot = { x = 0.0, y = 320.4, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 143, gadget_id = 70310003, pos = { x = 1219.2, y = 308.4, z = -602.6 }, rot = { x = 0.0, y = 242.8, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 153, gadget_id = 70220013, pos = { x = 1566.9, y = 270.5, z = -658.1 }, rot = { x = 352.7, y = 80.1, z = 0.0 }, level = 1 },
	{ config_id = 156, gadget_id = 70900014, pos = { x = 1615.1, y = 289.0, z = -864.1 }, rot = { x = 0.0, y = 142.2, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 157, gadget_id = 70211001, pos = { x = 1615.6, y = 289.7, z = -865.0 }, rot = { x = 0.0, y = 134.7, z = 0.0 }, level = 1, drop_tag = "战斗低级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 158, gadget_id = 70220018, pos = { x = 1565.6, y = 287.9, z = -832.8 }, rot = { x = 0.0, y = 35.8, z = 275.7 }, level = 1 },
	{ config_id = 159, gadget_id = 70220018, pos = { x = 1583.1, y = 289.1, z = -843.1 }, rot = { x = 0.0, y = 23.6, z = 0.0 }, level = 1 },
	{ config_id = 161, gadget_id = 70220013, pos = { x = 1578.3, y = 274.1, z = -708.7 }, rot = { x = 0.0, y = 28.1, z = 0.0 }, level = 1 },
	{ config_id = 164, gadget_id = 70220013, pos = { x = 1537.1, y = 267.9, z = -731.9 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 1 },
	{ config_id = 166, gadget_id = 70220013, pos = { x = 1548.1, y = 268.6, z = -731.4 }, rot = { x = 0.0, y = 263.2, z = 0.0 }, level = 1 },
	{ config_id = 167, gadget_id = 70310003, pos = { x = 1542.9, y = 268.3, z = -733.1 }, rot = { x = 0.0, y = 123.9, z = 0.0 }, level = 1 },
	{ config_id = 170, gadget_id = 70220019, pos = { x = 1541.5, y = 263.0, z = -704.9 }, rot = { x = 344.6, y = 199.4, z = 68.8 }, level = 1 },
	{ config_id = 171, gadget_id = 70220019, pos = { x = 1553.0, y = 268.0, z = -711.6 }, rot = { x = 356.6, y = 197.2, z = 349.7 }, level = 1 },
	{ config_id = 172, gadget_id = 70220019, pos = { x = 1594.1, y = 288.4, z = -807.9 }, rot = { x = 357.2, y = 169.4, z = 354.9 }, level = 1 },
	{ config_id = 173, gadget_id = 70220019, pos = { x = 1559.5, y = 257.2, z = -666.3 }, rot = { x = 356.6, y = 197.2, z = 349.7 }, level = 1 },
	{ config_id = 174, gadget_id = 70220019, pos = { x = 1536.4, y = 259.8, z = -693.3 }, rot = { x = 356.6, y = 197.2, z = 9.9 }, level = 1 },
	{ config_id = 175, gadget_id = 70220019, pos = { x = 1584.1, y = 275.7, z = -715.4 }, rot = { x = 347.8, y = 198.8, z = 349.5 }, level = 1 },
	{ config_id = 183, gadget_id = 70220018, pos = { x = 1556.6, y = 287.6, z = -923.7 }, rot = { x = 358.3, y = 53.0, z = 275.4 }, level = 1 },
	{ config_id = 193, gadget_id = 70220019, pos = { x = 1616.9, y = 286.9, z = -964.6 }, rot = { x = 347.8, y = 198.8, z = 349.5 }, level = 1 },
	{ config_id = 194, gadget_id = 70220019, pos = { x = 1608.0, y = 286.9, z = -927.4 }, rot = { x = 356.8, y = 0.1, z = 7.1 }, level = 1 },
	{ config_id = 195, gadget_id = 70900014, pos = { x = 1655.2, y = 286.3, z = -964.6 }, rot = { x = 3.5, y = 85.5, z = 0.0 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 204, gadget_id = 70220013, pos = { x = 1542.3, y = 269.1, z = -739.0 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 1 },
	{ config_id = 232, gadget_id = 70900014, pos = { x = 1604.7, y = 271.8, z = -643.2 }, rot = { x = 358.7, y = 198.1, z = 3.2 }, level = 1, arguments = { 1, 2, 3 } },
	{ config_id = 249, gadget_id = 70900042, pos = { x = 1606.4, y = 286.9, z = -978.4 }, rot = { x = 357.9, y = 289.4, z = 77.7 }, level = 1 },
	{ config_id = 258, gadget_id = 70220013, pos = { x = 1600.6, y = 286.7, z = -922.8 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 1 },
	{ config_id = 259, gadget_id = 70220013, pos = { x = 1598.7, y = 286.6, z = -921.8 }, rot = { x = 0.0, y = 17.4, z = 0.0 }, level = 1 },
	{ config_id = 260, gadget_id = 70220013, pos = { x = 1589.7, y = 286.9, z = -931.6 }, rot = { x = 0.0, y = 17.4, z = 0.0 }, level = 1 },
	{ config_id = 404, gadget_id = 70220013, pos = { x = 1124.0, y = 288.8, z = -1033.7 }, rot = { x = 0.0, y = 46.0, z = 0.0 }, level = 1 },
	{ config_id = 423, gadget_id = 70540003, pos = { x = 1158.2, y = 402.6, z = -839.7 }, rot = { x = 0.0, y = 102.7, z = 0.0 }, level = 1 },
	{ config_id = 424, gadget_id = 70540003, pos = { x = 1187.7, y = 394.6, z = -869.1 }, rot = { x = 0.0, y = 338.9, z = 0.0 }, level = 1 },
	{ config_id = 425, gadget_id = 70540003, pos = { x = 1546.4, y = 245.5, z = -615.3 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 426, gadget_id = 70540003, pos = { x = 1564.3, y = 255.2, z = -646.5 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 427, gadget_id = 70540003, pos = { x = 1563.5, y = 255.2, z = -646.8 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 428, gadget_id = 70540003, pos = { x = 1578.5, y = 274.0, z = -707.6 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 429, gadget_id = 70540003, pos = { x = 1579.2, y = 274.1, z = -707.8 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 430, gadget_id = 70540003, pos = { x = 1580.8, y = 271.3, z = -644.7 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 431, gadget_id = 70540003, pos = { x = 1600.9, y = 272.4, z = -641.9 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 432, gadget_id = 70540003, pos = { x = 1594.2, y = 288.1, z = -806.9 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 433, gadget_id = 70540003, pos = { x = 1613.5, y = 289.7, z = -864.0 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 434, gadget_id = 70540003, pos = { x = 1616.4, y = 286.9, z = -963.3 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 435, gadget_id = 70540003, pos = { x = 1606.8, y = 286.9, z = -928.3 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 436, gadget_id = 70540003, pos = { x = 1607.9, y = 286.9, z = -928.3 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 437, gadget_id = 70540003, pos = { x = 1355.1, y = 299.8, z = -896.6 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 438, gadget_id = 70540003, pos = { x = 1122.6, y = 288.6, z = -1033.7 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 439, gadget_id = 70540003, pos = { x = 1123.7, y = 288.6, z = -1034.9 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 440, gadget_id = 70540003, pos = { x = 1358.5, y = 300.7, z = -913.3 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 441, gadget_id = 70540003, pos = { x = 1358.2, y = 300.8, z = -914.2 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 444, gadget_id = 70540003, pos = { x = 1118.7, y = 308.3, z = -720.5 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 445, gadget_id = 70540003, pos = { x = 1118.1, y = 308.0, z = -719.0 }, rot = { x = 0.0, y = 184.8, z = 0.0 }, level = 1 },
	{ config_id = 446, gadget_id = 70540003, pos = { x = 1130.6, y = 369.9, z = -514.9 }, rot = { x = 0.0, y = 102.7, z = 0.0 }, level = 1 },
	{ config_id = 447, gadget_id = 70540003, pos = { x = 1129.7, y = 369.7, z = -514.2 }, rot = { x = 0.0, y = 102.7, z = 0.0 }, level = 1 },
	{ config_id = 455, gadget_id = 70900213, pos = { x = 1535.8, y = 246.4, z = -612.1 }, rot = { x = 0.0, y = 87.3, z = 0.0 }, level = 1, state = GadgetState.GearStop },
	{ config_id = 456, gadget_id = 70900213, pos = { x = 1535.3, y = 246.2, z = -609.5 }, rot = { x = 0.0, y = 87.3, z = 0.0 }, level = 1, state = GadgetState.GearAction1 },
	{ config_id = 457, gadget_id = 70900213, pos = { x = 1534.9, y = 246.1, z = -606.7 }, rot = { x = 0.0, y = 87.3, z = 0.0 }, level = 1, state = GadgetState.GearStart },
	{ config_id = 458, gadget_id = 70900214, pos = { x = 1535.8, y = 244.8, z = -599.5 }, rot = { x = 0.0, y = 270.2, z = 0.0 }, level = 1 },
	{ config_id = 459, gadget_id = 70900214, pos = { x = 1535.0, y = 244.0, z = -596.0 }, rot = { x = 0.0, y = 102.2, z = 0.0 }, level = 1 },
	{ config_id = 460, gadget_id = 70900214, pos = { x = 1532.7, y = 243.0, z = -591.7 }, rot = { x = 0.0, y = 3.7, z = 0.0 }, level = 1 },
	{ config_id = 461, gadget_id = 70900215, pos = { x = 1523.2, y = 257.8, z = -604.6 }, rot = { x = 0.0, y = 287.6, z = 0.0 }, level = 1 },
	{ config_id = 462, gadget_id = 70900215, pos = { x = 1523.5, y = 248.5, z = -603.8 }, rot = { x = 16.9, y = 357.1, z = 266.0 }, level = 1 },
	{ config_id = 467, gadget_id = 70900217, pos = { x = 1546.0, y = 251.8, z = -603.5 }, rot = { x = 0.0, y = 195.2, z = 0.0 }, level = 1 },
	{ config_id = 468, gadget_id = 70900217, pos = { x = 1548.4, y = 251.5, z = -595.8 }, rot = { x = 0.0, y = 195.2, z = 0.0 }, level = 1 },
	{ config_id = 469, gadget_id = 70900217, pos = { x = 1551.5, y = 249.8, z = -588.6 }, rot = { x = 0.0, y = 195.2, z = 0.0 }, level = 1 },
	{ config_id = 470, gadget_id = 70900217, pos = { x = 1555.0, y = 248.1, z = -580.2 }, rot = { x = 0.0, y = 195.2, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = true,
	npcs = { }
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = Monsters,
		monsters = { 1, 2, 3, 6, 7, 8, 9, 10, 21, 22, 23, 25, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 62, 63, 64, 69, 70, 77, 78, 79, 80, 82, 83, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 112 },
		gadgets = { 137, 138, 143, 153, 156, 157, 158, 159, 161, 164, 166, 167, 170, 171, 172, 173, 174, 175, 183, 193, 194, 195, 204, 232, 258, 259, 260, 404, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 444, 445, 446, 447, 455, 456, 457, 458, 459, 460, 461, 462, 467, 468, 469, 470 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
