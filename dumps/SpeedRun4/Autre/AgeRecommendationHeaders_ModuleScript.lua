-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:16
-- Luau version 6, Types version 3
-- Time taken: 0.000622 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local SetAgeRecommendationHeaders_upvr = require(GameDetailRodux.AgeRecommendations.SetAgeRecommendationHeaders)
local Cryo_upvr = require(GameDetailRodux.Parent.Cryo)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[2]:
		[1]: SetAgeRecommendationHeaders_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local var5 = arg1
	if not var5 then
		var5 = {}
	end
	arg1 = var5
	local var6 = arg1
	if arg2.type == SetAgeRecommendationHeaders_upvr.name then
		var6 = Cryo_upvr.Dictionary.join(var6, {
			headerDisplayName = arg2.headerDisplayName;
			headerDisplayNameShort = arg2.headerDisplayNameShort;
		})
	end
	return var6
end