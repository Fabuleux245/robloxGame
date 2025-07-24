-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:17
-- Luau version 6, Types version 3
-- Time taken: 0.000557 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local SetAgeRecommendation_upvr = require(GameDetailRodux.AgeRecommendations.SetAgeRecommendation)
local Cryo_upvr = require(GameDetailRodux.Parent.Cryo)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: SetAgeRecommendation_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	arg1 = var5
	local var6 = arg1
	if arg2.type == SetAgeRecommendation_upvr.name then
		var6 = Cryo_upvr.Dictionary.join(var6, {
			[arg2.universeId] = arg2.ageRecommendationDetails;
		})
	end
	return var6
end