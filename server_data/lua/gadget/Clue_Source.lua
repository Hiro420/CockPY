-- abilityRequest
function OnClientExecuteReq(context, param1, param2, param3)
	ScriptLib.PrintLog("##param1="..param1)
	-- 获取机关当前状态
	ScriptLib.SetGadgetState(context, GadgetState.GearStart)
end