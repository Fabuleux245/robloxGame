-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:21
-- Luau version 6, Types version 3
-- Time taken: 0.003081 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useState_upvr = React_upvr.useState
local useEffect_upvr = React_upvr.useEffect
local useCallback_upvr = React_upvr.useCallback
local DeleteWarningModalClosed_upvr = require(Parent_2.Actions.DeleteWarningModalClosed)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local recordDeleteWarningModalOptOut_upvr = require(Parent_2.Utils.recordDeleteWarningModalOptOut)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
return function(arg1) -- Line 35
	--[[ Upvalues[17]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useAnalytics_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: useState_upvr (readonly)
		[9]: useEffect_upvr (readonly)
		[10]: useCallback_upvr (readonly)
		[11]: DeleteWarningModalClosed_upvr (readonly)
		[12]: EventNames_upvr (readonly)
		[13]: recordDeleteWarningModalOptOut_upvr (readonly)
		[14]: React_upvr (readonly)
		[15]: InteractiveAlert_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
		[17]: Checkbox_upvr (readonly)
	]]
	local var9_result1_upvr = useAnalytics_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		alertBody = "Feature.Captures.Label.DeleteCaptureInfo";
		alertBodyPlural = "Feature.Captures.Label.DeleteCapturesWarning";
		alertTitle = "Feature.Captures.Title.DeleteCaptureWarning";
		alertTitlePlural = "Feature.Captures.Title.DeleteMultipleCapturesWarning";
		cancelCTA = "Feature.Captures.Action.DeleteCaptureWarningCancel";
		deleteCTA = "Feature.Captures.Action.DeleteCaptureWarningConfirm";
		optOutText = "Feature.Captures.Label.DeleteCaptureWarningOptOut";
	})
	local Theme = useStyle_upvr().Theme
	local var12_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 54
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Carousel.IsDeleteWarningModalOpen
	end)
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_3) -- Line 58
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].CaptureManager.SelectedCaptures
	end)
	local useState_upvr_result1_upvr, var14_result2_upvr = useState_upvr(false)
	useEffect_upvr(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: var12_result1_upvr (readonly)
			[2]: var14_result2_upvr (readonly)
		]]
		if var12_result1_upvr then
			var14_result2_upvr(false)
		end
	end, {var12_result1_upvr, var14_result2_upvr})
	local module = {}
	local tbl = {}
	local middleContent
	if 1 < #useSelector_upvr_result1 then
		middleContent = useLocalization_upvr_result1_upvr.alertBodyPlural
	else
		middleContent = useLocalization_upvr_result1_upvr.alertBody
	end
	tbl.bodyText = middleContent
	middleContent = {}
	middleContent.buttons = {{
		buttonType = ButtonType_upvr.Secondary;
		props = {
			onActivated = useCallback_upvr(function() -- Line 70
				--[[ Upvalues[4]:
					[1]: useDispatch_upvr_result1_upvr (readonly)
					[2]: DeleteWarningModalClosed_upvr (copied, readonly)
					[3]: var9_result1_upvr (readonly)
					[4]: EventNames_upvr (copied, readonly)
				]]
				useDispatch_upvr_result1_upvr(DeleteWarningModalClosed_upvr())
				var9_result1_upvr.fireEvent(EventNames_upvr.CapturesDeleteWarningModalCancelPressed)
			end, {});
			text = useLocalization_upvr_result1_upvr.cancelCTA;
		};
	}, {
		buttonType = ButtonType_upvr.PrimarySystem;
		props = {
			onActivated = useCallback_upvr(function() -- Line 75
				--[[ Upvalues[7]:
					[1]: arg1 (readonly)
					[2]: useState_upvr_result1_upvr (readonly)
					[3]: recordDeleteWarningModalOptOut_upvr (copied, readonly)
					[4]: var9_result1_upvr (readonly)
					[5]: EventNames_upvr (copied, readonly)
					[6]: useDispatch_upvr_result1_upvr (readonly)
					[7]: DeleteWarningModalClosed_upvr (copied, readonly)
				]]
				arg1.deleteItem()
				if useState_upvr_result1_upvr then
					recordDeleteWarningModalOptOut_upvr(var9_result1_upvr)
				end
				var9_result1_upvr.fireEvent(EventNames_upvr.CapturesDeleteWarningModalDeletePressed)
				useDispatch_upvr_result1_upvr(DeleteWarningModalClosed_upvr())
			end, {var9_result1_upvr, useState_upvr_result1_upvr, arg1.deleteItem});
			text = useLocalization_upvr_result1_upvr.deleteCTA;
		};
	}}
	tbl.buttonStackInfo = middleContent
	middleContent = false
	tbl.isMiddleContentFocusable = middleContent
	function middleContent() -- Line 116
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: Checkbox_upvr (copied, readonly)
			[3]: useLocalization_upvr_result1_upvr (readonly)
			[4]: useState_upvr_result1_upvr (readonly)
			[5]: var14_result2_upvr (readonly)
		]]
		return React_upvr.createElement(Checkbox_upvr, {
			text = useLocalization_upvr_result1_upvr.optOutText;
			isSelected = useState_upvr_result1_upvr;
			isDisabled = false;
			onActivated = function() -- Line 121, Named "onActivated"
				--[[ Upvalues[2]:
					[1]: var14_result2_upvr (copied, readonly)
					[2]: useState_upvr_result1_upvr (copied, readonly)
				]]
				var14_result2_upvr(not useState_upvr_result1_upvr)
			end;
		})
	end
	tbl.middleContent = middleContent
	middleContent = UDim2.fromScale(0.5, 0.5)
	tbl.position = middleContent
	tbl.screenSize = useScreenSize_upvr()
	if 1 < #useSelector_upvr_result1 then
		middleContent = useLocalization_upvr_result1_upvr.alertTitlePlural
	else
		middleContent = useLocalization_upvr_result1_upvr.alertTitle
	end
	tbl.title = middleContent
	module.Alert = React_upvr.createElement(InteractiveAlert_upvr, tbl)
	return React_upvr.createElement("TextButton", {
		Active = true;
		AutoButtonColor = false;
		BackgroundColor3 = Theme.Overlay.Color;
		BackgroundTransparency = Theme.Overlay.Transparency;
		Size = UDim2.fromScale(1, 1);
		Visible = var12_result1_upvr;
		ZIndex = arg1.zIndex;
	}, module)
end