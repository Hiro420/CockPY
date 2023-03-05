--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1082, monster_id = 20011101, pos = { x = 2670.7, y = 240.7, z = -1219.2 }, rot = { x = 0.0, y = 67.7, z = 0.0 }, level = 10, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2972, gadget_id = 70211002, pos = { x = 2668.5, y = 240.1, z = -1219.9 }, rot = { x = 0.0, y = 70.3, z = 0.0 }, level = 30, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 171, shape = RegionShape.SPHERE, radius = 3, pos = { x = 2668.8, y = 240.7, z = -1220.1 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_171", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_171", action = "action_EVENT_ENTER_REGION_171", tlog_tag = "望风山地_212_封印宝箱_触发" },
	{ name = "ANY_MONSTER_DIE_172", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_172", tlog_tag = "望风山地_212_封印宝箱_结算" }
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
		monsters = { },
		gadgets = { 2972 },
		regions = { 171 },
		triggers = { "ENTER_REGION_171", "ANY_MONSTER_DIE_172" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_171(context, evt)
	if evt.param1 ~= 171 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_171(context, evt)
	-- 将configid为 2972 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 2972, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 1082, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_172(context, evt)
	-- 解锁目标2972
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 2972, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
