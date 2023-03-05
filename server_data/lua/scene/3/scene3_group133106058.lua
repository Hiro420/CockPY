--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58001, monster_id = 25030201, pos = { x = -846.1, y = 156.9, z = 1190.8 }, rot = { x = 0.0, y = 144.1, z = 0.0 }, level = 32, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 58004, monster_id = 25040201, pos = { x = -841.4, y = 157.0, z = 1189.5 }, rot = { x = 0.0, y = 155.9, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 58005, monster_id = 25020202, pos = { x = -849.1, y = 157.2, z = 1194.0 }, rot = { x = 0.0, y = 130.1, z = 0.0 }, level = 32, drop_tag = "盗宝团", pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58002, gadget_id = 70211012, pos = { x = -849.4, y = 157.3, z = 1190.7 }, rot = { x = 0.0, y = 109.7, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 58006, gadget_id = 70310006, pos = { x = -839.7, y = 157.1, z = 1194.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_58003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_58003", action = "action_EVENT_ANY_MONSTER_DIE_58003" }
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
		monsters = { 58001, 58004, 58005 },
		gadgets = { 58002, 58006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_58003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58003(context, evt)
	-- 将configid为 58002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 58002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
