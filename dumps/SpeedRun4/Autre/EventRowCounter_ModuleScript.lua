-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:42
-- Luau version 6, Types version 3
-- Time taken: 0.001917 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local tbl_upvr = {
	iconSize = Vector2.new(18, 18);
	padding = UDim.new(0, 4);
}
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(VirtualEvents.Parent.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local formatNumberWithShortUnits_upvr = require(VirtualEvents.Common.formatNumberWithShortUnits)
return function(arg1) -- Line 27, Named "EventRowCounter"
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
		[7]: formatNumberWithShortUnits_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var5_result1 = useStyle_upvr()
	if any_join_result1.counter == 0 then
		return nil
	end
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_join_result1.layoutOrder;
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			Padding = any_join_result1.padding;
		});
		Icon = React_upvr.createElement(ImageSetLabel_upvr, {
			LayoutOrder = 1;
			Size = UDim2.fromOffset(any_join_result1.iconSize.X, any_join_result1.iconSize.Y);
			ScaleType = Enum.ScaleType.Stretch;
			Image = any_join_result1.icon;
			BackgroundTransparency = 1;
			ImageColor3 = var5_result1.Theme.TextDefault.Color;
			ImageTransparency = var5_result1.Theme.TextDefault.Transparency;
		});
		Count = React_upvr.createElement(StyledTextLabel_upvr, {
			layoutOrder = 2;
			text = formatNumberWithShortUnits_upvr(any_join_result1.counter);
			automaticSize = Enum.AutomaticSize.XY;
			fontStyle = var5_result1.Font.CaptionBody;
			colorStyle = var5_result1.Theme.TextDefault;
		});
	})
end