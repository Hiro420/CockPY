--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 802001, monster_id = 28040101, pos = { x = 1728.2, y = 200.0, z = 119.8 }, rot = { x = 0.0, y = 28.7, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802002, monster_id = 28040101, pos = { x = 1419.9, y = 200.0, z = 305.1 }, rot = { x = 0.0, y = 239.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802003, monster_id = 28040101, pos = { x = 1418.2, y = 200.0, z = 303.1 }, rot = { x = 0.0, y = 10.7, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802004, monster_id = 28040101, pos = { x = 1421.4, y = 200.0, z = 307.1 }, rot = { x = 0.0, y = 29.7, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802005, monster_id = 28040103, pos = { x = 1315.0, y = 200.0, z = 186.3 }, rot = { x = 0.0, y = 112.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802006, monster_id = 28040103, pos = { x = 1313.3, y = 200.0, z = 176.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802007, monster_id = 28040103, pos = { x = 1323.6, y = 200.0, z = 179.9 }, rot = { x = 0.0, y = 326.7, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802008, monster_id = 28020301, pos = { x = 1366.5, y = 200.4, z = 194.0 }, rot = { x = 5.9, y = 152.0, z = 357.9 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802009, monster_id = 28010301, pos = { x = 1747.6, y = 201.0, z = 137.1 }, rot = { x = 0.0, y = 58.0, z = 0.0 }, level = 16, drop_tag = "采集动物", disableWander = true },
	{ config_id = 802010, monster_id = 28010301, pos = { x = 1755.5, y = 201.3, z = 142.2 }, rot = { x = 0.0, y = 28.7, z = 0.0 }, level = 16, drop_tag = "采集动物", disableWander = true },
	{ config_id = 802011, monster_id = 28010301, pos = { x = 1421.7, y = 200.2, z = 304.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物", disableWander = true },
	{ config_id = 802012, monster_id = 28010301, pos = { x = 1419.1, y = 200.3, z = 301.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物", disableWander = true },
	{ config_id = 802013, monster_id = 28030502, pos = { x = 1165.0, y = 200.0, z = 218.1 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802014, monster_id = 28030502, pos = { x = 1163.9, y = 200.0, z = 221.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802015, monster_id = 28030502, pos = { x = 1167.8, y = 200.0, z = 219.8 }, rot = { x = 0.0, y = 322.8, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802016, monster_id = 28020301, pos = { x = 1491.4, y = 202.1, z = 336.1 }, rot = { x = 0.0, y = 171.6, z = 0.0 }, level = 16, drop_tag = "走兽", disableWander = true },
	{ config_id = 802017, monster_id = 28040102, pos = { x = 1771.7, y = 200.0, z = 94.1 }, rot = { x = 0.0, y = 58.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802018, monster_id = 28040102, pos = { x = 1770.0, y = 200.0, z = 96.1 }, rot = { x = 0.0, y = 299.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802019, monster_id = 28040102, pos = { x = 1772.0, y = 200.0, z = 96.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802020, monster_id = 28040102, pos = { x = 1772.9, y = 200.0, z = 95.1 }, rot = { x = 0.0, y = 71.2, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802021, monster_id = 28040102, pos = { x = 1722.8, y = 200.0, z = 121.7 }, rot = { x = 0.0, y = 58.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802022, monster_id = 28010303, pos = { x = 1756.7, y = 201.4, z = 142.6 }, rot = { x = 0.0, y = 242.7, z = 0.0 }, level = 16, drop_tag = "采集动物", disableWander = true },
	{ config_id = 802023, monster_id = 28010303, pos = { x = 1757.4, y = 201.2, z = 132.5 }, rot = { x = 0.0, y = 334.3, z = 0.0 }, level = 16, drop_tag = "采集动物", disableWander = true },
	{ config_id = 802024, monster_id = 28030101, pos = { x = 1727.8, y = 202.8, z = 129.6 }, rot = { x = 0.0, y = 242.7, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802025, monster_id = 28030101, pos = { x = 1725.5, y = 201.4, z = 112.5 }, rot = { x = 339.1, y = 337.6, z = 342.5 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802026, monster_id = 28020102, pos = { x = 1253.3, y = 200.6, z = 219.6 }, rot = { x = 0.0, y = 0.0, z = 353.8 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802027, monster_id = 28030101, pos = { x = 1625.0, y = 218.0, z = 169.1 }, rot = { x = 17.7, y = 22.9, z = 337.7 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802028, monster_id = 28020201, pos = { x = 1294.9, y = 201.3, z = 212.1 }, rot = { x = 2.2, y = 128.6, z = 2.9 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802029, monster_id = 28040103, pos = { x = 1764.2, y = 200.0, z = 133.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802030, monster_id = 28020201, pos = { x = 1615.3, y = 223.7, z = 162.1 }, rot = { x = 0.0, y = 160.8, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802031, monster_id = 28020102, pos = { x = 1623.4, y = 210.0, z = 122.7 }, rot = { x = 0.0, y = 328.2, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802032, monster_id = 28020102, pos = { x = 1624.1, y = 210.1, z = 124.5 }, rot = { x = 0.0, y = 240.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802033, monster_id = 28030401, pos = { x = 1334.0, y = 201.8, z = 285.6 }, rot = { x = 0.0, y = 234.8, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802034, monster_id = 28030401, pos = { x = 1335.9, y = 201.6, z = 286.7 }, rot = { x = 0.0, y = 178.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802035, monster_id = 28030402, pos = { x = 1334.6, y = 201.8, z = 286.9 }, rot = { x = 0.0, y = 234.8, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802036, monster_id = 28030401, pos = { x = 1616.2, y = 220.9, z = 177.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802037, monster_id = 28030402, pos = { x = 1616.3, y = 222.1, z = 182.6 }, rot = { x = 0.0, y = 138.7, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802038, monster_id = 28030401, pos = { x = 1618.5, y = 221.2, z = 182.4 }, rot = { x = 0.0, y = 310.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802039, monster_id = 28030401, pos = { x = 1617.5, y = 221.2, z = 179.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802040, monster_id = 28030404, pos = { x = 1569.7, y = 227.6, z = 211.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802041, monster_id = 28030401, pos = { x = 1569.5, y = 227.6, z = 209.1 }, rot = { x = 0.0, y = 303.6, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802042, monster_id = 28030401, pos = { x = 1570.4, y = 227.6, z = 210.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802043, monster_id = 28020102, pos = { x = 1456.4, y = 206.2, z = -11.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802044, monster_id = 28020102, pos = { x = 1457.0, y = 207.1, z = -4.3 }, rot = { x = 0.0, y = 1.4, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802045, monster_id = 28020201, pos = { x = 1576.8, y = 218.9, z = 253.0 }, rot = { x = 0.0, y = 318.9, z = 0.0 }, level = 16, drop_tag = "走兽", disableWander = true },
	{ config_id = 802046, monster_id = 28040103, pos = { x = 1394.7, y = 156.9, z = -263.4 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802047, monster_id = 28040103, pos = { x = 1390.0, y = 156.9, z = -262.0 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802048, monster_id = 28030101, pos = { x = 1306.2, y = 200.6, z = 291.5 }, rot = { x = 0.0, y = 134.3, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802049, monster_id = 28030101, pos = { x = 1303.5, y = 201.6, z = 287.7 }, rot = { x = 0.0, y = 288.5, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802050, monster_id = 28030101, pos = { x = 1294.4, y = 200.1, z = 331.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802051, monster_id = 28030101, pos = { x = 1256.1, y = 200.0, z = 397.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802052, monster_id = 28030101, pos = { x = 1259.1, y = 200.0, z = 395.8 }, rot = { x = 0.0, y = 220.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802053, monster_id = 28030101, pos = { x = 1168.3, y = 213.4, z = 553.7 }, rot = { x = 0.0, y = 259.8, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802054, monster_id = 28030101, pos = { x = 1159.6, y = 208.2, z = 537.4 }, rot = { x = 0.0, y = 68.6, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802055, monster_id = 28030101, pos = { x = 1109.2, y = 200.0, z = 236.1 }, rot = { x = 0.0, y = 44.8, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802056, monster_id = 28030101, pos = { x = 1114.6, y = 201.2, z = 246.7 }, rot = { x = 3.4, y = 102.8, z = 346.4 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802057, monster_id = 28030502, pos = { x = 1431.3, y = 200.0, z = 274.7 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802058, monster_id = 28020201, pos = { x = 1857.5, y = 221.1, z = 806.3 }, rot = { x = 0.0, y = 286.7, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802059, monster_id = 28030502, pos = { x = 1434.0, y = 200.0, z = 276.4 }, rot = { x = 0.0, y = 322.8, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802060, monster_id = 28030502, pos = { x = 1361.4, y = 200.0, z = 326.4 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802061, monster_id = 28030502, pos = { x = 1360.2, y = 200.0, z = 329.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802062, monster_id = 28030502, pos = { x = 1364.1, y = 200.0, z = 328.1 }, rot = { x = 0.0, y = 322.8, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802063, monster_id = 28030502, pos = { x = 1191.8, y = 200.0, z = 297.6 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802064, monster_id = 28030502, pos = { x = 1190.7, y = 200.0, z = 300.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802065, monster_id = 28030502, pos = { x = 1394.7, y = 200.0, z = 253.6 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802066, monster_id = 28030502, pos = { x = 1093.1, y = 200.0, z = 293.7 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802067, monster_id = 28030502, pos = { x = 1091.9, y = 200.0, z = 296.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802068, monster_id = 28020201, pos = { x = 1856.1, y = 221.1, z = 806.2 }, rot = { x = 0.0, y = 55.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802069, monster_id = 28030502, pos = { x = 1049.2, y = 200.0, z = 311.1 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802070, monster_id = 28030502, pos = { x = 1048.0, y = 200.0, z = 314.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802071, monster_id = 28030502, pos = { x = 1393.6, y = 200.0, z = 256.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 802072, monster_id = 28040103, pos = { x = 1758.3, y = 200.0, z = 115.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802073, monster_id = 28040103, pos = { x = 1757.1, y = 200.0, z = 122.3 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802074, monster_id = 28040103, pos = { x = 1760.6, y = 200.0, z = 125.5 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802075, monster_id = 28040103, pos = { x = 1751.8, y = 200.0, z = 133.0 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802076, monster_id = 28030301, pos = { x = 1506.1, y = 212.1, z = -2.6 }, rot = { x = 5.3, y = 0.4, z = 8.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802077, monster_id = 28030301, pos = { x = 1509.2, y = 212.9, z = -5.4 }, rot = { x = 5.2, y = 0.6, z = 12.3 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802078, monster_id = 28040101, pos = { x = 1754.8, y = 200.0, z = 119.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802079, monster_id = 28040101, pos = { x = 1762.9, y = 200.0, z = 119.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "水族" },
	{ config_id = 802080, monster_id = 28030301, pos = { x = 1505.6, y = 212.2, z = -7.0 }, rot = { x = 0.0, y = 178.1, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802081, monster_id = 28030101, pos = { x = 1200.0, y = 200.6, z = -162.2 }, rot = { x = 0.0, y = 288.5, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802082, monster_id = 28030101, pos = { x = 1193.6, y = 200.8, z = -155.9 }, rot = { x = 0.0, y = 133.4, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 802083, monster_id = 28030401, pos = { x = 1243.8, y = 200.5, z = -158.9 }, rot = { x = 0.0, y = 310.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802084, monster_id = 28030401, pos = { x = 1242.5, y = 201.1, z = -155.8 }, rot = { x = 0.0, y = 310.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802085, monster_id = 28030401, pos = { x = 1243.1, y = 200.6, z = -161.9 }, rot = { x = 0.0, y = 310.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802086, monster_id = 28030401, pos = { x = 1241.0, y = 200.5, z = -164.7 }, rot = { x = 0.0, y = 6.9, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802087, monster_id = 28030401, pos = { x = 1243.0, y = 200.6, z = -161.5 }, rot = { x = 0.0, y = 181.5, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802088, monster_id = 28030401, pos = { x = 1245.6, y = 200.7, z = -164.0 }, rot = { x = 0.0, y = 31.8, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802089, monster_id = 28010301, pos = { x = 1251.6, y = 202.2, z = -134.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 802090, monster_id = 28010301, pos = { x = 1251.7, y = 200.6, z = -130.5 }, rot = { x = 0.0, y = 278.2, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 802091, monster_id = 28010301, pos = { x = 1284.3, y = 200.0, z = -142.1 }, rot = { x = 0.0, y = 278.2, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 802092, monster_id = 28010301, pos = { x = 1297.2, y = 200.0, z = -142.3 }, rot = { x = 0.0, y = 342.8, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 802093, monster_id = 28030301, pos = { x = 998.8, y = 207.5, z = 336.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802094, monster_id = 28030301, pos = { x = 995.6, y = 207.5, z = 335.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802095, monster_id = 28030301, pos = { x = 1044.0, y = 206.4, z = 377.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802096, monster_id = 28030301, pos = { x = 1038.7, y = 206.8, z = 383.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802097, monster_id = 28030301, pos = { x = 994.0, y = 207.5, z = 342.3 }, rot = { x = 359.4, y = 0.0, z = 0.2 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802098, monster_id = 28030301, pos = { x = 1044.5, y = 206.4, z = 376.5 }, rot = { x = 323.3, y = 324.6, z = 87.9 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802099, monster_id = 28020102, pos = { x = 1076.5, y = 205.7, z = 384.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 802100, monster_id = 28020102, pos = { x = 1077.2, y = 204.8, z = 383.0 }, rot = { x = 2.8, y = 77.8, z = 0.3 }, level = 1, drop_tag = "走兽" },
	{ config_id = 802101, monster_id = 28020301, pos = { x = 1030.0, y = 205.0, z = 396.4 }, rot = { x = 0.0, y = 39.7, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 802102, monster_id = 28030301, pos = { x = 991.6, y = 216.7, z = 338.7 }, rot = { x = 18.3, y = 356.5, z = 338.4 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802103, monster_id = 28030301, pos = { x = 997.5, y = 216.8, z = 332.1 }, rot = { x = 19.3, y = 97.3, z = 21.4 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802104, monster_id = 28030301, pos = { x = 992.5, y = 219.9, z = 337.8 }, rot = { x = 9.3, y = 335.9, z = 334.1 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802105, monster_id = 28030301, pos = { x = 990.7, y = 216.5, z = 340.2 }, rot = { x = 23.2, y = 84.4, z = 16.2 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802106, monster_id = 28030101, pos = { x = 995.2, y = 202.6, z = 365.9 }, rot = { x = 0.0, y = 99.2, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802107, monster_id = 28040103, pos = { x = 1372.2, y = 156.9, z = -262.8 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802108, monster_id = 28030101, pos = { x = 994.1, y = 202.6, z = 364.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类" },
	{ config_id = 802109, monster_id = 28040103, pos = { x = 1366.5, y = 156.9, z = -266.7 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802110, monster_id = 28040103, pos = { x = 1372.6, y = 156.9, z = -270.8 }, rot = { x = 0.0, y = 197.9, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802111, monster_id = 28030301, pos = { x = 1542.0, y = 218.8, z = 259.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802112, monster_id = 28030301, pos = { x = 1541.2, y = 218.8, z = 262.8 }, rot = { x = 0.0, y = 259.7, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802113, monster_id = 28020201, pos = { x = 1856.6, y = 221.1, z = 807.3 }, rot = { x = 0.0, y = 177.4, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802116, monster_id = 28030301, pos = { x = 1548.2, y = 218.8, z = 258.4 }, rot = { x = 0.0, y = 134.9, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802117, monster_id = 28010202, pos = { x = 1672.5, y = 204.5, z = 90.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802118, monster_id = 28010202, pos = { x = 1671.4, y = 204.5, z = 90.0 }, rot = { x = 0.0, y = 306.1, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802119, monster_id = 28010202, pos = { x = 1634.4, y = 212.6, z = 151.2 }, rot = { x = 0.0, y = 306.1, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802120, monster_id = 28010202, pos = { x = 1634.7, y = 212.6, z = 151.5 }, rot = { x = 0.0, y = 51.7, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802121, monster_id = 28010202, pos = { x = 1562.8, y = 212.6, z = 240.6 }, rot = { x = 0.0, y = 51.7, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802123, monster_id = 28010202, pos = { x = 1349.0, y = 201.4, z = 274.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802124, monster_id = 28020102, pos = { x = 1311.2, y = 200.5, z = 259.2 }, rot = { x = 356.0, y = 82.8, z = 1.4 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802125, monster_id = 28030101, pos = { x = 1273.2, y = 203.5, z = 229.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802126, monster_id = 28020102, pos = { x = 1255.3, y = 200.4, z = 220.2 }, rot = { x = 6.6, y = 72.4, z = 354.2 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802127, monster_id = 28010201, pos = { x = 1229.2, y = 204.3, z = 237.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802128, monster_id = 28010202, pos = { x = 1153.1, y = 205.1, z = 296.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802129, monster_id = 28010202, pos = { x = 1153.4, y = 204.8, z = 298.1 }, rot = { x = 0.0, y = 76.6, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802130, monster_id = 28020201, pos = { x = 1166.0, y = 209.3, z = 297.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802131, monster_id = 28020201, pos = { x = 1167.0, y = 208.4, z = 297.4 }, rot = { x = 0.0, y = 165.2, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802132, monster_id = 28020301, pos = { x = 1171.8, y = 201.9, z = 320.3 }, rot = { x = 356.1, y = 200.2, z = 15.3 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802134, monster_id = 28020301, pos = { x = 1172.4, y = 202.5, z = 341.2 }, rot = { x = 0.0, y = 187.4, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802135, monster_id = 28030501, pos = { x = 1420.3, y = 200.0, z = -46.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802136, monster_id = 28030501, pos = { x = 1423.6, y = 200.0, z = -48.4 }, rot = { x = 0.0, y = 342.2, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802137, monster_id = 28030501, pos = { x = 1417.3, y = 200.0, z = -48.9 }, rot = { x = 0.0, y = 30.2, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802138, monster_id = 28020301, pos = { x = 1421.0, y = 217.8, z = 73.5 }, rot = { x = 355.4, y = 359.6, z = 1.9 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802139, monster_id = 28020301, pos = { x = 1492.7, y = 239.0, z = 86.2 }, rot = { x = 1.7, y = 0.3, z = 17.4 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802140, monster_id = 28020301, pos = { x = 1498.1, y = 242.6, z = 143.7 }, rot = { x = 20.3, y = 213.4, z = 356.9 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802141, monster_id = 28040101, pos = { x = 1444.1, y = 214.0, z = 32.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802142, monster_id = 28040101, pos = { x = 1437.5, y = 214.0, z = 37.9 }, rot = { x = 0.0, y = 101.3, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802143, monster_id = 28040101, pos = { x = 1455.4, y = 214.0, z = 49.6 }, rot = { x = 0.0, y = 101.3, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802144, monster_id = 28040101, pos = { x = 1459.8, y = 214.0, z = 37.3 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802145, monster_id = 28040101, pos = { x = 1446.8, y = 214.0, z = 52.1 }, rot = { x = 0.0, y = 302.6, z = 0.0 }, level = 16, drop_tag = "水族" },
	{ config_id = 802146, monster_id = 28020102, pos = { x = 1508.8, y = 247.1, z = 113.7 }, rot = { x = 349.5, y = 358.3, z = 18.8 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802147, monster_id = 28020102, pos = { x = 1524.6, y = 242.7, z = 84.3 }, rot = { x = 0.0, y = 242.2, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802148, monster_id = 28020102, pos = { x = 1547.1, y = 241.5, z = 140.0 }, rot = { x = 0.0, y = 242.2, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802149, monster_id = 28020102, pos = { x = 1560.4, y = 251.4, z = 74.3 }, rot = { x = 356.9, y = 238.6, z = 20.9 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802150, monster_id = 28020301, pos = { x = 1651.8, y = 247.8, z = 40.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802151, monster_id = 28020301, pos = { x = 1653.1, y = 248.2, z = 47.0 }, rot = { x = 0.0, y = 292.7, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802152, monster_id = 28030101, pos = { x = 1460.6, y = 216.2, z = 62.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802153, monster_id = 28030101, pos = { x = 1433.0, y = 215.6, z = 29.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802154, monster_id = 28030101, pos = { x = 1427.7, y = 215.0, z = 30.8 }, rot = { x = 0.0, y = 165.2, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802155, monster_id = 28010202, pos = { x = 1019.1, y = 206.5, z = 365.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802156, monster_id = 28010202, pos = { x = 1026.5, y = 206.2, z = 365.7 }, rot = { x = 0.0, y = 23.2, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802157, monster_id = 28030402, pos = { x = 1576.7, y = 250.4, z = 73.3 }, rot = { x = 358.4, y = 360.0, z = 1.3 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802158, monster_id = 28030402, pos = { x = 1580.2, y = 250.5, z = 73.8 }, rot = { x = 8.6, y = 308.9, z = 0.6 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802159, monster_id = 28030402, pos = { x = 1552.8, y = 258.0, z = 91.1 }, rot = { x = 345.0, y = 49.6, z = 345.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802160, monster_id = 28020102, pos = { x = 1574.9, y = 267.4, z = 111.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802161, monster_id = 28020102, pos = { x = 1758.9, y = 265.8, z = 220.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802162, monster_id = 28020102, pos = { x = 1805.5, y = 266.4, z = 161.9 }, rot = { x = 2.7, y = 360.0, z = 358.6 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802163, monster_id = 28020301, pos = { x = 1739.5, y = 264.1, z = 207.3 }, rot = { x = 0.0, y = 52.9, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802164, monster_id = 28030402, pos = { x = 1673.4, y = 257.5, z = 245.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802165, monster_id = 28030402, pos = { x = 1670.9, y = 257.6, z = 248.0 }, rot = { x = 0.0, y = 149.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802166, monster_id = 28030402, pos = { x = 1674.6, y = 256.8, z = 251.1 }, rot = { x = 0.0, y = 330.7, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802167, monster_id = 28030101, pos = { x = 1769.9, y = 277.0, z = 237.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "鸟类" },
	{ config_id = 802168, monster_id = 28020301, pos = { x = 1702.3, y = 252.8, z = 198.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802169, monster_id = 28020301, pos = { x = 1798.5, y = 287.6, z = 250.8 }, rot = { x = 0.0, y = 108.8, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802170, monster_id = 28020201, pos = { x = 1508.9, y = 252.9, z = -173.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802171, monster_id = 28020201, pos = { x = 1531.4, y = 272.7, z = -78.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802172, monster_id = 28020102, pos = { x = 1514.4, y = 269.0, z = -39.3 }, rot = { x = 1.9, y = 0.2, z = 12.4 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802173, monster_id = 28020102, pos = { x = 1509.9, y = 268.1, z = -39.7 }, rot = { x = 349.5, y = 66.0, z = 7.4 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802174, monster_id = 28020102, pos = { x = 1514.7, y = 269.2, z = -41.4 }, rot = { x = 0.0, y = 66.7, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802175, monster_id = 28020102, pos = { x = 1522.8, y = 271.8, z = -95.3 }, rot = { x = 0.0, y = 66.7, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802176, monster_id = 28020102, pos = { x = 1525.5, y = 261.5, z = -126.6 }, rot = { x = 0.0, y = 66.7, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802177, monster_id = 28020102, pos = { x = 1507.5, y = 255.6, z = -147.7 }, rot = { x = 0.0, y = 34.1, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802178, monster_id = 28020301, pos = { x = 1500.5, y = 260.2, z = -128.6 }, rot = { x = 350.1, y = 359.2, z = 8.7 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802179, monster_id = 28020301, pos = { x = 1509.8, y = 269.5, z = -78.9 }, rot = { x = 17.2, y = 292.2, z = 9.6 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802180, monster_id = 28020301, pos = { x = 1488.4, y = 250.4, z = -196.3 }, rot = { x = 0.0, y = 290.7, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802181, monster_id = 28030402, pos = { x = 1520.6, y = 250.4, z = -198.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802182, monster_id = 28030402, pos = { x = 1523.4, y = 249.3, z = -201.4 }, rot = { x = 0.0, y = 93.9, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802183, monster_id = 28030402, pos = { x = 1508.4, y = 252.8, z = -172.3 }, rot = { x = 0.0, y = 93.9, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802184, monster_id = 28030402, pos = { x = 1495.6, y = 253.6, z = -154.5 }, rot = { x = 0.0, y = 93.9, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802185, monster_id = 28030402, pos = { x = 1493.3, y = 253.4, z = -154.4 }, rot = { x = 0.0, y = 294.4, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802186, monster_id = 28030402, pos = { x = 1494.6, y = 253.7, z = -153.0 }, rot = { x = 0.0, y = 233.2, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802187, monster_id = 28020102, pos = { x = 1510.2, y = 202.4, z = 314.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802188, monster_id = 28020301, pos = { x = 1776.5, y = 216.7, z = 711.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802189, monster_id = 28030402, pos = { x = 1497.0, y = 201.1, z = 299.3 }, rot = { x = 358.6, y = 360.0, z = 3.9 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802190, monster_id = 28030402, pos = { x = 1499.1, y = 201.1, z = 296.8 }, rot = { x = 0.0, y = 342.6, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802191, monster_id = 28020301, pos = { x = 1748.5, y = 217.3, z = 706.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802192, monster_id = 28020301, pos = { x = 1474.0, y = 200.4, z = 334.1 }, rot = { x = 0.0, y = 142.6, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802193, monster_id = 28020102, pos = { x = 1447.6, y = 200.3, z = 354.4 }, rot = { x = 0.0, y = 189.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802194, monster_id = 28030402, pos = { x = 1421.5, y = 205.7, z = -25.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802195, monster_id = 28030402, pos = { x = 1417.5, y = 205.8, z = -20.6 }, rot = { x = 0.0, y = 69.7, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802196, monster_id = 28030402, pos = { x = 1407.9, y = 216.2, z = 38.6 }, rot = { x = 0.0, y = 69.7, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802197, monster_id = 28030402, pos = { x = 1408.4, y = 216.2, z = 40.1 }, rot = { x = 0.0, y = 354.6, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802198, monster_id = 28030402, pos = { x = 1406.7, y = 217.0, z = 43.9 }, rot = { x = 0.0, y = 84.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802199, monster_id = 28020102, pos = { x = 1439.4, y = 225.8, z = 102.1 }, rot = { x = 0.0, y = 264.0, z = 0.0 }, level = 16, drop_tag = "走兽" },
	{ config_id = 802200, monster_id = 28010202, pos = { x = 1461.3, y = 232.2, z = 106.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802201, monster_id = 28010202, pos = { x = 1459.4, y = 232.0, z = 104.9 }, rot = { x = 0.0, y = 293.6, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802202, monster_id = 28030301, pos = { x = 1468.3, y = 235.8, z = 104.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802203, monster_id = 28030301, pos = { x = 1469.8, y = 235.7, z = 101.9 }, rot = { x = 0.0, y = 203.3, z = 0.0 }, level = 16, drop_tag = "鸟类" },
	{ config_id = 802204, monster_id = 28010301, pos = { x = 1235.0, y = 200.6, z = 208.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802205, monster_id = 28010301, pos = { x = 1234.0, y = 200.0, z = 207.6 }, rot = { x = 0.0, y = 147.6, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802206, monster_id = 28010301, pos = { x = 1185.2, y = 200.7, z = 267.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802207, monster_id = 28010301, pos = { x = 1181.7, y = 200.2, z = 265.5 }, rot = { x = 0.0, y = 121.7, z = 0.0 }, level = 16, drop_tag = "采集动物" },
	{ config_id = 802208, monster_id = 28020301, pos = { x = 1821.7, y = 207.5, z = 738.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802209, monster_id = 28020301, pos = { x = 1910.2, y = 216.5, z = 653.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802210, monster_id = 28020301, pos = { x = 1852.3, y = 214.0, z = 559.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802211, monster_id = 28020301, pos = { x = 1906.3, y = 214.7, z = 706.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802212, monster_id = 28020301, pos = { x = 1950.3, y = 227.8, z = 644.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "走兽" },
	{ config_id = 802213, monster_id = 28050102, pos = { x = 1370.5, y = 201.2, z = 278.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, drop_tag = "魔法生物" },
	{ config_id = 802214, monster_id = 28050102, pos = { x = 1365.1, y = 202.7, z = 279.2 }, rot = { x = 0.0, y = 212.0, z = 0.0 }, level = 16, drop_tag = "魔法生物" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 802114, gadget_id = 70500000, pos = { x = 1856.5, y = 221.2, z = 806.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 2007 },
	{ config_id = 802115, gadget_id = 70500000, pos = { x = 1856.8, y = 221.2, z = 806.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 2007 },
	{ config_id = 802122, gadget_id = 70500000, pos = { x = 1856.6, y = 221.2, z = 806.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, point_type = 2007 }
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
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 802001, 802002, 802003, 802004, 802005, 802006, 802007, 802008, 802009, 802010, 802011, 802012, 802013, 802014, 802015, 802016, 802017, 802018, 802019, 802020, 802021, 802022, 802023, 802024, 802025, 802026, 802027, 802028, 802029, 802030, 802031, 802032, 802033, 802034, 802035, 802036, 802037, 802038, 802039, 802040, 802041, 802042, 802043, 802044, 802045, 802046, 802047, 802048, 802049, 802050, 802051, 802052, 802053, 802054, 802055, 802056, 802057, 802058, 802059, 802060, 802061, 802062, 802063, 802064, 802065, 802066, 802067, 802068, 802069, 802070, 802071, 802072, 802073, 802074, 802075, 802076, 802077, 802078, 802079, 802080, 802081, 802082, 802083, 802084, 802085, 802086, 802087, 802088, 802089, 802090, 802091, 802092, 802093, 802094, 802095, 802096, 802097, 802098, 802099, 802100, 802101, 802102, 802103, 802104, 802105, 802106, 802107, 802108, 802109, 802110, 802111, 802112, 802113, 802116, 802117, 802118, 802119, 802120, 802121, 802123, 802124, 802125, 802126, 802127, 802128, 802129, 802130, 802131, 802132, 802134, 802135, 802136, 802137, 802138, 802139, 802140, 802141, 802142, 802143, 802144, 802145, 802146, 802147, 802148, 802149, 802150, 802151, 802152, 802153, 802154, 802155, 802156, 802157, 802158, 802159, 802160, 802161, 802162, 802163, 802164, 802165, 802166, 802167, 802168, 802169, 802170, 802171, 802172, 802173, 802174, 802175, 802176, 802177, 802178, 802179, 802180, 802181, 802182, 802183, 802184, 802185, 802186, 802187, 802188, 802189, 802190, 802191, 802192, 802193, 802194, 802195, 802196, 802197, 802198, 802199, 802200, 802201, 802202, 802203, 802204, 802205, 802206, 802207, 802208, 802209, 802210, 802211, 802212, 802213, 802214 },
		gadgets = { 802114, 802115, 802122 },
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
