-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:04
-- Luau version 6, Types version 3
-- Time taken: 0.012569 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Network_upvr, Analytics_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local StartPurchase_upvr = require(Parent.Actions.StartPurchase)
local Workspace_upvr = game:GetService("Workspace")
local RequestType_upvr = require(Parent.Enums.RequestType)
local ExperienceAuthService_upvr = game:GetService("ExperienceAuthService")
local completePurchase_upvr = require(script.Parent.completePurchase)
local PurchaseFlow_upvr = require(Parent.Enums.PurchaseFlow)
local SetPromptState_upvr = require(Parent.Actions.SetPromptState)
local PromptState_upvr = require(Parent.Enums.PromptState)
local HttpService_upvr = game:GetService("HttpService")
local getPlayerPrice_upvr = require(Parent.Utils.getPlayerPrice)
local FFlagEnableCollectibleCheckToPurchaseItem_upvr = require(Parent.Parent.Flags.FFlagEnableCollectibleCheckToPurchaseItem)
local GetFFlagEnableCreatorStorePurchasingCutover_upvr = require(Parent.Flags.GetFFlagEnableCreatorStorePurchasingCutover)
local isCreatorStoreAssetType_upvr = require(Parent.Utils.isCreatorStoreAssetType)
local performCreatorStorePurchase_upvr = require(Parent.Network.performCreatorStorePurchase)
local Promise_upvr = require(Parent.Promise)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local performPurchaseV2_upvr = require(Parent.Network.performPurchaseV2)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local performPurchase_upvr = require(Parent.Network.performPurchase)
local ItemType_upvr = require(Parent.Enums.ItemType)
local getToolAsset_upvr = require(Parent.Network.getToolAsset)
local Players_upvr = game:GetService("Players")
return function() -- Line 49, Named "purchaseItem"
	--[[ Upvalues[27]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: Analytics_upvr (readonly)
		[6]: StartPurchase_upvr (readonly)
		[7]: Workspace_upvr (readonly)
		[8]: RequestType_upvr (readonly)
		[9]: ExperienceAuthService_upvr (readonly)
		[10]: completePurchase_upvr (readonly)
		[11]: PurchaseFlow_upvr (readonly)
		[12]: SetPromptState_upvr (readonly)
		[13]: PromptState_upvr (readonly)
		[14]: HttpService_upvr (readonly)
		[15]: getPlayerPrice_upvr (readonly)
		[16]: FFlagEnableCollectibleCheckToPurchaseItem_upvr (readonly)
		[17]: GetFFlagEnableCreatorStorePurchasingCutover_upvr (readonly)
		[18]: isCreatorStoreAssetType_upvr (readonly)
		[19]: performCreatorStorePurchase_upvr (readonly)
		[20]: Promise_upvr (readonly)
		[21]: ErrorOccurred_upvr (readonly)
		[22]: performPurchaseV2_upvr (readonly)
		[23]: PurchaseError_upvr (readonly)
		[24]: performPurchase_upvr (readonly)
		[25]: ItemType_upvr (readonly)
		[26]: getToolAsset_upvr (readonly)
		[27]: Players_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 50
		--[[ Upvalues[25]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: Analytics_upvr (copied, readonly)
			[4]: StartPurchase_upvr (copied, readonly)
			[5]: Workspace_upvr (copied, readonly)
			[6]: RequestType_upvr (copied, readonly)
			[7]: ExperienceAuthService_upvr (copied, readonly)
			[8]: completePurchase_upvr (copied, readonly)
			[9]: PurchaseFlow_upvr (copied, readonly)
			[10]: SetPromptState_upvr (copied, readonly)
			[11]: PromptState_upvr (copied, readonly)
			[12]: HttpService_upvr (copied, readonly)
			[13]: getPlayerPrice_upvr (copied, readonly)
			[14]: FFlagEnableCollectibleCheckToPurchaseItem_upvr (copied, readonly)
			[15]: GetFFlagEnableCreatorStorePurchasingCutover_upvr (copied, readonly)
			[16]: isCreatorStoreAssetType_upvr (copied, readonly)
			[17]: performCreatorStorePurchase_upvr (copied, readonly)
			[18]: Promise_upvr (copied, readonly)
			[19]: ErrorOccurred_upvr (copied, readonly)
			[20]: performPurchaseV2_upvr (copied, readonly)
			[21]: PurchaseError_upvr (copied, readonly)
			[22]: performPurchase_upvr (copied, readonly)
			[23]: ItemType_upvr (copied, readonly)
			[24]: getToolAsset_upvr (copied, readonly)
			[25]: Players_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var63_upvr = arg2[Network_upvr]
		local var64_upvr = arg2[Analytics_upvr]
		local any_getState_result1 = arg1:getState()
		local purchaseFlow_2 = any_getState_result1.purchaseFlow
		local any_getPlatform_result1_upvr_2 = arg2[ExternalSettings_upvr].getPlatform()
		arg1:dispatch(StartPurchase_upvr(Workspace_upvr.DistributedGameTime))
		local var68_upvw
		if any_getState_result1.promptRequest.requestType == RequestType_upvr.AvatarCreationFee then
			ExperienceAuthService_upvr:ScopeCheckUIComplete(any_getState_result1.promptRequest.id, {Enum.ExperienceAuthScope.CreatorAssetsCreate}, Enum.ScopeCheckResult.ConsentAccepted, {
				avatarName = any_getState_result1.productInfo.name;
				avatarDescription = any_getState_result1.productInfo.description;
				priceFromToken = any_getState_result1.productInfo.price;
			})
			var64_upvr.signalAvatarCreationPurchaseSubmit()
			arg1:dispatch(completePurchase_upvr())
			return
		end
		if purchaseFlow_2 == PurchaseFlow_upvr.RobuxUpsellV2 or purchaseFlow_2 == PurchaseFlow_upvr.LargeRobuxUpsell then
			arg1:dispatch(SetPromptState_upvr(PromptState_upvr.PurchaseInProgress))
		end
		local any_getState_result1_3 = arg1:getState()
		local any_GenerateGUID_result1 = HttpService_upvr:GenerateGUID(false)
		local id_upvr = any_getState_result1_3.promptRequest.id
		local infoType_upvr = any_getState_result1_3.promptRequest.infoType
		local isRobloxPurchase_2 = any_getState_result1_3.promptRequest.isRobloxPurchase
		local purchaseAuthToken = any_getState_result1_3.promptRequest.purchaseAuthToken
		local idempotencyKey = any_getState_result1_3.promptRequest.idempotencyKey
		local collectibleItemId_2 = any_getState_result1_3.promptRequest.collectibleItemId
		local collectibleItemInstanceId = any_getState_result1_3.promptRequest.collectibleItemInstanceId
		local promptRequest_2 = any_getState_result1_3.promptRequest
		var68_upvw = any_getState_result1_3.accountInfo.membershipType
		if var68_upvw ~= 4 then
			promptRequest_2 = false
		else
			promptRequest_2 = true
		end
		var68_upvw = getPlayerPrice_upvr(any_getState_result1_3.productInfo, promptRequest_2)
		if collectibleItemInstanceId and collectibleItemInstanceId ~= "" then
			var68_upvw = promptRequest_2.expectedPrice
		end
		local assetType_2 = any_getState_result1_3.productInfo.assetType
		local productId_upvr_2 = any_getState_result1_3.productInfo.productId
		var64_upvr.signalProductPurchaseConfirmed(productId_upvr_2, any_getState_result1_3.requestType)
		if FFlagEnableCollectibleCheckToPurchaseItem_upvr then
			local var83 = collectibleItemId_2
			if var83 then
				var83 = false
				if collectibleItemId_2 ~= "" then
					if infoType_upvr ~= Enum.InfoType.Bundle then
						var83 = false
					else
						var83 = true
					end
				end
			end
		end
		if GetFFlagEnableCreatorStorePurchasingCutover_upvr() and isCreatorStoreAssetType_upvr(assetType_2) then
			return performCreatorStorePurchase_upvr(var63_upvr, productId_upvr_2, assetType_2):andThen(function(arg1_9) -- Line 145
				--[[ Upvalues[7]:
					[1]: arg1 (readonly)
					[2]: completePurchase_upvr (copied, readonly)
					[3]: var64_upvr (readonly)
					[4]: id_upvr (readonly)
					[5]: infoType_upvr (readonly)
					[6]: var68_upvw (read and write)
					[7]: Promise_upvr (copied, readonly)
				]]
				arg1:dispatch(completePurchase_upvr())
				var64_upvr.signalPurchaseSuccess(id_upvr, infoType_upvr, var68_upvw, arg1_9)
				return Promise_upvr.resolve()
			end):catch(function(arg1_10) -- Line 154
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: ErrorOccurred_upvr (copied, readonly)
				]]
				arg1:dispatch(ErrorOccurred_upvr(arg1_10))
			end)
		end
		if FFlagEnableCollectibleCheckToPurchaseItem_upvr and var83 or collectibleItemInstanceId and collectibleItemInstanceId ~= "" then
			return performPurchaseV2_upvr(var63_upvr, infoType_upvr, productId_upvr_2, var68_upvw, any_GenerateGUID_result1, isRobloxPurchase_2, collectibleItemId_2, any_getState_result1_3.promptRequest.collectibleProductId, idempotencyKey, purchaseAuthToken, collectibleItemInstanceId):andThen(function(arg1_11) -- Line 161
				--[[ Upvalues[7]:
					[1]: arg1 (readonly)
					[2]: completePurchase_upvr (copied, readonly)
					[3]: var64_upvr (readonly)
					[4]: id_upvr (readonly)
					[5]: infoType_upvr (readonly)
					[6]: var68_upvw (read and write)
					[7]: Promise_upvr (copied, readonly)
				]]
				arg1:dispatch(completePurchase_upvr())
				var64_upvr.signalPurchaseSuccess(id_upvr, infoType_upvr, var68_upvw, arg1_11)
				return Promise_upvr.resolve()
			end):catch(function(arg1_12) -- Line 172
				--[[ Upvalues[7]:
					[1]: PurchaseError_upvr (copied, readonly)
					[2]: var64_upvr (readonly)
					[3]: productId_upvr_2 (readonly)
					[4]: infoType_upvr (readonly)
					[5]: any_getPlatform_result1_upvr_2 (readonly)
					[6]: arg1 (readonly)
					[7]: ErrorOccurred_upvr (copied, readonly)
				]]
				local var88
				local function INLINED_3() -- Internal function, doesn't exist in bytecode
					var64_upvr.signalTwoSVSettingsErrorShown(productId_upvr_2, infoType_upvr)
					return any_getPlatform_result1_upvr_2 == Enum.Platform.Windows
				end
				if var88 == PurchaseError_upvr.TwoFactorNeeded and (INLINED_3() or any_getPlatform_result1_upvr_2 == Enum.Platform.OSX) then
					var88 = PurchaseError_upvr.TwoFactorNeededSettings
				end
				arg1:dispatch(ErrorOccurred_upvr(var88))
			end)
		end
		local itemType_upvr = any_getState_result1_3.productInfo.itemType
		local equipIfPurchased_upvr_2 = any_getState_result1_3.promptRequest.equipIfPurchased
		local assetTypeId_upvr_2 = any_getState_result1_3.productInfo.assetTypeId
		return performPurchase_upvr(var63_upvr, infoType_upvr, productId_upvr_2, var68_upvw, any_GenerateGUID_result1, isRobloxPurchase_2, any_getState_result1_3.productInfo.collectibleItemId, any_getState_result1_3.productInfo.collectibleProductId, idempotencyKey, purchaseAuthToken):andThen(function(arg1_13) -- Line 185
			--[[ Upvalues[14]:
				[1]: arg1 (readonly)
				[2]: completePurchase_upvr (copied, readonly)
				[3]: itemType_upvr (readonly)
				[4]: ItemType_upvr (copied, readonly)
				[5]: var64_upvr (readonly)
				[6]: id_upvr (readonly)
				[7]: infoType_upvr (readonly)
				[8]: var68_upvw (read and write)
				[9]: equipIfPurchased_upvr_2 (readonly)
				[10]: assetTypeId_upvr_2 (readonly)
				[11]: getToolAsset_upvr (copied, readonly)
				[12]: var63_upvr (readonly)
				[13]: Players_upvr (copied, readonly)
				[14]: Promise_upvr (copied, readonly)
			]]
			arg1:dispatch(completePurchase_upvr())
			if itemType_upvr ~= ItemType_upvr.Bundle then
				var64_upvr.signalPurchaseSuccess(id_upvr, infoType_upvr, var68_upvw, arg1_13)
			end
			if equipIfPurchased_upvr_2 and assetTypeId_upvr_2 == 19 then
				return getToolAsset_upvr(var63_upvr, id_upvr):andThen(function(arg1_14) -- Line 199
					--[[ Upvalues[1]:
						[1]: Players_upvr (copied, readonly)
					]]
					if arg1_14 then
						arg1_14.Parent = Players_upvr.LocalPlayer.Backpack
					end
				end)
			end
			return Promise_upvr.resolve()
		end):catch(function(arg1_15) -- Line 208
			--[[ Upvalues[7]:
				[1]: PurchaseError_upvr (copied, readonly)
				[2]: var64_upvr (readonly)
				[3]: productId_upvr_2 (readonly)
				[4]: infoType_upvr (readonly)
				[5]: any_getPlatform_result1_upvr_2 (readonly)
				[6]: arg1 (readonly)
				[7]: ErrorOccurred_upvr (copied, readonly)
			]]
			local var95
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var64_upvr.signalTwoSVSettingsErrorShown(productId_upvr_2, infoType_upvr)
				return any_getPlatform_result1_upvr_2 == Enum.Platform.Windows
			end
			if var95 == PurchaseError_upvr.TwoFactorNeeded and (INLINED_4() or any_getPlatform_result1_upvr_2 == Enum.Platform.OSX) then
				var95 = PurchaseError_upvr.TwoFactorNeededSettings
			end
			arg1:dispatch(ErrorOccurred_upvr(var95))
		end)
	end)
end