-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:00
-- Luau version 6, Types version 3
-- Time taken: 0.001581 seconds

local Parent = script:FindFirstAncestor("GameLaunch").Parent
local PlayabilityStatusEnum = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local module = {}
local tbl_upvr = {
	[require(Parent.Http).Enum.RetrievalStatus.Failed] = "Feature.GamePage.QuickLaunch.LaunchError.RequestFailed";
	[PlayabilityStatusEnum.GuestProhibited] = "Feature.GamePage.QuickLaunch.LaunchError.GuestProhibited";
	[PlayabilityStatusEnum.GameUnapproved] = "Feature.ExperienceDetails.UnplayableError.GameUnapproved";
	[PlayabilityStatusEnum.UniverseRootPlaceIsPrivate] = "Feature.ExperienceDetails.UnplayableError.UniverseRootPlaceIsPrivate";
	[PlayabilityStatusEnum.InsufficientPermissionFriendsOnly] = "Feature.ExperienceDetails.UnplayableError.InsufficientPermissionFriendsOnly";
	[PlayabilityStatusEnum.InsufficientPermissionGroupOnly] = "Feature.ExperienceDetails.UnplayableError.InsufficientPermissionGroupOnly";
	[PlayabilityStatusEnum.DeviceRestricted] = "Feature.ExperienceDetails.UnplayableError.DeviceRestrictedDefault";
	[PlayabilityStatusEnum.UnderReview] = "Feature.ExperienceDetails.UnplayableError.UnderReview";
	[PlayabilityStatusEnum.PurchaseRequired] = "Feature.GamePage.QuickLaunch.LaunchError.PurchaseRequired";
	[PlayabilityStatusEnum.AccountRestricted] = "Feature.ExperienceDetails.UnplayableError.AccountRestricted";
	[PlayabilityStatusEnum.TemporarilyUnavailable] = "Feature.ExperienceDetails.UnplayableError.TemporarilyUnavailable";
	[PlayabilityStatusEnum.ComplianceBlocked] = "Feature.ExperienceDetails.UnplayableError.ComplianceBlocked";
	[PlayabilityStatusEnum.ContextualPlayabilityAgeRecommendationParentalControls] = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityAgeRecommendationParentalControls";
	[PlayabilityStatusEnum.ContextualPlayabilityRegionalAvailability] = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityRegionalAvailability";
	[PlayabilityStatusEnum.ContextualPlayabilityRegionalCompliance] = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityRegionalCompliance";
	[PlayabilityStatusEnum.ContextualPlayabilityUnverifiedSeventeenPlusUser] = "Feature.GamePage.QuickLaunch.LaunchError.ContextualPlayabilityUnverifiedSeventeenPlusUser";
	[PlayabilityStatusEnum.PlaceHasNoPublishedVersion] = "Feature.ExperienceDetails.UnplayableError.PlaceHasNoPublishedVersion";
	[PlayabilityStatusEnum.IncorrectConfiguration] = "Feature.ExperienceDetails.UnplayableError.IncorrectConfiguration";
	[PlayabilityStatusEnum.ContextualPlayabilityAgeGated] = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityAgeGated";
	[PlayabilityStatusEnum.ContextualPlayabilityUnrated] = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityUnrated";
	[PlayabilityStatusEnum.ContextualPlayabilityAgeGatedByDescriptor] = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityAgeGatedByDescriptor";
}
local var5 = "Feature.ExperienceDetails.UnplayableError.DeviceRestrictedDefault"
tbl_upvr[PlayabilityStatusEnum.FiatPurchaseDeviceRestricted] = var5
if require(Parent.SharedFlags).FFlagLuaAppBlockedUnplayableError then
	var5 = "Feature.ExperienceDetails.UnplayableError.ContextualPlayabilityExperienceBlockedParentalControls"
else
	var5 = nil
end
tbl_upvr[PlayabilityStatusEnum.ContextualPlayabilityExperienceBlockedParentalControls] = var5
tbl_upvr.Default = "Feature.ExperienceDetails.UnplayableError.UnplayableOther"
setmetatable(module, {
	__newindex = function(arg1, arg2, arg3) -- Line 42, Named "__newindex"
	end;
	__index = function(arg1, arg2) -- Line 43, Named "__index"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if arg2 == nil then
		else
		end
		assert(true, "LaunchErrorLocalizationKeys needs a key")
		local var7 = tbl_upvr[arg2]
		if not var7 then
			var7 = tbl_upvr.Default
		end
		return var7
	end;
})
return module