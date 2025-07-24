-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:29
-- Luau version 6, Types version 3
-- Time taken: 0.002825 seconds

local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local GetFFlagEmojiWrapperMaximumEmojiSize_upvr = require(VerifiedBadges.Parent.SharedFlags).GetFFlagEmojiWrapperMaximumEmojiSize
local tbl_2_upvr = {
	anchorPoint = Vector2.new();
	position = UDim2.new();
	color = Color3.fromHex("#fff");
	font = Enum.Font.Gotham;
	size = UDim2.fromScale(1, 0);
}
local XY = Enum.AutomaticSize.XY
tbl_2_upvr.automaticSize = XY
if GetFFlagEmojiWrapperMaximumEmojiSize_upvr() then
	XY = Enum.VerticalAlignment.Center
else
	XY = nil
end
tbl_2_upvr.verticalAlignment = XY
local Cryo_upvr = require(VerifiedBadges.Parent.Cryo)
local React_upvr = require(VerifiedBadges.Parent.React)
local ReactRoblox_upvr = require(VerifiedBadges.Parent.ReactRoblox)
return function(arg1) -- Line 90, Named "EmojiWrapper"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: GetFFlagEmojiWrapperMaximumEmojiSize_upvr (readonly)
		[5]: ReactRoblox_upvr (readonly)
	]]
	local var8 = arg1
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, var8)
	if any_join_result1_upvr.children then
		if React_upvr.Children.count(any_join_result1_upvr.children) > 1 then
			var8 = false
		else
			var8 = true
		end
		assert(var8, "EmojiWrapper can only contain one child")
	end
	if any_join_result1_upvr.emoji == "" then
		return any_join_result1_upvr.children
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(0)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(-1)
	local module = {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = any_join_result1_upvr.horizontalAlignment;
			VerticalAlignment = any_join_result1_upvr.verticalAlignment;
			Padding = UDim.new(0, -any_useState_result1_upvr);
		});
		ChildrenWrapper = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			[ReactRoblox_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_2) -- Line 104
				--[[ Upvalues[6]:
					[1]: GetFFlagEmojiWrapperMaximumEmojiSize_upvr (copied, readonly)
					[2]: any_join_result1_upvr (readonly)
					[3]: any_useState_result1_upvr_2 (readonly)
					[4]: any_useState_result2_upvr_2 (readonly)
					[5]: any_useState_result1_upvr (readonly)
					[6]: any_useState_result2_upvr (readonly)
				]]
				local var15
				if GetFFlagEmojiWrapperMaximumEmojiSize_upvr() then
					if any_join_result1_upvr.maximumEmojiSize then
						var15 = math.min(arg1_2.AbsoluteSize.Y, any_join_result1_upvr.maximumEmojiSize)
					else
						var15 = arg1_2.AbsoluteSize.Y
					end
				else
					var15 = arg1_2.AbsoluteSize.Y
				end
				if var15 ~= any_useState_result1_upvr_2 then
					any_useState_result2_upvr_2(any_useState_result1_upvr)
					any_useState_result2_upvr(var15)
				end
			end, {any_useState_result1_upvr, any_useState_result1_upvr_2});
		}, {
			Padding = React_upvr.createElement("UIPadding", {
				PaddingRight = UDim.new(0, any_useState_result1_upvr);
			});
			Children = React_upvr.createElement(React_upvr.Fragment, nil, any_join_result1_upvr.children);
		});
	}
	local tbl = {}
	local onActivated = arg1.onActivated
	if onActivated then
		onActivated = React_upvr.createElement
		onActivated = onActivated("ImageButton", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			[ReactRoblox_upvr.Event.Activated] = arg1.onActivated;
		})
	end
	tbl.Button = onActivated
	tbl.UITextSizeConstraint = React_upvr.createElement("UITextSizeConstraint", {
		MaxTextSize = math.max(any_useState_result1_upvr, 1);
		MinTextSize = 0;
	})
	module.Emoji = React_upvr.createElement("TextLabel", {
		LayoutOrder = 2;
		Text = any_join_result1_upvr.emoji;
		Font = any_join_result1_upvr.font;
		TextColor3 = any_join_result1_upvr.color;
		TextSize = any_useState_result1_upvr;
		BackgroundTransparency = 1;
		TextYAlignment = Enum.TextYAlignment.Center;
		TextXAlignment = Enum.TextXAlignment.Center;
		Size = UDim2.fromOffset(any_useState_result1_upvr, any_useState_result1_upvr);
	}, tbl)
	return React_upvr.createElement("Frame", {
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		AnchorPoint = any_join_result1_upvr.anchorPoint;
		Position = any_join_result1_upvr.position;
		Size = any_join_result1_upvr.size;
		AutomaticSize = any_join_result1_upvr.automaticSize;
		BackgroundTransparency = 1;
	}, module)
end