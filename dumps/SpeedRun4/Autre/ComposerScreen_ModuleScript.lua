-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:25
-- Luau version 6, Types version 3
-- Time taken: 0.014913 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Foundation_upvr = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
game:DefineFastInt("OnPlatformSharingPostCharLimit", 140)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDeviceInsets_upvr = require(Parent.AppCommonResponsive).useDeviceInsets
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useOnScreenKeyboardVisible_upvr = require(Parent_2.Hooks.useOnScreenKeyboardVisible)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useState_upvr = React_upvr.useState
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local CaptureType_upvr = require(Parent_2.Enums.CaptureType)
local useCallback_upvr = React_upvr.useCallback
local ComposerClosed_upvr = require(Parent_2.Actions.ComposerClosed)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local CreatePost_upvr = require(Parent_2.Thunks.CreatePost)
local getCaptureUploadData_upvr = require(Parent_2.Utils.getCaptureUploadData)
local vector2_upvr = Vector2.new(700, 500)
local View_upvr = Foundation_upvr.View
local Icon_upvr = Foundation_upvr.Icon
local Image_upvr = Foundation_upvr.Image
local Text_upvr = Foundation_upvr.Text
local ComposerTextbox_upvr = require(Parent_2.Components.Composer.ComposerTextbox)
local Button_upvr = Foundation_upvr.Button
local ButtonVariant_upvr = Foundation_upvr.Enums.ButtonVariant
local ButtonSize_upvr = Foundation_upvr.Enums.ButtonSize
return function(arg1) -- Line 46
	--[[ Upvalues[29]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDeviceInsets_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useOnScreenKeyboardVisible_upvr (readonly)
		[5]: useTokens_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: useLocalization_upvr (readonly)
		[9]: useState_upvr (readonly)
		[10]: useScreenSize_upvr (readonly)
		[11]: React_upvr (readonly)
		[12]: CaptureType_upvr (readonly)
		[13]: useCallback_upvr (readonly)
		[14]: ComposerClosed_upvr (readonly)
		[15]: EventNames_upvr (readonly)
		[16]: RbxAnalyticsService_upvr (readonly)
		[17]: ContextActionService_upvr (readonly)
		[18]: CreatePost_upvr (readonly)
		[19]: getCaptureUploadData_upvr (readonly)
		[20]: vector2_upvr (readonly)
		[21]: View_upvr (readonly)
		[22]: Foundation_upvr (readonly)
		[23]: Icon_upvr (readonly)
		[24]: Image_upvr (readonly)
		[25]: Text_upvr (readonly)
		[26]: ComposerTextbox_upvr (readonly)
		[27]: Button_upvr (readonly)
		[28]: ButtonVariant_upvr (readonly)
		[29]: ButtonSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7_result1_upvr = useAnalytics_upvr()
	local var8_result1 = useDeviceInsets_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useTokens_upvr_result1 = useTokens_upvr()
	local useSelector_upvr_result1_upvr_2 = useSelector_upvr(function(arg1_2) -- Line 55
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].Composer.IsOpen
	end)
	local useSelector_upvr_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 59
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_3[Constants_upvr.RoduxKey].Composer.Capture
	end)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		disclaimerLabel = "Feature.Captures.Label.PostDisclaimer";
		disclaimerTitle = "Feature.Captures.Title.PostDisclaimer";
		postAction = "Feature.Captures.Action.Post";
		postLabel = "Feature.Captures.Label.Post";
	})
	local useState_upvr_result1_upvr, var15_result2_upvr_3 = useState_upvr("")
	local var15_result1_2_upvr, var15_result2_upvr = useState_upvr("")
	local var15_result1, var15_result2_upvr_2 = useState_upvr(useScreenSize_upvr())
	React_upvr.useEffect(function() -- Line 75
		--[[ Upvalues[5]:
			[1]: useSelector_upvr_result1_upvr (readonly)
			[2]: CaptureType_upvr (copied, readonly)
			[3]: useState_upvr_result1_upvr (readonly)
			[4]: var15_result2_upvr (readonly)
			[5]: var15_result2_upvr_3 (readonly)
		]]
		local var51 = useSelector_upvr_result1_upvr
		if var51 then
			if useSelector_upvr_result1_upvr.type == CaptureType_upvr.Video then
				var51 = useSelector_upvr_result1_upvr.thumbnailKey
			else
				var51 = useSelector_upvr_result1_upvr.contentId
			end
			if var51 ~= useState_upvr_result1_upvr then
				var15_result2_upvr("")
				var15_result2_upvr_3(var51)
			end
		end
	end, {useSelector_upvr_result1_upvr})
	local useCallback_upvr_result1 = useCallback_upvr(function() -- Line 86
		--[[ Upvalues[5]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ComposerClosed_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(ComposerClosed_upvr())
		var7_result1_upvr.fireEvent(EventNames_upvr.ComposerBackButtonActivated, {
			sessionId = RbxAnalyticsService_upvr:GetSessionId();
		})
	end, {})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 93
		--[[ Upvalues[5]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ComposerClosed_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(ComposerClosed_upvr())
		var7_result1_upvr.fireEvent(EventNames_upvr.ComposerCloseShortcutPressed, {
			sessionId = RbxAnalyticsService_upvr:GetSessionId();
		})
	end, {})
	React_upvr.useEffect(function() -- Line 100
		--[[ Upvalues[3]:
			[1]: useSelector_upvr_result1_upvr_2 (readonly)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		if not useSelector_upvr_result1_upvr_2 then return end
		ContextActionService_upvr:BindCoreAction("ComposerCloseShortcutAction", function(arg1_4, arg2) -- Line 105
			--[[ Upvalues[1]:
				[1]: any_useCallback_result1_upvr (copied, readonly)
			]]
			if arg2 == Enum.UserInputState.End then
				any_useCallback_result1_upvr()
				return Enum.ContextActionResult.Sink
			end
			return Enum.ContextActionResult.Pass
		end, false, Enum.KeyCode.Escape)
		return function() -- Line 113
			--[[ Upvalues[1]:
				[1]: ContextActionService_upvr (copied, readonly)
			]]
			ContextActionService_upvr:UnbindCoreAction("ComposerCloseShortcutAction")
		end
	end, {useSelector_upvr_result1_upvr_2, any_useCallback_result1_upvr})
	local var69
	if not useSelector_upvr_result1_upvr_2 then
		return nil
	end
	local var70 = false
	var69 = var15_result1.X
	if vector2_upvr.X < var69 then
		var69 = var15_result1.Y
		if vector2_upvr.Y >= var69 then
			var70 = false
		else
			var70 = true
		end
	end
	var69 = true
	if var15_result1.Y >= var15_result1.X then
		var69 = var70
	end
	local var71
	if useOnScreenKeyboardVisible_upvr() then
	end
	local module = {}
	local tbl_18 = {}
	local function onActivated() -- Line 149
	end
	tbl_18.onActivated = onActivated
	if var70 then
		onActivated = UDim2.new(0, math.min(var15_result1.X, vector2_upvr.X), 0, math.min(var15_result1.Y, vector2_upvr.Y))
	else
		onActivated = UDim2.new(1, 0, 1, 0)
	end
	tbl_18.Size = onActivated
	tbl_18.stateLayer = {
		affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
	}
	tbl_18.tag = {
		["anchor-center-center bg-surface-200 position-center-center"] = true;
		["radius-large"] = var70;
	}
	local tbl_17 = {}
	local tbl_13 = {}
	local tbl_11 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, math.max(var8_result1.top, useTokens_upvr_result1.Padding.Large));
			PaddingRight = UDim.new(0, useTokens_upvr_result1.Padding.Large);
			PaddingBottom = UDim.new(0, useTokens_upvr_result1.Padding.Large);
			PaddingLeft = UDim.new(0, math.max(var8_result1.left, useTokens_upvr_result1.Padding.Large));
		});
	}
	local tbl_16 = {}
	local tbl_5 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local Small = Foundation_upvr.Enums.IconSize.Small
	tbl_5.IconSize = Small
	if var70 then
		Small = "icons/navigation/close"
	else
		Small = "icons/actions/cycleLeft"
	end
	tbl_5.name = Small
	tbl_5.Position = UDim2.fromScale(0.5, 0.5)
	tbl_5.style = useTokens_upvr_result1.Color.ActionEmphasis.Foreground
	tbl_5.ZIndex = 2
	tbl_16.BackIcon = React_upvr.createElement(Icon_upvr, tbl_5)
	tbl_11.BackButton = React_upvr.createElement(View_upvr, {
		onActivated = useCallback_upvr_result1;
		tag = {
			["auto-xy bg-over-media-300 padding-medium radius-circle"] = true;
		};
	}, tbl_16)
	tbl_13.BackButtonContainer = React_upvr.createElement(View_upvr, {
		tag = "auto-xy bg-action-subtle";
		ZIndex = 2;
	}, tbl_11)
	local tbl_14 = {}
	if var69 then
		if var70 then
		else
		end
	else
	end
	tbl_14.Size = UDim2.new(1, 0, 0.6, 0)
	tbl_14.tag = {
		["bg-surface-100 clip"] = true;
		["padding-right-large radius-large"] = var70;
	}
	tbl_14.ZIndex = 1
	local tbl_15 = {}
	local tbl_12 = {}
	local tbl_8 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local var96 = 1
	tbl_8.BackgroundTransparency = var96
	if useSelector_upvr_result1_upvr.type == CaptureType_upvr.Video then
		var96 = useSelector_upvr_result1_upvr.thumbnailKey
	else
		var96 = useSelector_upvr_result1_upvr.contentId
	end
	tbl_8.Image = var96
	tbl_8.Position = UDim2.fromScale(0.5, 0.5)
	tbl_8.ScaleType = Enum.ScaleType.Fit
	tbl_8.Size = UDim2.new(1, 0, 1, 0)
	tbl_8.ZIndex = 1
	tbl_12.CapturePreview = React_upvr.createElement(Image_upvr, tbl_8)
	tbl_15.CapturePreviewFrame = React_upvr.createElement(View_upvr, {
		LayoutOrder = 2;
		tag = "anchor-center-center bg-action-subtle position-center-center size-full-full";
	}, tbl_12)
	tbl_13.CaptureContainer = React_upvr.createElement(View_upvr, tbl_14, tbl_15)
	local tbl_10 = {}
	if var69 then
		-- KONSTANTWARNING: GOTO [541] #392
	end
	tbl_10.Size = UDim2.new(1, 0, 0.4, 0)
	tbl_10.tag = {
		["align-x-left align-y-top bg-surface-200 col gap-large"] = true;
		["anchor-bottom-left position-bottom-left"] = not var69;
		["anchor-top-right position-top-right"] = var69;
	}
	tbl_10.ZIndex = 2
	local tbl_7 = {}
	local tbl_2 = {
		PaddingBottom = UDim.new(0, math.max(var8_result1.bottom, useTokens_upvr_result1.Padding.Large));
		PaddingLeft = UDim.new(0, useTokens_upvr_result1.Padding.XXLarge);
	}
	local var101
	if var69 and var70 then
		var101 = 0
	else
		var101 = math.max(var8_result1.right, useTokens_upvr_result1.Padding.Large)
	end
	tbl_2.PaddingRight = UDim.new(0, var101)
	var101 = useTokens_upvr_result1.Padding.Large
	tbl_2.PaddingTop = UDim.new(0, var101)
	tbl_7.UIPadding = React_upvr.createElement("UIPadding", tbl_2)
	tbl_7.Title = React_upvr.createElement(Text_upvr, {
		LayoutOrder = 1;
		tag = "content-action-emphasis text-align-x-left text-align-y-top text-heading-small size-full-0 auto-y";
		Text = useLocalization_upvr_result1.postLabel;
	})
	tbl_7.TextBoxFrame = React_upvr.createElement(ComposerTextbox_upvr, {
		charLimit = game:GetFastInt("OnPlatformSharingPostCharLimit");
		inputText = var15_result1_2_upvr;
		setInputText = var15_result2_upvr;
		isHorizontal = var69;
	})
	local tbl_9 = {
		LayoutOrder = 3;
	}
	var101 = 0
	tbl_9.Size = UDim2.new(1, var101, 0, 0)
	tbl_9.tag = "align-x-left align-y-center auto-y anchor-bottom-center bg-action-subtle gap-large position-bottom-center row"
	local tbl_6 = {}
	var101 = React_upvr
	var101 = Icon_upvr
	tbl_6.PublicIcon = var101.createElement(var101, {
		name = "icons/status/public";
		layoutOrder = 1;
		size = Foundation_upvr.Enums.IconSize.Small;
	})
	var101 = React_upvr
	var101 = View_upvr
	tbl_6.DisclaimerText = var101.createElement(var101, {
		LayoutOrder = 2;
		tag = "align-x-left align-y-center auto-xy col gap-xsmall shrink";
	}, {
		InfoLabel = React_upvr.createElement(Text_upvr, {
			tag = "content-action-emphasis auto-xy bg-action-subtle text-align-x-left text-label-small";
			LayoutOrder = 1;
			Text = useLocalization_upvr_result1.disclaimerTitle;
			TextWrapped = true;
		});
		WarningLabel = React_upvr.createElement(Text_upvr, {
			tag = "auto-xy bg-action-subtle text-align-x-left text-caption-large";
			LayoutOrder = 2;
			Text = useLocalization_upvr_result1.disclaimerLabel;
			TextWrapped = true;
		});
	})
	local any_createElement_result1 = React_upvr.createElement(View_upvr, tbl_9, tbl_6)
	tbl_7.Disclaimer = any_createElement_result1
	if not not var69 then
		any_createElement_result1 = React_upvr.createElement
		local tbl_4 = {
			LayoutOrder = 4;
		}
		var101 = 0
		tbl_4.Size = UDim2.new(1, var101, 0, 0)
		tbl_4.tag = "align-x-center align-y-bottom auto-y anchor-bottom-center bg-action-subtle position-bottom-center row"
		local tbl_3 = {}
		var101 = React_upvr
		var101 = Button_upvr
		tbl_3.PostButton = var101.createElement(var101, {
			fillBehavior = Foundation_upvr.Enums.FillBehavior.Fill;
			text = useLocalization_upvr_result1.postAction;
			variant = ButtonVariant_upvr.SubEmphasis;
			onActivated = useCallback_upvr(function() -- Line 118
				--[[ Upvalues[9]:
					[1]: var15_result1_2_upvr (readonly)
					[2]: useDispatch_upvr_result1_upvr (readonly)
					[3]: CreatePost_upvr (copied, readonly)
					[4]: useSelector_upvr_result1_upvr (readonly)
					[5]: var15_result2_upvr (readonly)
					[6]: getCaptureUploadData_upvr (copied, readonly)
					[7]: var7_result1_upvr (readonly)
					[8]: EventNames_upvr (copied, readonly)
					[9]: RbxAnalyticsService_upvr (copied, readonly)
				]]
				useDispatch_upvr_result1_upvr(CreatePost_upvr(useSelector_upvr_result1_upvr, string.gsub(var15_result1_2_upvr, '\n', ' ')))
				var15_result2_upvr("")
				local var24_result1 = getCaptureUploadData_upvr(useSelector_upvr_result1_upvr)
				local tbl = {}
				local any_GetSessionId_result1 = RbxAnalyticsService_upvr:GetSessionId()
				tbl.sessionId = any_GetSessionId_result1
				if var24_result1 then
					any_GetSessionId_result1 = var24_result1.context.experienceId
				else
					any_GetSessionId_result1 = nil
				end
				tbl.universeId = any_GetSessionId_result1
				var7_result1_upvr.fireEvent(EventNames_upvr.ComposerPostButtonActivated, tbl)
			end, {useSelector_upvr_result1_upvr, var15_result1_2_upvr});
			size = ButtonSize_upvr.Medium;
		})
		any_createElement_result1 = any_createElement_result1(View_upvr, tbl_4, tbl_3)
	else
		any_createElement_result1 = nil
	end
	tbl_7.BottomBar = any_createElement_result1
	tbl_13.CaptionContainer = React_upvr.createElement(View_upvr, tbl_10, tbl_7)
	tbl_17.ComposerContainer = React_upvr.createElement(View_upvr, {
		tag = {
			["anchor-center-center bg-action-subtle position-center-center size-full-full"] = true;
			["padding-right-xlarge"] = var70;
		};
	}, tbl_13)
	module.ComposerScreenContainer = React_upvr.createElement(View_upvr, tbl_18, tbl_17)
	return React_upvr.createElement(View_upvr, {
		onActivated = useCallback_upvr_result1;
		onAbsoluteSizeChanged = useCallback_upvr(function(arg1_5) -- Line 129
			--[[ Upvalues[1]:
				[1]: var15_result2_upvr_2 (readonly)
			]]
			var15_result2_upvr_2(arg1_5.AbsoluteSize)
		end, {});
		stateLayer = {
			affordance = Foundation_upvr.Enums.StateLayerAffordance.None;
		};
		tag = "size-full-full bg-over-media-0";
	}, module)
end