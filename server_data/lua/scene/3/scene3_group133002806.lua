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
	{ config_id = 806001, gadget_id = 70290001, pos = { x = 1568.5, y = 249.1, z = -72.5 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 16 },
	{ config_id = 806002, gadget_id = 70500000, pos = { x = 1568.9, y = 249.7, z = -72.3 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 16, point_type = 3002, owner = 806001 },
	{ config_id = 806003, gadget_id = 70500000, pos = { x = 1568.1, y = 250.0, z = -72.7 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 16, point_type = 3002, owner = 806001 },
	{ config_id = 806004, gadget_id = 70500000, pos = { x = 1568.6, y = 250.4, z = -72.8 }, rot = { x = 0.0, y = 59.1, z = 0.0 }, level = 16, point_type = 3002, owner = 806001 },
	{ config_id = 806005, gadget_id = 70290001, pos = { x = 1595.0, y = 241.6, z = -110.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806006, gadget_id = 70500000, pos = { x = 1593.1, y = 199.8, z = -255.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2008 },
	{ config_id = 806007, gadget_id = 70500000, pos = { x = 1601.2, y = 199.7, z = -276.5 }, rot = { x = 0.0, y = 147.9, z = 0.0 }, level = 16, point_type = 2008 },
	{ config_id = 806008, gadget_id = 70290002, pos = { x = 1572.0, y = 233.2, z = -181.7 }, rot = { x = 349.4, y = 359.8, z = 2.7 }, level = 16 },
	{ config_id = 806009, gadget_id = 70500000, pos = { x = 1570.9, y = 234.8, z = -181.3 }, rot = { x = 3.5, y = 265.3, z = 10.4 }, level = 16, point_type = 3011, owner = 806008 },
	{ config_id = 806010, gadget_id = 70500000, pos = { x = 1572.8, y = 235.6, z = -183.2 }, rot = { x = 354.6, y = 313.5, z = 9.5 }, level = 16, point_type = 3011, owner = 806008 },
	{ config_id = 806011, gadget_id = 70500000, pos = { x = 1571.9, y = 236.3, z = -180.9 }, rot = { x = 349.4, y = 359.8, z = 2.7 }, level = 16, point_type = 3011, owner = 806008 },
	{ config_id = 806012, gadget_id = 70290002, pos = { x = 1608.5, y = 244.3, z = -100.1 }, rot = { x = 0.0, y = 311.8, z = 0.0 }, level = 16 },
	{ config_id = 806013, gadget_id = 70500000, pos = { x = 1607.3, y = 245.9, z = -100.4 }, rot = { x = 0.0, y = 311.8, z = 0.0 }, level = 16, point_type = 3011, owner = 806012 },
	{ config_id = 806014, gadget_id = 70500000, pos = { x = 1609.9, y = 246.9, z = -100.2 }, rot = { x = 0.0, y = 311.8, z = 0.0 }, level = 16, point_type = 3011, owner = 806012 },
	{ config_id = 806015, gadget_id = 70500000, pos = { x = 1607.5, y = 247.2, z = -99.2 }, rot = { x = 0.0, y = 311.8, z = 0.0 }, level = 16, point_type = 3011, owner = 806012 },
	{ config_id = 806016, gadget_id = 70500000, pos = { x = 1644.1, y = 265.1, z = -21.5 }, rot = { x = 350.8, y = 72.0, z = 0.0 }, level = 16, point_type = 1001 },
	{ config_id = 806017, gadget_id = 70500000, pos = { x = 1619.6, y = 235.0, z = 14.8 }, rot = { x = 25.4, y = 93.7, z = 357.1 }, level = 16, point_type = 2004 },
	{ config_id = 806018, gadget_id = 70500000, pos = { x = 1590.7, y = 248.3, z = -25.5 }, rot = { x = 9.3, y = 0.7, z = 8.6 }, level = 16, point_type = 2001 },
	{ config_id = 806019, gadget_id = 70500000, pos = { x = 1526.6, y = 213.3, z = -218.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806020, gadget_id = 70500000, pos = { x = 1527.7, y = 214.3, z = -212.1 }, rot = { x = 0.0, y = 49.5, z = 339.6 }, level = 16, point_type = 1002 },
	{ config_id = 806021, gadget_id = 70290011, pos = { x = 1588.2, y = 240.0, z = -130.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806022, gadget_id = 70500000, pos = { x = 1588.2, y = 240.0, z = -130.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3009, owner = 806021 },
	{ config_id = 806023, gadget_id = 70290011, pos = { x = 1586.9, y = 239.7, z = -122.9 }, rot = { x = 0.0, y = 299.6, z = 0.0 }, level = 16 },
	{ config_id = 806024, gadget_id = 70500000, pos = { x = 1586.9, y = 239.7, z = -122.9 }, rot = { x = 0.0, y = 299.6, z = 0.0 }, level = 16, point_type = 3009, owner = 806023 },
	{ config_id = 806025, gadget_id = 70290011, pos = { x = 1601.3, y = 240.7, z = -131.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806026, gadget_id = 70500000, pos = { x = 1601.3, y = 240.7, z = -131.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3009, owner = 806025 },
	{ config_id = 806027, gadget_id = 70500000, pos = { x = 1564.7, y = 246.2, z = -96.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806028, gadget_id = 70500000, pos = { x = 1670.6, y = 254.1, z = -93.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806029, gadget_id = 70500000, pos = { x = 1678.9, y = 264.4, z = -68.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806030, gadget_id = 70500000, pos = { x = 1752.4, y = 272.2, z = -67.3 }, rot = { x = 0.0, y = 293.0, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806031, gadget_id = 70500000, pos = { x = 1754.1, y = 273.5, z = -65.0 }, rot = { x = 0.0, y = 100.6, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806032, gadget_id = 70500000, pos = { x = 1655.5, y = 247.2, z = -127.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806033, gadget_id = 70500000, pos = { x = 1634.8, y = 255.7, z = -85.6 }, rot = { x = 0.0, y = 161.5, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806034, gadget_id = 70500000, pos = { x = 1590.7, y = 236.6, z = -157.1 }, rot = { x = 0.0, y = 7.1, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806035, gadget_id = 70500000, pos = { x = 1583.2, y = 234.7, z = -192.8 }, rot = { x = 0.0, y = 78.5, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806036, gadget_id = 70500000, pos = { x = 1617.5, y = 267.8, z = -33.8 }, rot = { x = 4.8, y = 222.9, z = 4.8 }, level = 16, point_type = 2004 },
	{ config_id = 806037, gadget_id = 70500000, pos = { x = 1661.0, y = 256.9, z = 3.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1001 },
	{ config_id = 806038, gadget_id = 70500000, pos = { x = 1644.7, y = 254.4, z = 6.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1001 },
	{ config_id = 806039, gadget_id = 70290008, pos = { x = 1680.7, y = 224.2, z = -4.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806040, gadget_id = 70500000, pos = { x = 1680.7, y = 224.2, z = -4.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3008, owner = 806039 },
	{ config_id = 806041, gadget_id = 70290008, pos = { x = 1692.3, y = 224.2, z = -22.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806042, gadget_id = 70500000, pos = { x = 1692.3, y = 224.2, z = -22.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3008, owner = 806041 },
	{ config_id = 806043, gadget_id = 70500000, pos = { x = 1595.0, y = 242.2, z = -110.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806005 },
	{ config_id = 806044, gadget_id = 70500000, pos = { x = 1594.9, y = 242.4, z = -111.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806005 },
	{ config_id = 806045, gadget_id = 70290008, pos = { x = 1674.2, y = 224.1, z = -16.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806046, gadget_id = 70500000, pos = { x = 1674.2, y = 224.1, z = -16.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3008, owner = 806045 },
	{ config_id = 806047, gadget_id = 70500000, pos = { x = 1595.3, y = 242.9, z = -110.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806005 },
	{ config_id = 806048, gadget_id = 70500000, pos = { x = 1711.0, y = 254.5, z = -117.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2001 },
	{ config_id = 806049, gadget_id = 70500000, pos = { x = 1713.1, y = 259.9, z = -96.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2001 },
	{ config_id = 806050, gadget_id = 70500000, pos = { x = 1564.8, y = 241.8, z = -108.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3007 },
	{ config_id = 806051, gadget_id = 70500000, pos = { x = 1565.1, y = 241.4, z = -109.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3007 },
	{ config_id = 806052, gadget_id = 70500000, pos = { x = 1559.3, y = 224.1, z = -208.4 }, rot = { x = 0.0, y = 317.2, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806053, gadget_id = 70500000, pos = { x = 1658.4, y = 245.9, z = -137.8 }, rot = { x = 0.0, y = 192.9, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806054, gadget_id = 70500000, pos = { x = 1683.7, y = 257.3, z = -89.1 }, rot = { x = 0.0, y = 85.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806055, gadget_id = 70500000, pos = { x = 1769.6, y = 272.3, z = -72.5 }, rot = { x = 0.0, y = 63.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806056, gadget_id = 70500000, pos = { x = 1674.4, y = 275.4, z = -33.2 }, rot = { x = 0.0, y = 146.3, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806057, gadget_id = 70500000, pos = { x = 1603.7, y = 245.1, z = -22.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806058, gadget_id = 70500000, pos = { x = 1578.2, y = 261.2, z = -49.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806059, gadget_id = 70500000, pos = { x = 1557.9, y = 258.3, z = -69.2 }, rot = { x = 0.0, y = 41.7, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806060, gadget_id = 70500000, pos = { x = 1651.9, y = 244.1, z = -151.6 }, rot = { x = 0.0, y = 97.3, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806061, gadget_id = 70500000, pos = { x = 1579.6, y = 225.3, z = -221.6 }, rot = { x = 0.0, y = 262.6, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806062, gadget_id = 70500000, pos = { x = 1542.4, y = 234.2, z = -140.0 }, rot = { x = 0.0, y = 153.4, z = 0.0 }, level = 16, point_type = 2002 },
	{ config_id = 806063, gadget_id = 70290009, pos = { x = 1687.3, y = 280.9, z = -33.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806064, gadget_id = 70500000, pos = { x = 1687.3, y = 280.9, z = -33.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3005, owner = 806063 },
	{ config_id = 806065, gadget_id = 70290009, pos = { x = 1781.9, y = 272.6, z = -74.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806066, gadget_id = 70500000, pos = { x = 1781.9, y = 272.6, z = -74.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3005, owner = 806065 },
	{ config_id = 806067, gadget_id = 70290009, pos = { x = 1668.3, y = 250.0, z = -133.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806068, gadget_id = 70500000, pos = { x = 1711.6, y = 226.7, z = 39.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2007 },
	{ config_id = 806069, gadget_id = 70500000, pos = { x = 1714.7, y = 226.5, z = 42.5 }, rot = { x = 0.0, y = 84.7, z = 0.0 }, level = 16, point_type = 2007 },
	{ config_id = 806070, gadget_id = 70290014, pos = { x = 1780.1, y = 200.0, z = -53.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 },
	{ config_id = 806071, gadget_id = 70500000, pos = { x = 1779.9, y = 200.0, z = -53.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1, point_type = 2015, owner = 806070 },
	{ config_id = 806072, gadget_id = 70290014, pos = { x = 1772.9, y = 200.0, z = -41.0 }, rot = { x = 0.0, y = 282.1, z = 0.0 }, level = 1 },
	{ config_id = 806073, gadget_id = 70500000, pos = { x = 1773.3, y = 200.0, z = -41.3 }, rot = { x = 0.0, y = 282.1, z = 0.0 }, level = 1, point_type = 2015, owner = 806072 },
	{ config_id = 806074, gadget_id = 70500000, pos = { x = 1668.3, y = 250.0, z = -133.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3005, owner = 806067 },
	{ config_id = 806075, gadget_id = 70290001, pos = { x = 1627.5, y = 266.6, z = -51.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806076, gadget_id = 70290014, pos = { x = 1807.1, y = 200.0, z = 4.3 }, rot = { x = 0.0, y = 239.1, z = 0.0 }, level = 1 },
	{ config_id = 806077, gadget_id = 70500000, pos = { x = 1807.6, y = 200.0, z = 4.3 }, rot = { x = 0.0, y = 239.1, z = 0.0 }, level = 1, point_type = 2015, owner = 806076 },
	{ config_id = 806078, gadget_id = 70500000, pos = { x = 1627.5, y = 267.2, z = -51.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806075 },
	{ config_id = 806079, gadget_id = 70500000, pos = { x = 1627.4, y = 267.5, z = -51.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806075 },
	{ config_id = 806080, gadget_id = 70500000, pos = { x = 1627.8, y = 267.9, z = -51.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806075 },
	{ config_id = 806081, gadget_id = 70290001, pos = { x = 1743.4, y = 267.3, z = -82.2 }, rot = { x = 346.2, y = 359.5, z = 5.4 }, level = 16 },
	{ config_id = 806082, gadget_id = 70500000, pos = { x = 1743.5, y = 267.9, z = -81.8 }, rot = { x = 346.2, y = 359.5, z = 5.4 }, level = 16, point_type = 3002, owner = 806081 },
	{ config_id = 806083, gadget_id = 70500000, pos = { x = 1743.4, y = 268.2, z = -82.6 }, rot = { x = 346.2, y = 359.5, z = 5.4 }, level = 16, point_type = 3002, owner = 806081 },
	{ config_id = 806084, gadget_id = 70500000, pos = { x = 1743.7, y = 268.6, z = -82.3 }, rot = { x = 346.2, y = 359.5, z = 5.4 }, level = 16, point_type = 3002, owner = 806081 },
	{ config_id = 806085, gadget_id = 70290001, pos = { x = 1629.3, y = 240.7, z = -168.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806086, gadget_id = 70500000, pos = { x = 1629.3, y = 241.3, z = -168.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806085 },
	{ config_id = 806087, gadget_id = 70500000, pos = { x = 1629.3, y = 241.6, z = -168.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806085 },
	{ config_id = 806088, gadget_id = 70500000, pos = { x = 1629.6, y = 242.0, z = -168.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806085 },
	{ config_id = 806089, gadget_id = 70290002, pos = { x = 1693.7, y = 255.8, z = -102.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806090, gadget_id = 70500000, pos = { x = 1692.6, y = 257.4, z = -101.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3011, owner = 806089 },
	{ config_id = 806091, gadget_id = 70500000, pos = { x = 1694.6, y = 258.5, z = -103.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3011, owner = 806089 },
	{ config_id = 806092, gadget_id = 70500000, pos = { x = 1693.8, y = 258.7, z = -100.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3011, owner = 806089 },
	{ config_id = 806093, gadget_id = 70290002, pos = { x = 1616.7, y = 242.5, z = -132.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806094, gadget_id = 70500000, pos = { x = 1615.7, y = 244.1, z = -131.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3011, owner = 806093 },
	{ config_id = 806095, gadget_id = 70500000, pos = { x = 1617.6, y = 245.1, z = -133.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3011, owner = 806093 },
	{ config_id = 806096, gadget_id = 70500000, pos = { x = 1616.8, y = 245.4, z = -130.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3011, owner = 806093 },
	{ config_id = 806097, gadget_id = 70500000, pos = { x = 1705.3, y = 231.7, z = 16.4 }, rot = { x = 353.8, y = 0.5, z = 350.2 }, level = 16, point_type = 2005 },
	{ config_id = 806098, gadget_id = 70500000, pos = { x = 1631.5, y = 254.3, z = 2.6 }, rot = { x = 0.0, y = 25.4, z = 0.0 }, level = 16, point_type = 1001 },
	{ config_id = 806099, gadget_id = 70500000, pos = { x = 1660.4, y = 225.7, z = 4.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806100, gadget_id = 70500000, pos = { x = 1655.9, y = 226.1, z = 3.8 }, rot = { x = 0.0, y = 204.8, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806101, gadget_id = 70500000, pos = { x = 1641.7, y = 265.7, z = -18.0 }, rot = { x = 350.3, y = 48.6, z = 8.5 }, level = 16, point_type = 1001 },
	{ config_id = 806102, gadget_id = 70500000, pos = { x = 1645.4, y = 227.5, z = 4.9 }, rot = { x = 0.9, y = 359.9, z = 352.0 }, level = 16, point_type = 2004 },
	{ config_id = 806103, gadget_id = 70500000, pos = { x = 1654.4, y = 227.7, z = 22.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806104, gadget_id = 70290001, pos = { x = 1634.5, y = 229.5, z = 5.4 }, rot = { x = 346.1, y = 2.1, z = 342.6 }, level = 16 },
	{ config_id = 806105, gadget_id = 70500000, pos = { x = 1634.7, y = 230.2, z = 5.7 }, rot = { x = 346.1, y = 2.1, z = 342.6 }, level = 16, point_type = 3002, owner = 806104 },
	{ config_id = 806106, gadget_id = 70500000, pos = { x = 1634.7, y = 230.3, z = 4.9 }, rot = { x = 346.1, y = 2.1, z = 342.6 }, level = 16, point_type = 3002, owner = 806104 },
	{ config_id = 806107, gadget_id = 70500000, pos = { x = 1635.1, y = 230.6, z = 5.1 }, rot = { x = 346.1, y = 2.1, z = 342.6 }, level = 16, point_type = 3002, owner = 806104 },
	{ config_id = 806108, gadget_id = 70500000, pos = { x = 1591.1, y = 244.0, z = -12.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806109, gadget_id = 70500000, pos = { x = 1588.1, y = 245.5, z = -14.4 }, rot = { x = 49.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806110, gadget_id = 70500000, pos = { x = 1590.3, y = 246.3, z = -5.6 }, rot = { x = 40.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1002 },
	{ config_id = 806111, gadget_id = 70290011, pos = { x = 1667.2, y = 267.9, z = -53.7 }, rot = { x = 1.9, y = 0.4, z = 1.5 }, level = 16 },
	{ config_id = 806112, gadget_id = 70290002, pos = { x = 1685.6, y = 277.7, z = -5.2 }, rot = { x = 345.5, y = 358.3, z = 13.1 }, level = 16 },
	{ config_id = 806113, gadget_id = 70500000, pos = { x = 1684.1, y = 279.2, z = -4.8 }, rot = { x = 13.9, y = 266.7, z = 13.7 }, level = 16, point_type = 3011, owner = 806112 },
	{ config_id = 806114, gadget_id = 70500000, pos = { x = 1685.9, y = 280.2, z = -6.8 }, rot = { x = 359.1, y = 313.8, z = 19.4 }, level = 16, point_type = 3011, owner = 806112 },
	{ config_id = 806115, gadget_id = 70500000, pos = { x = 1684.9, y = 280.8, z = -4.6 }, rot = { x = 345.5, y = 358.3, z = 13.1 }, level = 16, point_type = 3011, owner = 806112 },
	{ config_id = 806116, gadget_id = 70500000, pos = { x = 1654.0, y = 270.5, z = -4.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806117, gadget_id = 70500000, pos = { x = 1670.6, y = 270.8, z = -19.1 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2004 },
	{ config_id = 806118, gadget_id = 70290009, pos = { x = 1624.9, y = 266.5, z = -8.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806119, gadget_id = 70500000, pos = { x = 1624.9, y = 266.5, z = -8.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3005, owner = 806118 },
	{ config_id = 806120, gadget_id = 70290001, pos = { x = 1611.8, y = 265.7, z = -22.0 }, rot = { x = 355.5, y = 0.1, z = 358.3 }, level = 16 },
	{ config_id = 806121, gadget_id = 70500000, pos = { x = 1611.8, y = 266.3, z = -21.6 }, rot = { x = 355.5, y = 0.1, z = 358.3 }, level = 16, point_type = 3002, owner = 806120 },
	{ config_id = 806122, gadget_id = 70500000, pos = { x = 1611.8, y = 266.5, z = -22.5 }, rot = { x = 355.5, y = 0.1, z = 358.3 }, level = 16, point_type = 3002, owner = 806120 },
	{ config_id = 806123, gadget_id = 70500000, pos = { x = 1612.1, y = 266.9, z = -22.2 }, rot = { x = 355.5, y = 0.1, z = 358.3 }, level = 16, point_type = 3002, owner = 806120 },
	{ config_id = 806124, gadget_id = 70290001, pos = { x = 1591.7, y = 261.3, z = -51.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806125, gadget_id = 70500000, pos = { x = 1591.7, y = 261.9, z = -51.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806124 },
	{ config_id = 806126, gadget_id = 70500000, pos = { x = 1591.6, y = 262.2, z = -52.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806124 },
	{ config_id = 806127, gadget_id = 70500000, pos = { x = 1592.0, y = 262.6, z = -51.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3002, owner = 806124 },
	{ config_id = 806128, gadget_id = 70500000, pos = { x = 1587.0, y = 260.2, z = -29.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2001 },
	{ config_id = 806129, gadget_id = 70500000, pos = { x = 1606.4, y = 265.4, z = -25.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2001 },
	{ config_id = 806130, gadget_id = 70500000, pos = { x = 1645.2, y = 267.3, z = -36.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 2001 },
	{ config_id = 806131, gadget_id = 70500000, pos = { x = 1716.9, y = 280.9, z = -17.9 }, rot = { x = 345.5, y = 358.4, z = 12.4 }, level = 16, point_type = 2001 },
	{ config_id = 806132, gadget_id = 70290011, pos = { x = 1649.3, y = 243.1, z = -167.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806133, gadget_id = 70500000, pos = { x = 1649.3, y = 243.1, z = -167.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3009, owner = 806132 },
	{ config_id = 806134, gadget_id = 70290011, pos = { x = 1687.4, y = 255.3, z = -100.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806135, gadget_id = 70500000, pos = { x = 1687.4, y = 255.3, z = -100.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3009, owner = 806134 },
	{ config_id = 806136, gadget_id = 70290011, pos = { x = 1651.5, y = 255.7, z = -89.1 }, rot = { x = 339.5, y = 358.6, z = 3.8 }, level = 16 },
	{ config_id = 806137, gadget_id = 70500000, pos = { x = 1651.5, y = 255.7, z = -89.1 }, rot = { x = 339.5, y = 358.6, z = 3.8 }, level = 16, point_type = 3009, owner = 806136 },
	{ config_id = 806138, gadget_id = 70290011, pos = { x = 1637.4, y = 260.8, z = -70.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16 },
	{ config_id = 806139, gadget_id = 70500000, pos = { x = 1637.4, y = 260.8, z = -70.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 3009, owner = 806138 },
	{ config_id = 806140, gadget_id = 70500000, pos = { x = 1642.5, y = 265.3, z = -23.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 16, point_type = 1001 },
	{ config_id = 806141, gadget_id = 70500000, pos = { x = 1667.2, y = 267.9, z = -53.7 }, rot = { x = 1.9, y = 0.4, z = 1.5 }, level = 16, point_type = 3009, owner = 806111 },
	{ config_id = 806142, gadget_id = 70290011, pos = { x = 1672.1, y = 267.9, z = -56.8 }, rot = { x = 357.5, y = 359.7, z = 359.5 }, level = 16 },
	{ config_id = 806143, gadget_id = 70500000, pos = { x = 1672.1, y = 267.9, z = -56.8 }, rot = { x = 357.5, y = 359.7, z = 359.5 }, level = 16, point_type = 3009, owner = 806142 },
	{ config_id = 806144, gadget_id = 70290011, pos = { x = 1671.0, y = 267.9, z = -43.5 }, rot = { x = 5.9, y = 0.0, z = 0.7 }, level = 16 },
	{ config_id = 806145, gadget_id = 70500000, pos = { x = 1671.0, y = 267.9, z = -43.5 }, rot = { x = 5.9, y = 0.0, z = 0.7 }, level = 16, point_type = 3009, owner = 806144 },
	{ config_id = 806146, gadget_id = 70500000, pos = { x = 1705.0, y = 269.7, z = -53.3 }, rot = { x = 346.5, y = 359.0, z = 8.8 }, level = 16, point_type = 2004 }
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
		gadgets = { 806001, 806002, 806003, 806004, 806005, 806006, 806007, 806008, 806009, 806010, 806011, 806012, 806013, 806014, 806015, 806016, 806017, 806018, 806019, 806020, 806021, 806022, 806023, 806024, 806025, 806026, 806027, 806028, 806029, 806030, 806031, 806032, 806033, 806034, 806035, 806036, 806037, 806038, 806039, 806040, 806041, 806042, 806043, 806044, 806045, 806046, 806047, 806048, 806049, 806050, 806051, 806052, 806053, 806054, 806055, 806056, 806057, 806058, 806059, 806060, 806061, 806062, 806063, 806064, 806065, 806066, 806067, 806068, 806069, 806070, 806071, 806072, 806073, 806074, 806075, 806076, 806077, 806078, 806079, 806080, 806081, 806082, 806083, 806084, 806085, 806086, 806087, 806088, 806089, 806090, 806091, 806092, 806093, 806094, 806095, 806096, 806097, 806098, 806099, 806100, 806101, 806102, 806103, 806104, 806105, 806106, 806107, 806108, 806109, 806110, 806111, 806112, 806113, 806114, 806115, 806116, 806117, 806118, 806119, 806120, 806121, 806122, 806123, 806124, 806125, 806126, 806127, 806128, 806129, 806130, 806131, 806132, 806133, 806134, 806135, 806136, 806137, 806138, 806139, 806140, 806141, 806142, 806143, 806144, 806145, 806146 },
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
