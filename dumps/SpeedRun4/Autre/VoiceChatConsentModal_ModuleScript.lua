-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:42
-- Luau version 6, Types version 3
-- Time taken: 0.012858 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local GetFFlagSupportGamepadNavInVoiceModals_upvr = require(CorePackages.Workspace.Packages.VoiceChat).Flags.GetFFlagSupportGamepadNavInVoiceModals
local any_wrap_result1_upvr = require(CorePackages.Workspace.Packages.ArgCheck).wrap(t.strictInterface({
	titleText = t.optional(t.string);
	bodyText = t.optional(t.string);
	handlePrimaryActivated = t.optional(t.callback);
	handleSecondaryActivated = t.optional(t.callback);
	Analytics = t.optional(t.table);
	showCheckbox = t.optional(t.boolean);
	promptStyle = t.optional(t.table);
	showPrompt = t.optional(t.boolean);
}))
local TextService_upvr = game:GetService("TextService")
local any_FormatByKey_result1_upvr_3 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.SelectingTurnOn")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Assets_upvr = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)
local Checkbox_upvr = UIBlox_upvr.App.InputButton.Checkbox
local Button_upvr = UIBlox_upvr.App.Button.Button
local ButtonType_upvr = UIBlox_upvr.App.Button.Enum.ButtonType
local any_FormatByKey_result1_upvr = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow")
local any_FormatByKey_result1_upvr_2 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.TurnOn")
local function VoiceChatConsentModal(arg1, arg2) -- Line 60
	--[[ Upvalues[13]:
		[1]: any_wrap_result1_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: TextService_upvr (readonly)
		[4]: any_FormatByKey_result1_upvr_3 (readonly)
		[5]: GetFFlagSupportGamepadNavInVoiceModals_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: UIBlox_upvr (readonly)
		[8]: Assets_upvr (readonly)
		[9]: Checkbox_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: any_FormatByKey_result1_upvr (readonly)
		[13]: any_FormatByKey_result1_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	assert(any_wrap_result1_upvr(arg1))
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local var20 = 20 + TextService_upvr:GetTextSize(arg1.titleText, arg1.promptStyle.Font.Header1.RelativeSize * arg1.promptStyle.Font.BaseSize, arg1.promptStyle.Font.Header1.Font, Vector2.new(325, math.huge)).Y
	local var21 = 20 + TextService_upvr:GetTextSize(arg1.bodyText, arg1.promptStyle.Font.Body.RelativeSize * arg1.promptStyle.Font.BaseSize, arg1.promptStyle.Font.Body.Font, Vector2.new(325, math.huge)).Y
	local var22 = 20
	local var23 = var22 + TextService_upvr:GetTextSize(any_FormatByKey_result1_upvr_3, arg1.promptStyle.Font.CaptionHeader.RelativeSize * arg1.promptStyle.Font.BaseSize, arg1.promptStyle.Font.CaptionHeader.Font, Vector2.new(325, math.huge)).Y
	local var24
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		var22 = Enum.SelectionBehavior.Stop
	else
		var22 = nil
	end
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		-- KONSTANTWARNING: GOTO [144] #98
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [143] 97. Error Block 40 start (CF ANALYSIS FAILED)
	local var25
	local module = {}
	local tbl_3 = {}
	var24 = false
	tbl_3.AutoButtonColor = var24
	var24 = arg1.promptStyle.Theme.Overlay.Color
	tbl_3.BackgroundColor3 = var24
	var24 = arg1.promptStyle.Theme.Overlay.Transparency
	tbl_3.BackgroundTransparency = var24
	var24 = 0
	tbl_3.BorderSizePixel = var24
	var24 = UDim2.new(1, 0, 1, 0)
	tbl_3.Size = var24
	var24 = ""
	tbl_3.Text = var24
	module.Overlay = Roact_upvr.createElement("TextButton", tbl_3)
	var24 = UIBlox_upvr.Core
	local tbl = {}
	var24 = Vector2.new(0.5, 0.5)
	tbl.AnchorPoint = var24
	var24 = 1
	tbl.BackgroundTransparency = var24
	var24 = Assets_upvr.Images.RoundedRect.Image
	tbl.Image = var24
	var24 = arg1.promptStyle.Theme.BackgroundUIDefault.Color
	tbl.ImageColor3 = var24
	var24 = arg1.promptStyle.Theme.BackgroundUIDefault.Transparency
	tbl.ImageTransparency = var24
	var24 = UDim2.new(0.5, 0, 0.5, 0)
	tbl.Position = var24
	var24 = Assets_upvr.Images.RoundedRect.ScaleType
	tbl.ScaleType = var24
	var24 = UDim2.new(0, 365, 0, var20 + 1 + var21 + 14 + 36 + 60 + var23)
	tbl.Size = var24
	var24 = Enum.AutomaticSize.Y
	tbl.AutomaticSize = var24
	var24 = Assets_upvr.Images.RoundedRect.SliceCenter
	tbl.SliceCenter = var24
	tbl.SelectionBehaviorDown = var22
	tbl.SelectionBehaviorLeft = var22
	tbl.SelectionBehaviorRight = var22
	tbl.SelectionBehaviorUp = var22
	tbl.SelectionGroup = var25
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		var24 = arg2
	else
		var24 = nil
	end
	tbl.ref = var24
	var24 = {}
	var24.Padding = Roact_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, 10);
		PaddingBottom = UDim.new(0, 20);
		PaddingLeft = UDim.new(0, 20);
		PaddingRight = UDim.new(0, 20);
	})
	var24.Layout = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	var24.TitleTextContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, var20);
		AutomaticSize = Enum.AutomaticSize.Y;
	}, {
		TitleText = Roact_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
			fontStyle = arg1.promptStyle.Font.Header1;
			colorStyle = arg1.promptStyle.Theme.SystemPrimaryDefault;
			textXAlignment = Enum.TextXAlignment.Center;
			size = UDim2.new(1, 0, 1, 0);
			text = arg1.titleText;
		});
	})
	var24.Divider = Roact_upvr.createElement("Frame", {
		BackgroundColor3 = arg1.promptStyle.Theme.Divider.Color;
		BackgroundTransparency = arg1.promptStyle.Theme.Divider.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = 2;
		Size = UDim2.new(1, 0, 0, 1);
	})
	var24.DividerSpaceContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 3;
		Size = UDim2.new(1, 0, 0, 7);
	})
	var24.BodyTextContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 4;
		Size = UDim2.new(1, 0, 0, var21);
	}, {
		BodyText = Roact_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
			fontStyle = arg1.promptStyle.Font.Body;
			colorStyle = arg1.promptStyle.Theme.TextDefault;
			textXAlignment = Enum.TextXAlignment.Left;
			size = UDim2.new(1, 0, 1, 0);
			text = arg1.bodyText;
			lineHeight = 1.2;
		});
	})
	local tbl_6 = {
		Padding = Roact_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 15);
		});
		Layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
		});
	}
	if arg1.showCheckbox then
	end
	tbl_6.Checkbox = Roact_upvr.createElement(Checkbox_upvr, {
		text = "";
		isSelected = any_useState_result1;
		isDisabled = false;
		onActivated = function(arg1_2) -- Line 215, Named "onActivated"
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(arg1_2)
		end;
		layoutOrder = 1;
	})
	local tbl_4 = {
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}
	if arg1.showCheckbox then
	else
	end
	tbl_4.Size = UDim2.new(1, 0, 0, var23)
	local tbl_7 = {}
	local showCheckbox = arg1.showCheckbox
	if showCheckbox then
		showCheckbox = Roact_upvr.createElement
		showCheckbox = showCheckbox("UIPadding", {
			PaddingLeft = UDim.new(0, 10);
		})
	end
	tbl_7.Padding = showCheckbox
	tbl_7.InfoText = Roact_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
		fontStyle = arg1.promptStyle.Font.CaptionHeader;
		colorStyle = arg1.promptStyle.Theme.TextDefault;
		textXAlignment = Enum.TextXAlignment.Left;
		textYAlignment = Enum.TextYAlignment.Top;
		size = UDim2.new(1, 0, 1, 0);
		text = any_FormatByKey_result1_upvr_3;
		lineHeight = 1.15;
	})
	tbl_6.TextContainer = Roact_upvr.createElement("Frame", tbl_4, tbl_7)
	var24.InfoTextContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 5;
		Size = UDim2.new(1, 0, 0, var23 + 20);
	}, tbl_6)
	var24.SpaceContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 6;
		Size = UDim2.new(1, 0, 0, 10);
	})
	local tbl_5 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 12);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
		SecondaryButton = Roact_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			layoutOrder = 1;
			size = UDim2.new(0.5, -5, 0, 36);
			text = any_FormatByKey_result1_upvr;
			onActivated = arg1.handleSecondaryActivated;
			Selectable = var25;
		});
	}
	local tbl_2 = {
		buttonType = ButtonType_upvr.PrimarySystem;
		layoutOrder = 2;
		size = UDim2.new(0.5, -5, 0, 36);
		text = any_FormatByKey_result1_upvr_2;
	}
	local showCheckbox_2 = arg1.showCheckbox
	if showCheckbox_2 then
		showCheckbox_2 = not any_useState_result1
	end
	tbl_2.isDisabled = showCheckbox_2
	tbl_2.onActivated = arg1.handlePrimaryActivated
	tbl_2.Selectable = var25
	tbl_5.ConfirmButton = Roact_upvr.createElement(Button_upvr, tbl_2)
	var24.ButtonContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 7;
		Size = UDim2.new(1, 0, 0, 36);
		AutomaticSize = Enum.AutomaticSize.Y;
	}, tbl_5)
	module.DialogMainFrame = Roact_upvr.createElement(var24.ImageSet.ImageSetLabel, tbl, var24)
	do
		return Roact_upvr.createElement("ScreenGui", {
			DisplayOrder = 8;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = true;
			Enabled = arg1.showPrompt;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, module)
	end
	-- KONSTANTERROR: [143] 97. Error Block 40 end (CF ANALYSIS FAILED)
end
if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
	return React_upvr.forwardRef(VoiceChatConsentModal)
end
return VoiceChatConsentModal