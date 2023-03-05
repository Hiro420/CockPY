--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 372001, monster_id = 21010501, pos = { x = 236.3, y = 235.5, z = 1025.8 }, rot = { x = 0.0, y = 318.8, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013 },
	{ config_id = 372004, monster_id = 21020301, pos = { x = 239.9, y = 235.6, z = 1023.1 }, rot = { x = 0.0, y = 242.8, z = 0.0 }, level = 19, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401 },
	{ config_id = 372005, monster_id = 21010501, pos = { x = 236.5, y = 236.6, z = 1016.7 }, rot = { x = 0.0, y = 260.1, z = 0.0 }, level = 19, drop_tag = "远程丘丘人", disableWander = true, pose_id = 0 },
	{ config_id = 372006, monster_id = 21010101, pos = { x = 230.3, y = 235.6, z = 1024.9 }, rot = { x = 0.0, y = 224.4, z = 0.0 }, level = 19, drop_tag = "丘丘人" },
	{ config_id = 372007, monster_id = 21010101, pos = { x = 234.5, y = 237.1, z = 1015.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 372002, gadget_id = 70211022, pos = { x = 241.0, y = 235.7, z = 1020.0 }, rot = { x = 353.6, y = 289.3, z = 354.0 }, level = 19, drop_tag = "战斗高级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 372008, gadget_id = 70310006, pos = { x = 234.9, y = 236.9, z = 1016.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 372009, gadget_id = 70300089, pos = { x = 232.6, y = 235.8, z = 1024.4 }, rot = { x = 12.3, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 372010, gadget_id = 70300089, pos = { x = 230.7, y = 237.1, z = 1019.6 }, rot = { x = 0.0, y = 0.0, z = 352.0 }, level = 19 },
	{ config_id = 372011, gadget_id = 70300088, pos = { x = 232.5, y = 234.7, z = 1030.2 }, rot = { x = 0.0, y = 62.0, z = 0.0 }, level = 19 },
	{ config_id = 372012, gadget_id = 70300088, pos = { x = 234.3, y = 234.5, z = 1030.1 }, rot = { x = 0.0, y = 84.5, z = 0.0 }, level = 19 },
	{ config_id = 372013, gadget_id = 70220013, pos = { x = 232.5, y = 237.2, z = 1018.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 372014, gadget_id = 70220013, pos = { x = 238.9, y = 236.1, z = 1016.7 }, rot = { x = 0.0, y = 42.5, z = 0.0 }, level = 19 },
	{ config_id = 372015, gadget_id = 70220026, pos = { x = 237.5, y = 236.5, z = 1014.8 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 372016, gadget_id = 70220026, pos = { x = 238.5, y = 235.4, z = 1026.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19 },
	{ config_id = 372017, gadget_id = 70220025, pos = { x = 239.9, y = 235.7, z = 1022.6 }, rot = { x = 275.3, y = 92.5, z = 270.0 }, level = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_372003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_372003", action = "action_EVENT_ANY_MONSTER_DIE_372003" }
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
		monsters = { 372001, 372006, 372007 },
		gadgets = { 372002, 372008, 372009, 372010, 372011, 372013, 372014, 372015, 372016, 372017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_372003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_372003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_372003(context, evt)
	-- 将configid为 372002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 372002, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      return -1
	    end
	
	return 0
end
