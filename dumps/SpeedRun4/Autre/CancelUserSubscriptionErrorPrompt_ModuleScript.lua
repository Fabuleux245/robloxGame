-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:16
-- Luau version 6, Types version 3
-- Time taken: 0.001289 seconds

local CancelSubscriptionApp = script:FindFirstAncestor("CancelSubscriptionApp")
local Parent = CancelSubscriptionApp.Parent
local UIBlox = require(Parent.UIBlox)
local ErrorStateEnum = require(CancelSubscriptionApp.Enums.ErrorStateEnum)
local tbl_6_upvr = {
	[ErrorStateEnum.Expiring] = "CoreScripts.CancelUserSubscriptionPrompt.ExpiringPrompt.Heading";
	[ErrorStateEnum.Unsubscribed] = "CoreScripts.CancelUserSubscriptionPrompt.UnsubscribedPrompt.Heading";
	[ErrorStateEnum.ErrorCancelling] = "CoreScripts.CancelUserSubscriptionPrompt.ErrorCancellingPrompt.Heading";
}
local tbl_3_upvr = {
	[ErrorStateEnum.Expiring] = "CoreScripts.CancelUserSubscriptionPrompt.ExpiringPrompt.Body";
	[ErrorStateEnum.Unsubscribed] = "CoreScripts.CancelUserSubscriptionPrompt.UnsubscribedPrompt.Body";
	[ErrorStateEnum.ErrorCancelling] = "CoreScripts.CancelUserSubscriptionPrompt.ErrorCancellingPrompt.Body";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local icons_status_error_large_upvr = UIBlox.App.ImageSet.Images["icons/status/error_large"]
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local useScreenSize_upvr = require(Parent.EconomyCommonCoreScriptHooks).useScreenSize
return function(arg1) -- Line 30, Named "CancelUserSubscriptionErrorPrompt"
	--[[ Upvalues[8]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: icons_status_error_large_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: useScreenSize_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr({
		heading = tbl_6_upvr[arg1.errorState];
		bodyText = tbl_3_upvr[arg1.errorState];
		buttonText = "CoreScripts.CancelUserSubscriptionPrompt.Error.ButtonText";
	})
	local module = {
		title = useLocalization_upvr_result1.heading;
		titleIcon = icons_status_error_large_upvr;
		bodyText = useLocalization_upvr_result1.bodyText;
	}
	local tbl_2 = {}
	local tbl_5 = {}
	local tbl_4 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl = {}
	local onDismiss = arg1.onDismiss
	if not onDismiss then
		function onDismiss() -- Line 46
		end
	end
	tbl.onActivated = onDismiss
	tbl.text = useLocalization_upvr_result1.buttonText
	tbl.delayInputSeconds = 0.75
	tbl[React_upvr.Tag] = "data-testid=CancelSubscriptionApp_OkButton"
	tbl_4.props = tbl
	tbl_4.isDefaultChild = true
	tbl_5[1] = tbl_4
	tbl_2.buttons = tbl_5
	module.buttonStackInfo = tbl_2
	module.position = UDim2.fromScale(0.5, 0.5)
	module.screenSize = useScreenSize_upvr()
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end