--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 801001, gadget_id = 70500000, pos = { x = 1263.9, y = 265.1, z = 1245.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 1001 },
	{ config_id = 801002, gadget_id = 70500000, pos = { x = 1265.0, y = 264.7, z = 1239.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 1001 },
	{ config_id = 801003, gadget_id = 70290009, pos = { x = 1198.1, y = 254.8, z = 1233.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801004, gadget_id = 70500000, pos = { x = 1198.1, y = 254.8, z = 1233.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3005, owner = 801003 },
	{ config_id = 801005, gadget_id = 70290009, pos = { x = 1199.5, y = 254.7, z = 1234.0 }, rot = { x = 3.7, y = 62.5, z = 5.1 }, level = 24 },
	{ config_id = 801006, gadget_id = 70500000, pos = { x = 1199.5, y = 254.7, z = 1234.0 }, rot = { x = 3.7, y = 62.5, z = 5.1 }, level = 24, point_type = 3005, owner = 801005 },
	{ config_id = 801007, gadget_id = 70290016, pos = { x = 1213.3, y = 272.9, z = 1450.7 }, rot = { x = 352.8, y = 254.1, z = 25.6 }, level = 24 },
	{ config_id = 801008, gadget_id = 70500000, pos = { x = 1213.3, y = 272.9, z = 1450.7 }, rot = { x = 352.8, y = 254.1, z = 25.6 }, level = 24, point_type = 3010, owner = 801007 },
	{ config_id = 801009, gadget_id = 70290016, pos = { x = 1217.1, y = 265.6, z = 1375.5 }, rot = { x = 1.5, y = 244.3, z = 7.2 }, level = 24 },
	{ config_id = 801010, gadget_id = 70500000, pos = { x = 1217.1, y = 265.6, z = 1375.5 }, rot = { x = 1.5, y = 244.4, z = 7.2 }, level = 24, point_type = 3010, owner = 801009 },
	{ config_id = 801011, gadget_id = 70500000, pos = { x = 1178.3, y = 240.4, z = 1043.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2009 },
	{ config_id = 801012, gadget_id = 70290001, pos = { x = 1605.9, y = 200.5, z = 1138.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 801013, gadget_id = 70290016, pos = { x = 1149.4, y = 267.6, z = 1334.9 }, rot = { x = 348.8, y = 217.0, z = 26.0 }, level = 24 },
	{ config_id = 801014, gadget_id = 70500000, pos = { x = 1149.4, y = 267.6, z = 1334.9 }, rot = { x = 348.9, y = 217.0, z = 26.0 }, level = 24, point_type = 3010, owner = 801013 },
	{ config_id = 801015, gadget_id = 70500000, pos = { x = 1605.9, y = 201.1, z = 1139.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3002, owner = 801012 },
	{ config_id = 801016, gadget_id = 70500000, pos = { x = 1605.8, y = 201.4, z = 1138.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3002, owner = 801012 },
	{ config_id = 801017, gadget_id = 70500000, pos = { x = 1606.2, y = 201.8, z = 1138.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3002, owner = 801012 },
	{ config_id = 801018, gadget_id = 70500000, pos = { x = 1210.1, y = 273.8, z = 1440.8 }, rot = { x = 327.4, y = 0.0, z = 312.0 }, level = 24, point_type = 1001 },
	{ config_id = 801019, gadget_id = 70500000, pos = { x = 1253.5, y = 269.0, z = 1460.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2015 },
	{ config_id = 801020, gadget_id = 70500000, pos = { x = 1241.7, y = 269.0, z = 1470.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2015 },
	{ config_id = 801021, gadget_id = 70500000, pos = { x = 1255.0, y = 269.0, z = 1459.7 }, rot = { x = 0.0, y = 265.9, z = 0.0 }, level = 24, point_type = 2015 },
	{ config_id = 801022, gadget_id = 70500000, pos = { x = 1241.6, y = 269.0, z = 1473.5 }, rot = { x = 0.0, y = 199.3, z = 0.0 }, level = 24, point_type = 2015 },
	{ config_id = 801023, gadget_id = 70500000, pos = { x = 1218.5, y = 272.4, z = 1443.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 1004 },
	{ config_id = 801024, gadget_id = 70500000, pos = { x = 1179.8, y = 255.8, z = 1249.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801025, gadget_id = 70500000, pos = { x = 1183.9, y = 259.9, z = 1248.1 }, rot = { x = 0.0, y = 4.6, z = 0.0 }, level = 24, point_type = 2026 },
	{ config_id = 801026, gadget_id = 70500000, pos = { x = 1206.2, y = 272.0, z = 1421.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801027, gadget_id = 70500000, pos = { x = 1131.7, y = 221.3, z = 990.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801028, gadget_id = 70500000, pos = { x = 1142.5, y = 227.0, z = 1015.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801029, gadget_id = 70290001, pos = { x = 1124.8, y = 219.7, z = 1003.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801030, gadget_id = 70500000, pos = { x = 1124.8, y = 220.2, z = 1003.8 }, rot = { x = 0.0, y = 360.0, z = 0.0 }, level = 24, point_type = 3002, owner = 801029 },
	{ config_id = 801031, gadget_id = 70500000, pos = { x = 1124.6, y = 219.7, z = 1003.4 }, rot = { x = 0.0, y = 360.0, z = 326.4 }, level = 24, point_type = 3002, owner = 801029 },
	{ config_id = 801032, gadget_id = 70500000, pos = { x = 1125.0, y = 219.7, z = 1003.2 }, rot = { x = 44.3, y = 10.0, z = 12.0 }, level = 24, point_type = 3002, owner = 801029 },
	{ config_id = 801033, gadget_id = 70290001, pos = { x = 1133.3, y = 222.7, z = 1007.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801034, gadget_id = 70500000, pos = { x = 1133.3, y = 223.3, z = 1007.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3002, owner = 801033 },
	{ config_id = 801035, gadget_id = 70500000, pos = { x = 1133.2, y = 223.6, z = 1006.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3002, owner = 801033 },
	{ config_id = 801036, gadget_id = 70500000, pos = { x = 1133.3, y = 222.7, z = 1006.7 }, rot = { x = 0.0, y = 0.0, z = 312.8 }, level = 24, point_type = 3002, owner = 801033 },
	{ config_id = 801037, gadget_id = 70500000, pos = { x = 1204.4, y = 247.1, z = 1042.4 }, rot = { x = 0.0, y = 0.0, z = 20.5 }, level = 24, point_type = 1003 },
	{ config_id = 801038, gadget_id = 70500000, pos = { x = 1205.5, y = 248.9, z = 1049.3 }, rot = { x = 0.0, y = 0.0, z = 30.1 }, level = 24, point_type = 1003 },
	{ config_id = 801039, gadget_id = 70290016, pos = { x = 1168.8, y = 229.4, z = 1018.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801040, gadget_id = 70500000, pos = { x = 1168.8, y = 229.4, z = 1018.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3010, owner = 801039 },
	{ config_id = 801041, gadget_id = 70290002, pos = { x = 1132.6, y = 225.9, z = 1085.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801042, gadget_id = 70500000, pos = { x = 1131.5, y = 227.5, z = 1085.8 }, rot = { x = 0.0, y = 265.0, z = 0.0 }, level = 24, point_type = 3011, owner = 801041 },
	{ config_id = 801043, gadget_id = 70500000, pos = { x = 1133.4, y = 228.6, z = 1084.0 }, rot = { x = 0.0, y = 314.0, z = 0.0 }, level = 24, point_type = 3011, owner = 801041 },
	{ config_id = 801044, gadget_id = 70500000, pos = { x = 1132.6, y = 228.8, z = 1086.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3011, owner = 801041 },
	{ config_id = 801045, gadget_id = 70290003, pos = { x = 1132.2, y = 229.5, z = 1084.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801046, gadget_id = 70500000, pos = { x = 1132.2, y = 229.6, z = 1084.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801045 },
	{ config_id = 801047, gadget_id = 70500000, pos = { x = 1130.6, y = 226.0, z = 1085.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801045 },
	{ config_id = 801048, gadget_id = 70500000, pos = { x = 1113.6, y = 222.4, z = 1070.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801049, gadget_id = 70500000, pos = { x = 1112.7, y = 222.9, z = 1071.1 }, rot = { x = 0.0, y = 67.4, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801050, gadget_id = 70500000, pos = { x = 1130.5, y = 224.3, z = 1076.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801051, gadget_id = 70500000, pos = { x = 1117.2, y = 229.8, z = 1100.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801052, gadget_id = 70290010, pos = { x = 1093.1, y = 253.8, z = 1165.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801053, gadget_id = 70500000, pos = { x = 1093.1, y = 253.8, z = 1165.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3006, owner = 801052 },
	{ config_id = 801054, gadget_id = 70290010, pos = { x = 1094.6, y = 254.2, z = 1168.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801055, gadget_id = 70500000, pos = { x = 1094.6, y = 254.2, z = 1168.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3006, owner = 801054 },
	{ config_id = 801056, gadget_id = 70500000, pos = { x = 1107.6, y = 248.8, z = 1135.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801057, gadget_id = 70500000, pos = { x = 1107.0, y = 256.1, z = 1168.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801058, gadget_id = 70500000, pos = { x = 1094.6, y = 246.3, z = 1128.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801059, gadget_id = 70500000, pos = { x = 1116.8, y = 253.3, z = 1152.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801060, gadget_id = 70500000, pos = { x = 1192.7, y = 286.9, z = 1284.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2026 },
	{ config_id = 801061, gadget_id = 70500000, pos = { x = 1203.9, y = 283.0, z = 1277.4 }, rot = { x = 0.0, y = 279.2, z = 0.0 }, level = 24, point_type = 2026 },
	{ config_id = 801062, gadget_id = 70500000, pos = { x = 1219.0, y = 286.7, z = 1291.9 }, rot = { x = 0.0, y = 112.4, z = 0.0 }, level = 24, point_type = 2026 },
	{ config_id = 801063, gadget_id = 70290013, pos = { x = 1125.3, y = 272.0, z = 1311.8 }, rot = { x = 0.0, y = 357.5, z = 0.0 }, level = 24 },
	{ config_id = 801064, gadget_id = 70500000, pos = { x = 1125.3, y = 272.0, z = 1311.8 }, rot = { x = 0.0, y = 357.5, z = 0.0 }, level = 24, point_type = 2016, owner = 801063 },
	{ config_id = 801065, gadget_id = 70500000, pos = { x = 1126.1, y = 272.6, z = 1311.8 }, rot = { x = 80.7, y = 195.2, z = 283.5 }, level = 24, point_type = 2016, owner = 801063 },
	{ config_id = 801066, gadget_id = 70500000, pos = { x = 1125.0, y = 271.9, z = 1311.8 }, rot = { x = 343.6, y = 328.2, z = 341.6 }, level = 24, point_type = 2016, owner = 801063 },
	{ config_id = 801067, gadget_id = 70290013, pos = { x = 1089.3, y = 286.8, z = 1380.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801068, gadget_id = 70500000, pos = { x = 1089.3, y = 286.8, z = 1380.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2016, owner = 801067 },
	{ config_id = 801069, gadget_id = 70500000, pos = { x = 1090.1, y = 287.4, z = 1380.7 }, rot = { x = 80.7, y = 197.8, z = 283.5 }, level = 24, point_type = 2016, owner = 801067 },
	{ config_id = 801070, gadget_id = 70500000, pos = { x = 1089.0, y = 286.7, z = 1380.7 }, rot = { x = 343.6, y = 330.7, z = 341.6 }, level = 24, point_type = 2016, owner = 801067 },
	{ config_id = 801071, gadget_id = 70290013, pos = { x = 1151.3, y = 266.2, z = 1311.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801072, gadget_id = 70500000, pos = { x = 1151.3, y = 266.2, z = 1311.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2016, owner = 801071 },
	{ config_id = 801073, gadget_id = 70500000, pos = { x = 1152.1, y = 266.7, z = 1311.2 }, rot = { x = 80.7, y = 197.8, z = 283.5 }, level = 24, point_type = 2016, owner = 801071 },
	{ config_id = 801074, gadget_id = 70500000, pos = { x = 1151.1, y = 266.1, z = 1311.2 }, rot = { x = 343.6, y = 330.7, z = 341.6 }, level = 24, point_type = 2016, owner = 801071 },
	{ config_id = 801075, gadget_id = 70500000, pos = { x = 1140.5, y = 266.6, z = 1294.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801076, gadget_id = 70500000, pos = { x = 1149.0, y = 267.4, z = 1332.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801077, gadget_id = 70500000, pos = { x = 1196.0, y = 264.1, z = 1357.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801078, gadget_id = 70500000, pos = { x = 1198.2, y = 263.8, z = 1352.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801079, gadget_id = 70290013, pos = { x = 1222.3, y = 265.6, z = 1371.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801080, gadget_id = 70500000, pos = { x = 1222.3, y = 265.6, z = 1371.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2016, owner = 801079 },
	{ config_id = 801081, gadget_id = 70500000, pos = { x = 1223.1, y = 266.1, z = 1371.4 }, rot = { x = 80.7, y = 197.8, z = 283.5 }, level = 24, point_type = 2016, owner = 801079 },
	{ config_id = 801082, gadget_id = 70500000, pos = { x = 1222.0, y = 265.5, z = 1371.4 }, rot = { x = 343.6, y = 330.7, z = 341.6 }, level = 24, point_type = 2016, owner = 801079 },
	{ config_id = 801083, gadget_id = 70500000, pos = { x = 1173.9, y = 267.3, z = 1337.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2002 },
	{ config_id = 801084, gadget_id = 70500000, pos = { x = 1240.3, y = 265.9, z = 1346.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801085, gadget_id = 70500000, pos = { x = 1193.2, y = 240.8, z = 1028.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801086, gadget_id = 70500000, pos = { x = 1230.6, y = 258.0, z = 1050.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801087, gadget_id = 70500000, pos = { x = 1216.8, y = 242.5, z = 996.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 801088, gadget_id = 70500000, pos = { x = 1222.4, y = 254.6, z = 1033.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801089, gadget_id = 70500000, pos = { x = 1216.3, y = 262.5, z = 1075.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801090, gadget_id = 70290003, pos = { x = 1258.1, y = 284.9, z = 1176.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801091, gadget_id = 70500000, pos = { x = 1258.1, y = 285.0, z = 1176.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801090 },
	{ config_id = 801092, gadget_id = 70500000, pos = { x = 1258.1, y = 285.0, z = 1176.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801090 },
	{ config_id = 801093, gadget_id = 70290003, pos = { x = 1197.4, y = 255.8, z = 1072.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801094, gadget_id = 70500000, pos = { x = 1197.4, y = 255.9, z = 1072.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801093 },
	{ config_id = 801095, gadget_id = 70500000, pos = { x = 1197.4, y = 255.9, z = 1073.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801093 },
	{ config_id = 801096, gadget_id = 70290003, pos = { x = 1140.0, y = 260.2, z = 1184.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801097, gadget_id = 70500000, pos = { x = 1140.0, y = 260.3, z = 1184.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801096 },
	{ config_id = 801098, gadget_id = 70500000, pos = { x = 1140.0, y = 260.3, z = 1184.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801096 },
	{ config_id = 801099, gadget_id = 70290003, pos = { x = 1203.8, y = 303.1, z = 1287.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801100, gadget_id = 70500000, pos = { x = 1203.8, y = 303.2, z = 1287.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801099 },
	{ config_id = 801101, gadget_id = 70500000, pos = { x = 1203.8, y = 303.2, z = 1287.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801099 },
	{ config_id = 801102, gadget_id = 70290003, pos = { x = 1199.3, y = 301.4, z = 1290.2 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 24 },
	{ config_id = 801103, gadget_id = 70500000, pos = { x = 1199.4, y = 301.5, z = 1290.2 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 24, point_type = 3003, owner = 801102 },
	{ config_id = 801104, gadget_id = 70500000, pos = { x = 1199.2, y = 301.5, z = 1290.2 }, rot = { x = 0.0, y = 271.7, z = 0.0 }, level = 24, point_type = 3003, owner = 801102 },
	{ config_id = 801105, gadget_id = 70290003, pos = { x = 1208.2, y = 302.2, z = 1281.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801106, gadget_id = 70500000, pos = { x = 1208.2, y = 302.3, z = 1281.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801105 },
	{ config_id = 801107, gadget_id = 70500000, pos = { x = 1208.2, y = 302.3, z = 1281.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3003, owner = 801105 },
	{ config_id = 801111, gadget_id = 70290003, pos = { x = 1258.1, y = 219.1, z = 1046.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 801112, gadget_id = 70500000, pos = { x = 1258.1, y = 219.2, z = 1046.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3003, owner = 801111 },
	{ config_id = 801113, gadget_id = 70500000, pos = { x = 1258.1, y = 219.2, z = 1046.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3003, owner = 801111 },
	{ config_id = 801114, gadget_id = 70290003, pos = { x = 1448.4, y = 236.9, z = 1423.5 }, rot = { x = 0.0, y = 148.3, z = 0.0 }, level = 19 },
	{ config_id = 801115, gadget_id = 70500000, pos = { x = 1448.3, y = 237.0, z = 1423.5 }, rot = { x = 0.0, y = 148.2, z = 0.0 }, level = 19, point_type = 3003, owner = 801114 },
	{ config_id = 801116, gadget_id = 70500000, pos = { x = 1448.4, y = 237.0, z = 1423.4 }, rot = { x = 0.0, y = 148.2, z = 0.0 }, level = 19, point_type = 3003, owner = 801114 },
	{ config_id = 801117, gadget_id = 70500000, pos = { x = 1273.7, y = 261.4, z = 1214.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801118, gadget_id = 70500000, pos = { x = 1262.6, y = 265.4, z = 1252.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801119, gadget_id = 70500000, pos = { x = 1178.7, y = 267.0, z = 1184.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801120, gadget_id = 70500000, pos = { x = 1161.7, y = 274.7, z = 1205.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801121, gadget_id = 70500000, pos = { x = 1225.7, y = 266.8, z = 1191.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801122, gadget_id = 70500000, pos = { x = 1232.5, y = 265.9, z = 1176.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801123, gadget_id = 70500000, pos = { x = 1249.0, y = 269.6, z = 1204.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801124, gadget_id = 70500000, pos = { x = 1284.0, y = 269.3, z = 1196.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801125, gadget_id = 70500000, pos = { x = 1319.7, y = 259.0, z = 1200.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 801126, gadget_id = 70500000, pos = { x = 1249.6, y = 278.9, z = 1263.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2004 },
	{ config_id = 801127, gadget_id = 70500000, pos = { x = 1273.9, y = 278.7, z = 1288.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801128, gadget_id = 70500000, pos = { x = 1265.6, y = 282.4, z = 1317.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801129, gadget_id = 70500000, pos = { x = 1299.6, y = 281.2, z = 1320.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2001 },
	{ config_id = 801130, gadget_id = 70500000, pos = { x = 1251.8, y = 289.5, z = 1361.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2001 },
	{ config_id = 801131, gadget_id = 70290001, pos = { x = 1156.7, y = 290.3, z = 1363.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801132, gadget_id = 70500000, pos = { x = 1156.7, y = 290.9, z = 1363.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3002, owner = 801131 },
	{ config_id = 801133, gadget_id = 70500000, pos = { x = 1156.6, y = 291.2, z = 1362.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3002, owner = 801131 },
	{ config_id = 801134, gadget_id = 70500000, pos = { x = 1156.9, y = 291.6, z = 1363.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3002, owner = 801131 },
	{ config_id = 801135, gadget_id = 70500000, pos = { x = 1324.5, y = 273.1, z = 1559.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 801136, gadget_id = 70500000, pos = { x = 1331.6, y = 272.5, z = 1557.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 801137, gadget_id = 70500000, pos = { x = 1327.9, y = 273.7, z = 1564.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2004 },
	{ config_id = 801138, gadget_id = 70500000, pos = { x = 1319.6, y = 274.1, z = 1573.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2009 },
	{ config_id = 801139, gadget_id = 70500000, pos = { x = 1296.0, y = 276.7, z = 1558.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 2009 },
	{ config_id = 801140, gadget_id = 70290016, pos = { x = 1322.6, y = 272.2, z = 1554.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 801141, gadget_id = 70500000, pos = { x = 1322.6, y = 272.2, z = 1554.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3010, owner = 801140 },
	{ config_id = 801142, gadget_id = 70290016, pos = { x = 1338.7, y = 273.6, z = 1555.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 801143, gadget_id = 70500000, pos = { x = 1338.7, y = 273.6, z = 1555.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, point_type = 3010, owner = 801142 },
	{ config_id = 801144, gadget_id = 70500000, pos = { x = 1241.5, y = 272.9, z = 1504.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 1001 },
	{ config_id = 801145, gadget_id = 70500000, pos = { x = 1227.3, y = 273.5, z = 1497.9 }, rot = { x = 0.0, y = 0.0, z = 121.9 }, level = 24, point_type = 1001 },
	{ config_id = 801146, gadget_id = 70500000, pos = { x = 1265.4, y = 278.1, z = 1533.7 }, rot = { x = 337.9, y = 354.5, z = 352.1 }, level = 19, point_type = 1001 },
	{ config_id = 801147, gadget_id = 70500000, pos = { x = 1339.9, y = 273.4, z = 1552.8 }, rot = { x = 313.6, y = 358.2, z = 39.2 }, level = 19, point_type = 1003 }
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
		monsters = { },
		gadgets = { 801001, 801002, 801003, 801004, 801005, 801006, 801007, 801008, 801009, 801010, 801011, 801012, 801013, 801014, 801015, 801016, 801017, 801018, 801019, 801020, 801021, 801022, 801023, 801024, 801025, 801026, 801027, 801028, 801029, 801030, 801031, 801032, 801033, 801034, 801035, 801036, 801037, 801038, 801039, 801040, 801041, 801042, 801043, 801044, 801045, 801046, 801047, 801048, 801049, 801050, 801051, 801052, 801053, 801054, 801055, 801056, 801057, 801058, 801059, 801060, 801061, 801062, 801063, 801064, 801065, 801066, 801067, 801068, 801069, 801070, 801071, 801072, 801073, 801074, 801075, 801076, 801077, 801078, 801079, 801080, 801081, 801082, 801083, 801084, 801085, 801086, 801087, 801088, 801089, 801090, 801091, 801092, 801093, 801094, 801095, 801096, 801097, 801098, 801099, 801100, 801101, 801102, 801103, 801104, 801105, 801106, 801107, 801111, 801112, 801113, 801114, 801115, 801116, 801117, 801118, 801119, 801120, 801121, 801122, 801123, 801124, 801125, 801126, 801127, 801128, 801129, 801130, 801131, 801132, 801133, 801134, 801135, 801136, 801137, 801138, 801139, 801140, 801141, 801142, 801143, 801144, 801145, 801146, 801147 },
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
