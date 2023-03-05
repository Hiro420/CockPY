--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 801, monster_id = 20011101, pos = { x = 1752.5, y = 194.8, z = -1529.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" },
	{ config_id = 802, monster_id = 20010801, pos = { x = 1753.6, y = 195.5, z = -1514.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 7, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2199, gadget_id = 70211002, pos = { x = 1750.4, y = 195.5, z = -1522.5 }, rot = { x = 0.0, y = 106.4, z = 0.0 }, level = 5, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 184, shape = RegionShape.SPHERE, radius = 4.9, pos = { x = 1723.1, y = 196.3, z = -1541.8 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_184", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_184", action = "" },
	{ name = "ANY_MONSTER_DIE_185", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_185", action = "action_EVENT_ANY_MONSTER_DIE_185" }
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
		monsters = { 801, 802 },
		gadgets = { 2199 },
		regions = { 184 },
		triggers = { "ENTER_REGION_184", "ANY_MONSTER_DIE_185" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ENTER_REGION_184(context, evt)
	if evt.param1 ~= 184 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_185(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133001158) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_185(context, evt)
	-- 将configid为 2199 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2199, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
