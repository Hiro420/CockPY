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
	{ config_id = 801001, gadget_id = 70290016, pos = { x = -896.5, y = 230.4, z = 645.8 }, rot = { x = 352.8, y = 166.2, z = 31.7 }, level = 32 },
	{ config_id = 801002, gadget_id = 70500000, pos = { x = -896.5, y = 230.4, z = 645.8 }, rot = { x = 352.8, y = 166.2, z = 31.7 }, level = 32, point_type = 3010, owner = 801001 },
	{ config_id = 801003, gadget_id = 70290016, pos = { x = -906.4, y = 241.8, z = 642.6 }, rot = { x = 0.0, y = 120.2, z = 0.0 }, level = 32 },
	{ config_id = 801004, gadget_id = 70500000, pos = { x = -906.4, y = 241.8, z = 642.6 }, rot = { x = 0.0, y = 120.2, z = 0.0 }, level = 32, point_type = 3010, owner = 801003 },
	{ config_id = 801005, gadget_id = 70500000, pos = { x = -874.8, y = 155.7, z = 1268.1 }, rot = { x = 0.0, y = 116.8, z = 0.0 }, level = 32, point_type = 1004 },
	{ config_id = 801006, gadget_id = 70500000, pos = { x = -872.1, y = 155.7, z = 1269.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 1004 },
	{ config_id = 801007, gadget_id = 70500000, pos = { x = -876.1, y = 155.6, z = 1268.3 }, rot = { x = 0.0, y = 57.0, z = 0.0 }, level = 32, point_type = 1004 },
	{ config_id = 801008, gadget_id = 70500000, pos = { x = -878.8, y = 155.6, z = 1270.0 }, rot = { x = 0.0, y = 139.8, z = 25.0 }, level = 32, point_type = 1003 },
	{ config_id = 801009, gadget_id = 70290010, pos = { x = -848.3, y = 156.0, z = 1242.6 }, rot = { x = 358.1, y = 356.2, z = 0.0 }, level = 32 },
	{ config_id = 801010, gadget_id = 70500000, pos = { x = -848.3, y = 156.0, z = 1242.6 }, rot = { x = 358.1, y = 356.2, z = 0.0 }, level = 32, point_type = 3006, owner = 801009 },
	{ config_id = 801011, gadget_id = 70290010, pos = { x = -843.6, y = 155.2, z = 1246.7 }, rot = { x = 4.9, y = 8.9, z = 351.5 }, level = 32 },
	{ config_id = 801012, gadget_id = 70500000, pos = { x = -843.6, y = 155.2, z = 1246.7 }, rot = { x = 4.9, y = 8.9, z = 351.5 }, level = 32, point_type = 3006, owner = 801011 },
	{ config_id = 801013, gadget_id = 70290003, pos = { x = -806.5, y = 193.7, z = 1291.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801014, gadget_id = 70500000, pos = { x = -806.5, y = 193.8, z = 1291.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3003, owner = 801013 },
	{ config_id = 801015, gadget_id = 70500000, pos = { x = -806.5, y = 193.8, z = 1291.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3003, owner = 801013 },
	{ config_id = 801016, gadget_id = 70290008, pos = { x = -911.5, y = 155.3, z = 1361.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801017, gadget_id = 70500000, pos = { x = -911.5, y = 155.3, z = 1361.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3008, owner = 801016 },
	{ config_id = 801018, gadget_id = 70290008, pos = { x = -903.9, y = 155.3, z = 1365.7 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 32 },
	{ config_id = 801019, gadget_id = 70500000, pos = { x = -903.9, y = 155.3, z = 1365.7 }, rot = { x = 0.0, y = 76.3, z = 0.0 }, level = 32, point_type = 3008, owner = 801018 },
	{ config_id = 801020, gadget_id = 70290014, pos = { x = -760.1, y = 191.4, z = 752.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801021, gadget_id = 70500000, pos = { x = -760.4, y = 191.4, z = 751.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2015, owner = 801020 },
	{ config_id = 801022, gadget_id = 70290014, pos = { x = -743.3, y = 191.4, z = 753.9 }, rot = { x = 0.0, y = 280.1, z = 0.0 }, level = 32 },
	{ config_id = 801023, gadget_id = 70500000, pos = { x = -743.5, y = 191.4, z = 753.5 }, rot = { x = 0.0, y = 280.1, z = 0.0 }, level = 32, point_type = 2015, owner = 801022 },
	{ config_id = 801024, gadget_id = 70290014, pos = { x = -739.3, y = 191.4, z = 761.3 }, rot = { x = 0.0, y = 236.6, z = 0.0 }, level = 32 },
	{ config_id = 801025, gadget_id = 70500000, pos = { x = -739.6, y = 191.4, z = 760.8 }, rot = { x = 0.0, y = 236.6, z = 0.0 }, level = 32, point_type = 2015, owner = 801024 },
	{ config_id = 801026, gadget_id = 70290002, pos = { x = -465.0, y = 181.6, z = 882.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801027, gadget_id = 70500000, pos = { x = -466.0, y = 183.2, z = 882.9 }, rot = { x = 0.0, y = 265.0, z = 0.0 }, level = 32, point_type = 3011, owner = 801026 },
	{ config_id = 801028, gadget_id = 70500000, pos = { x = -464.1, y = 184.2, z = 881.2 }, rot = { x = 0.0, y = 314.0, z = 0.0 }, level = 32, point_type = 3011, owner = 801026 },
	{ config_id = 801029, gadget_id = 70500000, pos = { x = -464.9, y = 184.5, z = 883.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3011, owner = 801026 },
	{ config_id = 801030, gadget_id = 70290003, pos = { x = -522.2, y = 215.9, z = 854.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801031, gadget_id = 70500000, pos = { x = -522.2, y = 216.0, z = 853.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3003, owner = 801030 },
	{ config_id = 801032, gadget_id = 70500000, pos = { x = -522.2, y = 216.0, z = 854.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3003, owner = 801030 },
	{ config_id = 801033, gadget_id = 70290009, pos = { x = -226.3, y = 180.9, z = 897.0 }, rot = { x = 12.2, y = 359.2, z = 352.9 }, level = 32 },
	{ config_id = 801034, gadget_id = 70500000, pos = { x = -226.3, y = 180.9, z = 897.0 }, rot = { x = 12.2, y = 359.2, z = 352.9 }, level = 32, point_type = 3005, owner = 801033 },
	{ config_id = 801035, gadget_id = 70290009, pos = { x = -222.4, y = 180.6, z = 890.5 }, rot = { x = 5.3, y = 359.5, z = 350.2 }, level = 32 },
	{ config_id = 801036, gadget_id = 70500000, pos = { x = -222.4, y = 180.6, z = 890.5 }, rot = { x = 5.3, y = 359.5, z = 350.2 }, level = 32, point_type = 3005, owner = 801035 },
	{ config_id = 801037, gadget_id = 70290009, pos = { x = -231.9, y = 180.9, z = 886.9 }, rot = { x = 356.4, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801038, gadget_id = 70500000, pos = { x = -231.9, y = 180.9, z = 886.9 }, rot = { x = 356.4, y = 0.0, z = 0.0 }, level = 32, point_type = 3005, owner = 801037 },
	{ config_id = 801039, gadget_id = 70290014, pos = { x = -188.6, y = 180.7, z = 825.9 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 24 },
	{ config_id = 801040, gadget_id = 70500000, pos = { x = -188.9, y = 180.7, z = 825.5 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 24, point_type = 2015, owner = 801039 },
	{ config_id = 801041, gadget_id = 70290014, pos = { x = -173.8, y = 180.7, z = 838.9 }, rot = { x = 0.0, y = 42.3, z = 0.0 }, level = 32 },
	{ config_id = 801042, gadget_id = 70500000, pos = { x = -174.1, y = 180.7, z = 838.5 }, rot = { x = 0.0, y = 42.3, z = 0.0 }, level = 32, point_type = 2015, owner = 801041 },
	{ config_id = 801043, gadget_id = 70290014, pos = { x = -195.2, y = 180.7, z = 824.6 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 24 },
	{ config_id = 801044, gadget_id = 70500000, pos = { x = -195.5, y = 180.7, z = 824.1 }, rot = { x = 0.0, y = 296.2, z = 0.0 }, level = 24, point_type = 2015, owner = 801043 },
	{ config_id = 801045, gadget_id = 70290014, pos = { x = -169.0, y = 180.7, z = 836.1 }, rot = { x = 0.0, y = 243.3, z = 0.0 }, level = 32 },
	{ config_id = 801046, gadget_id = 70500000, pos = { x = -169.2, y = 180.7, z = 835.6 }, rot = { x = 0.0, y = 243.3, z = 0.0 }, level = 24, point_type = 2015, owner = 801045 },
	{ config_id = 801047, gadget_id = 70290014, pos = { x = -234.8, y = 180.7, z = 856.3 }, rot = { x = 0.0, y = 284.2, z = 0.0 }, level = 32 },
	{ config_id = 801048, gadget_id = 70500000, pos = { x = -235.0, y = 180.7, z = 855.8 }, rot = { x = 0.0, y = 284.2, z = 0.0 }, level = 32, point_type = 2015, owner = 801047 },
	{ config_id = 801049, gadget_id = 70290014, pos = { x = -245.0, y = 180.7, z = 880.6 }, rot = { x = 0.0, y = 67.9, z = 0.0 }, level = 32 },
	{ config_id = 801050, gadget_id = 70500000, pos = { x = -245.3, y = 180.7, z = 880.1 }, rot = { x = 0.0, y = 67.9, z = 0.0 }, level = 32, point_type = 2015, owner = 801049 },
	{ config_id = 801051, gadget_id = 70290014, pos = { x = -257.8, y = 180.7, z = 872.8 }, rot = { x = 0.0, y = 295.8, z = 0.0 }, level = 32 },
	{ config_id = 801052, gadget_id = 70500000, pos = { x = -258.0, y = 180.7, z = 872.3 }, rot = { x = 0.0, y = 295.8, z = 0.0 }, level = 32, point_type = 2015, owner = 801051 },
	{ config_id = 801053, gadget_id = 70290014, pos = { x = -226.5, y = 180.7, z = 975.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801054, gadget_id = 70500000, pos = { x = -226.8, y = 180.7, z = 975.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2015, owner = 801053 },
	{ config_id = 801055, gadget_id = 70290014, pos = { x = -480.7, y = 181.7, z = 1170.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801056, gadget_id = 70500000, pos = { x = -481.0, y = 181.7, z = 1170.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2015, owner = 801055 },
	{ config_id = 801057, gadget_id = 70290014, pos = { x = -475.6, y = 181.7, z = 1196.9 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 32 },
	{ config_id = 801058, gadget_id = 70500000, pos = { x = -475.8, y = 181.7, z = 1196.4 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 32, point_type = 2015, owner = 801057 },
	{ config_id = 801059, gadget_id = 70290016, pos = { x = -633.3, y = 146.5, z = 886.4 }, rot = { x = 20.3, y = 340.6, z = 37.4 }, level = 32 },
	{ config_id = 801060, gadget_id = 70500000, pos = { x = -633.3, y = 146.5, z = 886.4 }, rot = { x = 20.3, y = 340.6, z = 37.4 }, level = 32, point_type = 3010, owner = 801059 },
	{ config_id = 801061, gadget_id = 70290016, pos = { x = -642.0, y = 150.3, z = 863.5 }, rot = { x = 0.0, y = 68.1, z = 0.0 }, level = 32 },
	{ config_id = 801062, gadget_id = 70500000, pos = { x = -642.0, y = 150.3, z = 863.5 }, rot = { x = 0.0, y = 68.1, z = 0.0 }, level = 32, point_type = 3010, owner = 801061 },
	{ config_id = 801063, gadget_id = 70500000, pos = { x = -632.2, y = 146.5, z = 891.7 }, rot = { x = 348.5, y = 329.5, z = 341.2 }, level = 32, point_type = 1002 },
	{ config_id = 801064, gadget_id = 70500000, pos = { x = -668.1, y = 147.2, z = 868.0 }, rot = { x = 63.7, y = 358.7, z = 350.2 }, level = 32, point_type = 1002 },
	{ config_id = 801065, gadget_id = 70500000, pos = { x = -669.2, y = 146.0, z = 882.7 }, rot = { x = 352.9, y = 0.1, z = 357.8 }, level = 32, point_type = 1002 },
	{ config_id = 801066, gadget_id = 70500000, pos = { x = -645.5, y = 147.2, z = 901.0 }, rot = { x = 5.7, y = 50.1, z = 353.0 }, level = 32, point_type = 1002 },
	{ config_id = 801067, gadget_id = 70500000, pos = { x = -648.0, y = 147.8, z = 899.1 }, rot = { x = 345.0, y = 339.9, z = 340.4 }, level = 32, point_type = 1002 },
	{ config_id = 801068, gadget_id = 70500000, pos = { x = -670.5, y = 147.0, z = 874.1 }, rot = { x = 20.3, y = 358.3, z = 350.2 }, level = 32, point_type = 1003 },
	{ config_id = 801069, gadget_id = 70500000, pos = { x = -671.2, y = 147.3, z = 872.8 }, rot = { x = 7.2, y = 18.5, z = 325.8 }, level = 32, point_type = 1003 },
	{ config_id = 801070, gadget_id = 70500000, pos = { x = -630.6, y = 146.9, z = 891.8 }, rot = { x = 1.7, y = 0.2, z = 15.7 }, level = 32, point_type = 1003 },
	{ config_id = 801071, gadget_id = 70500000, pos = { x = -800.5, y = 216.8, z = 696.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2025 },
	{ config_id = 801072, gadget_id = 70500000, pos = { x = -650.4, y = 247.2, z = 775.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2025 },
	{ config_id = 801073, gadget_id = 70500000, pos = { x = -571.8, y = 253.5, z = 674.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2025 },
	{ config_id = 801074, gadget_id = 70500000, pos = { x = -522.2, y = 256.3, z = 721.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 2025 },
	{ config_id = 801075, gadget_id = 70500000, pos = { x = -478.8, y = 245.9, z = 765.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2025 },
	{ config_id = 801076, gadget_id = 70500000, pos = { x = -583.8, y = 239.5, z = 734.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 2025 },
	{ config_id = 801077, gadget_id = 70290008, pos = { x = -660.6, y = 260.7, z = 605.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 801078, gadget_id = 70500000, pos = { x = -660.6, y = 260.7, z = 605.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, point_type = 3008, owner = 801077 },
	{ config_id = 801079, gadget_id = 70290008, pos = { x = -666.4, y = 260.4, z = 620.4 }, rot = { x = 0.0, y = 29.8, z = 0.0 }, level = 24 },
	{ config_id = 801080, gadget_id = 70500000, pos = { x = -666.4, y = 260.4, z = 620.4 }, rot = { x = 0.0, y = 29.8, z = 0.0 }, level = 24, point_type = 3008, owner = 801079 },
	{ config_id = 801081, gadget_id = 70290008, pos = { x = -659.3, y = 260.8, z = 607.0 }, rot = { x = 0.0, y = 199.2, z = 0.0 }, level = 24 },
	{ config_id = 801082, gadget_id = 70500000, pos = { x = -659.3, y = 260.8, z = 607.0 }, rot = { x = 0.0, y = 199.2, z = 0.0 }, level = 24, point_type = 3008, owner = 801081 },
	{ config_id = 801083, gadget_id = 70500000, pos = { x = -287.8, y = 247.2, z = 694.0 }, rot = { x = 359.2, y = 77.6, z = 29.3 }, level = 32, point_type = 1004 },
	{ config_id = 801084, gadget_id = 70500000, pos = { x = -297.0, y = 248.9, z = 687.6 }, rot = { x = 1.7, y = 0.2, z = 15.7 }, level = 32, point_type = 1003 },
	{ config_id = 801085, gadget_id = 70500000, pos = { x = -310.0, y = 247.6, z = 704.0 }, rot = { x = 1.7, y = 0.2, z = 15.7 }, level = 24, point_type = 1003 },
	{ config_id = 801086, gadget_id = 70500000, pos = { x = -265.0, y = 250.6, z = 695.8 }, rot = { x = 1.7, y = 0.2, z = 15.7 }, level = 32, point_type = 1003 },
	{ config_id = 801087, gadget_id = 70500000, pos = { x = -278.2, y = 246.2, z = 707.0 }, rot = { x = 349.6, y = 357.9, z = 5.6 }, level = 24, point_type = 1003 },
	{ config_id = 801088, gadget_id = 70290016, pos = { x = -546.8, y = 166.0, z = 1064.6 }, rot = { x = 0.0, y = 102.4, z = 0.0 }, level = 32 },
	{ config_id = 801089, gadget_id = 70500000, pos = { x = -546.8, y = 166.0, z = 1064.6 }, rot = { x = 0.0, y = 102.4, z = 0.0 }, level = 32, point_type = 3010, owner = 801088 },
	{ config_id = 801090, gadget_id = 70290016, pos = { x = -449.8, y = 238.8, z = 987.0 }, rot = { x = 0.0, y = 258.0, z = 0.0 }, level = 32 },
	{ config_id = 801091, gadget_id = 70500000, pos = { x = -449.8, y = 238.8, z = 987.0 }, rot = { x = 0.0, y = 258.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801090 },
	{ config_id = 801092, gadget_id = 70290016, pos = { x = -300.1, y = 259.5, z = 998.1 }, rot = { x = 0.0, y = 137.1, z = 0.0 }, level = 32 },
	{ config_id = 801093, gadget_id = 70500000, pos = { x = -300.1, y = 259.5, z = 998.1 }, rot = { x = 12.6, y = 137.1, z = 0.0 }, level = 32, point_type = 3010, owner = 801092 },
	{ config_id = 801094, gadget_id = 70290016, pos = { x = -345.1, y = 219.0, z = 1118.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801095, gadget_id = 70500000, pos = { x = -345.1, y = 219.0, z = 1118.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801094 },
	{ config_id = 801096, gadget_id = 70290016, pos = { x = -531.9, y = 213.1, z = 1016.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801097, gadget_id = 70500000, pos = { x = -531.9, y = 213.1, z = 1016.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801096 },
	{ config_id = 801098, gadget_id = 70290016, pos = { x = -504.1, y = 225.3, z = 825.4 }, rot = { x = 0.0, y = 213.8, z = 0.0 }, level = 32 },
	{ config_id = 801099, gadget_id = 70500000, pos = { x = -504.1, y = 225.3, z = 825.4 }, rot = { x = 0.0, y = 213.8, z = 0.0 }, level = 32, point_type = 3010, owner = 801098 },
	{ config_id = 801100, gadget_id = 70290016, pos = { x = -691.3, y = 210.0, z = 1210.8 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 32 },
	{ config_id = 801101, gadget_id = 70500000, pos = { x = -691.3, y = 210.0, z = 1210.8 }, rot = { x = 0.0, y = 218.7, z = 0.0 }, level = 32, point_type = 3010, owner = 801100 },
	{ config_id = 801102, gadget_id = 70290016, pos = { x = -893.0, y = 156.9, z = 1197.6 }, rot = { x = 0.0, y = 171.3, z = 0.0 }, level = 32 },
	{ config_id = 801103, gadget_id = 70500000, pos = { x = -893.0, y = 156.9, z = 1197.6 }, rot = { x = 0.0, y = 171.3, z = 0.0 }, level = 32, point_type = 3010, owner = 801102 },
	{ config_id = 801104, gadget_id = 70290016, pos = { x = -793.3, y = 223.8, z = 988.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801105, gadget_id = 70500000, pos = { x = -793.3, y = 223.8, z = 988.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801104 },
	{ config_id = 801106, gadget_id = 70290016, pos = { x = -874.7, y = 177.8, z = 849.4 }, rot = { x = 0.0, y = 75.3, z = 10.7 }, level = 32 },
	{ config_id = 801107, gadget_id = 70500000, pos = { x = -874.7, y = 177.8, z = 849.4 }, rot = { x = 0.0, y = 75.3, z = 10.7 }, level = 32, point_type = 3010, owner = 801106 },
	{ config_id = 801108, gadget_id = 70290016, pos = { x = -700.8, y = 214.8, z = 755.0 }, rot = { x = 0.0, y = 23.5, z = 15.7 }, level = 32 },
	{ config_id = 801109, gadget_id = 70500000, pos = { x = -700.8, y = 214.8, z = 755.0 }, rot = { x = 0.0, y = 23.5, z = 15.7 }, level = 32, point_type = 3010, owner = 801108 },
	{ config_id = 801110, gadget_id = 70290016, pos = { x = -147.3, y = 189.2, z = 832.2 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 24 },
	{ config_id = 801111, gadget_id = 70500000, pos = { x = -147.3, y = 189.2, z = 832.2 }, rot = { x = 0.0, y = 133.1, z = 0.0 }, level = 24, point_type = 3010, owner = 801110 },
	{ config_id = 801112, gadget_id = 70290016, pos = { x = -143.3, y = 221.3, z = 1044.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801113, gadget_id = 70500000, pos = { x = -143.3, y = 221.3, z = 1044.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801112 },
	{ config_id = 801114, gadget_id = 70290016, pos = { x = -243.1, y = 246.3, z = 1245.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801115, gadget_id = 70500000, pos = { x = -243.1, y = 246.3, z = 1245.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801114 },
	{ config_id = 801116, gadget_id = 70290016, pos = { x = -594.3, y = 229.9, z = 964.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801117, gadget_id = 70500000, pos = { x = -594.3, y = 229.9, z = 964.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801116 },
	{ config_id = 801118, gadget_id = 70290016, pos = { x = -973.3, y = 222.1, z = 973.3 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 32 },
	{ config_id = 801119, gadget_id = 70500000, pos = { x = -973.3, y = 222.1, z = 973.3 }, rot = { x = 0.0, y = 212.2, z = 0.0 }, level = 32, point_type = 3010, owner = 801118 },
	{ config_id = 801120, gadget_id = 70290016, pos = { x = -944.5, y = 218.0, z = 1064.6 }, rot = { x = 0.0, y = 220.6, z = 0.0 }, level = 32 },
	{ config_id = 801121, gadget_id = 70500000, pos = { x = -944.5, y = 218.0, z = 1064.6 }, rot = { x = 0.0, y = 220.6, z = 0.0 }, level = 32, point_type = 3010, owner = 801120 },
	{ config_id = 801122, gadget_id = 70290016, pos = { x = -824.7, y = 156.1, z = 1184.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 801123, gadget_id = 70500000, pos = { x = -824.7, y = 156.1, z = 1184.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, point_type = 3010, owner = 801122 }
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
		gadgets = { 801001, 801002, 801003, 801004, 801005, 801006, 801007, 801008, 801009, 801010, 801011, 801012, 801013, 801014, 801015, 801016, 801017, 801018, 801019, 801020, 801021, 801022, 801023, 801024, 801025, 801026, 801027, 801028, 801029, 801030, 801031, 801032, 801033, 801034, 801035, 801036, 801037, 801038, 801039, 801040, 801041, 801042, 801043, 801044, 801045, 801046, 801047, 801048, 801049, 801050, 801051, 801052, 801053, 801054, 801055, 801056, 801057, 801058, 801059, 801060, 801061, 801062, 801063, 801064, 801065, 801066, 801067, 801068, 801069, 801070, 801071, 801072, 801073, 801074, 801075, 801076, 801077, 801078, 801079, 801080, 801081, 801082, 801083, 801084, 801085, 801086, 801087, 801088, 801089, 801090, 801091, 801092, 801093, 801094, 801095, 801096, 801097, 801098, 801099, 801100, 801101, 801102, 801103, 801104, 801105, 801106, 801107, 801108, 801109, 801110, 801111, 801112, 801113, 801114, 801115, 801116, 801117, 801118, 801119, 801120, 801121, 801122, 801123 },
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
