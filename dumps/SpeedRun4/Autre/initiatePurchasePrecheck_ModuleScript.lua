-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:59
-- Luau version 6, Types version 3
-- Time taken: 0.004528 seconds

local Parent = script.Parent.Parent
local Network_upvr = require(Parent.Services.Network)
local Analytics_upvr = require(Parent.Services.Analytics)
local ExternalSettings_upvr = require(Parent.Services.ExternalSettings)
local module_upvr = {Analytics_upvr, Network_upvr, ExternalSettings_upvr}
local Thunk_upvr = require(Parent.Thunk)
local resolvePurchasePrecheck_upvr = require(script.Parent.resolvePurchasePrecheck)
local PurchaseWarning_upvr = require(Parent.Enums.PurchaseWarning)
local getUpsellFlow_upvr = require(Parent.NativeUpsell.getUpsellFlow)
local SelectedRobuxPackage_upvr = require(Parent.Utils.SelectedRobuxPackage)
local UpsellFlow_upvr = require(Parent.Enums.UpsellFlow)
local SetButtonState_upvr = require(Parent.Actions.SetButtonState)
local ButtonState_upvr = require(Parent.Enums.ButtonState)
local getPurchaseWarning_upvr = require(Parent.Network.getPurchaseWarning)
return function() -- Line 30, Named "initiatePurchasePrecheck"
	--[[ Upvalues[13]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: Network_upvr (readonly)
		[5]: ExternalSettings_upvr (readonly)
		[6]: resolvePurchasePrecheck_upvr (readonly)
		[7]: PurchaseWarning_upvr (readonly)
		[8]: getUpsellFlow_upvr (readonly)
		[9]: SelectedRobuxPackage_upvr (readonly)
		[10]: UpsellFlow_upvr (readonly)
		[11]: SetButtonState_upvr (readonly)
		[12]: ButtonState_upvr (readonly)
		[13]: getPurchaseWarning_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1, arg2) -- Line 31
		--[[ Upvalues[11]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: Network_upvr (copied, readonly)
			[3]: ExternalSettings_upvr (copied, readonly)
			[4]: resolvePurchasePrecheck_upvr (copied, readonly)
			[5]: PurchaseWarning_upvr (copied, readonly)
			[6]: getUpsellFlow_upvr (copied, readonly)
			[7]: SelectedRobuxPackage_upvr (copied, readonly)
			[8]: UpsellFlow_upvr (copied, readonly)
			[9]: SetButtonState_upvr (copied, readonly)
			[10]: ButtonState_upvr (copied, readonly)
			[11]: getPurchaseWarning_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_getState_result1 = arg1:getState()
		local var17 = arg2[ExternalSettings_upvr]
		local var18_upvw
		if var17.isStudio() then
			var18_upvw = PurchaseWarning_upvr
			return resolvePurchasePrecheck_upvr(var18_upvw.NoAction)
		end
		var18_upvw = any_getState_result1.productInfo
		var18_upvw = SelectedRobuxPackage_upvr.getRobuxProductId(any_getState_result1)
		if any_getState_result1.accountInfo.membershipType ~= 4 then
		else
		end
		if getUpsellFlow_upvr(var17.getPlatform()) == UpsellFlow_upvr.Web then
			local any_getProductId_result1 = SelectedRobuxPackage_upvr.getProductId(any_getState_result1)
			var18_upvw = nil
		else
		end
		arg1:dispatch(SetButtonState_upvr(ButtonState_upvr.Disabled))
		local var21_upvr = arg2[Analytics_upvr]
		local productId_upvr = var18_upvw.productId
		local var23_upvw
		return getPurchaseWarning_upvr(arg2[Network_upvr], var18_upvw, nil, true):andThen(function(arg1_2) -- Line 59
			--[[ Upvalues[9]:
				[1]: arg1 (readonly)
				[2]: SetButtonState_upvr (copied, readonly)
				[3]: ButtonState_upvr (copied, readonly)
				[4]: var21_upvr (readonly)
				[5]: productId_upvr (readonly)
				[6]: var18_upvw (read and write)
				[7]: var23_upvw (read and write)
				[8]: resolvePurchasePrecheck_upvr (copied, readonly)
				[9]: PurchaseWarning_upvr (copied, readonly)
			]]
			arg1:dispatch(SetButtonState_upvr(ButtonState_upvr.Enabled))
			if arg1_2 then
				if arg1_2.action == "U13PaymentModal" then
					local var24 = var18_upvw
					if not var24 then
						var24 = var23_upvw
					end
					var21_upvr.signalScaryModalShown(productId_upvr, "U13PaymentModal", var24)
					return arg1:dispatch(resolvePurchasePrecheck_upvr(PurchaseWarning_upvr.U13PaymentModal))
				end
				if arg1_2.action == "U13MonthlyThreshold1Modal" then
					local var25 = var18_upvw
					if not var25 then
						var25 = var23_upvw
					end
					var21_upvr.signalScaryModalShown(productId_upvr, "U13MonthlyThreshold1Modal", var25)
					return arg1:dispatch(resolvePurchasePrecheck_upvr(PurchaseWarning_upvr.U13MonthlyThreshold1Modal))
				end
				if arg1_2.action == "U13MonthlyThreshold2Modal" then
					local var26 = var18_upvw
					if not var26 then
						var26 = var23_upvw
					end
					var21_upvr.signalScaryModalShown(productId_upvr, "U13MonthlyThreshold2Modal", var26)
					return arg1:dispatch(resolvePurchasePrecheck_upvr(PurchaseWarning_upvr.U13MonthlyThreshold2Modal))
				end
				if arg1_2.action == "ParentalConsentWarningPaymentModal13To17" then
					local var27 = var18_upvw
					if not var27 then
						var27 = var23_upvw
					end
					var21_upvr.signalScaryModalShown(productId_upvr, "ParentalConsentWarningPaymentModal13To17", var27)
					return arg1:dispatch(resolvePurchasePrecheck_upvr(PurchaseWarning_upvr.ParentalConsentWarningPaymentModal13To17))
				end
			end
			arg1:dispatch(resolvePurchasePrecheck_upvr(PurchaseWarning_upvr.NoAction))
		end):catch(function(arg1_3) -- Line 83
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: SetButtonState_upvr (copied, readonly)
				[3]: ButtonState_upvr (copied, readonly)
				[4]: resolvePurchasePrecheck_upvr (copied, readonly)
				[5]: PurchaseWarning_upvr (copied, readonly)
			]]
			arg1:dispatch(SetButtonState_upvr(ButtonState_upvr.Enabled))
			arg1:dispatch(resolvePurchasePrecheck_upvr(PurchaseWarning_upvr.NoAction))
		end)
	end)
end