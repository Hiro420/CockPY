--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 121001, monster_id = 25030201, pos = { x = -350.6, y = 201.8, z = 858.1 }, rot = { x = 0.0, y = 135.8, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 121002, monster_id = 25020202, pos = { x = -360.7, y = 204.6, z = 855.5 }, rot = { x = 0.0, y = 12.0, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 121003, monster_id = 25020202, pos = { x = -356.6, y = 204.6, z = 852.3 }, rot = { x = 0.0, y = 176.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 121004, monster_id = 25040201, pos = { x = -349.2, y = 201.8, z = 856.8 }, rot = { x = 0.0, y = 340.6, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 121005, gadget_id = 70211012, pos = { x = -359.9, y = 204.6, z = 853.6 }, rot = { x = 358.2, y = 57.5, z = 2.2 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 121006, gadget_id = 70310006, pos = { x = -356.5, y = 204.8, z = 850.7 }, rot = { x = 2.4, y = 93.2, z = 5.5 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_121007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_121007", action = "action_EVENT_ANY_MONSTER_DIE_121007" }
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
		monsters = { 121001, 121002, 121003, 121004 },
		gadgets = { 121005, 121006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_121007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_121007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_121007(context, evt)
	-- 将configid为 121005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 121005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
