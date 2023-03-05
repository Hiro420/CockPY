-- abilityRequest
function OnClientExecuteReq(context, param1, param2, param3)
	--ScriptLib.PrintLog("##param1="..param1)
	-- 获取机关当前状态
	 local this_config = ScriptLib.GetContextGadgetConfigId(context)

     local this_group = ScriptLib.GetContextGroupId(context)

     ScriptLib.SetGadgetEnableInteract(context, this_group, this_config, true)
end

function OnSubfieldDrop(context, drop_type, drop_value)
	if 1 == drop_value then
		ScriptLib.DropSubfield(context, {subfield_name = "ElectricRock_Destroy"})
	end
end	