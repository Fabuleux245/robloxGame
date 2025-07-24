-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:25
-- Luau version 6, Types version 3
-- Time taken: 0.000689 seconds

local Promise_upvr = require(script.Parent.Parent.Promise)
return function(arg1) -- Line 4, Named "getPremiumUpsellPrecheck"
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return arg1.getPremiumUpsellPrecheck():andThen(function(arg1_2) -- Line 6
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(true)
	end):catch(function(arg1_3) -- Line 9
		--[[ Upvalues[1]:
			[1]: Promise_upvr (copied, readonly)
		]]
		return Promise_upvr.resolve(false)
	end)
end