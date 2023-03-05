--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 241, monster_id = 21010401, pos = { x = 2748.4, y = 219.7, z = 232.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 242, monster_id = 21010401, pos = { x = 2751.5, y = 215.7, z = 250.6 }, rot = { x = 0.0, y = 20.7, z = 0.0 }, level = 22, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 268, shape = RegionShape.SPHERE, radius = 15, pos = { x = 2752.9, y = 208.2, z = 236.9 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_182", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_182", action = "action_EVENT_ANY_MONSTER_DIE_182", tlog_tag = "风龙_149_大营地3_成功" },
	{ name = "ENTER_REGION_268", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_268", action = "", tlog_tag = "风龙_149_大营地3_触发" }
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
		monsters = { 241, 242 },
		gadgets = { },
		regions = { 268 },
		triggers = { "ANY_MONSTER_DIE_182", "ENTER_REGION_268" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_182(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_182(context, evt)
	-- 改变指定group组133007180中， configid为517的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007180, 517, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_268(context, evt)
	if evt.param1 ~= 268 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
