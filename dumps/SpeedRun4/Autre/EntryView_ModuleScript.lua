-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:29
-- Luau version 6, Types version 3
-- Time taken: 0.002134 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local function noOp() -- Line 31
end
local tbl_upvr = {
	onClose = noOp;
	isButtonDisabled = false;
	onExtraButtonClick = noOp;
	isExtraButtonDisabled = false;
}
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function getButtonStackProps_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 40, Named "getButtonStackProps"
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	local tbl = {}
	local tbl_3 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_2 = {}
	tbl_2.onActivated = arg2
	tbl_2.text = arg1
	tbl_2.isDisabled = arg3
	tbl_3.props = tbl_2
	tbl[1] = tbl_3
	if arg4 and arg4 ~= "" then
		local tbl_5 = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl_4 = {}
		tbl_4.onActivated = arg5
		tbl_4.text = arg4
		tbl_4.isDisabled = arg6
		tbl_5.props = tbl_4
		table.insert(tbl, 1, tbl_5)
	end
	return {
		buttonHeight = 48;
		forcedFillDirection = Enum.FillDirection.Vertical;
		buttons = tbl;
	}
end
local mergeProps_upvr = require(PhoneUpsell.Utils.mergeProps)
local getPartialPageModalMiddleContentWidth_upvr = UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
return function(arg1) -- Line 76, Named "EntryView"
	--[[ Upvalues[8]:
		[1]: mergeProps_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: PartialPageModal_upvr (readonly)
		[8]: getButtonStackProps_upvr (readonly)
	]]
	local var12_result1 = mergeProps_upvr(tbl_upvr, arg1)
	if var12_result1.extraButtonKey and var12_result1.extraButtonKey ~= "" then
		({
			titleKey = var12_result1.titleKey;
			descriptionKey = var12_result1.descriptionKey;
			buttonKey = var12_result1.buttonKey;
		}).extraButtonKey = var12_result1.extraButtonKey
	end
	local var14_result1 = useStyle_upvr()
	local var22 = {
		titleKey = "Before you leave";
		descriptionKey = "This experience would be even more exciting with Voice Chat turned on. Unlock now before your next session.";
		buttonKey = "Unlock voice chat";
		extraButtonKey = "Leave experience";
	}
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = var22.titleKey;
		screenSize = var12_result1.screenSize;
		buttonStackProps = getButtonStackProps_upvr(var22.buttonKey, var12_result1.onButtonClick, var12_result1.isButtonDisabled, var22.extraButtonKey, var12_result1.onExtraButtonClick, var12_result1.isExtraButtonDisabled);
		onCloseClicked = var12_result1.onClose;
	}, {
		Middle = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
		}, {
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
				Text = var22.descriptionKey;
				TextSize = var14_result1.Font.BaseSize;
				TextColor3 = var14_result1.Theme.TextDefault.Color;
				TextTransparency = var14_result1.Theme.TextDefault.Transparency;
				Font = var14_result1.Font.Body.Font;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextWrapped = true;
				Size = UDim2.new(0, getPartialPageModalMiddleContentWidth_upvr(var12_result1.screenSize.X), 0, 0);
				AutomaticSize = Enum.AutomaticSize.Y;
				RichText = true;
			});
		});
	})
end