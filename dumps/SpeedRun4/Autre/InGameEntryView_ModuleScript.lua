-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:31
-- Luau version 6, Types version 3
-- Time taken: 0.004987 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local function noOp() -- Line 47
end
local tbl_7_upvr = {
	onClose = noOp;
	isButtonDisabled = false;
	onExtraButtonClick = noOp;
	isExtraButtonDisabled = false;
	alwaysShowLegalText = false;
	requireLegalTextCheckbox = false;
	legalTextKey = "Feature.VerificationUpsell.Description.ShortCodeLegalDisclaimerUA";
	prefix = '1';
}
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function getButtonStackProps_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 60, Named "getButtonStackProps"
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl_6 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_5 = {}
	tbl_5.onActivated = arg3
	tbl_5.text = arg1
	tbl_5.isDisabled = arg4
	tbl_6.props = tbl_5
	tbl_2[1] = tbl_6
	if arg5 and arg5 ~= "" then
		local tbl_3 = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl = {}
		tbl.onActivated = arg6
		tbl.text = arg5
		tbl.isDisabled = arg7
		tbl_3.props = tbl
		table.insert(tbl_2, 1, tbl_3)
	end
	local module = {}
	module.buttonHeight = arg2
	module.buttons = tbl_2
	return module
end
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local React_upvr = require(Parent.React)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 96, Named "InGameEntryView"
	--[[ Upvalues[9]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: InteractiveAlert_upvr (readonly)
		[7]: getButtonStackProps_upvr (readonly)
		[8]: Checkbox_upvr (readonly)
		[9]: LinkButton_upvr (readonly)
	]]
	local mergeProps_upvr_result1_upvr = mergeProps_upvr(tbl_7_upvr, arg1)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local tbl_4 = {
		phoneNumberKey = "Feature.VerificationUpsell.Label.PhoneNumber";
		phonePrivacyDisclaimerKey = "Feature.VerificationUpsell.Description.PhoneNumberNeverPublic";
		termsOfUseKey = "Feature.VerificationUpsell.Action.TermsOfUse";
		privacyPolicyKey = "Feature.VerificationUpsell.Action.PrivacyPolicy";
		titleKey = mergeProps_upvr_result1_upvr.titleKey;
		descriptionKey = mergeProps_upvr_result1_upvr.descriptionKey;
		buttonKey = mergeProps_upvr_result1_upvr.buttonKey;
		legalTextKey = mergeProps_upvr_result1_upvr.legalTextKey;
	}
	if mergeProps_upvr_result1_upvr.extraButtonKey and mergeProps_upvr_result1_upvr.extraButtonKey ~= "" then
		tbl_4.extraButtonKey = mergeProps_upvr_result1_upvr.extraButtonKey
	end
	local var14_result1_upvr = useStyle_upvr()
	local BaseSize_upvr = var14_result1_upvr.Font.BaseSize
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl_4)
	useLocalization_upvr_result1_upvr.legalTextKey = useLocalization_upvr_result1_upvr.legalTextKey:gsub("{buttonText}", useLocalization_upvr_result1_upvr.buttonKey)
	local module_2 = {
		title = useLocalization_upvr_result1_upvr.titleKey;
		screenSize = mergeProps_upvr_result1_upvr.screenSize;
		buttonStackInfo = getButtonStackProps_upvr(useLocalization_upvr_result1_upvr.buttonKey, var14_result1_upvr.Tokens.Global.Size_600, mergeProps_upvr_result1_upvr.onButtonClick, mergeProps_upvr_result1_upvr.isButtonDisabled, useLocalization_upvr_result1_upvr.extraButtonKey, mergeProps_upvr_result1_upvr.onExtraButtonClick, mergeProps_upvr_result1_upvr.isExtraButtonDisabled);
		onCloseClicked = mergeProps_upvr_result1_upvr.onClose;
		middleContent = function() -- Line 135, Named "middleContent"
			--[[ Upvalues[4]:
				[1]: React_upvr (copied, readonly)
				[2]: useLocalization_upvr_result1_upvr (readonly)
				[3]: BaseSize_upvr (readonly)
				[4]: var14_result1_upvr (readonly)
			]]
			return React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.Y;
				Size = UDim2.new(1, 0, 0, 0);
			}, {
				BodyText = React_upvr.createElement("TextLabel", {
					LayoutOrder = 0;
					BackgroundTransparency = 1;
					Text = useLocalization_upvr_result1_upvr.descriptionKey;
					TextSize = BaseSize_upvr;
					TextColor3 = var14_result1_upvr.Theme.TextDefault.Color;
					TextTransparency = var14_result1_upvr.Theme.TextDefault.Transparency;
					Font = var14_result1_upvr.Font.Body.Font;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
					RichText = true;
				});
			})
		end;
	}
	local Space_75_upvr = var14_result1_upvr.Tokens.Global.Space_75
	local RelativeSize_upvr = var14_result1_upvr.Font.CaptionHeader.RelativeSize
	function module_2.footerContent() -- Line 157
		--[[ Upvalues[11]:
			[1]: React_upvr (copied, readonly)
			[2]: var14_result1_upvr (readonly)
			[3]: mergeProps_upvr_result1_upvr (readonly)
			[4]: Space_75_upvr (readonly)
			[5]: Checkbox_upvr (copied, readonly)
			[6]: any_useState_result2_upvr (readonly)
			[7]: any_useState_result1_upvr (readonly)
			[8]: useLocalization_upvr_result1_upvr (readonly)
			[9]: BaseSize_upvr (readonly)
			[10]: RelativeSize_upvr (readonly)
			[11]: LinkButton_upvr (copied, readonly)
		]]
		local module_3 = {
			ContentPadding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, var14_result1_upvr.Tokens.Global.Space_150);
			});
		}
		local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, var14_result1_upvr.Tokens.Global.Space_75);
		})
		module_3.ListLayout = any_createElement_result1
		if mergeProps_upvr_result1_upvr.requireLegalTextCheckbox then
			any_createElement_result1 = React_upvr.createElement
			any_createElement_result1 = any_createElement_result1("Frame", {
				LayoutOrder = 3;
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
			}, {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = UDim.new(0, Space_75_upvr);
				});
				LegalCheckbox = React_upvr.createElement(Checkbox_upvr, {
					onActivated = any_useState_result2_upvr;
					isSelected = any_useState_result1_upvr;
					text = "";
				});
				LegalText = React_upvr.createElement("TextLabel", {
					BackgroundTransparency = 1;
					Text = useLocalization_upvr_result1_upvr.legalTextKey;
					TextSize = BaseSize_upvr * RelativeSize_upvr;
					TextColor3 = var14_result1_upvr.Theme.TextDefault.Color;
					TextTransparency = var14_result1_upvr.Theme.TextDefault.Transparency;
					Font = var14_result1_upvr.Font.Body.Font;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Size = UDim2.new(1, -(26 + Space_75_upvr), 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				});
			})
		else
			local function INLINED() -- Internal function, doesn't exist in bytecode
				any_createElement_result1 = false
				return mergeProps_upvr_result1_upvr.countryCode.prefix == '1'
			end
			if mergeProps_upvr_result1_upvr.alwaysShowLegalText or INLINED() then
				any_createElement_result1 = React_upvr.createElement
				any_createElement_result1 = any_createElement_result1("TextLabel", {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Text = useLocalization_upvr_result1_upvr.legalTextKey;
					TextSize = BaseSize_upvr * RelativeSize_upvr;
					TextColor3 = var14_result1_upvr.Theme.TextDefault.Color;
					TextTransparency = var14_result1_upvr.Theme.TextDefault.Transparency;
					Font = var14_result1_upvr.Font.Body.Font;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					Size = UDim2.new(1, 0, 0, 0);
					AutomaticSize = Enum.AutomaticSize.Y;
				})
			end
		end
		module_3.LegalTextContainer = any_createElement_result1
		any_createElement_result1 = false
		local var43 = any_createElement_result1
		if mergeProps_upvr_result1_upvr.countryCode.prefix == '1' then
			var43 = React_upvr.createElement
			var43 = var43("Frame", {
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
					text = useLocalization_upvr_result1_upvr.termsOfUseKey;
					onActivated = mergeProps_upvr_result1_upvr.onTermsOfUseClick;
					layoutOrder = 5;
					fontStyle = "CaptionBody";
					size = UDim2.fromScale(0.2, 0.2);
				});
				TextButtonDivider = React_upvr.createElement("TextLabel", {
					LayoutOrder = 6;
					BackgroundTransparency = 1;
					Text = '-';
					TextSize = BaseSize_upvr * RelativeSize_upvr;
					TextColor3 = var14_result1_upvr.Theme.TextDefault.Color;
					TextTransparency = var14_result1_upvr.Theme.TextDefault.Transparency;
					Font = var14_result1_upvr.Font.Body.Font;
					TextXAlignment = Enum.TextXAlignment.Center;
					TextWrapped = true;
					AutomaticSize = Enum.AutomaticSize.XY;
				});
				PrivacyPolicyButton = React_upvr.createElement(LinkButton_upvr, {
					text = useLocalization_upvr_result1_upvr.privacyPolicyKey;
					onActivated = mergeProps_upvr_result1_upvr.onPrivacyPolicyClick;
					layoutOrder = 7;
					fontStyle = "CaptionBody";
				});
			})
		end
		module_3.LegalButtonsContainer = var43
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
		}, module_3)
	end
	return React_upvr.createElement(InteractiveAlert_upvr, module_2)
end