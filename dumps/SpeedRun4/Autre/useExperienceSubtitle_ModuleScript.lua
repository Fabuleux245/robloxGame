-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:57
-- Luau version 6, Types version 3
-- Time taken: 0.003187 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local useSelector_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue_upvr = require(VirtualEvents.Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
return function(arg1) -- Line 9, Named "useExperienceSubtitle"
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
	]]
	local function var16(arg1_4) -- Line 10
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local getDeepValue_upvr_result1_4 = getDeepValue_upvr(arg1_4, "GameVotes."..arg1..".upVotes")
		local getDeepValue_upvr_result1_3 = getDeepValue_upvr(arg1_4, "GameVotes."..arg1..".downVotes")
		if not getDeepValue_upvr_result1_4 or not getDeepValue_upvr_result1_3 then
			return nil
		end
		return math.round(100 * getDeepValue_upvr_result1_4 / (getDeepValue_upvr_result1_4 + getDeepValue_upvr_result1_3))
	end
	local useSelector_upvr_result1 = useSelector_upvr(var16)
	if useSelector_upvr_result1 == useSelector_upvr_result1 then
		var16 = false
	else
		var16 = true
		local var21
	end
	if var16 or not useSelector_upvr_result1 then
		function var21(arg1_5) -- Line 24
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local AgeRecommendations = arg1_5.AgeRecommendations
			if AgeRecommendations then
				AgeRecommendations = arg1_5.AgeRecommendations[arg1]
			end
			return AgeRecommendations
		end
		local useSelector_upvr_result1_2 = useSelector_upvr(var21)
		var21 = useSelector_upvr_result1_2
		if var21 then
			var21 = useSelector_upvr_result1_2.summary
			if var21 then
				var21 = useSelector_upvr_result1_2.summary.ageRecommendation
			end
		end
		local var24 = var21
		if var24 then
			var24 = var21.displayNameWithHeaderShort
		end
		return var24
	end
	return useLocalization_upvr({
		ratingPercentage = {
			rating = tostring(useSelector_upvr_result1);
			"Feature.VirtualEvents.Label.Rating"
		};
	}).ratingPercentage
end