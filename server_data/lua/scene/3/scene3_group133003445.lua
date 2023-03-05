--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1480, monster_id = 20011201, pos = { x = 2376.1, y = 213.6, z = -1094.1 }, rot = { x = 0.0, y = 92.4, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1481, monster_id = 20011201, pos = { x = 2379.1, y = 213.1, z = -1090.7 }, rot = { x = 0.0, y = 92.4, z = 0.0 }, level = 1, drop_tag = "史莱姆" },
	{ config_id = 1482, monster_id = 20011201, pos = { x = 2376.0, y = 213.6, z = -1092.2 }, rot = { x = 0.0, y = 92.4, z = 0.0 }, level = 1, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4186, gadget_id = 70220019, pos = { x = 2378.0, y = 213.2, z = -1092.6 }, rot = { x = 0.0, y = 300.0, z = 0.0 }, level = 2 },
	{ config_id = 4187, gadget_id = 70211101, pos = { x = 2378.0, y = 219.6, z = -1092.7 }, rot = { x = 0.0, y = 121.3, z = 0.0 }, level = 2, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT }
}

-- 区域
regions = {
	{ config_id = 538, shape = RegionShape.SPHERE, radius = 1.7, pos = { x = 2378.3, y = 220.7, z = -1092.7 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_538", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_538", action = "", tlog_tag = "新手区尝试拿石柱上宝箱" }
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
		monsters = { 1480, 1481, 1482 },
		gadgets = { 4186, 4187 },
		regions = { 538 },
		triggers = { "ENTER_REGION_538" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_538(context, evt)
	if evt.param1 ~= 538 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
