--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 652001, monster_id = 25020201, pos = { x = 1913.5, y = 213.6, z = 874.5 }, rot = { x = 0.0, y = 291.8, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 652004, monster_id = 25020201, pos = { x = 1914.7, y = 216.3, z = 880.8 }, rot = { x = 0.0, y = 106.4, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 652005, monster_id = 25020202, pos = { x = 1917.4, y = 216.6, z = 877.3 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true },
	{ config_id = 652006, monster_id = 25020202, pos = { x = 1917.5, y = 216.6, z = 882.8 }, rot = { x = 0.0, y = 191.2, z = 0.0 }, level = 18, drop_tag = "盗宝团", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 652002, gadget_id = 70211012, pos = { x = 1920.0, y = 216.8, z = 879.9 }, rot = { x = 4.1, y = 271.7, z = 0.3 }, level = 18, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_652003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_652003", action = "action_EVENT_ANY_MONSTER_DIE_652003" }
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
		monsters = { 652001, 652004, 652005, 652006 },
		gadgets = { 652002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_652003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_652003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_652003(context, evt)
	-- 将configid为 652002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 652002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
