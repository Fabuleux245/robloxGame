-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:26
-- Luau version 6, Types version 3
-- Time taken: 0.000492 seconds

local getDeepValue_upvr = require(script.Parent.Parent.Parent.Parent.Utils.getDeepValue)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: getDeepValue_upvr (readonly)
	]]
	local keyPath_upvr = arg1.keyPath
	return function(arg1_2) -- Line 9
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: keyPath_upvr (readonly)
		]]
		return function(arg1_3) -- Line 10
			--[[ Upvalues[3]:
				[1]: getDeepValue_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: keyPath_upvr (copied, readonly)
			]]
			return getDeepValue_upvr(arg1_2, string.format("%s.bySessionKey.%s", keyPath_upvr, arg1_3))
		end
	end
end