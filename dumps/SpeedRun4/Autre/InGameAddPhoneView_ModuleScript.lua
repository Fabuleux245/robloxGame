-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:30
-- Luau version 6, Types version 3
-- Time taken: 0.011456 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	alwaysShowLegalText = false;
	requireLegalTextCheckbox = false;
	buttonKey = "Feature.VerificationUpsell.Action.Next";
	legalTextKey = "Feature.VerificationUpsell.Description.ShortCodeLegalDisclaimerUA";
	prefix = '1';
}
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function getButtonStackProps_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 65, Named "getButtonStackProps"
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	local tbl_6 = {}
	local tbl_11 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_10 = {}
	tbl_10.onActivated = arg2
	tbl_10.text = arg1
	tbl_10.isDisabled = arg3
	tbl_11.props = tbl_10
	tbl_6[1] = tbl_11
	if arg4 and arg4 ~= "" then
		local tbl_7 = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl = {}
		tbl.onActivated = arg5
		tbl.text = arg4
		tbl.isDisabled = false
		tbl_7.props = tbl
		table.insert(tbl_6, 1, tbl_7)
	end
	return {
		buttonHeight = 48;
		buttons = tbl_6;
	}
end
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local Text_upvr = require(Parent.AppCommonLib).Text
local useExternalEvent_upvr = require(Parent.RoactUtils).Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
local Roact_upvr = require(Parent.Roact)
local CountryCodeButton_upvr = require(PhoneUpsell.Components.InGame.CountryCodeButton)
local GetFFlagAddMorePhoneUpsellEvents_upvr = require(Parent.SharedFlags).GetFFlagAddMorePhoneUpsellEvents
local TextField_upvr = UIBlox.App.Input.TextField
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local CountryCodeDropdownContainer_upvr = require(Parent.AuthCommon).Components.InGame.CountryCodeDropdownContainer
return function(arg1) -- Line 100, Named "InGameAddPhoneView"
	--[[ Upvalues[15]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Text_upvr (readonly)
		[7]: useExternalEvent_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: CountryCodeButton_upvr (readonly)
		[11]: GetFFlagAddMorePhoneUpsellEvents_upvr (readonly)
		[12]: TextField_upvr (readonly)
		[13]: InteractiveAlert_upvr (readonly)
		[14]: getButtonStackProps_upvr (readonly)
		[15]: CountryCodeDropdownContainer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local mergeProps_upvr_result1_upvr = mergeProps_upvr(tbl_upvr, arg1)
	local tbl_4 = {
		phoneNumberKey = "Feature.VerificationUpsell.Label.PhoneNumber";
		disclaimerKey = "Feature.VerificationUpsell.Description.VerificationCodeSmsFeesMayApply";
		termsOfUseKey = "Feature.VerificationUpsell.Action.TermsOfUse";
		privacyPolicyKey = "Feature.VerificationUpsell.Action.PrivacyPolicy";
		titleKey = mergeProps_upvr_result1_upvr.titleKey;
		descriptionKey = mergeProps_upvr_result1_upvr.descriptionKey;
		buttonKey = mergeProps_upvr_result1_upvr.buttonKey;
		legalTextKey = mergeProps_upvr_result1_upvr.legalTextKey;
	}
	local var27
	if mergeProps_upvr_result1_upvr.extraButtonKey and mergeProps_upvr_result1_upvr.extraButtonKey ~= "" then
		tbl_4.extraButtonKey = mergeProps_upvr_result1_upvr.extraButtonKey
	end
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local Tokens_upvr = useStyle_upvr_result1_upvr.Tokens
	local TextField = Tokens_upvr.Component.TextField
	local Font = TextField.Base.Field.Typography.Font
	local FontSize = TextField.Base.Field.Typography.FontSize
	local var14_result1_upvr = useLocalization_upvr(tbl_4)
	local Gap_upvr = Tokens_upvr.Component.StatWidget.Container.Gap
	local Size_600_upvr = Tokens_upvr.Global.Size_600
	local prefix = mergeProps_upvr_result1_upvr.countryCode.prefix
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(false)
	local maximum_upvr = math.max(Text_upvr.GetTextWidth(prefix, Font, FontSize) + 24, Size_600_upvr)
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(300)
	local any_useRef_result1 = React_upvr.useRef(nil)
	local any_useRef_result1_2 = React_upvr.useRef(nil)
	local any_useRef_result1_3 = React_upvr.useRef(nil)
	var27 = 0
	local vector2 = Vector2.new(var27, 0)
	var27 = Vector2.new(0, 0)
	if any_useRef_result1.current then
		vector2 = any_useRef_result1.current.AbsolutePosition
	end
	if any_useRef_result1_2.current then
		var27 = any_useRef_result1_2.current.AbsolutePosition
	end
	if any_useRef_result1_3.current then
		local AbsolutePosition_upvw = any_useRef_result1_3.current.AbsolutePosition
	end
	local minimum_upvw = math.min((mergeProps_upvr_result1_upvr.screenSize.Y) - (vector2.Y + Size_600_upvr + Gap_upvr - var27.Y) - Gap_upvr, 400)
	useExternalEvent_upvr(UserInputService_upvr.InputBegan, React_upvr.useCallback(function(arg1_3) -- Line 168
		--[[ Upvalues[8]:
			[1]: Size_600_upvr (readonly)
			[2]: Gap_upvr (readonly)
			[3]: AbsolutePosition_upvw (read and write)
			[4]: any_useState_result1_upvr (readonly)
			[5]: minimum_upvw (read and write)
			[6]: maximum_upvr (readonly)
			[7]: any_useState_result1_upvr_2 (readonly)
			[8]: any_useState_result2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var52 = Size_600_upvr + Gap_upvr
		local var53
		if AbsolutePosition_upvw.X < arg1_3.Position.X then
			var53 = false
			if arg1_3.Position.X < AbsolutePosition_upvw.X + any_useState_result1_upvr then
				var53 = false
				if AbsolutePosition_upvw.Y + var52 < arg1_3.Position.Y then
					if arg1_3.Position.Y >= AbsolutePosition_upvw.Y + var52 + minimum_upvw then
						var53 = false
					else
						var53 = true
					end
				end
			end
		end
		if AbsolutePosition_upvw.X < arg1_3.Position.X then
			if arg1_3.Position.X < AbsolutePosition_upvw.X + maximum_upvr then
				if AbsolutePosition_upvw.Y < arg1_3.Position.Y then
					if arg1_3.Position.Y >= AbsolutePosition_upvw.Y + Size_600_upvr then
					else
					end
				end
			end
		end
		if any_useState_result1_upvr_2 and not var53 and not true then
			any_useState_result2_upvr(false)
		end
	end, {any_useState_result1_upvr_2, AbsolutePosition_upvw, any_useState_result1_upvr, maximum_upvr, Size_600_upvr}))
	local errorMessage = mergeProps_upvr_result1_upvr.errorMessage
	if errorMessage then
		if mergeProps_upvr_result1_upvr.errorMessage == "" then
			errorMessage = false
		else
			errorMessage = true
		end
	end
	local tbl_8 = {
		ListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			FillDirection = Enum.FillDirection.Vertical;
			Padding = UDim.new(0, Tokens_upvr.Global.Space_100);
		});
	}
	local tbl_3 = {
		ListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = UDim.new(0, Gap_upvr);
		});
		CountryCodeButton = React_upvr.createElement(CountryCodeButton_upvr, {
			countryPrefix = '+'..prefix;
			onButtonClick = function() -- Line 221, Named "onButtonClick"
				--[[ Upvalues[4]:
					[1]: any_useState_result2_upvr (readonly)
					[2]: any_useState_result1_upvr_2 (readonly)
					[3]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
					[4]: mergeProps_upvr_result1_upvr (readonly)
				]]
				any_useState_result2_upvr(not any_useState_result1_upvr_2)
				if GetFFlagAddMorePhoneUpsellEvents_upvr then
					mergeProps_upvr_result1_upvr.onCountryCodeSelectorClick()
				end
			end;
			size = UDim2.new(0, maximum_upvr, 0, Tokens_upvr.Global.Size_600);
			layoutOrder = 1;
			font = Font;
			textSize = FontSize;
			forwardRef = any_useRef_result1_3;
			error = errorMessage;
		});
	}
	local tbl_2 = {
		text = mergeProps_upvr_result1_upvr.phoneNumber;
		placeholder = "";
		required = true;
		onChange = function(arg1_4) -- Line 238, Named "onChange"
			--[[ Upvalues[1]:
				[1]: mergeProps_upvr_result1_upvr (readonly)
			]]
			local tbl_9 = {}
			tbl_9.Text = arg1_4
			mergeProps_upvr_result1_upvr.onPhoneNumberTextChange(tbl_9)
		end;
		LayoutOrder = 2;
		width = UDim.new(1, -(maximum_upvr + Gap_upvr));
		error = errorMessage;
	}
	if mergeProps_upvr_result1_upvr.usePhoneNumberTextType then
		-- KONSTANTWARNING: GOTO [426] #289
	end
	tbl_2.textInputType = Enum.TextInputType.Number
	if GetFFlagAddMorePhoneUpsellEvents_upvr() then
	else
	end
	tbl_2.onFocusGained = nil
	tbl_3.PhoneInputBox = React_upvr.createElement(TextField_upvr, tbl_2)
	tbl_8.PhoneInputContainer = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 0;
	}, tbl_3)
	if errorMessage then
	end
	tbl_8.ErrorText = React_upvr.createElement("TextLabel", {
		Text = mergeProps_upvr_result1_upvr.errorMessage;
		TextTransparency = 0;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextWrapped = true;
		BackgroundTransparency = 1;
		TextColor3 = Tokens_upvr.Global.Color.Red.Color3;
		Font = useStyle_upvr_result1_upvr.Font.Body.Font;
		TextSize = useStyle_upvr_result1_upvr.Font.BaseSize * useStyle_upvr_result1_upvr.Font.CaptionSmall.RelativeSize;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 1;
	})
	local tbl_5 = {
		screenSize = mergeProps_upvr_result1_upvr.screenSize;
		buttonStackInfo = getButtonStackProps_upvr(var14_result1_upvr.buttonKey, mergeProps_upvr_result1_upvr.onSetPhoneNumber, mergeProps_upvr_result1_upvr.isDisabled, var14_result1_upvr.extraButtonKey, mergeProps_upvr_result1_upvr.onExtraButtonClick);
	}
	if not mergeProps_upvr_result1_upvr.isKeyboardShowing or not UDim2.new(0.5, 0, 1, -mergeProps_upvr_result1_upvr.keyboardHeight) then
	end
	tbl_5.position = UDim2.fromScale(0.5, 0.5)
	if not mergeProps_upvr_result1_upvr.isKeyboardShowing or not Vector2.new(0.5, 1) then
	end
	tbl_5.anchorPoint = nil
	tbl_5.title = var14_result1_upvr.titleKey
	function tbl_5.onAbsoluteSizeChanged(arg1_2) -- Line 138
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useState_result2_upvr_2(arg1_2.AbsoluteSize.X)
	end
	tbl_5.onCloseClicked = mergeProps_upvr_result1_upvr.onClose
	local any_createElement_result1_upvr = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		[Roact_upvr.Ref] = any_useRef_result1;
	}, tbl_8)
	local BaseSize_upvr = useStyle_upvr_result1_upvr.Font.BaseSize
	local RelativeSize_upvr = useStyle_upvr_result1_upvr.Font.CaptionHeader.RelativeSize
	function tbl_5.middleContent() -- Line 281
		--[[ Upvalues[7]:
			[1]: React_upvr (copied, readonly)
			[2]: Tokens_upvr (readonly)
			[3]: any_createElement_result1_upvr (readonly)
			[4]: var14_result1_upvr (readonly)
			[5]: BaseSize_upvr (readonly)
			[6]: RelativeSize_upvr (readonly)
			[7]: useStyle_upvr_result1_upvr (readonly)
		]]
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
		}, {
			AddPhoneViewFrame = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1, 0, 0, 0);
			}, {
				ListLayout = React_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					Padding = UDim.new(0, Tokens_upvr.Global.Space_100);
				});
				PhoneInput = any_createElement_result1_upvr;
				PrivacyText = React_upvr.createElement("TextLabel", {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					Text = var14_result1_upvr.disclaimerKey;
					TextSize = BaseSize_upvr * RelativeSize_upvr;
					TextColor3 = useStyle_upvr_result1_upvr.Theme.TextEmphasis.Color;
					TextTransparency = useStyle_upvr_result1_upvr.Theme.TextEmphasis.Transparency;
					Font = useStyle_upvr_result1_upvr.Font.Body.Font;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				});
			});
		})
	end
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		[Roact_upvr.Ref] = any_useRef_result1_2;
	}, {
		AddPhoneView = React_upvr.createElement(InteractiveAlert_upvr, tbl_5);
		CountryCodeSelectorFrame = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(0, any_useState_result1_upvr - 24, 0, 0);
			ZIndex = 2;
			BorderSizePixel = 0;
			Position = UDim2.new(0, vector2.X - var27.X, 0, vector2.Y + Size_600_upvr + Gap_upvr - var27.Y);
		}, {
			CountryCodeDropdown = React_upvr.createElement(CountryCodeDropdownContainer_upvr, {
				dropdownVisible = any_useState_result1_upvr_2;
				position = UDim2.new(0, 0, 0, 0);
				maxHeight = minimum_upvw;
				onCountryCodeSelected = function(arg1_5) -- Line 340, Named "onCountryCodeSelected"
					--[[ Upvalues[2]:
						[1]: mergeProps_upvr_result1_upvr (readonly)
						[2]: any_useState_result2_upvr (readonly)
					]]
					mergeProps_upvr_result1_upvr.setCountryCode(arg1_5)
					any_useState_result2_upvr(false)
				end;
			});
		});
	})
end