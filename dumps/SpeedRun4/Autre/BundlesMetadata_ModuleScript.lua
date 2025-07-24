-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:15
-- Luau version 6, Types version 3
-- Time taken: 0.002118 seconds

local Parent = script.Parent.Parent
local module = {}
local Promise_upvr = require(Parent.Parent.Promise)
local HttpService_upvr = game:GetService("HttpService")
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local APIUtil_upvr = require(Parent.util.APIUtil)
function module.fetch() -- Line 42
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: HttpRbxApiService_upvr (readonly)
		[4]: APIUtil_upvr (readonly)
	]]
	return Promise_upvr.try(function() -- Line 43
		--[[ Upvalues[3]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: HttpRbxApiService_upvr (copied, readonly)
			[3]: APIUtil_upvr (copied, readonly)
		]]
		return HttpService_upvr:JSONDecode(HttpRbxApiService_upvr:GetAsyncFullUrl(`https://itemconfiguration.{APIUtil_upvr.getBaseDomain()}/v1/bundles/metadata`))
	end)
end
function module.mock() -- Line 50
	return {
		isBundlesControllerEnabled = true;
		isBundlesCreationEnabled = true;
		isBundlesPublishingEnabled = true;
		allowedBundleTypeSettings = {
			Body = {
				allowedAssetTypeSettings = {
					DynamicHead = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					EyebrowAccessory = {
						minimumQuantity = 0;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					EyelashAccessory = {
						minimumQuantity = 0;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					HairAccessory = {
						minimumQuantity = 0;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					LeftArm = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					LeftLeg = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					RightArm = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					RightLeg = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					Torso = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
				};
				marketplaceFeePercentage = 30;
				allowedPriceRange = {
					minimumPrice = 0;
					maximumPrice = 10000;
				};
			};
			DynamicHead = {
				allowedAssetTypeSettings = {
					DynamicHead = {
						minimumQuantity = 1;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					EyebrowAccessory = {
						minimumQuantity = 0;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
					EyelashAccessory = {
						minimumQuantity = 0;
						maximumQuantity = 1;
						isEligibleForUpload = true;
						allowedFileExtensions = {".rbxm"};
					};
				};
				marketplaceFeePercentage = 30;
				allowedPriceRange = {
					minimumPrice = 0;
					maximumPrice = 10000;
				};
			};
		};
	}
end
return module