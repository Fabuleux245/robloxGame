-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:47
-- Luau version 6, Types version 3
-- Time taken: 0.003411 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local FocusNavigationUtils = require(Parent.FocusNavigationUtils)
local ToastRodux_upvr = require(Parent.ToastRodux)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function getButtonStackProps_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 32, Named "getButtonStackProps"
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	local tbl_6 = {}
	local tbl_2 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_3 = {}
	tbl_3.onActivated = arg3
	tbl_3.text = arg1
	tbl_2.props = tbl_3
	tbl_6[1] = tbl_2
	if arg4 and arg4 ~= "" then
		local tbl = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl_4 = {}
		tbl_4.onActivated = arg5
		tbl_4.text = arg4
		tbl.props = tbl_4
		table.insert(tbl_6, 1, tbl)
	end
	local module_2 = {}
	module_2.buttonHeight = arg2
	module_2.buttons = tbl_6
	return module_2
end
local Cryo_upvr = require(Parent.Cryo)
local tbl_5_upvr = {}
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useRef_upvr = React_upvr.useRef
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local PostUserOptIn_upvr = require(Parent.VoiceChat).PostUserOptIn
local PostUpsellTrialOptIn_upvr = require(PhoneUpsell.Http.Requests.PostUpsellTrialOptIn)
local SetCurrentToastMessage_upvr = ToastRodux_upvr.Actions.SetCurrentToastMessage
local Images_upvr = UIBlox.App.ImageSet.Images
local FocusNavigableSurfaceWrapper_upvr = FocusNavigationUtils.FocusNavigableSurfaceWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
return function(arg1) -- Line 64, Named "VoiceTrialUpsell"
	--[[ Upvalues[18]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useRef_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: useRoactService_upvr (readonly)
		[8]: RoactNetworking_upvr (readonly)
		[9]: PostUserOptIn_upvr (readonly)
		[10]: PostUpsellTrialOptIn_upvr (readonly)
		[11]: SetCurrentToastMessage_upvr (readonly)
		[12]: ToastRodux_upvr (readonly)
		[13]: Images_upvr (readonly)
		[14]: React_upvr (readonly)
		[15]: FocusNavigableSurfaceWrapper_upvr (readonly)
		[16]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[17]: InteractiveAlert_upvr (readonly)
		[18]: getButtonStackProps_upvr (readonly)
	]]
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_5_upvr, arg1)
	local useRef_upvr_result1 = useRef_upvr(nil)
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local var19_result1_upvr = useLocalization_upvr({
		titleKey = "Feature.VerificationUpsell.Heading.TryVoiceChat";
		descriptionKey = "Feature.VerificationUpsell.Description.VoiceLegalConsent2";
		buttonKey = "Feature.VerificationUpsell.Action.TurnOn";
		extraButtonKey = "Feature.VerificationUpsell.Action.NotNow.2";
	})
	local var20_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local var16_result1_upvr = useDispatch_upvr()
	local module = {}
	local tbl_7 = {
		title = var19_result1_upvr.titleKey;
	}
	local middleContent
	if useRef_upvr_result1 and useRef_upvr_result1.current then
		middleContent = useRef_upvr_result1.current.AbsoluteSize
	else
		middleContent = Vector2.new(500, 500)
	end
	tbl_7.screenSize = middleContent
	middleContent = getButtonStackProps_upvr(var19_result1_upvr.buttonKey, useStyle_upvr_result1_upvr.Tokens.Global.Size_600, function() -- Line 81, Named "handleTurnOn"
		--[[ Upvalues[9]:
			[1]: any_union_result1_upvr (readonly)
			[2]: PostUserOptIn_upvr (copied, readonly)
			[3]: var20_result1_upvr (readonly)
			[4]: PostUpsellTrialOptIn_upvr (copied, readonly)
			[5]: var16_result1_upvr (readonly)
			[6]: SetCurrentToastMessage_upvr (copied, readonly)
			[7]: ToastRodux_upvr (copied, readonly)
			[8]: Images_upvr (copied, readonly)
			[9]: useStyle_upvr_result1_upvr (readonly)
		]]
		any_union_result1_upvr.onClose()
		PostUserOptIn_upvr(var20_result1_upvr, true, false):andThen(function(arg1_2) -- Line 84
			--[[ Upvalues[3]:
				[1]: PostUpsellTrialOptIn_upvr (copied, readonly)
				[2]: var20_result1_upvr (copied, readonly)
				[3]: any_union_result1_upvr (copied, readonly)
			]]
			return PostUpsellTrialOptIn_upvr(var20_result1_upvr, any_union_result1_upvr.upsellCardType)
		end):andThen(function() -- Line 87
			--[[ Upvalues[6]:
				[1]: var16_result1_upvr (copied, readonly)
				[2]: SetCurrentToastMessage_upvr (copied, readonly)
				[3]: ToastRodux_upvr (copied, readonly)
				[4]: Images_upvr (copied, readonly)
				[5]: useStyle_upvr_result1_upvr (copied, readonly)
				[6]: any_union_result1_upvr (copied, readonly)
			]]
			var16_result1_upvr(SetCurrentToastMessage_upvr({
				toastMessage = "Feature.VerificationUpsell.Heading.VoiceChatTurnedOn";
				isLocalized = false;
				toastType = ToastRodux_upvr.Enums.ToastType.SuccessConfirmation;
				toastIcon = Images_upvr["icons/status/success_large"];
				toastIconColorStyle = {
					Color = useStyle_upvr_result1_upvr.Tokens.Global.Color.Green.Color3;
				};
				slideIn = true;
			}))
			any_union_result1_upvr.onCompletion()
		end):catch(function() -- Line 100
			--[[ Upvalues[4]:
				[1]: var16_result1_upvr (copied, readonly)
				[2]: SetCurrentToastMessage_upvr (copied, readonly)
				[3]: ToastRodux_upvr (copied, readonly)
				[4]: useStyle_upvr_result1_upvr (copied, readonly)
			]]
			var16_result1_upvr(SetCurrentToastMessage_upvr({
				toastMessage = "Feature.VerificationUpsell.Heading.VoiceChatJoinFailed";
				isLocalized = false;
				toastType = ToastRodux_upvr.Enums.ToastType.NetworkingError;
				toastIconColorStyle = {
					Color = useStyle_upvr_result1_upvr.Tokens.Global.Color.Red.Color3;
				};
				slideIn = true;
			}))
		end)
	end, var19_result1_upvr.extraButtonKey, any_union_result1_upvr.onClose)
	tbl_7.buttonStackInfo = middleContent
	middleContent = any_union_result1_upvr.onClose
	tbl_7.onCloseClicked = middleContent
	local BaseSize_upvr = useStyle_upvr_result1_upvr.Font.BaseSize
	function middleContent() -- Line 132
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: var19_result1_upvr (readonly)
			[3]: BaseSize_upvr (readonly)
			[4]: useStyle_upvr_result1_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
		}, {
			BodyText = React_upvr.createElement("TextLabel", {
				LayoutOrder = 0;
				BackgroundTransparency = 1;
				Text = var19_result1_upvr.descriptionKey;
				TextSize = BaseSize_upvr;
				TextColor3 = useStyle_upvr_result1_upvr.Theme.TextDefault.Color;
				TextTransparency = useStyle_upvr_result1_upvr.Theme.TextDefault.Transparency;
				Font = useStyle_upvr_result1_upvr.Font.Body.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				RichText = true;
			});
		})
	end
	tbl_7.middleContent = middleContent
	module.Modal = React_upvr.createElement(InteractiveAlert_upvr, tbl_7)
	return React_upvr.createElement(FocusNavigableSurfaceWrapper_upvr, {
		surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.PopUp;
		isIsolated = true;
		frameProps = {
			ref = useRef_upvr_result1;
		};
	}, module)
end