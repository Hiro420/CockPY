--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 99001, monster_id = 25030201, pos = { x = -783.9, y = 202.3, z = 748.0 }, rot = { x = 0.0, y = 177.9, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 99002, monster_id = 25040201, pos = { x = -782.3, y = 202.2, z = 746.5 }, rot = { x = 0.0, y = 106.5, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 99003, monster_id = 25020202, pos = { x = -787.7, y = 203.5, z = 742.8 }, rot = { x = 0.0, y = 73.3, z = 0.0 }, level = 28, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 99004, monster_id = 25040201, pos = { x = -784.5, y = 204.0, z = 742.3 }, rot = { x = 0.0, y = 340.6, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 99005, gadget_id = 70211012, pos = { x = -787.8, y = 202.3, z = 750.8 }, rot = { x = 337.0, y = 173.3, z = 7.6 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 99006, gadget_id = 70310006, pos = { x = -791.6, y = 202.8, z = 747.0 }, rot = { x = 357.1, y = 92.7, z = 4.3 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_99007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_99007", action = "action_EVENT_ANY_MONSTER_DIE_99007" }
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
		monsters = { 99001, 99002, 99003, 99004 },
		gadgets = { 99005, 99006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_99007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_99007(context, evt)
	-- 将configid为 99005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 99005, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
