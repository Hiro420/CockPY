
-- 初始状态
local state_ = GadgetState.GearStart
-- 启动元素
local start_elem_type_ = ElementType.Fire
-- 最大启动值
local max_start_value_ = 1
-- 停止元素
local stop_elem_type_ = ElementType.Ice
-- 最大停止值
local max_stop_value_ = 1
-- 停止持续时间
local stop_last_time_ = 4
-- 


-- 机关被攻击
function OnBeHurt(context, element_type, strike_type)
	-- 获取机关当前状态
	local state = ScriptLib.GetGadgetState(context)
	if state == GadgetState.GearStop then
		if element_type == start_elem_type then
			-- 获取原有的启动值
			local start_value = ScriptLib.GetGearStartValue(context)
			start_value = start_value + 1
			if start_value >= max_start_value_ then
				-- 在Default状态下，启动值超过最大启动值，则转换为GearStart状态
				ScriptLib.SetGadgetState(context, GadgetState.GearStart)
				-- 启动值设置为最大启动值
				ScriptLib.SetGearStartValue(context, max_start_value_)
			else
				-- 在Default状态下，被启动元素攻击一次，增加1点启动值
				ScriptLib.SetGearStartValue(context, start_value)
			end
		--待机状态的机关也会进入停止状态
		elseif stop_elem_type_ ~= ElementType.None and element_type == stop_elem_type_ then
			-- 在GearStop状态下，重置停止状态(刷新开始时间)
			ScriptLib.ResetGadgetState(context, GadgetState.GearStop)
		end
	elseif state == GadgetState.GearStart then
		if stop_elem_type_ ~= ElementType.None and element_type == stop_elem_type_ then
			-- 获取原有的停止值
			local stop_value = ScriptLib.GetGearStopValue(context)
			stop_value = stop_value + 1
			if stop_value >= max_stop_value_ then
				-- 在GearStart状态下，停止值超过最大停止值，则转换为GearStop状态
				ScriptLib.SetGadgetState(context, GadgetState.GearStop)
				-- 停止值设置为最大停止值
				ScriptLib.SetGearStopValue(context, max_stop_value_)
			else
				-- 在GearStart状态下，被停止元素攻击一次，增加1点停止值
				ScriptLib.SetGearStopValue(context, stop_value)
			end
		end
	end
end

function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 1 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end	
end
--[[-- 定时器回调
function OnTimer(context, now)
	-- 获取机关当前状态
	local state = ScriptLib.GetGadgetState(context)
	if state == GadgetState.GearStop then
		-- 获取当前状态的开始时间
		local state_begin_time = ScriptLib.GetGadgetStateBeginTime(context)
		if now >= state_begin_time + stop_last_time_ then
			-- 如果停止时间超过停止持续时间，则转换为GearStart状态
			ScriptLib.SetGadgetState(context, GadgetState.GearStart)
			-- 设置停止值为0
			ScriptLib.SetGearStopValue(context, 0)
		end
	end
end--]]


