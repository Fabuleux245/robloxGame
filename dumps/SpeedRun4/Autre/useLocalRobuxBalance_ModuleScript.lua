-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:12
-- Luau version 6, Types version 3
-- Time taken: 0.000654 seconds

local useLocalUserId_upvr = require(script.Parent.useLocalUserId)
local useSelector_upvr = require(script:FindFirstAncestor("RobloxAppHooks").Parent.RoactUtils).Hooks.RoactRodux.useSelector
return function() -- Line 7
	--[[ Upvalues[2]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useSelector_upvr (readonly)
	]]
	local var2_result1_upvr = useLocalUserId_upvr()
	return useSelector_upvr(function(arg1) -- Line 9
		--[[ Upvalues[1]:
			[1]: var2_result1_upvr (readonly)
		]]
		return arg1.UserRobux[var2_result1_upvr]
	end)
end