-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:05
-- Luau version 6, Types version 3
-- Time taken: 0.000753 seconds

local LuauPolyfill = require(script.Parent.Parent.Parent.LuauPolyfill)
local function var3_upvr(arg1, arg2) -- Line 13
	return (arg1.rank or 0) - (arg2.rank or 0)
end
local selectRecommendationsForUserId_upvr = require(script.Parent.selectRecommendationsForUserId)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
return function(arg1) -- Line 19
	--[[ Upvalues[4]:
		[1]: selectRecommendationsForUserId_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: var3_upvr (readonly)
	]]
	return function(arg1_2) -- Line 20
		--[[ Upvalues[5]:
			[1]: selectRecommendationsForUserId_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: Object_upvr (copied, readonly)
			[5]: var3_upvr (copied, readonly)
		]]
		return function(arg1_3, arg2) -- Line 21
			--[[ Upvalues[6]:
				[1]: selectRecommendationsForUserId_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: Array_upvr (copied, readonly)
				[5]: Object_upvr (copied, readonly)
				[6]: var3_upvr (copied, readonly)
			]]
			return Array_upvr.map(Array_upvr.sort(Object_upvr.values(selectRecommendationsForUserId_upvr(arg1)(arg1_2)(arg1_3, arg2)), var3_upvr), function(arg1_4) -- Line 30
				return arg1_4.id
			end)
		end
	end
end