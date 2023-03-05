function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	end
	if param1 == 101 then
		ScriptLib.SetGadgetState(context, 101)
	end
	if param1 == 102 then
		ScriptLib.SetGadgetState(context, 102)
	end

	if param1 == 201 then		
		if CheckGroupChallengeState(context) then
			ScriptLib.SetGadgetState(context, GadgetState.GearStart)
		end
	end
	if param1 == 202 then
		if CheckGroupChallengeState(context) then
			ScriptLib.SetGadgetState(context, GadgetState.GearStop)
		end
	end
	if param1 == 203 then
		ScriptLib.SetGadgetState(context, GadgetState.GearAction1)
	end
	if param1 == 204 then		
		if CheckGroupChallengeState(context) then
			ScriptLib.SetGadgetState(context, GadgetState.GearAction2)
		end
	end

	if param1 == 901 then
		ScriptLib.SetGadgetState(context, GadgetState.Action01)
	end
	if param1 == 902 then
		ScriptLib.SetGadgetState(context, GadgetState.Action02)
	end
	if param1 == 903 then
		ScriptLib.SetGadgetState(context, GadgetState.Action03)
	end

end

-- 当格子被踩时，先检查Group状态
function CheckGroupChallengeState(context)
	ScriptLib.PrintContextLog(context,"CheckGroupChallengeState")
	--challenge_state 0-等待开始 1-正在进行 2-完成 3-失败流程中
	local state = ScriptLib.GetGroupVariableValue(context, "challenge_state")

	if state == 1 then
		--ScriptLib.PrintContextLog(context,"Cube Set Active Check Ok")
		return true
	elseif state == 0 then
		if ScriptLib.GetContextGadgetConfigId(context) == ScriptLib.GetGroupVariableValue(context, "starter_id") then
			--ScriptLib.PrintContextLog(context,"Cube Set Active Check Ok for Starter")
			return true
		else
			--ScriptLib.PrintContextLog(context,"Cube Pressed Before Challenge But Not Starter")
			return false
		end		
	end		
	return false
end


