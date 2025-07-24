-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:49
-- Luau version 6, Types version 3
-- Time taken: 0.000299 seconds

local Roact_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.Roact)
return function(arg1) -- Line 6, Named "validateWithRefForwarding"
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.forwardRef = arg1[Roact_upvr.Ref]
	arg1[Roact_upvr.Ref] = nil
	return arg1
end