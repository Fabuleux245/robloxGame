-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:58
-- Luau version 6, Types version 3
-- Time taken: 0.002199 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Network_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local hasPendingRequest_upvr = require(Parent.Utils.hasPendingRequest)
local RequestAssetPurchase_upvr = require(Parent.Actions.RequestAssetPurchase)
local RequestGamepassPurchase_upvr = require(Parent.Actions.RequestGamepassPurchase)
local RequestProductPurchase_upvr = require(Parent.Actions.RequestProductPurchase)
local Players_upvr = game:GetService("Players")
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local Promise_upvr = require(Parent.Promise)
local GetFFlagEnableCreatorStorePurchasingCutover_upvr = require(Parent.Flags.GetFFlagEnableCreatorStorePurchasingCutover)
local getProductInfo_upvr = require(Parent.Network.getProductInfo)
local deprecated_GetProductInfo_upvr = require(Parent.Network.deprecated_GetProductInfo)
local getAccountInfo_upvr = require(Parent.Network.getAccountInfo)
local getIsAlreadyOwned_upvr = require(Parent.Network.getIsAlreadyOwned)
local getBalanceInfo_upvr = require(Parent.Network.getBalanceInfo)
local resolvePromptState_upvr = require(script.Parent.resolvePromptState)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) -- Line 34, Named "initiatePurchase"
	--[[ Upvalues[19]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Network_upvr (readonly)
		[4]: ExternalSettings_upvr (readonly)
		[5]: hasPendingRequest_upvr (readonly)
		[6]: RequestAssetPurchase_upvr (readonly)
		[7]: RequestGamepassPurchase_upvr (readonly)
		[8]: RequestProductPurchase_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: ErrorOccurred_upvr (readonly)
		[11]: PurchaseError_upvr (readonly)
		[12]: Promise_upvr (readonly)
		[13]: GetFFlagEnableCreatorStorePurchasingCutover_upvr (readonly)
		[14]: getProductInfo_upvr (readonly)
		[15]: deprecated_GetProductInfo_upvr (readonly)
		[16]: getAccountInfo_upvr (readonly)
		[17]: getIsAlreadyOwned_upvr (readonly)
		[18]: getBalanceInfo_upvr (readonly)
		[19]: resolvePromptState_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 35
		--[[ Upvalues[27]:
			[1]: Network_upvr (copied, readonly)
			[2]: ExternalSettings_upvr (copied, readonly)
			[3]: hasPendingRequest_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: RequestAssetPurchase_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: arg3 (readonly)
			[8]: arg4 (readonly)
			[9]: arg5 (readonly)
			[10]: arg6 (readonly)
			[11]: arg7 (readonly)
			[12]: arg8 (readonly)
			[13]: arg9 (readonly)
			[14]: arg10 (readonly)
			[15]: RequestGamepassPurchase_upvr (copied, readonly)
			[16]: RequestProductPurchase_upvr (copied, readonly)
			[17]: Players_upvr (copied, readonly)
			[18]: ErrorOccurred_upvr (copied, readonly)
			[19]: PurchaseError_upvr (copied, readonly)
			[20]: Promise_upvr (copied, readonly)
			[21]: GetFFlagEnableCreatorStorePurchasingCutover_upvr (copied, readonly)
			[22]: getProductInfo_upvr (copied, readonly)
			[23]: deprecated_GetProductInfo_upvr (copied, readonly)
			[24]: getAccountInfo_upvr (copied, readonly)
			[25]: getIsAlreadyOwned_upvr (copied, readonly)
			[26]: getBalanceInfo_upvr (copied, readonly)
			[27]: resolvePromptState_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
		if hasPendingRequest_upvr(arg1_2:getState()) then
			return nil
		end
		if arg2 == Enum.InfoType.Asset then
			arg1_2:dispatch(RequestAssetPurchase_upvr(arg1, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
			-- KONSTANTWARNING: GOTO [66] #55
		end
		-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 29. Error Block 33 start (CF ANALYSIS FAILED)
		if arg2 == Enum.InfoType.GamePass then
			arg1_2:dispatch(RequestGamepassPurchase_upvr(arg1))
			-- KONSTANTWARNING: GOTO [66] #55
		end
		-- KONSTANTERROR: [32] 29. Error Block 33 end (CF ANALYSIS FAILED)
	end)
end