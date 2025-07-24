-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:56
-- Luau version 6, Types version 3
-- Time taken: 0.000977 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.Parent.React)
local ControlState_upvr = require(Parent.Core.Control.Enum.ControlState)
local useGuiControlState_upvr = require(Parent_2.Control.Hooks.useGuiControlState)
return function(arg1, arg2, arg3) -- Line 14, Named "useGuiControlStateWithBinding"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: useGuiControlState_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2_upvr = React_upvr.useBinding(ControlState_upvr.Initialize)
	local var5_result1, useGuiControlState_upvr_result2 = useGuiControlState_upvr(arg1, React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 20
		--[[ Upvalues[2]:
			[1]: any_useBinding_result2_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		any_useBinding_result2_upvr(tostring(arg2_2))
		if arg2 then
			arg2(arg1_2, arg2_2)
		end
	end, {}), arg3)
	return var5_result1, any_useBinding_result1
end