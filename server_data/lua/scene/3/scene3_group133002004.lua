--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 88, gadget_id = 70211101, pos = { x = 1883.7, y = 243.8, z = -867.5 }, rot = { x = 0.0, y = 107.6, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 93, gadget_id = 70211101, pos = { x = 1685.1, y = 214.0, z = -384.4 }, rot = { x = 0.0, y = 213.1, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 99, gadget_id = 70211101, pos = { x = 1933.6, y = 226.3, z = -907.7 }, rot = { x = 3.7, y = 218.5, z = 0.3 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 110, gadget_id = 70211101, pos = { x = 1551.4, y = 204.1, z = -467.1 }, rot = { x = 13.1, y = 320.5, z = 358.6 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 115, gadget_id = 70211101, pos = { x = 1766.3, y = 224.5, z = -415.9 }, rot = { x = 0.0, y = 120.0, z = 0.0 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 552, gadget_id = 70211101, pos = { x = 1674.2, y = 221.4, z = -526.1 }, rot = { x = 8.3, y = 44.2, z = 6.7 }, level = 10, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 963, gadget_id = 70500000, pos = { x = 1777.0, y = 238.2, z = -403.2 }, rot = { x = 0.0, y = 236.5, z = 0.0 }, level = 10, point_type = 4001001, isOneoff = true },
	{ config_id = 1016, gadget_id = 70900007, pos = { x = 1614.9, y = 229.2, z = -506.9 }, rot = { x = 4.2, y = 27.1, z = 0.0 }, level = 10, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_65", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_65", action = "action_EVENT_GADGET_STATE_CHANGE_65", trigger_count = 0 }
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
	rand_suite = true
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = suite_1,
		monsters = { },
		gadgets = { 88, 93, 99, 110, 115, 552, 963, 1016 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_65" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_65(context, evt)
	if 1016 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_65(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133002074, suite = 2 }) then
			return -1
		end
	
	-- 触发镜头注目，注目位置为坐标（1627，266，-440），持续时间为4秒，并且为强制注目形式，不广播其他玩家
		local pos = {x=1627, y=266, z=-440}
	    if 0 ~= ScriptLib.BeginCameraSceneLook(context, { look_pos = pos, duration = 4, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0 }) then
					return -1
				end 
	
	return 0
end
