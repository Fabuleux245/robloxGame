-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:46
-- Luau version 6, Types version 3
-- Time taken: 0.000494 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local getGeneratedRules_upvr = require(Foundation.Utility.getGeneratedRules)
return function(arg1, arg2) -- Line 11, Named "useGeneratedRules"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: getGeneratedRules_upvr (readonly)
	]]
	local module = {}
	module[1] = arg1
	module[2] = arg2
	return React_upvr.useMemo(function() -- Line 12
		--[[ Upvalues[3]:
			[1]: getGeneratedRules_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return getGeneratedRules_upvr(arg1, arg2)
	end, module)
end