-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:05
-- Luau version 6, Types version 3
-- Time taken: 0.000821 seconds

local Parent = script:FindFirstAncestor("DiscoveryAnalytics").Parent
local t = require(Parent.t)
local any_strictInterface_result1_upvr = t.strictInterface({
	universeId = t.string;
	upsellName = t.string;
	playabilityStatus = t.optional(t.string);
})
local flaggedMutedError_upvr = require(Parent.Loggers).flaggedMutedError
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: flaggedMutedError_upvr (readonly)
	]]
	local var5_result1, var5_result2 = any_strictInterface_result1_upvr(arg2)
	if not var5_result1 then
		flaggedMutedError_upvr("UnlockPlayIntentEventInterface", var5_result2)
	end
	arg1:sendEventDeferred("PlayButton", "unlockPlayIntent", arg2)
end