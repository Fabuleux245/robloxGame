-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:07
-- Luau version 6, Types version 3
-- Time taken: 0.000685 seconds

local getDeepValue_upvr = require(script.Parent.Parent.getDeepValue)
local filterByKeys_upvr = require(script.Parent.filterByKeys)
return function(arg1) -- Line 10
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: filterByKeys_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2) -- Line 12
		--[[ Upvalues[3]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
			[3]: filterByKeys_upvr (copied, readonly)
		]]
		return function(arg1_3, arg2) -- Line 13
			--[[ Upvalues[4]:
				[1]: getDeepValue_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: keyPath_upvr (copied, readonly)
				[4]: filterByKeys_upvr (copied, readonly)
			]]
			local var8
			if not var8 then
				var8 = {}
			end
			if arg2 then
				return filterByKeys_upvr(arg2, var8)
			end
			return var8
		end
	end
end