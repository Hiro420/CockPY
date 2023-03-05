function OnClientExecuteReq(context, param1, param2, param3)
	local this_target = ScriptLib.GetContextGadgetConfigId(context)
	--ScriptLib.PrintLog("##config="..this_target)
	local this_group = ScriptLib.GetContextGroupId(context)
	--ScriptLib.PrintLog("##config="..this_group)
	if param1 == 0 then
		ScriptLib.StopPlatform(context, this_target)
	end

	if param1 == 1 then
		ScriptLib.StartPlatform(context, this_target)
	end

	if param1 == 2 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
	end

	if param1 == 3 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
	end
		
end