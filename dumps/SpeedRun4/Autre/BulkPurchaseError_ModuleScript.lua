-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:35
-- Luau version 6, Types version 3
-- Time taken: 0.003561 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local React_upvr = require(Parent.React)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local ErrorCodeEnum = require(BulkPurchaseApp.Enums.ErrorCodeEnum)
local StyledTextLabel_upvr = require(Parent.UIBlox).App.Text.StyledTextLabel
local function BulkPurchaseErrorText_upvr(arg1) -- Line 17, Named "BulkPurchaseErrorText"
	--[[ Upvalues[3]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: StyledTextLabel_upvr (readonly)
	]]
	local useDesignTokens_upvr_result1 = useDesignTokens_upvr()
	return React_upvr.createElement(StyledTextLabel_upvr, {
		size = UDim2.fromScale(1, 0);
		automaticSize = Enum.AutomaticSize.Y;
		fontStyle = useDesignTokens_upvr_result1.Semantic.Typography.Body;
		colorStyle = useDesignTokens_upvr_result1.Semantic.Color.Text.Default;
		textXAlignment = Enum.TextXAlignment.Center;
		text = arg1.text;
		layoutOrder = arg1.layoutOrder;
	})
end
local tbl_upvr_2 = {
	[ErrorCodeEnum.InsufficientRobux] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonInsufficientRobux";
	[ErrorCodeEnum.QuotaExceeded] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonQuotaExceeded";
	[ErrorCodeEnum.NotForSale] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonNotForSale";
	[ErrorCodeEnum.AlreadyOwned] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonAlreadyOwned";
	[ErrorCodeEnum.PurchaserIsSeller] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonPurchaserIsSeller";
	[ErrorCodeEnum.NotAvailableForPurchaser] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonNotAvailableForPurchaser";
	[ErrorCodeEnum.PriceMismatch] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonPriceMismatch";
	[ErrorCodeEnum.QuantityLimitExceeded] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonQuantityLimitExceeded";
	[ErrorCodeEnum.InsufficientMembership] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonInsufficientMembership";
	[ErrorCodeEnum.Generic] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonGeneric";
	[ErrorCodeEnum.SoldOut] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonSoldOut";
	[ErrorCodeEnum.TwoStepVerificationRequired] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReason2SV";
	[ErrorCodeEnum.PlaceInvalid] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.ErrorReasonNotAvailableInExperience";
}
local tbl_upvr = {
	[ErrorCodeEnum.InsufficientRobux] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainMoreRobux";
	[ErrorCodeEnum.QuotaExceeded] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainWait";
	[ErrorCodeEnum.NotForSale] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.AlreadyOwned] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.PurchaserIsSeller] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.NotAvailableForPurchaser] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.PriceMismatch] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainNow";
	[ErrorCodeEnum.QuantityLimitExceeded] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.InsufficientMembership] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.Generic] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainLater";
	[ErrorCodeEnum.SoldOut] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainNow";
	[ErrorCodeEnum.TwoStepVerificationRequired] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
	[ErrorCodeEnum.PlaceInvalid] = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorPrompt.TryAgainOtherItems";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local AlertPrompt_upvr = require(BulkPurchaseApp.Components.AlertPrompt)
return function(arg1) -- Line 68, Named "BulkPurchaseError"
	--[[ Upvalues[7]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: tbl_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: BulkPurchaseErrorText_upvr (readonly)
		[7]: AlertPrompt_upvr (readonly)
	]]
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		title = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.ErrorHeading";
		errorReason = tbl_upvr_2[arg1.errorCode];
		tryAgain = tbl_upvr[arg1.errorCode];
		dismissCTA = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.DismissCTA";
	})
	local useDesignTokens_upvr_result1_upvr = useDesignTokens_upvr()
	return React_upvr.createElement(AlertPrompt_upvr, {
		title = useLocalization_upvr_result1_upvr.title;
		dismissCTA = useLocalization_upvr_result1_upvr.dismissCTA;
		onDismiss = arg1.onDismiss;
		middleContent = function() -- Line 77
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: useDesignTokens_upvr_result1_upvr (readonly)
				[3]: BulkPurchaseErrorText_upvr (copied, readonly)
				[4]: useLocalization_upvr_result1_upvr (readonly)
			]]
			local module = {
				Layout = React_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Top;
					Padding = UDim.new(0, useDesignTokens_upvr_result1_upvr.Global.Space_200);
				});
			}
			local any_createElement_result1 = React_upvr.createElement(BulkPurchaseErrorText_upvr, {
				text = useLocalization_upvr_result1_upvr.errorReason;
				layoutOrder = 1;
			})
			module.ErrorReason = any_createElement_result1
			if useLocalization_upvr_result1_upvr.tryAgain then
				any_createElement_result1 = React_upvr.createElement
				any_createElement_result1 = any_createElement_result1(BulkPurchaseErrorText_upvr, {
					text = useLocalization_upvr_result1_upvr.tryAgain;
					layoutOrder = 2;
				})
			else
				any_createElement_result1 = nil
			end
			module.TryAgain = any_createElement_result1
			return React_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
			}, module)
		end;
	})
end