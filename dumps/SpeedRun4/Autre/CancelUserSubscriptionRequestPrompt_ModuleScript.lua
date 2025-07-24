-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:18
-- Luau version 6, Types version 3
-- Time taken: 0.002048 seconds

local Parent = script:FindFirstAncestor("CancelSubscriptionApp").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_3_upvr = {
	heading = "CoreScripts.CancelUserSubscriptionPrompt.RequestPrompt.Heading";
	bodyText = "CoreScripts.CancelUserSubscriptionPrompt.RequestPrompt.Body";
	noButtonText = "CoreScripts.CancelUserSubscriptionPrompt.RequestPrompt.DontCancelButton";
	yesButtonText = "CoreScripts.CancelUserSubscriptionPrompt.RequestPrompt.YesCancelButton";
}
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local useScreenSize_upvr = require(Parent.EconomyCommonCoreScriptHooks).useScreenSize
return function(arg1) -- Line 24, Named "CancelUserSubscriptionRequestPrompt"
	--[[ Upvalues[6]:
		[1]: useLocalization_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: ButtonType_upvr (readonly)
		[6]: useScreenSize_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl_3_upvr)
	local module = {
		title = useLocalization_upvr_result1.heading;
		bodyText = useLocalization_upvr_result1.bodyText:gsub("{date}", arg1.expirationDate);
	}
	local tbl = {
		forcedFillDirection = Enum.FillDirection.Horizontal;
	}
	local tbl_7 = {}
	local tbl_2 = {}
	local tbl_5 = {}
	local onCancel = arg1.onCancel
	if not onCancel then
		function onCancel() -- Line 35
		end
	end
	tbl_5.onActivated = onCancel
	tbl_5.text = useLocalization_upvr_result1.noButtonText
	tbl_5.delayInputSeconds = 0.75
	tbl_5[React_upvr.Tag] = "data-testid=CancelSubscriptionApp_DontCancelButton"
	tbl_2.props = tbl_5
	tbl_2.isDefaultChild = true
	local tbl_6 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_4 = {}
	local onConfirm = arg1.onConfirm
	if not onConfirm then
		function onConfirm() -- Line 45
		end
	end
	tbl_4.onActivated = onConfirm
	tbl_4.text = useLocalization_upvr_result1.yesButtonText
	tbl_4.delayInputSeconds = 0.75
	tbl_4[React_upvr.Tag] = "data-testid=CancelSubscriptionApp_YesCancelButton"
	tbl_6.props = tbl_4
	tbl_6.isDefaultChild = false
	tbl_7[1] = tbl_2
	tbl_7[2] = tbl_6
	tbl.buttons = tbl_7
	module.buttonStackInfo = tbl
	module.position = UDim2.fromScale(0.5, 0.5)
	module.screenSize = useScreenSize_upvr()
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end