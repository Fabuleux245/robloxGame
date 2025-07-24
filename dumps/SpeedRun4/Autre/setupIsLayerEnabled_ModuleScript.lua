-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:55
-- Luau version 6, Types version 3
-- Time taken: 0.000818 seconds

local getDeepValue_upvr = require(script.Parent.Parent.Dictionary.getDeepValue)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: getDeepValue_upvr (readonly)
	]]
	return function(arg1_2) -- Line 7
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var4 = arg1_2
		if not var4 then
			var4 = {}
		end
		local var5 = var4[arg1.layerName]
		if not var5 then
			var5 = {}
		end
		return getDeepValue_upvr(var5, arg1.variantName) or false
	end
end