--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 933, monster_id = 20010301, pos = { x = 2815.8, y = 306.7, z = -1567.8 }, rot = { x = 0.0, y = 80.3, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 934, monster_id = 20010301, pos = { x = 2819.0, y = 308.1, z = -1560.0 }, rot = { x = 0.0, y = 76.2, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 935, monster_id = 20010301, pos = { x = 2827.4, y = 309.4, z = -1564.7 }, rot = { x = 0.0, y = 251.7, z = 0.0 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 936, monster_id = 20010301, pos = { x = 2821.0, y = 308.7, z = -1569.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 13, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3029, gadget_id = 70211012, pos = { x = 2820.7, y = 304.9, z = -1565.6 }, rot = { x = 16.4, y = 273.3, z = 0.0 }, level = 30, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 191, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2821.9, y = 304.1, z = -1566.6 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_191", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_191", action = "action_EVENT_ENTER_REGION_191", tlog_tag = "望风山地_279_封印宝箱_触发" },
	{ name = "ANY_MONSTER_DIE_192", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_192", action = "action_EVENT_ANY_MONSTER_DIE_192", tlog_tag = "望风山地_279_封印宝箱_结算" }
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
		gadgets = { 3029 },
		regions = { 191 },
		triggers = { "ENTER_REGION_191", "ANY_MONSTER_DIE_192" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_191(context, evt)
	if evt.param1 ~= 191 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_191(context, evt)
	-- 将configid为 3029 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3029, GadgetState.ChestLocked) then
			return -1
		end 
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 933, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 934, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 935, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 936, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_192(context, evt)
	-- 解锁目标3029
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 3029, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end
