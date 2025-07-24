-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:40
-- Luau version 6, Types version 3
-- Time taken: 0.001847 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	bodyText = "Chat Disabled";
	defaultCountdownString = "";
	onActivated = function() -- Line 26, Named "onActivated"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local Foundation_upvr = require(Parent.Foundation)
local useCountdownBinding_upvr = require(Parent.InterventionShared).Hooks.useCountdownBinding
local React_upvr = require(Parent.React)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 29, Named "ChatInputBoxDisabled"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Foundation_upvr (readonly)
		[4]: useCountdownBinding_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Interactable_upvr (readonly)
		[7]: ImageSetLabel_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local any_useTokens_result1 = Foundation_upvr.Hooks.useTokens()
	local module = {
		uiListLayout = React_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, any_useTokens_result1.Gap.Small);
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local any_createElement_result1 = React_upvr.createElement(Foundation_upvr.Text, {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 0, 1, 0);
		Text = any_union_result1.bodyText;
		Font = any_union_result1.font;
		TextSize = any_union_result1.contentSize;
		textStyle = any_useTokens_result1.Color.System.Alert;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextWrapped = false;
		TextTruncate = Enum.TextTruncate.AtEnd;
		tag = "fill";
		LayoutOrder = 1;
	})
	module.disabledText = any_createElement_result1
	if any_union_result1.endTimestamp ~= nil then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(Foundation_upvr.Text, {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.X;
			Size = UDim2.new(0, 0, 1, 0);
			Text = useCountdownBinding_upvr(any_union_result1.endTimestamp, any_union_result1.defaultCountdownString);
			Font = any_union_result1.font;
			TextSize = any_union_result1.contentSize;
			textStyle = any_useTokens_result1.Color.Content.Emphasis;
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Top;
			TextWrapped = false;
			LayoutOrder = 2;
		})
	else
		any_createElement_result1 = nil
	end
	module.countdownText = any_createElement_result1
	module.icon = React_upvr.createElement(ImageSetLabel_upvr, {
		Size = UDim2.new(0, any_union_result1.contentSize, 0, any_union_result1.contentSize);
		BackgroundTransparency = 1;
		ImageColor3 = any_useTokens_result1.Color.System.Alert.Color3;
		ImageTransparency = any_useTokens_result1.Color.System.Alert.Transparency;
		Image = Images_upvr["icons/status/error_large"];
		LayoutOrder = 3;
	})
	return React_upvr.createElement(Interactable_upvr, {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		[React_upvr.Event.Activated] = any_union_result1.onActivated;
	}, module)
end