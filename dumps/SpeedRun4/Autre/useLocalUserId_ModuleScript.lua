-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:12
-- Luau version 6, Types version 3
-- Time taken: 0.000430 seconds

local useSelector_upvr = require(script:FindFirstAncestor("RobloxAppHooks").Parent.RoactUtils).Hooks.RoactRodux.useSelector
return function() -- Line 6
	--[[ Upvalues[1]:
		[1]: useSelector_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 7
		return arg1.LocalUserId
	end)
end