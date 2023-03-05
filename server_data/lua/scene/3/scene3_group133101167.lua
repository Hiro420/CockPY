--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 167001, monster_id = 21030301, pos = { x = 1325.6, y = 227.9, z = 1262.5 }, rot = { x = 0.0, y = 62.6, z = 0.0 }, level = 23, drop_tag = "丘丘萨满", disableWander = true, pose_id = 0 },
	{ config_id = 167004, monster_id = 21010601, pos = { x = 1330.5, y = 227.5, z = 1260.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 23, drop_tag = "丘丘人", pose_id = 9003 },
	{ config_id = 167005, monster_id = 21011001, pos = { x = 1327.7, y = 227.8, z = 1267.7 }, rot = { x = 0.0, y = 163.3, z = 0.0 }, level = 23, drop_tag = "远程丘丘人", pose_id = 9003 },
	{ config_id = 167006, monster_id = 21011201, pos = { x = 1333.0, y = 227.3, z = 1265.3 }, rot = { x = 0.0, y = 256.5, z = 0.0 }, level = 23, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 167002, gadget_id = 70211012, pos = { x = 1334.8, y = 227.3, z = 1262.8 }, rot = { x = 357.7, y = 278.0, z = 357.0 }, level = 23, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 167007, gadget_id = 70220013, pos = { x = 1332.5, y = 227.7, z = 1258.2 }, rot = { x = 355.9, y = 220.1, z = 3.5 }, level = 19 },
	{ config_id = 167008, gadget_id = 70220013, pos = { x = 1332.1, y = 227.5, z = 1268.7 }, rot = { x = 0.0, y = 297.5, z = 0.0 }, level = 19 },
	{ config_id = 167009, gadget_id = 70300099, pos = { x = 1328.7, y = 227.4, z = 1264.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_167003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_167003", action = "action_EVENT_ANY_MONSTER_DIE_167003" }
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
		monsters = { 167001, 167004, 167005, 167006 },
		gadgets = { 167002, 167007, 167008, 167009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_167003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_167003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_167003(context, evt)
	-- 将configid为 167002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 167002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
