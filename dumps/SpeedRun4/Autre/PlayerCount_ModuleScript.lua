-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:52
-- Luau version 6, Types version 3
-- Time taken: 0.002055 seconds

local App = script:FindFirstAncestor("App")
local Parent = App.Parent
local GetTextSize_upvr = require(Parent.Core.Text.GetTextSize)
local var4_upvr = require(App.ImageSet.getIconSize)(require(App.ImageSet.Enum.IconSize).Large)
local function _(arg1, arg2, arg3) -- Line 30, Named "getTextWidth"
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	return GetTextSize_upvr(arg1, arg2.RelativeSize * arg3.Font.BaseSize, arg2.Font, Vector2.new(10000, 10000)).X
end
local function _(arg1, arg2) -- Line 37, Named "getMeasuredSectionWidth"
	--[[ Upvalues[2]:
		[1]: GetTextSize_upvr (readonly)
		[2]: var4_upvr (readonly)
	]]
	local Title = arg2.Font.Title
	local CaptionHeader_2 = arg2.Font.CaptionHeader
	return math.max(GetTextSize_upvr(arg1.countText, Title.RelativeSize * arg2.Font.BaseSize, Title.Font, Vector2.new(10000, 10000)).X, GetTextSize_upvr(arg1.labelText, CaptionHeader_2.RelativeSize * arg2.Font.BaseSize, CaptionHeader_2.Font, Vector2.new(10000, 10000)).X) + var4_upvr + 12
end
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local React_upvr = require(Parent.Parent.React)
local StatWidget_upvr = require(App.Indicator.StatWidget)
return function(arg1) -- Line 43, Named "PlayerCount"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: var4_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: StatWidget_upvr (readonly)
	]]
	local var7_result1 = useStyle_upvr()
	local countLeft = arg1.countLeft
	local Title_3 = var7_result1.Font.Title
	local CaptionHeader = var7_result1.Font.CaptionHeader
	local _ = math.max(GetTextSize_upvr(countLeft.countText, Title_3.RelativeSize * var7_result1.Font.BaseSize, Title_3.Font, Vector2.new(10000, 10000)).X, GetTextSize_upvr(countLeft.labelText, CaptionHeader.RelativeSize * var7_result1.Font.BaseSize, CaptionHeader.Font, Vector2.new(10000, 10000)).X) + var4_upvr + 12
	local countRight_2 = arg1.countRight
	local Title_2 = var7_result1.Font.Title
	local CaptionHeader_3 = var7_result1.Font.CaptionHeader
	local var18 = _ / ((_) + (math.max(GetTextSize_upvr(countRight_2.countText, Title_2.RelativeSize * var7_result1.Font.BaseSize, Title_2.Font, Vector2.new(10000, 10000)).X, GetTextSize_upvr(countRight_2.labelText, CaptionHeader_3.RelativeSize * var7_result1.Font.BaseSize, CaptionHeader_3.Font, Vector2.new(10000, 10000)).X) + var4_upvr + 12))
	local countLeft_2 = arg1.countLeft
	local countRight = arg1.countRight
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
		AutomaticSize = Enum.AutomaticSize.Y;
	}, {
		LeftSection = React_upvr.createElement(StatWidget_upvr, {
			countText = countLeft_2.countText;
			labelText = countLeft_2.labelText;
			icon = countLeft_2.icon;
			layoutOrder = 1;
			position = UDim2.new(0, 0, 0, 0);
			anchorPoint = Vector2.new(0, 0);
			size = UDim2.new(var18, 0, 1, 0);
			horizontalAlignment = Enum.HorizontalAlignment.Left;
		});
		RightSection = React_upvr.createElement(StatWidget_upvr, {
			countText = countRight.countText;
			labelText = countRight.labelText;
			icon = countRight.icon;
			layoutOrder = 2;
			position = UDim2.new(1, 0, 0, 0);
			anchorPoint = Vector2.new(1, 0);
			size = UDim2.new(1 - var18, 0, 1, 0);
			horizontalAlignment = Enum.HorizontalAlignment.Right;
		});
	})
end