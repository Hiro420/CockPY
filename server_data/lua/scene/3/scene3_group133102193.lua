--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 352, monster_id = 21010101, pos = { x = 1326.4, y = 200.7, z = 523.6 }, rot = { x = 355.8, y = 138.1, z = 356.6 }, level = 18, drop_tag = "丘丘人", pose_id = 9011 },
	{ config_id = 353, monster_id = 21010901, pos = { x = 1328.7, y = 201.4, z = 521.1 }, rot = { x = 10.6, y = 308.1, z = 0.0 }, level = 18, drop_tag = "远程丘丘人", disableWander = true },
	{ config_id = 354, monster_id = 21030101, pos = { x = 1322.4, y = 200.4, z = 525.0 }, rot = { x = 356.1, y = 126.1, z = 359.3 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012 },
	{ config_id = 355, monster_id = 21010101, pos = { x = 1325.7, y = 200.9, z = 521.9 }, rot = { x = 352.4, y = 66.1, z = 14.1 }, level = 19, drop_tag = "丘丘人", pose_id = 9011 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 690, gadget_id = 70211001, pos = { x = 1327.2, y = 200.6, z = 522.4 }, rot = { x = 345.0, y = 304.9, z = 0.0 }, level = 18, drop_tag = "战斗低级璃月", isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_414", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_414", action = "action_EVENT_ANY_MONSTER_DIE_414", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { 352, 353, 354, 355 },
		gadgets = { 690 },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_414(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133102193) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_414(context, evt)
	-- 将configid为 690 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 690, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
