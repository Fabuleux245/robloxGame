-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:28
-- Luau version 6, Types version 3
-- Time taken: 0.013664 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local AuthCommon = require(Parent.AuthCommon)
local tbl_6_upvr = {
	alwaysShowLegalText = false;
	requireLegalTextCheckbox = false;
	buttonKey = "Feature.VerificationUpsell.Action.Continue";
	legalTextKey = "Feature.VerificationUpsell.Description.ShortCodeLegalDisclaimerUA";
}
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function getButtonStackProps_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 72, Named "getButtonStackProps"
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	local tbl_28 = {}
	local tbl_26 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_18 = {}
	tbl_18.onActivated = arg2
	tbl_18.text = arg1
	tbl_18.isDisabled = arg3
	tbl_26.props = tbl_18
	tbl_28[1] = tbl_26
	if arg4 and arg4 ~= "" then
		local tbl_3 = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl_24 = {}
		tbl_24.onActivated = arg5
		tbl_24.text = arg4
		tbl_24.isDisabled = false
		tbl_3.props = tbl_24
		table.insert(tbl_28, 1, tbl_3)
	end
	return {
		buttonHeight = 48;
		forcedFillDirection = Enum.FillDirection.Vertical;
		buttons = tbl_28;
	}
end
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local React_upvr = require(Parent.React)
local getPartialPageModalMiddleContentWidth_upvr = UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local withStyle_upvr = UIBlox.Style.withStyle
local withLocalization_upvr = require(Parent.Localization).withLocalization
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local TextBoxStateWrapper_upvr = AuthCommon.Components.TextBoxStateWrapper
local PhoneNumberTextBox_upvr = AuthCommon.Components.PhoneNumberTextBox
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 108, Named "AddPhoneView"
	--[[ Upvalues[12]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[5]: withStyle_upvr (readonly)
		[6]: withLocalization_upvr (readonly)
		[7]: PartialPageModal_upvr (readonly)
		[8]: getButtonStackProps_upvr (readonly)
		[9]: TextBoxStateWrapper_upvr (readonly)
		[10]: PhoneNumberTextBox_upvr (readonly)
		[11]: Checkbox_upvr (readonly)
		[12]: LinkButton_upvr (readonly)
	]]
	local var13_result1_upvr = mergeProps_upvr(tbl_6_upvr, arg1)
	local function noOp_upvr() -- Line 111, Named "noOp"
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local module_4_upvr = {
		phoneNumberKey = "Feature.VerificationUpsell.Label.PhoneNumber";
		phonePrivacyDisclaimerKey = "Feature.VerificationUpsell.Description.PhoneNumberNeverPublic";
		termsOfUseKey = "Feature.VerificationUpsell.Action.TermsOfUse";
		privacyPolicyKey = "Feature.VerificationUpsell.Action.PrivacyPolicy";
		titleKey = var13_result1_upvr.titleKey;
		descriptionKey = var13_result1_upvr.descriptionKey;
		buttonKey = var13_result1_upvr.buttonKey;
		legalTextKey = var13_result1_upvr.legalTextKey;
	}
	if var13_result1_upvr.extraButtonKey and var13_result1_upvr.extraButtonKey ~= "" then
		module_4_upvr.extraButtonKey = var13_result1_upvr.extraButtonKey
	end
	local var15_result1_upvr = getPartialPageModalMiddleContentWidth_upvr(var13_result1_upvr.screenSize.X)
	return withStyle_upvr(function(arg1_2) -- Line 131
		--[[ Upvalues[14]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: module_4_upvr (readonly)
			[3]: var13_result1_upvr (readonly)
			[4]: any_useState_result1_upvr (readonly)
			[5]: React_upvr (copied, readonly)
			[6]: PartialPageModal_upvr (copied, readonly)
			[7]: getButtonStackProps_upvr (copied, readonly)
			[8]: var15_result1_upvr (readonly)
			[9]: TextBoxStateWrapper_upvr (copied, readonly)
			[10]: PhoneNumberTextBox_upvr (copied, readonly)
			[11]: noOp_upvr (readonly)
			[12]: Checkbox_upvr (copied, readonly)
			[13]: any_useState_result2_upvr (readonly)
			[14]: LinkButton_upvr (copied, readonly)
		]]
		return withLocalization_upvr(module_4_upvr)(function(arg1_3) -- Line 132
			--[[ Upvalues[13]:
				[1]: arg1_2 (readonly)
				[2]: var13_result1_upvr (copied, readonly)
				[3]: any_useState_result1_upvr (copied, readonly)
				[4]: React_upvr (copied, readonly)
				[5]: PartialPageModal_upvr (copied, readonly)
				[6]: getButtonStackProps_upvr (copied, readonly)
				[7]: var15_result1_upvr (copied, readonly)
				[8]: TextBoxStateWrapper_upvr (copied, readonly)
				[9]: PhoneNumberTextBox_upvr (copied, readonly)
				[10]: noOp_upvr (copied, readonly)
				[11]: Checkbox_upvr (copied, readonly)
				[12]: any_useState_result2_upvr (copied, readonly)
				[13]: LinkButton_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local BaseSize_2 = arg1_2.Font.BaseSize
			local RelativeSize_2 = arg1_2.Font.CaptionHeader.RelativeSize
			local isDisabled = var13_result1_upvr.isDisabled
			if not isDisabled then
				isDisabled = var13_result1_upvr.requireLegalTextCheckbox
				if isDisabled then
					isDisabled = not any_useState_result1_upvr
				end
			end
			local module_3 = {
				title = arg1_3.titleKey;
				screenSize = var13_result1_upvr.screenSize;
				buttonStackProps = getButtonStackProps_upvr(arg1_3.buttonKey, var13_result1_upvr.onSetPhoneNumber, isDisabled, arg1_3.extraButtonKey, var13_result1_upvr.onExtraButtonClick);
				onCloseClicked = var13_result1_upvr.onClose;
			}
			if not var13_result1_upvr.isKeyboardShowing or not UDim2.new(0.5, 0, 1, -var13_result1_upvr.keyboardHeight) then
			end
			module_3.position = nil
			if not var13_result1_upvr.isKeyboardShowing or not Vector2.new(0.5, 1) then
			end
			module_3.anchorPoint = nil
			local module_2 = {}
			local tbl_2 = {
				ContentPadding = React_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, 12);
					PaddingBottom = UDim.new(0, 24);
				});
				ListLayout = React_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					Padding = UDim.new(0, 6);
				});
				BodyText = React_upvr.createElement("TextLabel", {
					LayoutOrder = 0;
					BackgroundTransparency = 1;
					Text = arg1_3.descriptionKey;
					TextSize = BaseSize_2;
					TextColor3 = arg1_2.Theme.TextDefault.Color;
					TextTransparency = arg1_2.Theme.TextDefault.Transparency;
					Font = arg1_2.Font.Body.Font;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Size = UDim2.new(0, var15_result1_upvr, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				});
			}
			local tbl_13 = {
				ChildClass = PhoneNumberTextBox_upvr;
			}
			if var13_result1_upvr.errorMessage == "" then
			else
			end
			tbl_13.ErrorState = true
			tbl_13.ErrorText = var13_result1_upvr.errorMessage
			tbl_13.Size = UDim2.new(1, 0, 0, 36)
			tbl_13.LayoutOrder = 1
			local tbl_7 = {
				CountryCode = var13_result1_upvr.countryCode;
				SetCountryCode = var13_result1_upvr.setCountryCode;
				Text = var13_result1_upvr.phoneNumber;
				PlaceholderText = arg1_3.phoneNumberKey;
				Font = arg1_2.Font.Body.Font;
				TextSize = BaseSize_2 * arg1_2.Font.Body.RelativeSize;
				TextXAlignment = Enum.TextXAlignment.Left;
				Color = arg1_2.Theme.BackgroundUIContrast.Color;
				Transparency = arg1_2.Theme.BackgroundUIContrast.Transparency;
				TextColor = arg1_2.Theme.TextDefault.Color;
				PlaceholderColor = arg1_2.Theme.UIDefault.Color;
				TextTransparency = arg1_2.Theme.TextDefault.Transparency;
				ClearTextOnFocus = false;
				PaddingX = 12;
			}
			if not var13_result1_upvr.usePhoneNumberTextType or not Enum.TextInputType.Phone then
			end
			tbl_7.TextInputTypeOverride = Enum.TextInputType.Number
			tbl_7.onChangeText = var13_result1_upvr.onPhoneNumberTextChange
			tbl_7.onFocused = var13_result1_upvr.onPhoneInputFocus
			tbl_7.onFocusLost = noOp_upvr
			tbl_7.phoneCountryCodeSelectorCallback = var13_result1_upvr.onCountryCodeSelectorClick
			tbl_13.ChildProps = tbl_7
			tbl_2.PhoneInput = React_upvr.createElement(TextBoxStateWrapper_upvr, tbl_13)
			tbl_2.PrivacyText = React_upvr.createElement("TextLabel", {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				Text = arg1_3.phonePrivacyDisclaimerKey;
				TextSize = BaseSize_2 * RelativeSize_2;
				TextColor3 = arg1_2.Theme.TextEmphasis.Color;
				TextTransparency = arg1_2.Theme.TextEmphasis.Transparency;
				Font = arg1_2.Font.Body.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
				Size = UDim2.new(0, var15_result1_upvr, 0, 24);
			})
			if var13_result1_upvr.requireLegalTextCheckbox then
				local _ = {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(0, var15_result1_upvr, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				}
				local tbl_30 = {
					UIListLayout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						Padding = UDim.new(0, 6);
					});
					LegalCheckbox = React_upvr.createElement(Checkbox_upvr, {
						onActivated = any_useState_result2_upvr;
						isSelected = any_useState_result1_upvr;
						text = "";
					});
					LegalText = React_upvr.createElement("TextLabel", {
						BackgroundTransparency = 1;
						Text = arg1_3.legalTextKey;
						TextSize = BaseSize_2 * RelativeSize_2;
						TextColor3 = arg1_2.Theme.TextDefault.Color;
						TextTransparency = arg1_2.Theme.TextDefault.Transparency;
						Font = arg1_2.Font.Body.Font;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextWrapped = true;
						Size = UDim2.new(1, -32, 0, 0);
						AutomaticSize = Enum.AutomaticSize.Y;
					});
				}
			elseif var13_result1_upvr.alwaysShowLegalText or var13_result1_upvr.countryCode.prefix == '1' then
			end
			tbl_2.LegalTextContainer = React_upvr.createElement("TextLabel", {
				LayoutOrder = 3;
				BackgroundTransparency = 1;
				Text = arg1_3.legalTextKey;
				TextSize = BaseSize_2 * RelativeSize_2;
				TextColor3 = arg1_2.Theme.TextDefault.Color;
				TextTransparency = arg1_2.Theme.TextDefault.Transparency;
				Font = arg1_2.Font.Body.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
				Size = UDim2.new(0, var15_result1_upvr, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			})
			local var75 = false
			if var13_result1_upvr.countryCode.prefix == '1' then
				var75 = React_upvr.createElement
				var75 = var75("Frame", {
					LayoutOrder = 4;
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				}, {
					UIListLayout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						SortOrder = Enum.SortOrder.LayoutOrder;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						Padding = UDim.new(0, 5);
					});
					TermsOfUseButton = React_upvr.createElement(LinkButton_upvr, {
						text = arg1_3.termsOfUseKey;
						onActivated = var13_result1_upvr.onTermsOfUseClick;
						layoutOrder = 5;
						fontStyle = "CaptionBody";
						size = UDim2.fromScale(0.2, 0.2);
					});
					TextButtonDivider = React_upvr.createElement("TextLabel", {
						LayoutOrder = 6;
						BackgroundTransparency = 1;
						Text = '-';
						TextSize = BaseSize_2 * RelativeSize_2;
						TextColor3 = arg1_2.Theme.TextDefault.Color;
						TextTransparency = arg1_2.Theme.TextDefault.Transparency;
						Font = arg1_2.Font.Body.Font;
						TextXAlignment = Enum.TextXAlignment.Center;
						TextWrapped = true;
						AutomaticSize = Enum.AutomaticSize.XY;
					});
					PrivacyPolicyButton = React_upvr.createElement(LinkButton_upvr, {
						text = arg1_3.privacyPolicyKey;
						onActivated = var13_result1_upvr.onPrivacyPolicyClick;
						layoutOrder = 7;
						fontStyle = "CaptionBody";
					});
				})
			end
			tbl_2.LegalButtonsContainer = var75
			module_2.Middle = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1, 0, 0, 0);
			}, tbl_2)
			return React_upvr.createElement(PartialPageModal_upvr, module_3, module_2)
		end)
	end)
end