--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 482001, monster_id = 21020301, pos = { x = 226.5, y = 241.8, z = 960.4 }, rot = { x = 343.5, y = 43.3, z = 350.8 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 482004, monster_id = 21030401, pos = { x = 224.8, y = 243.4, z = 967.1 }, rot = { x = 357.5, y = 96.3, z = 341.3 }, level = 19, drop_tag = "丘丘萨满", disableWander = true },
	{ config_id = 482005, monster_id = 21010301, pos = { x = 229.8, y = 243.6, z = 966.3 }, rot = { x = 359.5, y = 285.0, z = 18.9 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 482006, monster_id = 21010301, pos = { x = 230.3, y = 242.4, z = 961.2 }, rot = { x = 4.2, y = 271.2, z = 18.4 }, level = 19, drop_tag = "丘丘人", disableWander = true, pose_id = 9003 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 482002, gadget_id = 70211012, pos = { x = 225.8, y = 242.7, z = 963.2 }, rot = { x = 341.7, y = 359.3, z = 4.6 }, level = 19, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 482007, gadget_id = 70220014, pos = { x = 231.2, y = 241.2, z = 957.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 482008, gadget_id = 70220014, pos = { x = 229.6, y = 241.0, z = 956.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 482009, gadget_id = 70220013, pos = { x = 231.6, y = 243.9, z = 967.2 }, rot = { x = 352.5, y = 0.1, z = 357.8 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_482003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_482003", action = "action_EVENT_ANY_MONSTER_DIE_482003" }
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
		monsters = { 482001, 482004, 482005, 482006 },
		gadgets = { 482002, 482007, 482008, 482009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_482003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_482003(context, evt)
	-- 将configid为 482002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 482002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
