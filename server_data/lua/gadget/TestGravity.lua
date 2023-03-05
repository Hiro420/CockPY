function OnClientExecuteReq(context, param1, param2, param3)
  if param1 == 0 then
    ScriptLib.SetGadgetState(context, GadgetState.Default)
  end
  if param1 ==  901 then
    ScriptLib.SetGadgetState(context, GadgetState.Action01)
  end
  if param1 ==  902 then
    ScriptLib.SetGadgetState(context, GadgetState.Action02)
  end
  if param1 ==  903 then
    ScriptLib.SetGadgetState(context, GadgetState.Action03)
  end
  if param1 ==  201then
    ScriptLib.SetGadgetState(context, GadgetState.GearStart)
  end
end