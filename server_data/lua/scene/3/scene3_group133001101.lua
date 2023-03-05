--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 799, monster_id = 20010801, pos = { x = 1844.0, y = 194.8, z = -1381.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 800, monster_id = 20011101, pos = { x = 1845.3, y = 194.6, z = -1375.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1752, gadget_id = 70211002, pos = { x = 1842.6, y = 194.9, z = -1378.2 }, rot = { x = 0.0, y = 106.4, z = 0.0 }, level = 5, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 182, shape = RegionShape.SPHERE, radius = 4.9, pos = { x = 1839.8, y = 195.0, z = -1376.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_182", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_182", action = "" },
	{ name = "ANY_MONSTER_DIE_183", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_183", action = "action_EVENT_ANY_MONSTER_DIE_183" }
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
		monsters = { 799, 800 },
		gadgets = { 1752 },
		regions = { 182 },
		triggers = { "ENTER_REGION_182", "ANY_MONSTER_DIE_183" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_182(context, evt)
	if evt.param1 ~= 182 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_183(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001101) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_183(context, evt)
	-- 将configid为 1752 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1752, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
