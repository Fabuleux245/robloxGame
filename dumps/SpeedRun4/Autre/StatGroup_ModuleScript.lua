-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:53
-- Luau version 6, Types version 3
-- Time taken: 0.002136 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Core = Parent.Core
local React_upvr = require(Parent.Parent.React)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent_2.ImageSet.Images)
local function renderStatItem_upvr(arg1, arg2, arg3, arg4) -- Line 26, Named "renderStatItem"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ImageSetComponent_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	local Tokens = arg4.Tokens
	local Font = arg4.Font
	local var9 = Font.BaseSize * Font.Body.RelativeSize
	local Small = Tokens.Semantic.Icon.Size.Small
	local Default = Tokens.Semantic.Color.Text.Default
	local Default_2 = Tokens.Semantic.Color.Text.Default
	local module = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, Tokens.Global.Space_25);
		});
		Icon = React_upvr.createElement(ImageSetComponent_upvr.Label, {
			Size = UDim2.fromOffset(Small, Small);
			Image = Images_upvr[arg2];
			BackgroundTransparency = 1;
			ImageTransparency = Default.Transparency;
			ImageColor3 = Default.Color3;
			LayoutOrder = 1;
			AnchorPoint = Vector2.new(0, 0.5);
		});
	}
	local tbl = {
		Size = UDim2.fromScale(0, 0);
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
	}
	tbl.Text = arg3
	tbl.Font = Font.Body.Font
	tbl.TextSize = var9
	tbl.TextXAlignment = Enum.TextXAlignment.Left
	tbl.TextYAlignment = Enum.TextYAlignment.Center
	tbl.TextTruncate = Enum.TextTruncate.AtEnd
	tbl.TextWrapped = false
	tbl.TextColor3 = Default_2.Color3
	tbl.TextTransparency = Default_2.Transparency
	tbl.LayoutOrder = 2
	module.Label = React_upvr.createElement("TextLabel", tbl, {
		UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(Tokens.Global.Size_700, math.huge);
		});
		UiTextSizeConstraint = React_upvr.createElement("UITextSizeConstraint", {
			MaxTextSize = var9 + Tokens.Global.Size_100;
		});
	})
	return React_upvr.createElement("Frame", arg1, module)
end
local useStyle_upvr = require(Core.Style.useStyle)
return function(arg1) -- Line 78, Named "StatGroup"
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: renderStatItem_upvr (readonly)
	]]
	local var20_result1 = useStyle_upvr()
	local module_2 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, var20_result1.Tokens.Global.Space_100);
		});
	}
	local renderStatItem_upvr_result1 = renderStatItem_upvr({
		Size = UDim2.fromScale(0, 0);
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, "icons/status/games/rating_small", arg1.ratingText, var20_result1)
	module_2.RatingStats = renderStatItem_upvr_result1
	if arg1.playingText ~= nil then
		renderStatItem_upvr_result1 = renderStatItem_upvr
		renderStatItem_upvr_result1 = renderStatItem_upvr_result1({
			Size = UDim2.fromScale(0, 0);
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			LayoutOrder = 2;
		}, "icons/status/games/people-playing_small", arg1.playingText, var20_result1)
	else
		renderStatItem_upvr_result1 = nil
	end
	module_2.PlayingStats = renderStatItem_upvr_result1
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.X;
	}, module_2)
end