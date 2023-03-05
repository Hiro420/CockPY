--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 111001, monster_id = 21020301, pos = { x = -826.7, y = 172.6, z = 1069.4 }, rot = { x = 0.0, y = 222.5, z = 0.0 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 },
	{ config_id = 111004, monster_id = 21010401, pos = { x = -821.9, y = 171.8, z = 1068.3 }, rot = { x = 0.0, y = 355.0, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 111005, monster_id = 21010201, pos = { x = -829.7, y = 172.5, z = 1079.0 }, rot = { x = 0.0, y = 355.0, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 111006, monster_id = 21010601, pos = { x = -835.3, y = 172.5, z = 1074.6 }, rot = { x = 0.0, y = 178.7, z = 0.0 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 111002, gadget_id = 70211012, pos = { x = -822.9, y = 172.2, z = 1069.7 }, rot = { x = 358.0, y = 214.6, z = 16.6 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_111003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_111003", action = "action_EVENT_ANY_MONSTER_DIE_111003" }
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
		monsters = { 111001, 111004, 111005, 111006 },
		gadgets = { 111002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_111003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_111003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_111003(context, evt)
	-- 将configid为 111002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 111002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
