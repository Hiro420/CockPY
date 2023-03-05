--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 144001, monster_id = 25030201, pos = { x = -650.8, y = 221.3, z = 689.1 }, rot = { x = 0.0, y = 305.5, z = 0.0 }, level = 28, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 144002, monster_id = 25040201, pos = { x = -643.4, y = 221.3, z = 683.5 }, rot = { x = 0.0, y = 274.3, z = 0.0 }, level = 20, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 144003, monster_id = 25020202, pos = { x = -638.8, y = 221.3, z = 685.5 }, rot = { x = 0.0, y = 303.2, z = 0.0 }, level = 20, drop_tag = "盗宝团", pose_id = 0 },
	{ config_id = 144004, monster_id = 25010201, pos = { x = -637.4, y = 221.4, z = 682.9 }, rot = { x = 0.0, y = 117.9, z = 0.0 }, level = 20, drop_tag = "盗宝团", disableWander = true, pose_id = 0 },
	{ config_id = 144005, monster_id = 25020202, pos = { x = -644.0, y = 221.3, z = 675.7 }, rot = { x = 0.0, y = 303.2, z = 0.0 }, level = 20, drop_tag = "盗宝团", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 144006, gadget_id = 70211012, pos = { x = -636.2, y = 221.3, z = 691.7 }, rot = { x = 359.7, y = 221.2, z = 1.3 }, level = 32, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true },
	{ config_id = 144007, gadget_id = 70310006, pos = { x = -650.4, y = 221.3, z = 684.5 }, rot = { x = 357.1, y = 92.7, z = 4.3 }, level = 32, state = GadgetState.GearStart }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_144008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_144008", action = "action_EVENT_ANY_MONSTER_DIE_144008" }
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
		monsters = { 144001, 144002, 144003, 144004 },
		gadgets = { 144006, 144007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_144008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_144008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_144008(context, evt)
	-- 将configid为 144006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 144006, GadgetState.Default) then
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      return -1
	    end
	
	return 0
end
