-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:49:49
-- Luau version 6, Types version 3
-- Time taken: 0.003110 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local SocialLibraries = require(AppChat.SocialLibraries)
local tbl_upvr = {
	titleText = "";
	cancelAlertText = "";
	bodyText = "";
	isButtonDisabled = false;
	screenSize = Vector2.new(1000, 1000);
	onActivated = function() -- Line 41, Named "onActivated"
	end;
	onDismissed = function() -- Line 42, Named "onDismissed"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local Warning_upvr = SocialLibraries.Components.AlertViews.Warning
local Info_upvr = SocialLibraries.Components.AlertViews.Info
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local Enum_upvr = UIBlox.App.Button.Enum
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return React_upvr.memo(function(arg1) -- Line 45, Named "PartialModal"
	--[[ Upvalues[10]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useIsInExperience_upvr (readonly)
		[5]: Warning_upvr (readonly)
		[6]: Info_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: PartialPageModal_upvr (readonly)
		[9]: Enum_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local var16 = any_union_result1.style or useStyle_upvr()
	local Tokens = var16.Tokens
	local var19
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 29. Error Block 37 start (CF ANALYSIS FAILED)
	if any_union_result1.actionText then
		var19 = any_union_result1.actionText
	else
		var19 = any_union_result1.cancelAlertText
	end
	do
		return React_upvr.createElement(Tokens, {
			titleText = any_union_result1.titleText;
			bodyText = any_union_result1.bodyText;
			cancelText = nil;
			confirmText = var19;
			screenSize = any_union_result1.screenSize;
			soakAreaColor3 = Color3.fromRGB(25, 25, 25);
			soakAreaTransparency = 0.8;
			width = UDim.new(0.8, 0);
			displayFailed = false;
			onActivated = any_union_result1.onActivated;
			onModalClose = any_union_result1.onDismissed;
		})
	end
	-- KONSTANTERROR: [40] 29. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [101] 68. Error Block 35 start (CF ANALYSIS FAILED)
	var19 = {}
	local titleText = any_union_result1.titleText
	var19.title = titleText
	if any_union_result1.actionText then
		titleText = {}
		titleText.buttons = {{
			buttonType = Enum_upvr.ButtonType.PrimarySystem;
			props = {
				onActivated = any_union_result1.onActivated;
				text = any_union_result1.actionText;
				isDisabled = any_union_result1.isButtonDisabled;
			};
		}}
	else
		titleText = nil
	end
	var19.buttonStackProps = titleText
	var19.screenSize = any_union_result1.screenSize
	var19.onCloseClicked = any_union_result1.onDismissed
	local module = {}
	local tbl = {}
	local tbl_2 = {
		PaddingTop = UDim.new(0, var16.Tokens.Global.Space_300 / 2);
	}
	if any_union_result1.actionText then
	else
	end
	tbl_2.PaddingBottom = nil
	tbl.ContentPadding = React_upvr.createElement("UIPadding", tbl_2)
	tbl.Body = React_upvr.createElement(StyledTextLabel_upvr, {
		text = any_union_result1.bodyText;
		textXAlignment = Enum.TextXAlignment.Left;
		fontStyle = var16.Font.Body;
		lineHeight = Tokens.Global.LineHeight_400;
		colorStyle = var16.Theme.TextDefault;
		size = UDim2.fromScale(1, 0);
		automaticSize = Enum.AutomaticSize.Y;
		fluidSizing = false;
	})
	module.Body = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, tbl)
	do
		return React_upvr.createElement(PartialPageModal_upvr, var19, module)
	end
	-- KONSTANTERROR: [101] 68. Error Block 35 end (CF ANALYSIS FAILED)
end)