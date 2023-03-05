-- 机关初始化配置
-- 初始状态
local state_ = GadgetState.GearStart
-- 启动元素
local start_elem_type_ = ElementType.Grass
-- 停止元素
local stop_elem_type_ = ElementType.None

-- 机关被攻击
function OnBeHurt(context, element_type, strike_type)
  -- 获取机关当前状态
  local state = ScriptLib.GetGadgetState(context)
  if state == GadgetState.Default then
    if start_elem_type_ == element_type then
      ScriptLib.SetGadgetState(context, GadgetState.GearStart)
    end
  end
end


