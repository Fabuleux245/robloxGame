-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:59
-- Luau version 6, Types version 3
-- Time taken: 0.000460 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.Parent.Parent.React)
local ControlState_upvr = require(Parent.Control.Enum.ControlState)
return function() -- Line 20, Named "useControlState"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ControlState_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(ControlState_upvr.Initialize)
	return any_useState_result1, React_upvr.useCallback(function(arg1, arg2) -- Line 23
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg2)
	end, {})
end