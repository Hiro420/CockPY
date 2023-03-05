function OnClientExecuteReq(context, param1, param2, param3)
  -- 获取机关当前状态
  if param1 == 0 then
    ScriptLib.SetGadgetState(context, GadgetState.Default)
  elseif param1 == 201 then
    ScriptLib.SetGadgetState(context, GadgetState.GearStart)
  end
end


