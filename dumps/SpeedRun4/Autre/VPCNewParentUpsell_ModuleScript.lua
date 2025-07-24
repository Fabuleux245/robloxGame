-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:17
-- Luau version 6, Types version 3
-- Time taken: 0.005125 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local function selectScreenSize_upvr(arg1) -- Line 31, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useOnScreenKeyboardHeight_upvr = require(AmpUpsell.Common.useOnScreenKeyboardHeight)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local TextField_upvr = UIBlox.App.Input.TextField
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 35, Named "VPCNewParentUpsell"
	--[[ Upvalues[12]:
		[1]: useSelector_upvr (readonly)
		[2]: selectScreenSize_upvr (readonly)
		[3]: useOnScreenKeyboardHeight_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: InteractiveAlert_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
		[11]: TextField_upvr (readonly)
		[12]: LinkButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local textInput_upvr = arg1.textInput
	local var5_result1 = useOnScreenKeyboardHeight_upvr()
	local var7_result1_upvr = useLocalization_upvr(Cryo_upvr.Dictionary.join(arg1.messageStrings, {
		directionsTextSubjectToParentalControls = {
			lineBreak = "\n\n";
			"Feature.Parents.Description.EnterParentEmailV4"
		};
		directionsTextNotSubjectToParentalControls = {
			lineBreak = "\n\n";
			"Feature.Parents.Description.EnterParentEmailWithoutParentalControl"
		};
		privacyPolicyFooter = {
			linkStart = "";
			linkEnd = "";
			"Feature.Parents.Description.ParentalEmailFooter"
		};
	}))
	local middleContent
	if arg1.isChildSubjectToParentalControls then
	else
	end
	local module_2 = {
		title = var7_result1_upvr.titleText;
		screenSize = useSelector_upvr(selectScreenSize_upvr);
	}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		middleContent = UDim2.new(0.5, 0, 1, -var5_result1 * 0.8)
		return middleContent
	end
	if 0 >= var5_result1 or not INLINED() then
		middleContent = UDim2.fromScale(0.5, 0.5)
	end
	module_2.position = middleContent
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		middleContent = Vector2.new(0.5, 1)
		return middleContent
	end
	if 0 >= var5_result1 or not INLINED_2() then
		middleContent = nil
	end
	module_2.anchorPoint = middleContent
	middleContent = {}
	local tbl_4 = {}
	local tbl_5 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl = {}
	local onCollectEmailAndSendRequest_upvr = arg1.onCollectEmailAndSendRequest
	function tbl.onActivated() -- Line 82
		--[[ Upvalues[2]:
			[1]: onCollectEmailAndSendRequest_upvr (readonly)
			[2]: textInput_upvr (readonly)
		]]
		onCollectEmailAndSendRequest_upvr(textInput_upvr)
	end
	tbl.text = var7_result1_upvr.buttonText
	tbl.isDisabled = not arg1.canSendRequest
	tbl_5.props = tbl
	tbl_4[1] = tbl_5
	middleContent.buttons = tbl_4
	module_2.buttonStackInfo = middleContent
	module_2.onCloseClicked = arg1.onCancel
	middleContent = 0
	module_2.bottomPadding = middleContent
	local formatted_upvw = string.format("%s\n", var7_result1_upvr.directionsTextNotSubjectToParentalControls)
	local var6_result1_upvr = useStyle_upvr()
	local textFieldHeaderText_upvr = var7_result1_upvr.textFieldHeaderText
	local errorText_upvr = arg1.errorText
	local onTextChange_upvr = arg1.onTextChange
	local openPrivacyPolicyLink_upvr = arg1.openPrivacyPolicyLink
	function middleContent() -- Line 93
		--[[ Upvalues[12]:
			[1]: React_upvr (copied, readonly)
			[2]: StyledTextLabel_upvr (copied, readonly)
			[3]: formatted_upvw (read and write)
			[4]: var6_result1_upvr (readonly)
			[5]: textFieldHeaderText_upvr (readonly)
			[6]: TextField_upvr (copied, readonly)
			[7]: textInput_upvr (readonly)
			[8]: var7_result1_upvr (readonly)
			[9]: errorText_upvr (readonly)
			[10]: onTextChange_upvr (readonly)
			[11]: LinkButton_upvr (copied, readonly)
			[12]: openPrivacyPolicyLink_upvr (readonly)
		]]
		local module = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
			HeaderText = React_upvr.createElement(StyledTextLabel_upvr, {
				text = formatted_upvw;
				fontStyle = var6_result1_upvr.Font.CaptionHeader;
				colorStyle = var6_result1_upvr.Theme.TextDefault;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Top;
				textWrapped = true;
				automaticSize = Enum.AutomaticSize.XY;
				layoutOrder = 1;
			});
		}
		local tbl_3 = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Top;
				Padding = UDim.new(0, 10);
			});
			TextFieldHeader = React_upvr.createElement(StyledTextLabel_upvr, {
				text = textFieldHeaderText_upvr;
				fontStyle = var6_result1_upvr.Font.Header2;
				colorStyle = var6_result1_upvr.Theme.TextDefault;
				textWrapped = true;
				automaticSize = Enum.AutomaticSize.XY;
				layoutOrder = 0;
			});
		}
		local tbl_2 = {
			text = textInput_upvr;
		}
		local var43 = var7_result1_upvr
		tbl_2.placeholder = var43.emailPlaceholder
		tbl_2.required = true
		tbl_2.hint = errorText_upvr
		if errorText_upvr ~= "" then
			var43 = false
		else
			var43 = true
		end
		tbl_2.error = not var43
		tbl_2.onChange = onTextChange_upvr
		tbl_2.width = UDim.new(1, 0)
		tbl_2.layoutOrder = 1
		tbl_3.TextField = React_upvr.createElement(TextField_upvr, tbl_2)
		module.TextboxFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			LayoutOrder = 2;
		}, tbl_3)
		module.DisclaimerFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			LayoutOrder = 3;
		}, {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
			Disclaimer = React_upvr.createElement(StyledTextLabel_upvr, {
				text = var7_result1_upvr.privacyPolicyFooter;
				fontStyle = var6_result1_upvr.Font.Footer;
				colorStyle = var6_result1_upvr.Theme.TextDefault;
				textXAlignment = Enum.TextXAlignment.Left;
				textWrapped = true;
				automaticSize = Enum.AutomaticSize.XY;
				layoutOrder = 1;
			});
			PrivacyPolicy = React_upvr.createElement(LinkButton_upvr, {
				text = var7_result1_upvr.privacyLinkText;
				layoutOrder = 2;
				fontStyle = "Footer";
				underlineAlwaysEnabled = false;
				onActivated = openPrivacyPolicyLink_upvr;
			});
		})
		return React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
		}, module)
	end
	module_2.middleContent = middleContent
	return React_upvr.createElement(InteractiveAlert_upvr, module_2)
end