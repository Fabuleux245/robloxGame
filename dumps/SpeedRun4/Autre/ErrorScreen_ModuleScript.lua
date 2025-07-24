-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:08
-- Luau version 6, Types version 3
-- Time taken: 0.002362 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local function selectScreenSize_upvr(arg1) -- Line 19, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local AnalyticsService_upvr = require(AmpUpsell.Analytics.AnalyticsService)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local sendButtonClickEvent_upvr = require(AmpUpsell.Analytics.sendButtonClickEvent)
return function(arg1) -- Line 23, Named "ErrorScreen"
	--[[ Upvalues[8]:
		[1]: useLocalization_upvr (readonly)
		[2]: AnalyticsService_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: selectScreenSize_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: InteractiveAlert_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: sendButtonClickEvent_upvr (readonly)
	]]
	local featureName_upvr = arg1.featureName
	local tbl_7_upvr = {
		title = "Amp.ErrorScreen.Title";
		bodyText = "Amp.ErrorScreen.BodyText";
		buttonRetry = "Amp.ErrorScreen.Retry";
		buttonCancel = "Amp.ErrorScreen.Cancel";
	}
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl_7_upvr)
	if arg1.analyticsService then
		tbl_7_upvr = arg1.analyticsService
	else
		tbl_7_upvr = AnalyticsService_upvr.EventStream
	end
	local module = {
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		title = useLocalization_upvr_result1.title;
		bodyText = useLocalization_upvr_result1.bodyText;
	}
	local tbl_5 = {}
	local tbl_2 = {}
	local tbl_6 = {
		buttonType = ButtonType_upvr.Secondary;
	}
	local tbl_4 = {
		isDisabled = false;
	}
	local onCancel_upvr = arg1.onCancel
	local function onActivated() -- Line 48
		--[[ Upvalues[4]:
			[1]: sendButtonClickEvent_upvr (copied, readonly)
			[2]: tbl_7_upvr (readonly)
			[3]: featureName_upvr (readonly)
			[4]: onCancel_upvr (readonly)
		]]
		sendButtonClickEvent_upvr(tbl_7_upvr, "AmpErrorScreen", featureName_upvr, "Cancel")
		onCancel_upvr()
	end
	tbl_4.onActivated = onActivated
	tbl_4.text = useLocalization_upvr_result1.buttonCancel
	tbl_6.props = tbl_4
	local tbl_3 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl = {
		isDisabled = false;
	}
	local onRetry_upvr = arg1.onRetry
	function tbl.onActivated() -- Line 59
		--[[ Upvalues[4]:
			[1]: sendButtonClickEvent_upvr (copied, readonly)
			[2]: tbl_7_upvr (readonly)
			[3]: featureName_upvr (readonly)
			[4]: onRetry_upvr (readonly)
		]]
		sendButtonClickEvent_upvr(tbl_7_upvr, "AmpErrorScreen", featureName_upvr, "Retry")
		onRetry_upvr()
	end
	tbl.text = useLocalization_upvr_result1.buttonRetry
	tbl_3.props = tbl
	tbl_2[1] = tbl_6
	tbl_2[2] = tbl_3
	tbl_5.buttons = tbl_2
	module.buttonStackInfo = tbl_5
	return React_upvr.createElement(InteractiveAlert_upvr, module)
end