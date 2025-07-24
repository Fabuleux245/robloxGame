-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:54
-- Luau version 6, Types version 3
-- Time taken: 0.000403 seconds

local getDeepValue_upvr = require(script.Parent.Parent.getDeepValue)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: getDeepValue_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2, arg2) -- Line 10
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
		]]
		return getDeepValue_upvr(arg1_2, keyPath_upvr..".byUserId")[arg2]
	end
end