--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 72001, monster_id = 25030201, pos = { x = -838.0, y = 158.7, z = 1372.9 }, rot = { x = 0.0, y = 327.6, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 72002, monster_id = 25040201, pos = { x = -840.1, y = 158.6, z = 1373.4 }, rot = { x = 0.0, y = 256.2, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 72003, monster_id = 25020202, pos = { x = -837.3, y = 158.6, z = 1379.3 }, rot = { x = 0.0, y = 223.1, z = 0.0 }, level = 32, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 72007, monster_id = 25010202, pos = { x = -834.3, y = 158.7, z = 1374.3 }, rot = { x = 0.0, y = 289.0, z = 0.0 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 72004, gadget_id = 70211012, pos = { x = -835.9, y = 158.6, z = 1377.8 }, rot = { x = 0.0, y = 202.7, z = 0.0 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 72005, gadget_id = 70310006, pos = { x = -839.0, y = 158.7, z = 1374.2 }, rot = { x = 0.0, y = 92.9, z = 0.0 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_72006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_72006", action = "action_EVENT_ANY_MONSTER_DIE_72006" }
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
		monsters = { 72001, 72002, 72003, 72007 },
		gadgets = { 72004, 72005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_72006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_72006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_72006(context, evt)
	-- 将configid为 72004 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 72004, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
