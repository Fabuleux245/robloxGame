-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:48
-- Luau version 6, Types version 3
-- Time taken: 0.000610 seconds

local ControlState_upvr = require(script.Parent.Parent.Control.Enum.ControlState)
return function(arg1, arg2, arg3) -- Line 6
	--[[ Upvalues[1]:
		[1]: ControlState_upvr (readonly)
	]]
	local var3 = arg1[arg2]
	if not var3 then
		var3 = arg1[ControlState_upvr.Default]
	end
	local module = {
		Color = arg3.Theme[var3].Color;
		Transparency = arg3.Theme[var3].Transparency;
	}
	if arg2 == ControlState_upvr.Disabled or arg2 == ControlState_upvr.Pressed then
		module.Transparency = 0.5 * module.Transparency + 0.5
	end
	return module
end