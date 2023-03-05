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
	{ config_id = 239001, gadget_id = 70220004, pos = { x = -507.5, y = 185.7, z = 1165.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 239002, gadget_id = 70220004, pos = { x = -508.6, y = 185.7, z = 1160.5 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 239003, gadget_id = 70220004, pos = { x = -496.7, y = 185.7, z = 1170.5 }, rot = { x = 359.9, y = 357.0, z = 359.9 }, level = 32 },
	{ config_id = 239004, gadget_id = 70220004, pos = { x = -502.3, y = 185.7, z = 1162.9 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 239006, gadget_id = 70220004, pos = { x = -502.0, y = 187.5, z = 1166.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 },
	{ config_id = 239009, gadget_id = 70220004, pos = { x = -500.3, y = 185.7, z = 1170.1 }, rot = { x = 0.0, y = 332.5, z = 0.0 }, level = 32 },
	{ config_id = 239010, gadget_id = 70220004, pos = { x = -496.7, y = 185.7, z = 1166.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_GADGET_DIE_239011", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_239011", action = "action_EVENT_ANY_GADGET_DIE_239011" }
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
		monsters = { },
		gadgets = { 239001, 239002, 239003, 239004, 239006, 239009, 239010 },
		regions = { },
		triggers = { "ANY_GADGET_DIE_239011" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_239011(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133106239}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_239011(context, evt)
	-- 改变指定group组133106229中， configid为229001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133106229, 229001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
