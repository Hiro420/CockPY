function OnClientExecuteReq(context, param1, param2, param3)
	local state = ScriptLib.GetGadgetState(context)
	if param1 == 1 then
		if state == GadgetState.Action01 then
			ScriptLib.SetGadgetState(context, GadgetState.Action02)
		elseif state == GadgetState.Action02 then
			ScriptLib.SetGadgetState(context, GadgetState.Action03)
		elseif state == GadgetState.Action03 then
			ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
		end
	elseif param1 == 2 then
		if state == GadgetState.Action01 then
			ScriptLib.SetGadgetState(context, GadgetState.Action03)
		elseif state == GadgetState.Action02  or state == GadgetState.Action03 then
			ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
		end
	elseif param1 == 3 then
		if state == GadgetState.Action01 or state == GadgetState.Action02 or state == GadgetState.Action03 then
			ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
		end
	end

	local cur_state = ScriptLib.GetGadgetState(context)
	--临时发送特殊状态信号
	--groupLua拦截到此事件时可以做数据清理
	if param2 == 1 then
		ScriptLib.SetGadgetState(context, GadgetState.ChestLocked)
		ScriptLib.SetGadgetState(context, cur_state)
	end
end