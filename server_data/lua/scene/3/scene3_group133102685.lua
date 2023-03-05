--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 685001, monster_id = 20030201, pos = { x = 1643.3, y = 211.3, z = 667.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 685004, monster_id = 20030201, pos = { x = 1641.6, y = 211.2, z = 668.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 685005, monster_id = 20030201, pos = { x = 1644.6, y = 211.6, z = 669.2 }, rot = { x = 0.0, y = 90.6, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 685006, monster_id = 20030201, pos = { x = 1642.0, y = 211.6, z = 670.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true },
	{ config_id = 685007, monster_id = 20030201, pos = { x = 1644.1, y = 211.3, z = 670.8 }, rot = { x = 0.0, y = 34.0, z = 0.0 }, level = 18, drop_tag = "雷萤", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 685002, gadget_id = 70211012, pos = { x = 1642.8, y = 210.8, z = 669.4 }, rot = { x = 4.8, y = 101.9, z = 354.6 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 685008, shape = RegionShape.SPHERE, radius = 5, pos = { x = 1642.9, y = 210.9, z = 669.4 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_685003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_685003", action = "action_EVENT_ANY_MONSTER_DIE_685003" },
	{ name = "ENTER_REGION_685008", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_685008", action = "action_EVENT_ENTER_REGION_685008" }
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
		gadgets = { 685002 },
		regions = { 685008 },
		triggers = { "ANY_MONSTER_DIE_685003", "ENTER_REGION_685008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 685001, 685004, 685005, 685006, 685007 },
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
function condition_EVENT_ANY_MONSTER_DIE_685003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_685003(context, evt)
	-- 将configid为 685002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 685002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_685008(context, evt)
	if evt.param1 ~= 685008 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_685008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102685, 2)
	
	return 0
end
