--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 41, monster_id = 21010401, pos = { x = 2545.6, y = 205.5, z = 207.5 }, rot = { x = 0.0, y = 220.3, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003 },
	{ config_id = 42, monster_id = 21010401, pos = { x = 2541.3, y = 205.5, z = 201.8 }, rot = { x = 0.0, y = 12.7, z = 0.0 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002 },
	{ config_id = 43, monster_id = 21030101, pos = { x = 2545.3, y = 205.5, z = 205.2 }, rot = { x = 0.0, y = 314.0, z = 0.0 }, level = 30, drop_tag = "丘丘萨满", disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 366, gadget_id = 70220013, pos = { x = 2545.3, y = 205.8, z = 212.2 }, rot = { x = 0.0, y = 86.5, z = 0.0 }, level = 23 },
	{ config_id = 367, gadget_id = 70220013, pos = { x = 2543.6, y = 206.2, z = 212.9 }, rot = { x = 0.0, y = 203.3, z = 0.0 }, level = 23 },
	{ config_id = 368, gadget_id = 70220013, pos = { x = 2538.2, y = 205.5, z = 201.3 }, rot = { x = 0.0, y = 203.7, z = 0.0 }, level = 23 },
	{ config_id = 369, gadget_id = 70310006, pos = { x = 2544.3, y = 205.5, z = 206.1 }, rot = { x = 0.0, y = 151.6, z = 0.0 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 514, gadget_id = 70211012, pos = { x = 2548.7, y = 205.5, z = 207.3 }, rot = { x = 0.0, y = 281.0, z = 0.0 }, level = 23, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 269, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2544.9, y = 206.1, z = 206.0 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_183", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_183", action = "action_EVENT_ANY_MONSTER_DIE_183", tlog_tag = "风龙_19_大营地7_成功" },
	{ name = "ENTER_REGION_269", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_269", action = "", tlog_tag = "风龙_19_大营地7_触发" }
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
		monsters = { 41, 42, 43 },
		gadgets = { 366, 367, 368, 369, 514 },
		regions = { 269 },
		triggers = { "ANY_MONSTER_DIE_183", "ENTER_REGION_269" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_183(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_183(context, evt)
	-- 将configid为 514 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 514, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_269(context, evt)
	if evt.param1 ~= 269 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
