-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:17
-- Luau version 6, Types version 3
-- Time taken: 0.001704 seconds

local tbl_upvr = {"InvalidTargetType", "FailedToFetchPublishingFee", "ServiceUnavailable", "InvalidArgument", "NotFound", "FailedToGetCollectibleItemId", "FailedToGetCommissionRates", "NullParameterRequest", "PublishLimitExceeded", "AssetIsPendingValidation", "AssetContainsInvalidContent", "UserDoesNotHavePermissionsForGroupAsset", "AssetTypeCannotBeReleased", "AssetIsPendingReview", "AssetIsModerated", "ItemIsReleased", "UserDoesNotHavePermissionToRelease", "UserDoesNotOwnTheItem", "ItemPriceTooLow", "ItemPriceTooHigh", "InvalidAssetId", "InvalidAgent", "NoExperiencesListed", "NameIsModerated", "DescriptionIsModerated", "TextIsModerated", "FailedToFilterText", "AssetAlreadyReleasedAsUnlimited", "AssetInDelayedRelease", "InvalidIdempotencyToken", "InvalidAgreedPublishingFee", "GatewayCouldNotPublishItem", "GroupAssetNotSupported", "CouldNotFindInitialUserAsset", "InvalidQuantity", "SaleLocationCurrentlyNotSupported", "InvalidCollectibleItemId", "FailedToGetCollectibleItemInformation", "GroupItemsNotSupported", "FailedToUpdateCollectibleItem", "PublishQuotaUnavailable", "FailedToFetchMarketplaceFee", "QuantityLimitCurrentlyNotSupported", "InvalidQuantityLimit", "ExactCopyOfAssetHasBeenPublished", "ItemIsInBundle", "ResaleRestrictionCurrentlyNotSupported", "InvalidResaleRestriction", "FailedToUpdateCollectibleDescription", "InvalidBundleId", "BundleTypeCannotBeReleased", "BundleIsModerated", "BundleAlreadyReleasedAsUnlimited", "BundlesGatewayUnexpectedErrorCode", "CissUnexpectedException", "PublishingGatewayUnexpectedException", "NonLimitedPublishingNotSupported", "InvalidPublishingType", "InvalidPriceOffset", "InvalidMinimumPrice", "InvalidSaleStatus", "InvalidPriceConfiguration", "FailedToGetPriceConfiguration", "CannotBeFree", "UnexpectedPlaceIds", "MissingAuthenticatedUser", "InvalidCreatorType", "PermissionProviderNotEnabled", "InvalidGroupId", "InsufficientRobux", "ItemNotFound", "ItemIsModerated", "ItemModerationUnknown", "InvalidItemType", -- : First try: K:0: attempt to index nil with 't'

local APIUtil_upvr = require(script:FindFirstAncestor("UGCValidation").util.APIUtil)
local HttpService_upvr = game:GetService("HttpService")
return function(arg1) -- Line 193, Named "canUploadBundlesAsync"
	--[[ Upvalues[3]:
		[1]: APIUtil_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local any_requestAndRetryGet_result1, any_requestAndRetryGet_result2 = APIUtil_upvr.requestAndRetryGet(`https://itemconfiguration.{APIUtil_upvr.getBaseDomain()}/v1/collectibles/check-item-upload-access?targetType=1&groupId={arg1 or ""}`)
	local var6
	if not any_requestAndRetryGet_result1 then
		return {
			type = "error";
			message = any_requestAndRetryGet_result2;
		}
	end
	var6 = any_requestAndRetryGet_result2
	local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(var6)
	if any_JSONDecode_result1.isAllowed then
		local module_2 = {}
		var6 = "allowed"
		module_2.type = var6
		return module_2
	end
	if any_JSONDecode_result1.isAllowed ~= false then
		var6 = false
	else
		var6 = true
	end
	assert(var6, "Luau")
	local module = {}
	var6 = "notAllowed"
	module.type = var6
	var6 = tbl_upvr[any_JSONDecode_result1.deniedReason]
	if not var6 then
		var6 = any_JSONDecode_result1.deniedReason
	end
	module.denyReason = var6
	return module
end