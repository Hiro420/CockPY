--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 25030202, pos = { x = -200.4, y = 181.4, z = 993.3 }, rot = { x = 0.0, y = 73.6, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 124004, monster_id = 25040201, pos = { x = -204.5, y = 182.5, z = 996.7 }, rot = { x = 0.0, y = 288.8, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 124005, monster_id = 25040201, pos = { x = -206.0, y = 181.1, z = 987.6 }, rot = { x = 0.0, y = 288.8, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124002, gadget_id = 70211012, pos = { x = -198.4, y = 181.4, z = 994.1 }, rot = { x = 357.3, y = 248.5, z = 7.7 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 124006, gadget_id = 70310004, pos = { x = -205.4, y = 181.3, z = 990.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_124003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124003", action = "action_EVENT_ANY_MONSTER_DIE_124003" }
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
		monsters = { 124001, 124004, 124005 },
		gadgets = { 124002, 124006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124003(context, evt)
	-- 将configid为 124002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
