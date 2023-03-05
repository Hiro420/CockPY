--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 281, monster_id = 28030101, pos = { x = 2053.6, y = 229.2, z = -1213.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 282, monster_id = 28030101, pos = { x = 2035.6, y = 198.9, z = -1210.6 }, rot = { x = 0.0, y = 64.2, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 283, monster_id = 28030101, pos = { x = 1915.3, y = 195.4, z = -1207.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 284, monster_id = 28030101, pos = { x = 1913.6, y = 195.3, z = -1201.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 285, monster_id = 28030101, pos = { x = 1931.0, y = 220.5, z = -1363.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 291, monster_id = 28030101, pos = { x = 1975.6, y = 195.9, z = -1269.8 }, rot = { x = 0.0, y = 320.5, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 292, monster_id = 28030101, pos = { x = 1971.5, y = 195.7, z = -1270.5 }, rot = { x = 0.0, y = 52.8, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 293, monster_id = 28030101, pos = { x = 1977.1, y = 196.6, z = -1272.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 296, monster_id = 28030101, pos = { x = 1937.4, y = 218.7, z = -1346.7 }, rot = { x = 0.0, y = 51.4, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 325, monster_id = 28030401, pos = { x = 2109.7, y = 210.6, z = -1236.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 334, monster_id = 28020301, pos = { x = 1770.5, y = 205.4, z = -1296.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 343, monster_id = 28030101, pos = { x = 1886.5, y = 223.2, z = -1096.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 344, monster_id = 28030101, pos = { x = 1881.7, y = 223.6, z = -1100.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 345, monster_id = 28030101, pos = { x = 1825.9, y = 205.6, z = -1221.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 346, monster_id = 28030101, pos = { x = 1827.0, y = 204.9, z = -1216.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 347, monster_id = 28030101, pos = { x = 1728.3, y = 214.3, z = -1340.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 348, monster_id = 28030101, pos = { x = 1742.6, y = 214.1, z = -1409.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 358, monster_id = 28030101, pos = { x = 1732.0, y = 214.1, z = -1340.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 376, monster_id = 28030401, pos = { x = 1799.1, y = 196.3, z = -1335.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 403, monster_id = 28020102, pos = { x = 1869.9, y = 196.6, z = -1392.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 404, monster_id = 28020102, pos = { x = 1908.6, y = 197.9, z = -1431.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 405, monster_id = 28020102, pos = { x = 1907.6, y = 198.2, z = -1439.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 408, monster_id = 28030101, pos = { x = 1814.2, y = 195.0, z = -1413.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 409, monster_id = 28030101, pos = { x = 1811.0, y = 195.0, z = -1413.6 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 412, monster_id = 28030101, pos = { x = 1994.1, y = 216.6, z = -1100.7 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 413, monster_id = 28030101, pos = { x = 1991.4, y = 216.7, z = -1101.8 }, rot = { x = 0.0, y = 278.4, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 414, monster_id = 28020102, pos = { x = 1966.7, y = 196.1, z = -1277.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 455, monster_id = 28030401, pos = { x = 1992.3, y = 193.8, z = -1184.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 456, monster_id = 28020102, pos = { x = 1994.3, y = 194.2, z = -1184.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 469, monster_id = 28030401, pos = { x = 1993.5, y = 194.0, z = -1183.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 472, monster_id = 28030401, pos = { x = 1794.5, y = 197.2, z = -1335.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 491, monster_id = 28010103, pos = { x = 1693.5, y = 194.6, z = -1577.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 492, monster_id = 28010103, pos = { x = 1699.3, y = 194.6, z = -1577.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 493, monster_id = 28010103, pos = { x = 1699.0, y = 194.6, z = -1581.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 494, monster_id = 28010103, pos = { x = 1695.7, y = 194.6, z = -1583.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 495, monster_id = 28010103, pos = { x = 1861.7, y = 194.6, z = -1589.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 496, monster_id = 28010103, pos = { x = 1864.2, y = 194.6, z = -1593.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 497, monster_id = 28010103, pos = { x = 1861.9, y = 194.6, z = -1593.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 498, monster_id = 28010103, pos = { x = 1779.8, y = 194.6, z = -1604.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 499, monster_id = 28010103, pos = { x = 1781.5, y = 194.6, z = -1602.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 565, monster_id = 28020102, pos = { x = 2136.7, y = 203.7, z = -1110.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 566, monster_id = 28020102, pos = { x = 2161.2, y = 223.7, z = -1181.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 567, monster_id = 28020102, pos = { x = 2093.1, y = 212.3, z = -1087.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 568, monster_id = 28030401, pos = { x = 2105.0, y = 205.4, z = -1117.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 569, monster_id = 28030401, pos = { x = 2106.9, y = 205.8, z = -1118.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 570, monster_id = 28030401, pos = { x = 2105.3, y = 205.1, z = -1118.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 571, monster_id = 28030401, pos = { x = 2164.1, y = 208.5, z = -1104.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 572, monster_id = 28030401, pos = { x = 2164.8, y = 208.6, z = -1105.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 573, monster_id = 28030401, pos = { x = 2162.4, y = 208.4, z = -1105.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 574, monster_id = 28030101, pos = { x = 2112.5, y = 235.8, z = -1169.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 575, monster_id = 28020102, pos = { x = 2051.3, y = 197.6, z = -1144.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 687, monster_id = 28030101, pos = { x = 1725.2, y = 197.8, z = -1596.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 688, monster_id = 28030101, pos = { x = 1725.8, y = 197.9, z = -1599.8 }, rot = { x = 0.0, y = 87.2, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 689, monster_id = 28030101, pos = { x = 1729.0, y = 196.1, z = -1589.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 710, monster_id = 28030101, pos = { x = 2008.0, y = 240.5, z = -1425.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 711, monster_id = 28030101, pos = { x = 2011.5, y = 241.3, z = -1424.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 712, monster_id = 28030101, pos = { x = 2003.5, y = 239.9, z = -1438.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 740, monster_id = 28030101, pos = { x = 1687.1, y = 254.7, z = -1434.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 741, monster_id = 28030101, pos = { x = 1687.3, y = 255.0, z = -1437.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 742, monster_id = 28030101, pos = { x = 1685.0, y = 255.1, z = -1435.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 747, monster_id = 28030101, pos = { x = 1663.2, y = 256.5, z = -1362.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 748, monster_id = 28030101, pos = { x = 1684.5, y = 265.0, z = -1336.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 749, monster_id = 28030101, pos = { x = 1682.6, y = 264.9, z = -1332.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 750, monster_id = 28030101, pos = { x = 1653.2, y = 274.0, z = -1440.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 751, monster_id = 28030101, pos = { x = 1647.4, y = 274.0, z = -1442.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 752, monster_id = 20011201, pos = { x = 1652.3, y = 254.6, z = -1370.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "史莱姆" },
	{ config_id = 761, monster_id = 28030101, pos = { x = 1907.0, y = 195.1, z = -1574.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 803, monster_id = 28030101, pos = { x = 2037.1, y = 199.0, z = -1212.6 }, rot = { x = 0.0, y = 64.2, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 810, monster_id = 28020102, pos = { x = 2143.4, y = 204.7, z = -1138.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽", disableWander = true },
	{ config_id = 811, monster_id = 28030101, pos = { x = 2056.9, y = 229.4, z = -1212.5 }, rot = { x = 0.0, y = 32.7, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 817, monster_id = 28030101, pos = { x = 1739.3, y = 214.2, z = -1408.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 821, monster_id = 28030101, pos = { x = 1934.3, y = 246.5, z = -1588.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 822, monster_id = 28030101, pos = { x = 1936.1, y = 246.5, z = -1594.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 901 },
	{ config_id = 828, monster_id = 20010501, pos = { x = 2137.6, y = 199.4, z = -1681.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" },
	{ config_id = 829, monster_id = 20010501, pos = { x = 2138.2, y = 199.2, z = -1682.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 4, drop_tag = "史莱姆" },
	{ config_id = 830, monster_id = 28030101, pos = { x = 1970.5, y = 231.2, z = -1574.6 }, rot = { x = 0.0, y = 334.2, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 842, monster_id = 28030101, pos = { x = 2094.1, y = 206.8, z = -1220.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 846, monster_id = 28010103, pos = { x = 1676.8, y = 195.5, z = -1556.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 847, monster_id = 28010103, pos = { x = 1678.3, y = 195.7, z = -1553.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1035, monster_id = 28020102, pos = { x = 1982.0, y = 221.6, z = -1081.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1036, monster_id = 28020102, pos = { x = 1950.7, y = 220.4, z = -1097.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1037, monster_id = 28020102, pos = { x = 1843.0, y = 225.0, z = -1122.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1038, monster_id = 28020102, pos = { x = 1824.4, y = 228.0, z = -1091.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1067, monster_id = 20011201, pos = { x = 1650.6, y = 254.5, z = -1370.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "史莱姆" },
	{ config_id = 1068, monster_id = 20011001, pos = { x = 1596.6, y = 250.1, z = -1411.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "史莱姆" },
	{ config_id = 1069, monster_id = 20011001, pos = { x = 1594.7, y = 249.5, z = -1409.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 6, drop_tag = "史莱姆" },
	{ config_id = 1101, monster_id = 28020201, pos = { x = 1423.3, y = 310.0, z = -1935.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1102, monster_id = 28020201, pos = { x = 1450.6, y = 275.9, z = -1387.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1103, monster_id = 28020201, pos = { x = 1180.0, y = 273.1, z = -1879.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1104, monster_id = 28020201, pos = { x = 1102.8, y = 307.6, z = -1516.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1105, monster_id = 28020201, pos = { x = 1403.6, y = 301.6, z = -1854.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1106, monster_id = 28020201, pos = { x = 1551.9, y = 290.8, z = -1241.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1107, monster_id = 28020201, pos = { x = 1789.8, y = 259.9, z = -1027.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1108, monster_id = 28020201, pos = { x = 1481.0, y = 263.7, z = -1701.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1109, monster_id = 28020201, pos = { x = 1713.7, y = 210.9, z = -1410.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1110, monster_id = 28020201, pos = { x = 1334.0, y = 265.5, z = -1477.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1111, monster_id = 28020201, pos = { x = 1214.2, y = 257.9, z = -1428.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1112, monster_id = 28020201, pos = { x = 1434.1, y = 310.5, z = -1938.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1113, monster_id = 28020201, pos = { x = 1220.4, y = 258.8, z = -1551.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1114, monster_id = 28020201, pos = { x = 1293.5, y = 311.8, z = -1842.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1115, monster_id = 28020201, pos = { x = 1506.7, y = 257.9, z = -1683.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1116, monster_id = 28020201, pos = { x = 1326.2, y = 265.3, z = -1478.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1117, monster_id = 28020201, pos = { x = 1493.7, y = 265.8, z = -1731.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1118, monster_id = 28020201, pos = { x = 1468.9, y = 254.3, z = -1476.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1119, monster_id = 28020201, pos = { x = 1387.9, y = 283.2, z = -1389.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1120, monster_id = 28020201, pos = { x = 1459.9, y = 257.9, z = -1427.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1121, monster_id = 28020201, pos = { x = 1244.9, y = 310.8, z = -1797.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1122, monster_id = 28020201, pos = { x = 1999.7, y = 224.4, z = -1046.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1123, monster_id = 28020201, pos = { x = 1325.9, y = 250.5, z = -1573.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1124, monster_id = 28020201, pos = { x = 1632.8, y = 280.3, z = -1152.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1125, monster_id = 28020201, pos = { x = 1408.0, y = 307.5, z = -1257.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1126, monster_id = 28020201, pos = { x = 1318.2, y = 266.1, z = -1464.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1127, monster_id = 28020201, pos = { x = 1627.8, y = 276.0, z = -1514.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1128, monster_id = 28020201, pos = { x = 1325.6, y = 300.8, z = -1331.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1129, monster_id = 28020201, pos = { x = 1642.5, y = 274.2, z = -1483.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1130, monster_id = 28020201, pos = { x = 1328.6, y = 330.5, z = -2032.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" },
	{ config_id = 1138, monster_id = 28010103, pos = { x = 1969.5, y = 196.4, z = -1612.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1139, monster_id = 28010102, pos = { x = 1984.8, y = 199.0, z = -1612.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1140, monster_id = 28010103, pos = { x = 2004.9, y = 198.4, z = -1624.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1141, monster_id = 28010102, pos = { x = 2001.5, y = 194.1, z = -1642.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1142, monster_id = 28010103, pos = { x = 1960.7, y = 195.1, z = -1620.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1143, monster_id = 28010103, pos = { x = 1975.9, y = 196.1, z = -1619.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1144, monster_id = 28010102, pos = { x = 1996.0, y = 195.9, z = -1631.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1145, monster_id = 28010103, pos = { x = 1992.6, y = 193.6, z = -1649.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "采集动物" },
	{ config_id = 1230, monster_id = 28030101, pos = { x = 1675.5, y = 244.4, z = -1359.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1231, monster_id = 28030101, pos = { x = 1674.3, y = 244.4, z = -1361.7 }, rot = { x = 0.0, y = 109.8, z = 0.0 }, level = 1, drop_tag = "鸟类", pose_id = 2 },
	{ config_id = 1232, monster_id = 28020301, pos = { x = 1940.4, y = 202.4, z = -1479.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, drop_tag = "走兽" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1723, gadget_id = 70211111, pos = { x = 1927.0, y = 216.6, z = -1130.5 }, rot = { x = 0.0, y = 335.2, z = 0.0 }, level = 5, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1731, gadget_id = 70211101, pos = { x = 1964.5, y = 222.1, z = -1491.0 }, rot = { x = 0.0, y = 191.2, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 1754, gadget_id = 70680001, pos = { x = 1651.8, y = 197.1, z = -1659.1 }, rot = { x = 0.0, y = 187.5, z = 0.0 }, level = 5, arguments = { 5, 10, 5 } },
	{ config_id = 2034, gadget_id = 70211101, pos = { x = 1699.1, y = 233.2, z = -1345.8 }, rot = { x = 0.0, y = 182.0, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2041, gadget_id = 70211101, pos = { x = 1680.8, y = 244.3, z = -1327.4 }, rot = { x = 0.3, y = 218.1, z = 10.7 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2061, gadget_id = 70211101, pos = { x = 1612.2, y = 262.8, z = -1279.4 }, rot = { x = 357.5, y = 195.9, z = 8.9 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2092, gadget_id = 70211101, pos = { x = 1807.3, y = 194.9, z = -1507.6 }, rot = { x = 0.0, y = 225.1, z = 0.0 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2368, gadget_id = 70210101, pos = { x = 1722.8, y = 194.7, z = -1551.0 }, rot = { x = 0.0, y = 190.3, z = 0.0 }, level = 5, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 2507, gadget_id = 70210101, pos = { x = 1796.9, y = 232.7, z = -1093.4 }, rot = { x = 0.0, y = 292.8, z = 0.0 }, level = 5, drop_tag = "搜刮点解谜通用蒙德" },
	{ config_id = 2519, gadget_id = 70211101, pos = { x = 1803.9, y = 241.0, z = -1196.4 }, rot = { x = 15.3, y = 101.8, z = 0.4 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2535, gadget_id = 70211101, pos = { x = 1679.4, y = 267.7, z = -1187.9 }, rot = { x = 345.8, y = 302.9, z = 354.2 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2589, gadget_id = 70211101, pos = { x = 1710.5, y = 262.3, z = -1274.1 }, rot = { x = 12.2, y = 100.8, z = 0.1 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2590, gadget_id = 70211011, pos = { x = 1554.2, y = 294.7, z = -1190.2 }, rot = { x = 0.0, y = 324.2, z = 0.0 }, level = 10, drop_tag = "战斗中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2979, gadget_id = 70211101, pos = { x = 1974.7, y = 237.0, z = -1534.0 }, rot = { x = 358.7, y = 3.3, z = 1.4 }, level = 5, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 2996, gadget_id = 70211101, pos = { x = 1662.5, y = 248.6, z = -1203.9 }, rot = { x = 0.6, y = 182.1, z = 1.7 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 227, shape = RegionShape.SPHERE, radius = 4.3, pos = { x = 1649.4, y = 276.0, z = -1282.3 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_227", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_227", action = "action_EVENT_ENTER_REGION_227" }
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
	rand_suite = true
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
		monsters = { 281, 282, 283, 284, 285, 291, 292, 293, 296, 334, 343, 344, 345, 346, 347, 348, 358, 376, 403, 404, 405, 408, 409, 412, 413, 414, 455, 456, 472, 491, 492, 493, 494, 495, 496, 497, 498, 499, 565, 566, 567, 569, 571, 572, 574, 575, 687, 688, 689, 710, 711, 712, 740, 741, 742, 747, 748, 749, 750, 751, 752, 761, 803, 810, 811, 817, 821, 822, 830, 842, 846, 847, 1035, 1036, 1037, 1038, 1067, 1068, 1069, 1101, 1102, 1103, 1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1138, 1139, 1140, 1141, 1142, 1143, 1144, 1145, 1230, 1231, 1232 },
		gadgets = { 1723, 1731, 1754, 2034, 2041, 2061, 2092, 2368, 2507, 2519, 2535, 2589, 2590, 2979, 2996 },
		regions = { 227 },
		triggers = { "ENTER_REGION_227" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_227(context, evt)
	if evt.param1 ~= 227 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_227(context, evt)
	-- 创建id为2537的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 2537 }) then
	  return -1
	end
	
	return 0
end
