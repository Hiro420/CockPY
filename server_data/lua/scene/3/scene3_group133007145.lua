--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231, monster_id = 21030201, pos = { x = 2719.1, y = 207.4, z = 345.6 }, rot = { x = 0.0, y = 205.9, z = 0.0 }, level = 27, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 232, monster_id = 21030301, pos = { x = 2717.5, y = 207.0, z = 340.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 27, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 233, monster_id = 21020101, pos = { x = 2721.5, y = 207.1, z = 341.8 }, rot = { x = 0.0, y = 288.0, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 234, monster_id = 21010401, pos = { x = 2718.8, y = 207.1, z = 339.2 }, rot = { x = 0.0, y = 261.1, z = 0.0 }, level = 27, drop_tag = "远程丘丘人", pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 499, gadget_id = 70220014, pos = { x = 2721.2, y = 207.0, z = 338.5 }, rot = { x = 0.0, y = 209.9, z = 0.0 }, level = 23 },
	{ config_id = 500, gadget_id = 70220014, pos = { x = 2720.2, y = 206.9, z = 338.2 }, rot = { x = 0.0, y = 211.9, z = 0.0 }, level = 23 },
	{ config_id = 501, gadget_id = 70310006, pos = { x = 2719.2, y = 207.1, z = 342.8 }, rot = { x = 0.0, y = 114.8, z = 0.0 }, level = 23 },
	{ config_id = 502, gadget_id = 70220013, pos = { x = 2718.1, y = 207.2, z = 338.0 }, rot = { x = 0.0, y = 357.0, z = 0.0 }, level = 23 },
	{ config_id = 503, gadget_id = 70220013, pos = { x = 2718.8, y = 207.7, z = 349.0 }, rot = { x = 0.0, y = 88.1, z = 0.0 }, level = 23 }
}

-- 区域
regions = {
	{ config_id = 267, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2720.2, y = 207.2, z = 343.5 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_100", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100", action = "action_EVENT_ANY_MONSTER_DIE_100", tlog_tag = "风龙_145_大营地4_成功" },
	{ name = "ENTER_REGION_267", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_267", action = "", tlog_tag = "风龙_145_大营地4_触发" }
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
		monsters = { 231, 232, 233, 234 },
		gadgets = { 499, 500, 501, 502, 503 },
		regions = { 267 },
		triggers = { "ANY_MONSTER_DIE_100", "ENTER_REGION_267" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100(context, evt)
	-- 改变指定group组133007181中， configid为504的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007181, 504, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_267(context, evt)
	if evt.param1 ~= 267 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
