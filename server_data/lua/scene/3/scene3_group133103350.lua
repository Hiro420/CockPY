--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 350001, monster_id = 21020301, pos = { x = 335.5, y = 240.7, z = 1718.0 }, rot = { x = 0.0, y = 195.4, z = 0.0 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 350004, monster_id = 21010301, pos = { x = 320.4, y = 236.7, z = 1733.1 }, rot = { x = 0.0, y = 99.2, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 350005, monster_id = 21010301, pos = { x = 336.5, y = 240.7, z = 1719.8 }, rot = { x = 0.0, y = 195.4, z = 0.0 }, level = 24, drop_tag = "丘丘人", disableWander = true },
	{ config_id = 350006, monster_id = 21010401, pos = { x = 332.7, y = 237.2, z = 1707.4 }, rot = { x = 0.0, y = 193.4, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402 },
	{ config_id = 350007, monster_id = 21010401, pos = { x = 325.4, y = 232.8, z = 1706.4 }, rot = { x = 0.0, y = 103.0, z = 0.0 }, level = 24, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 350002, gadget_id = 70211012, pos = { x = 333.2, y = 237.2, z = 1709.1 }, rot = { x = 0.0, y = 14.3, z = 0.0 }, level = 24, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_350003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_350003", action = "action_EVENT_ANY_MONSTER_DIE_350003" }
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
		monsters = { 350001, 350004, 350005, 350006, 350007 },
		gadgets = { 350002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_350003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_350003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_350003(context, evt)
	-- 将configid为 350002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 350002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
