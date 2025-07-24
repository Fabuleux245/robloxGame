-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:41
-- Luau version 6, Types version 3
-- Time taken: 0.016909 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local UIBlox_upvr = require(CorePackages.Packages.UIBlox)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local GetFFlagSupportGamepadNavInVoiceModals_upvr = require(CorePackages.Workspace.Packages.VoiceChat).Flags.GetFFlagSupportGamepadNavInVoiceModals
local any_wrap_result1_upvr = require(CorePackages.Workspace.Packages.ArgCheck).wrap(t.strictInterface({
	titleText = t.string;
	bodyText = t.string;
	handlePrimaryActivated = t.callback;
	handleSecondaryActivated = t.callback;
	Analytics = t.table;
	promptStyle = t.table;
	showPrompt = t.boolean;
	settingsAppAvailable = t.boolean;
	UserInputService = t.table;
}))
local getMicDeeplinkDirections_upvr = require(script.Parent.Parent.Helpers.getMicDeeplinkDirections)
local getPrimingText_upvr = require(script.Parent.Parent.Helpers.getPrimingText)
local TextService_upvr = game:GetService("TextService")
local Assets_upvr = require(script.Parent.Parent.Parent.InGameMenu.Resources.Assets)
local icons_controls_microphone_upvr = UIBlox_upvr.App.ImageSet.Images["icons/controls/microphone"]
local Button_upvr = UIBlox_upvr.App.Button.Button
local ButtonType_upvr = UIBlox_upvr.App.Button.Enum.ButtonType
local any_FormatByKey_result1_upvr_2 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.NotNow")
local any_FormatByKey_result1_upvr_3 = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.OpenSettings")
local any_FormatByKey_result1_upvr = RobloxTranslator:FormatByKey("Feature.SettingsHub.Action.Ok")
local function DevicePermissionsModal(arg1, arg2) -- Line 65
	--[[ Upvalues[14]:
		[1]: any_wrap_result1_upvr (readonly)
		[2]: getMicDeeplinkDirections_upvr (readonly)
		[3]: getPrimingText_upvr (readonly)
		[4]: TextService_upvr (readonly)
		[5]: GetFFlagSupportGamepadNavInVoiceModals_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: UIBlox_upvr (readonly)
		[8]: Assets_upvr (readonly)
		[9]: icons_controls_microphone_upvr (readonly)
		[10]: Button_upvr (readonly)
		[11]: ButtonType_upvr (readonly)
		[12]: any_FormatByKey_result1_upvr_2 (readonly)
		[13]: any_FormatByKey_result1_upvr_3 (readonly)
		[14]: any_FormatByKey_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 103 start (CF ANALYSIS FAILED)
	assert(any_wrap_result1_upvr(arg1))
	local var9_result1 = getMicDeeplinkDirections_upvr(arg1.settingsAppAvailable, arg1.UserInputService)
	local getPrimingText_upvr_result1 = getPrimingText_upvr(arg1.UserInputService)
	local var21 = 20 + TextService_upvr:GetTextSize(arg1.titleText, arg1.promptStyle.Font.Header1.RelativeSize * arg1.promptStyle.Font.BaseSize, arg1.promptStyle.Font.Header1.Font, Vector2.new(325, math.huge)).Y
	local var22 = 20 + TextService_upvr:GetTextSize(arg1.bodyText, arg1.promptStyle.Font.Body.RelativeSize * arg1.promptStyle.Font.BaseSize, arg1.promptStyle.Font.Body.Font, Vector2.new(325, math.huge)).Y
	local var23
	if getPrimingText_upvr_result1 then
		var23 = arg1.promptStyle.Font.CaptionHeader
		var23 = arg1.promptStyle.Font.CaptionHeader.RelativeSize * arg1.promptStyle.Font.BaseSize
		local var24 = 10 + TextService_upvr:GetTextSize(getPrimingText_upvr_result1, var23, var23.Font, Vector2.new(325, math.huge)).Y
	end
	local var25 = 0
	if var9_result1 then
		var23 = arg1.promptStyle.Font.Body.Font
		local any_GetTextSize_result1 = TextService_upvr:GetTextSize(var9_result1, arg1.promptStyle.Font.Body.RelativeSize * arg1.promptStyle.Font.BaseSize, var23, Vector2.new(325, math.huge))
		if getPrimingText_upvr_result1 then
			any_GetTextSize_result1 = 10
		else
			any_GetTextSize_result1 = 20
		end
		var25 = any_GetTextSize_result1 + any_GetTextSize_result1.Y
	end
	var23 = 4
	if var9_result1 then
		var23 = 4.5
	end
	if getPrimingText_upvr_result1 then
		var23 = 5.5
	end
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		local _ = Enum.SelectionBehavior.Stop
	else
	end
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
		-- KONSTANTWARNING: GOTO [200] #138
	end
	local var28
	local module = {
		Overlay = React_upvr.createElement("TextButton", {
			AutoButtonColor = false;
			BackgroundColor3 = arg1.promptStyle.Theme.Overlay.Color;
			BackgroundTransparency = arg1.promptStyle.Theme.Overlay.Transparency;
			BorderSizePixel = 0;
			Size = UDim2.new(1, 0, 1, 0);
			Text = "";
		});
	}
	local tbl_8 = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Image = Assets_upvr.Images.RoundedRect.Image;
		ImageColor3 = arg1.promptStyle.Theme.BackgroundUIDefault.Color;
		ImageTransparency = arg1.promptStyle.Theme.BackgroundUIDefault.Transparency;
		Position = UDim2.new(0.5, 0, 0.5, 0);
		ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
		Size = UDim2.new(0, 365, 0, var21 + 5 + var22 + 36 + var23 * 20 + var25 + 55 + var24);
		AutomaticSize = Enum.AutomaticSize.Y;
		SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
		SelectionBehaviorDown = nil;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_8.SelectionBehaviorLeft = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_8.SelectionBehaviorRight = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_8.SelectionBehaviorUp = nil
	tbl_8.SelectionGroup = var28
	if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
	else
	end
	tbl_8.ref = nil
	local tbl_4 = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 15);
			PaddingBottom = UDim.new(0, 20);
			PaddingLeft = UDim.new(0, 20);
			PaddingRight = UDim.new(0, 20);
		});
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Icon = React_upvr.createElement(UIBlox_upvr.Core.ImageSet.ImageSetLabel, {
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Image = icons_controls_microphone_upvr;
			Size = UDim2.new(0, 55, 0, 55);
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		});
		TitleTextContainer = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, var21);
			AutomaticSize = Enum.AutomaticSize.Y;
		}, {
			Padding = React_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 7);
			});
			TitleText = React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
				fontStyle = arg1.promptStyle.Font.Header1;
				colorStyle = arg1.promptStyle.Theme.SystemPrimaryDefault;
				textXAlignment = Enum.TextXAlignment.Center;
				size = UDim2.new(1, 0, 1, 0);
				text = arg1.titleText;
			});
		});
		Divider = React_upvr.createElement("Frame", {
			BackgroundColor3 = arg1.promptStyle.Theme.Divider.Color;
			BackgroundTransparency = arg1.promptStyle.Theme.Divider.Transparency;
			BorderSizePixel = 0;
			LayoutOrder = 3;
			Size = UDim2.new(1, 0, 0, 1);
		});
		DividerSpaceContainer = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 4;
			Size = UDim2.new(1, 0, 0, 15);
		});
		BodyTextContainer = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 5;
			Size = UDim2.new(1, 0, 0, var22);
		}, {
			BodyText = React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
				fontStyle = arg1.promptStyle.Font.Body;
				colorStyle = arg1.promptStyle.Theme.TextDefault;
				textXAlignment = Enum.TextXAlignment.Left;
				size = UDim2.new(1, 0, 1, 0);
				text = arg1.bodyText;
				lineHeight = 1.2;
			});
		});
	}
	if var9_result1 then
		local _ = {
			BackgroundTransparency = 1;
			LayoutOrder = 6;
			Size = UDim2.new(1, 0, 0, var25 + 20);
		}
		local tbl_5 = {}
		local tbl_3 = {}
		if getPrimingText_upvr_result1 then
		else
		end
		tbl_3.PaddingTop = UDim.new(0, 15)
		tbl_3.PaddingLeft = UDim.new(0, 8)
		tbl_5.Padding = React_upvr.createElement("UIPadding", tbl_3)
		tbl_5.TextContainer = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, var25);
		}, {
			InfoText = React_upvr.createElement(UIBlox_upvr.App.Text.StyledTextLabel, {
				fontStyle = arg1.promptStyle.Font.Body;
				colorStyle = arg1.promptStyle.Theme.TextEmphasis;
				textXAlignment = Enum.TextXAlignment.Left;
				textYAlignment = Enum.TextYAlignment.Top;
				size = UDim2.new(1, 0, 1, 0);
				text = var9_result1;
				lineHeight = 1.25;
			});
		})
		-- KONSTANTWARNING: GOTO [846] #568
	end
	-- KONSTANTERROR: [0] 1. Error Block 103 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [845] 567. Error Block 106 start (CF ANALYSIS FAILED)
	tbl_4.InfoTextContainer = nil
	local var52
	if not getPrimingText_upvr_result1 then
		if var9_result1 then
			var52 = 40
		else
			var52 = 20
		end
		;({
			BackgroundTransparency = 1;
			LayoutOrder = 7;
		}).Size = UDim2.new(1, 0, 0, var52)
	else
	end
	tbl_4.SpaceContainer = nil
	if getPrimingText_upvr_result1 then
		var52 = var24
		;({
			BackgroundTransparency = 1;
			LayoutOrder = 8;
		}).Size = UDim2.new(1, 0, 0, var52)
		var52 = UIBlox_upvr.App
		local tbl_6 = {}
		var52 = arg1.promptStyle.Font.Body
		tbl_6.fontStyle = var52
		var52 = arg1.promptStyle.Theme.TextDefault
		tbl_6.colorStyle = var52
		var52 = Enum.TextXAlignment.Left
		tbl_6.textXAlignment = var52
		var52 = Enum.TextYAlignment.Top
		tbl_6.textYAlignment = var52
		var52 = UDim2.new(1, 0, 1, 0)
		tbl_6.size = var52
		tbl_6.text = getPrimingText_upvr_result1
		var52 = 1.25
		tbl_6.lineHeight = var52
		;({}).PrimingText = React_upvr.createElement(var52.Text.StyledTextLabel, tbl_6)
		-- KONSTANTWARNING: GOTO [954] #643
	end
	tbl_4.PrimingTextContainer = nil
	if getPrimingText_upvr_result1 then
		var52 = 30
		;({
			BackgroundTransparency = 1;
			LayoutOrder = 9;
		}).Size = UDim2.new(1, 0, 0, var52)
		-- KONSTANTWARNING: GOTO [980] #663
	end
	tbl_4.SpaceContainerTemp = nil
	local tbl_2 = {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 12);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	if arg1.settingsAppAvailable then
		local tbl_7 = {
			buttonType = ButtonType_upvr.Secondary;
			layoutOrder = 1;
			size = UDim2.new(0.5, -5, 0, 36);
			text = any_FormatByKey_result1_upvr_2;
			onActivated = arg1.handleSecondaryActivated;
			Selectable = var28;
		}
		-- KONSTANTWARNING: GOTO [1071] #725
	end
	tbl_2.SecondaryButton = nil
	local tbl = {
		buttonType = ButtonType_upvr.PrimarySystem;
		layoutOrder = 2;
	}
	if arg1.settingsAppAvailable then
		-- KONSTANTWARNING: GOTO [1094] #741
	end
	tbl.size = UDim2.new(1, -5, 0, 36)
	if arg1.settingsAppAvailable then
	else
	end
	tbl.text = any_FormatByKey_result1_upvr
	tbl.onActivated = arg1.handlePrimaryActivated
	tbl.Selectable = var28
	tbl_2.ConfirmButton = React_upvr.createElement(Button_upvr, tbl)
	tbl_4.ButtonContainer = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 10;
		Size = UDim2.new(1, 0, 0, 36);
	}, tbl_2)
	module.DialogMainFrame = React_upvr.createElement(UIBlox_upvr.Core.ImageSet.ImageSetLabel, tbl_8, tbl_4)
	do
		return React_upvr.createElement("ScreenGui", {
			DisplayOrder = 8;
			IgnoreGuiInset = true;
			OnTopOfCoreBlur = true;
			Enabled = arg1.showPrompt;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, module)
	end
	-- KONSTANTERROR: [845] 567. Error Block 106 end (CF ANALYSIS FAILED)
end
if GetFFlagSupportGamepadNavInVoiceModals_upvr() then
	return React_upvr.forwardRef(DevicePermissionsModal)
end
return DevicePermissionsModal