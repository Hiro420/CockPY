function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	elseif param1 == 202 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStop)
	end	
end