-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:52
-- Luau version 6, Types version 3
-- Time taken: 0.000519 seconds

local shallowEqual_upvr = require(script.Parent.Parent.shallowEqual)
local toString_upvr = require(script.Parent.Parent.toString)
return function(arg1) -- Line 4, Named "expectTable"
	--[[ Upvalues[2]:
		[1]: shallowEqual_upvr (readonly)
		[2]: toString_upvr (readonly)
	]]
	return {
		toEqual = function(arg1_2) -- Line 6, Named "toEqual"
			--[[ Upvalues[3]:
				[1]: shallowEqual_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: toString_upvr (copied, readonly)
			]]
			assert(shallowEqual_upvr(arg1, arg1_2), string.format("expected: %s\ninstead got: %s", toString_upvr(arg1_2), toString_upvr(arg1)))
		end;
	}
end