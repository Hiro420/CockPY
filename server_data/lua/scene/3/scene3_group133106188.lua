--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 188001, monster_id = 25010202, pos = { x = -1008.0, y = 240.9, z = 1018.4 }, rot = { x = 0.0, y = 255.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 188002, monster_id = 25020202, pos = { x = -1007.3, y = 240.7, z = 1017.1 }, rot = { x = 0.0, y = 263.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 188003, monster_id = 25020202, pos = { x = -1008.8, y = 241.1, z = 1019.6 }, rot = { x = 0.0, y = 215.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 188004, monster_id = 25040201, pos = { x = -1010.4, y = 240.8, z = 1017.4 }, rot = { x = 0.0, y = 76.5, z = 0.0 }, level = 30, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 188005, gadget_id = 70211012, pos = { x = -1001.7, y = 240.9, z = 1019.5 }, rot = { x = 3.1, y = 249.1, z = 5.5 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 188006, gadget_id = 70310006, pos = { x = -1006.5, y = 241.0, z = 1020.7 }, rot = { x = 2.4, y = 93.2, z = 5.5 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_188007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_188007", action = "action_EVENT_ANY_MONSTER_DIE_188007" }
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
		monsters = { 188001, 188002, 188003, 188004 },
		gadgets = { 188005, 188006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_188007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_188007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_188007(context, evt)
	-- 将configid为 188005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 188005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
