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
	{ config_id = 128, gadget_id = 70211103, pos = { x = 2642.0, y = 230.4, z = 23.6 }, rot = { x = 0.0, y = 296.9, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true },
	{ config_id = 129, gadget_id = 70211101, pos = { x = 2737.8, y = 248.0, z = 182.4 }, rot = { x = 0.0, y = 156.7, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true },
	{ config_id = 130, gadget_id = 70211101, pos = { x = 2624.5, y = 232.1, z = 195.0 }, rot = { x = 0.0, y = 329.9, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 131, gadget_id = 70211101, pos = { x = 2628.4, y = 251.9, z = 93.4 }, rot = { x = 0.0, y = 294.3, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 132, gadget_id = 70211101, pos = { x = 2683.7, y = 258.4, z = 100.2 }, rot = { x = 0.0, y = 146.0, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 133, gadget_id = 70211101, pos = { x = 2690.8, y = 239.1, z = 96.8 }, rot = { x = 0.0, y = 136.2, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 134, gadget_id = 70211101, pos = { x = 2702.8, y = 233.9, z = 173.3 }, rot = { x = 0.0, y = 324.7, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 135, gadget_id = 70211112, pos = { x = 2648.8, y = 264.6, z = 147.7 }, rot = { x = 0.0, y = 12.2, z = 0.0 }, level = 23, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 136, gadget_id = 70211111, pos = { x = 2667.2, y = 300.6, z = 132.2 }, rot = { x = 0.0, y = 179.3, z = 0.0 }, level = 23, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true },
	{ config_id = 203, gadget_id = 70220020, pos = { x = 2640.7, y = 229.7, z = 27.0 }, rot = { x = 0.0, y = 345.3, z = 0.0 }, level = 23 },
	{ config_id = 204, gadget_id = 70220020, pos = { x = 2640.0, y = 230.4, z = 21.8 }, rot = { x = 0.0, y = 351.3, z = 0.0 }, level = 23 },
	{ config_id = 205, gadget_id = 70220020, pos = { x = 2638.5, y = 229.9, z = 24.5 }, rot = { x = 0.0, y = 258.8, z = 0.0 }, level = 23 },
	{ config_id = 206, gadget_id = 70220020, pos = { x = 2643.9, y = 230.5, z = 24.3 }, rot = { x = 0.0, y = 259.0, z = 0.0 }, level = 23 },
	{ config_id = 590, gadget_id = 70211101, pos = { x = 2677.6, y = 222.1, z = 40.2 }, rot = { x = 0.0, y = 89.7, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 953, gadget_id = 70211101, pos = { x = 2606.4, y = 221.4, z = 52.4 }, rot = { x = 14.8, y = 303.2, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 954, gadget_id = 70211101, pos = { x = 2724.3, y = 248.1, z = 185.0 }, rot = { x = 0.0, y = 64.7, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 956, gadget_id = 70211101, pos = { x = 2793.9, y = 248.3, z = -181.0 }, rot = { x = 0.0, y = 327.2, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true },
	{ config_id = 957, gadget_id = 70211101, pos = { x = 3052.1, y = 239.7, z = 178.9 }, rot = { x = 0.0, y = 290.4, z = 0.0 }, level = 23, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 256, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2649.4, y = 263.9, z = 148.5 } }
}

-- 触发器
triggers = {
	{ name = "CLIENT_EXECUTE_88", event = EventType.EVENT_CLIENT_EXECUTE, source = "", condition = "", action = "action_EVENT_CLIENT_EXECUTE_88" },
	{ name = "ENTER_REGION_256", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256", action = "action_EVENT_ENTER_REGION_256", tlog_tag = "风龙_28_风龙塔封印宝箱_成功" }
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
		-- description = ,
		monsters = { },
		gadgets = { 128, 129, 130, 131, 132, 133, 134, 135, 136, 203, 204, 205, 206, 590, 953, 954, 956, 957 },
		regions = { 256 },
		triggers = { "CLIENT_EXECUTE_88", "ENTER_REGION_256" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_CLIENT_EXECUTE_88(context, evt)
	-- 针对groupid为 133007028 中该config对应的物件进行状态改变操作
	local this_gadget = ScriptLib.GetGadgetConfigId(context, { gadget_eid = evt.source_eid })
		--ScriptLib.PrintLog("config_id="..this_gadget)
	
		if evt.param1 == 1 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 133007028, this_gadget, GadgetState.GearStart )
			return 0
		end
	
		if evt.param1 == 0 then
			ScriptLib.SetGroupGadgetStateByConfigId(context, 133007028, this_gadget, GadgetState.Default )
			return 0
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_256(context, evt)
	if evt.param1 ~= 256 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256(context, evt)
	-- 将configid为 135 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
