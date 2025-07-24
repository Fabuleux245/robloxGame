-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:41
-- Luau version 6, Types version 3
-- Time taken: 0.000720 seconds

local module_upvr = {
	outputFunction = print;
}
local prettyPrint_upvr = require(script.Parent.prettyPrint)
function module_upvr.middleware(arg1, arg2) -- Line 10
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: prettyPrint_upvr (readonly)
	]]
	return function(arg1_2) -- Line 11
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: prettyPrint_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		module_upvr.outputFunction("Action dispatched: %s\nState changed to: %s":format(prettyPrint_upvr(arg1_2), prettyPrint_upvr(arg2:getState())))
		return arg1(arg1_2)
	end
end
return module_upvr