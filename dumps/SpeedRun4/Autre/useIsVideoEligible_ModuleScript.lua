-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:23
-- Luau version 6, Types version 3
-- Time taken: 0.001754 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local PlayabilityStatusEnum = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local tbl_upvr = {PlayabilityStatusEnum.UnderReview, PlayabilityStatusEnum.UniverseRootPlaceIsPrivate, PlayabilityStatusEnum.InsufficientPermissionFriendsOnly, PlayabilityStatusEnum.InsufficientPermissionGroupOnly, PlayabilityStatusEnum.GameUnapproved, PlayabilityStatusEnum.AccountRestricted, PlayabilityStatusEnum.ComplianceBlocked, PlayabilityStatusEnum.ContextualPlayabilityRegionalCompliance, PlayabilityStatusEnum.ContextualPlayabilityAgeRecommendationParentalControls, PlayabilityStatusEnum.ContextualPlayabilityAgeGated, PlayabilityStatusEnum.ContextualPlayabilityUnrated, PlayabilityStatusEnum.ContextualPlayabilityAgeGatedByDescriptor, PlayabilityStatusEnum.ContextualPlayabilityExperienceBlockedParentalControls}
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local FetchGamePlayabilityAndProductInfo_upvr = require(Parent.GameDetailRodux).FetchGamePlayabilityAndProductInfo
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 32, Named "useIsVideoEligible"
	--[[ Upvalues[5]:
		[1]: useSelector_upvr (readonly)
		[2]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[3]: RetrievalStatus_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	local var4_result1 = useSelector_upvr(function(arg1_3) -- Line 37
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var10
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var10 = arg1_3.PlayabilityStatus[arg1]
			return var10
		end
		if not arg1_3.PlayabilityStatus or not INLINED() then
			var10 = nil
		end
		return var10
	end)
	if useSelector_upvr(function(arg1_2) -- Line 33
		--[[ Upvalues[2]:
			[1]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return FetchGamePlayabilityAndProductInfo_upvr.GetFetchingStatus(arg1_2, arg1)
	end) == RetrievalStatus_upvr.Done and var4_result1 ~= nil then
		if var4_result1.isPlayable == true then
			return true
		end
		if Cryo_upvr.List.find(tbl_upvr, var4_result1.playabilityStatus) ~= nil then
			return false
		end
		return true
	end
	return false
end