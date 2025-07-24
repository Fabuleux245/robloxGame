-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:42
-- Luau version 6, Types version 3
-- Time taken: 0.001044 seconds

local ControlState_upvr = require(script.Parent.Parent.Core.Control.Enum.ControlState)
return function(arg1, arg2) -- Line 10
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	if arg1 == ControlState_upvr.Initialize then
		return arg2.Initialize
	end
	if arg1 == ControlState_upvr.Default then
		return arg2.Default
	end
	if arg1 == ControlState_upvr.Pressed then
		return arg2.Pressed
	end
	if arg1 == ControlState_upvr.Hover then
		return arg2.Hover
	end
	if arg1 == ControlState_upvr.Selected then
		return arg2.Selected
	end
	if arg1 == ControlState_upvr.SelectedPressed then
		return arg2.SelectedPressed
	end
	if arg1 == ControlState_upvr.Disabled then
		return arg2.Disabled
	end
	return nil
end