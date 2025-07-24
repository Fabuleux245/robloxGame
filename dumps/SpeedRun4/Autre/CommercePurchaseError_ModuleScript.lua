-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:59
-- Luau version 6, Types version 3
-- Time taken: 0.002680 seconds

local CommercePurchaseApp = script:FindFirstAncestor("CommercePurchaseApp")
local Parent = CommercePurchaseApp.Parent
local UIBlox = require(Parent.UIBlox)
local ErrorCodeEnum = require(CommercePurchaseApp.Enums.ErrorCodeEnum)
local tbl_upvr = {
	[ErrorCodeEnum.NotPurchasable] = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.NotPurchasable";
}
local tbl_2_upvr = {
	[ErrorCodeEnum.NotPurchasable] = {
		title = "CoreScripts.CommercePurchasePrompt.ProductNotAvailable";
		reason = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.NotPurchasable";
	};
	[ErrorCodeEnum.DeviceNotSupported] = {
		title = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.Title.DeviceNotSupported";
		reason = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.Body.DeviceNotSupported";
	};
	[ErrorCodeEnum.AccountNotSupported] = {
		title = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.Title.AccountNotSupported";
		reason = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.Body.AccountNotSupported";
	};
}
local useScreenSize_upvr = require(Parent.EconomyCommonCoreScriptHooks).useScreenSize
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagAddCommerceErrors_upvr = require(CommercePurchaseApp.Flags.FFlagAddCommerceErrors)
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 39, Named "CommercePurchaseError"
	--[[ Upvalues[8]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: FFlagAddCommerceErrors_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: InteractiveAlert_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	local tbl = {}
	local var17
	if FFlagAddCommerceErrors_upvr then
		var17 = tbl_2_upvr[arg1.errorCode].title
	else
		var17 = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.CantBuy"
	end
	tbl.title = var17
	if FFlagAddCommerceErrors_upvr then
		var17 = tbl_2_upvr[arg1.errorCode].reason
	else
		var17 = tbl_upvr[arg1.errorCode]
	end
	tbl.errorReason = var17
	var17 = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.DismissCTA"
	tbl.dismissCTA = var17
	local var11_result1 = useLocalization_upvr(tbl)
	var17 = React_upvr
	var17 = InteractiveAlert_upvr
	return var17.createElement(var17, {
		title = var11_result1.title;
		titleIcon = Images_upvr["icons/status/error_large"];
		bodyText = var11_result1.errorReason;
		buttonStackInfo = {
			buttons = {{
				props = {
					onActivated = arg1.onDismiss;
					text = var11_result1.dismissCTA;
				};
				isDefaultChild = true;
			}};
		};
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = useScreenSize_upvr();
	})
end