--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 332001, monster_id = 21020101, pos = { x = 1702.4, y = 255.8, z = -745.0 }, rot = { x = 0.0, y = 26.4, z = 0.0 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 332004, monster_id = 21020101, pos = { x = 1707.4, y = 256.1, z = -744.3 }, rot = { x = 0.0, y = 301.4, z = 0.0 }, level = 10, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 332002, gadget_id = 70211012, pos = { x = 1703.7, y = 255.9, z = -739.0 }, rot = { x = 1.1, y = 165.4, z = 357.0 }, level = 10, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_332003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_332003", action = "action_EVENT_ANY_MONSTER_DIE_332003" }
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
		monsters = { 332001 },
		gadgets = { 332002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_332003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_332003(context, evt)
	-- 将configid为 332002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 332002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
