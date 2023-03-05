function OnClientExecuteReq(context, param1, param2, param3)
	if param1 ~= 1 then
		ScriptLib.DropSubfield(context, {subfield_name = "Chest_DropTest"})
	else 
		local state = ScriptLib.GetGadgetState(context)
		if state == GadgetState.GearStart then
			ScriptLib.SetGadgetState(context, GadgetState.Default)
		end
	end
end
