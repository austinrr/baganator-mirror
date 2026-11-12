---@class addonTableBaganator
local addonTable = select(2, ...)

local buttonMapping = {
  ["A"] = "PAD1",
  ["B"] = "PAD2",
  ["X"] = "PAD3",
  ["Y"] = "PAD4",
  ["MENU"] = "PADFORWARD",
  ["D-LEFT"] = "PADDLEFT",
  ["D-RIGHT"] = "PADDRIGHT",
  ["D-DOWN"] = "PADDDDOWN",
  ["D-UP"] = "PADDUP",
}
if addonTable.Constants.IsGamepadInUse then
  local directions = {
    ["Left"] = SMART_NAV_INPUT_DIRECTION.LEFT,
    ["Right"] = SMART_NAV_INPUT_DIRECTION.RIGHT,
    ["Up"] = SMART_NAV_INPUT_DIRECTION.UP,
    ["Down"] = SMART_NAV_INPUT_DIRECTION.DOWN,
  }

  function addonTable.Gamepad.LinkButtons(button1, direction, button2)
    SmartNavigation_AddBidirectionalJumpNavigationOverride(button1, directions[direction], button2)
  end
  function addonTable.Gamepad.OneWayLink(button1, direction, button2)
    SmartNavigation_AddJumpNavigationOverride(button1, directions[direction], button2)
  end
else
  function addonTable.Gamepad.LinkButtons(button1, direction, button2)
  end
  function addonTable.Gamepad.OneWayLink(button1, direction, button2)
  end
end
