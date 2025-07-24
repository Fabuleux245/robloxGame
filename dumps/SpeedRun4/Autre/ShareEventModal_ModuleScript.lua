-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:49
-- Luau version 6, Types version 3
-- Time taken: 0.003359 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local function selectScreenSize_upvr(arg1) -- Line 31, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useSelector_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useNavigation_upvr = require(VirtualEvents.Parent.Navigation).useNavigation
local React_upvr = require(VirtualEvents.Parent.React)
local UrlBuilder_upvr = require(VirtualEvents.Parent.UrlBuilder).UrlBuilder
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local udim_upvr_3 = UDim.new(0, 24)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local FFlagLuaAppFixShareModalWindowPopup_upvr = require(VirtualEvents.Parent.SharedFlags).FFlagLuaAppFixShareModalWindowPopup
local udim_upvr_2 = UDim.new(0, 2)
local udim_upvr = UDim.new(0, 8)
local SelectableTextLabel_upvr = require(script.Parent.SelectableTextLabel)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 35, Named "ShareEventModal"
	--[[ Upvalues[16]:
		[1]: useStyle_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectScreenSize_upvr (readonly)
		[4]: useNavigation_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: UrlBuilder_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: PartialPageModal_upvr (readonly)
		[9]: udim_upvr_3 (readonly)
		[10]: StyledTextLabel_upvr (readonly)
		[11]: FFlagLuaAppFixShareModalWindowPopup_upvr (readonly)
		[12]: udim_upvr_2 (readonly)
		[13]: udim_upvr (readonly)
		[14]: SelectableTextLabel_upvr (readonly)
		[15]: Button_upvr (readonly)
		[16]: ButtonType_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local useNavigation_upvr_result1_upvr = useNavigation_upvr()
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 40
		--[[ Upvalues[2]:
			[1]: UrlBuilder_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return UrlBuilder_upvr.virtualevents.appsflyer({
			eventId = arg1.virtualEventId;
		})
	end, {arg1.virtualEventId})
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = "Feature.VirtualEvents.ShareModalTitle";
		body = "Feature.VirtualEvents.ShareModalBody";
		copyLink = "Feature.VirtualEvents.ShareModalLinkCopy";
		callToAction = "Feature.VirtualEvents.ShareModalCallToAction";
	})
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = useNavigation_upvr_result1_upvr
	local module = {}
	local tbl = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = udim_upvr_3;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = udim_upvr_3;
		});
	}
	local tbl_3 = {
		layoutOrder = 1;
		text = useLocalization_upvr_result1.body;
		fontStyle = useStyle_upvr_result1.Font.Body;
	}
	local TextMuted = useStyle_upvr_result1.Theme.TextMuted
	tbl_3.colorStyle = TextMuted
	if FFlagLuaAppFixShareModalWindowPopup_upvr then
		TextMuted = UDim2.new(1, 0, 0, 40)
	else
		TextMuted = UDim2.fromScale(1, 0)
	end
	tbl_3.size = TextMuted
	if FFlagLuaAppFixShareModalWindowPopup_upvr then
		TextMuted = nil
	else
		TextMuted = Enum.AutomaticSize.Y
	end
	tbl_3.automaticSize = TextMuted
	TextMuted = false
	tbl_3.fluidSizing = TextMuted
	tbl.Body = React_upvr.createElement(StyledTextLabel_upvr, tbl_3)
	local tbl_4 = {}
	TextMuted = 2
	tbl_4.LayoutOrder = TextMuted
	TextMuted = Enum.AutomaticSize.XY
	tbl_4.AutomaticSize = TextMuted
	TextMuted = 1
	tbl_4.BackgroundTransparency = TextMuted
	TextMuted = {}
	TextMuted.Layout = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		Padding = udim_upvr_3;
	})
	TextMuted.Field = React_upvr.createElement("Frame", {
		LayoutOrder = 1;
		Size = UDim2.fromScale(0.8, 0) - UDim2.fromOffset(udim_upvr_3.Offset, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = useStyle_upvr_result1.Theme.UIMuted.Color;
		BackgroundTransparency = 1;
	}, {
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr_2;
		});
		Border = React_upvr.createElement("UIStroke", {
			Color = useStyle_upvr_result1.Theme.UIDefault.Color;
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = udim_upvr;
			PaddingRight = udim_upvr;
			PaddingBottom = udim_upvr;
			PaddingLeft = udim_upvr;
		});
		Label = React_upvr.createElement(SelectableTextLabel_upvr, {
			fontStyle = useStyle_upvr_result1.Font.Body;
			colorStyle = useStyle_upvr_result1.Theme.TextMuted;
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			Text = any_useMemo_result1_upvr;
		});
	})
	TextMuted.Action = React_upvr.createElement(Button_upvr, {
		buttonType = ButtonType_upvr.PrimarySystem;
		layoutOrder = 2;
		text = useLocalization_upvr_result1.copyLink;
		size = UDim2.new(0.2, 0, 0, 32);
		onActivated = React_upvr.useCallback(function() -- Line 61
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useMemo_result1_upvr (readonly)
			]]
			if arg1.onCopy then
				arg1.onCopy(any_useMemo_result1_upvr)
			end
		end, {any_useMemo_result1_upvr, arg1.onCopy});
	})
	tbl.Deeplink = React_upvr.createElement("Frame", tbl_4, TextMuted)
	module.Wrapper = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, tbl)
	return React_upvr.createElement(PartialPageModal_upvr, {
		title = useLocalization_upvr_result1.title;
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		contentPadding = udim_upvr_3;
		onCloseClicked = React_upvr.useCallback(function() -- Line 53
			--[[ Upvalues[2]:
				[1]: useNavigation_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			useNavigation_upvr_result1_upvr.goBack()
			if arg1.onClose then
				arg1.onClose()
			end
		end, tbl_2);
	}, module)
end