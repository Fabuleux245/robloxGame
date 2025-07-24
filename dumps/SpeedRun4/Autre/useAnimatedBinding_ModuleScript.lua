-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:50
-- Luau version 6, Types version 3
-- Time taken: 0.000376 seconds

local React_upvr = require(script.Parent.Parent.React)
local useMotor_upvr = require(script.Parent.useMotor)
return function(arg1, arg2) -- Line 12, Named "useAnimatedBinding"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: useMotor_upvr (readonly)
	]]
	local any_useBinding_result1, any_useBinding_result2 = React_upvr.useBinding(arg1)
	return any_useBinding_result1, useMotor_upvr(arg1, any_useBinding_result2, arg2)
end