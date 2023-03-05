--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 669001, monster_id = 20030201, pos = { x = 1936.7, y = 224.0, z = 634.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 669004, monster_id = 20030201, pos = { x = 1939.1, y = 224.5, z = 638.0 }, rot = { x = 0.0, y = 227.1, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 669005, monster_id = 20030201, pos = { x = 1937.5, y = 223.9, z = 640.0 }, rot = { x = 0.0, y = 199.3, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 669006, monster_id = 20030201, pos = { x = 1935.2, y = 223.3, z = 640.3 }, rot = { x = 0.0, y = 168.4, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 669007, monster_id = 20030201, pos = { x = 1933.9, y = 223.3, z = 637.8 }, rot = { x = 0.0, y = 101.2, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 669008, monster_id = 20030201, pos = { x = 1934.2, y = 223.9, z = 634.7 }, rot = { x = 0.0, y = 45.3, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 669009, monster_id = 20030201, pos = { x = 1938.1, y = 225.0, z = 635.4 }, rot = { x = 0.0, y = 318.7, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 669002, gadget_id = 70211012, pos = { x = 1936.2, y = 226.1, z = 637.7 }, rot = { x = 0.0, y = 317.6, z = 0.0 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 669011, gadget_id = 70220019, pos = { x = 1936.3, y = 219.6, z = 637.8 }, rot = { x = 0.0, y = 47.9, z = 0.0 }, level = 18 }
}

-- 区域
regions = {
	{ config_id = 669010, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1936.2, y = 224.8, z = 637.6 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_669003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_669003", action = "action_EVENT_ANY_MONSTER_DIE_669003" },
	{ name = "ENTER_REGION_669010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_669010", action = "action_EVENT_ENTER_REGION_669010" }
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
		gadgets = { 669002, 669011 },
		regions = { 669010 },
		triggers = { "ANY_MONSTER_DIE_669003", "ENTER_REGION_669010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 669001, 669004, 669005, 669006, 669007, 669008, 669009 },
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
function condition_EVENT_ANY_MONSTER_DIE_669003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_669003(context, evt)
	-- 将configid为 669002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 669002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_669010(context, evt)
	if evt.param1 ~= 669010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_669010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102669, 2)
	
	return 0
end
