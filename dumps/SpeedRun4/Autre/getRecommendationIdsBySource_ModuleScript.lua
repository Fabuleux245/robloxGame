-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:04
-- Luau version 6, Types version 3
-- Time taken: 0.000662 seconds

local Parent = script.Parent.Parent
local getDeepValue_upvr = require(Parent.getDeepValue)
local Object_upvr = require(Parent.Parent.LuauPolyfill).Object
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: getDeepValue_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2) -- Line 11
		--[[ Upvalues[3]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
			[3]: Object_upvr (copied, readonly)
		]]
		return function(arg1_3) -- Line 12
			--[[ Upvalues[4]:
				[1]: getDeepValue_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: keyPath_upvr (copied, readonly)
				[4]: Object_upvr (copied, readonly)
			]]
			local var3_result1 = getDeepValue_upvr(arg1_2, string.format("%s.recommendations.bySource.%s", keyPath_upvr, arg1_3 or ""))
			if not var3_result1 then
				var3_result1 = {}
			end
			return Object_upvr.keys(var3_result1)
		end
	end
end