local default_time = 6
local Action01_time = 2
local Action02_time = 8

function OnTimer(context, now)
	ScriptLib.PrintLog("time = "..now)
	local arguments = ScriptLib.GetGadgetArguments(context)
	local length = #arguments
	local state_begin_time = ScriptLib.GetGadgetStateBeginTime(context)
	local state = ScriptLib.GetGadgetState(context)

	-- 获取机关当前状态
	if state == GadgetState.Default then
		if length > 0 and arguments[1] > 2 then
			default_time = arguments[1] - 2
		end
		if now >= state_begin_time + default_time then
			ScriptLib.SetGadgetState(context, GadgetState.Action01)
		end
	elseif state == GadgetState.Action01 then
		if now >= state_begin_time + Action01_time then
			ScriptLib.SetGadgetState(context, GadgetState.Action02)
		end
	elseif state == GadgetState.Action02 then
		if length > 1 and arguments[2] > 0 then
			Action02_time = arguments[2]
		end
		if now >= state_begin_time + Action02_time then
			ScriptLib.SetGadgetState(context, GadgetState.Default)
		end
	end
end


