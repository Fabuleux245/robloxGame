-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:33
-- Luau version 6, Types version 3
-- Time taken: 0.002665 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local ChatBubbleEnum_upvr = require(script.Parent.ChatBubbleEnum)
local Foundation_upvr = require(Parent.Foundation)
local tbl_upvr = {
	alignment = Enum.HorizontalAlignment.Right;
	children = {};
	imageStyle = {
		Color3 = Color3.new(0, 0, 0);
		Transparency = 0;
	};
	layoutOrder = 0;
	onAbsoluteSizeChanged = function(arg1) -- Line 27, Named "onAbsoluteSizeChanged"
	end;
	padding = 0;
	position = UDim2.new(0, 0, 0, 0);
	setContentWidth = function(arg1) -- Line 30, Named "setContentWidth"
	end;
	variant = ChatBubbleEnum_upvr.BUBBLE_VARIANTS.SINGLE;
}
local Cryo_upvr = require(Parent.Cryo)
local Image_upvr = Foundation_upvr.Image
function ChatBubbleGroupable(arg1) -- Line 34
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ChatBubbleEnum_upvr (readonly)
		[5]: Image_upvr (readonly)
		[6]: Foundation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_union_result1_upvr = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local padding = any_union_result1_upvr.padding
	local var11_upvr = padding + 2
	local var12
	if any_union_result1_upvr.alignment ~= Enum.HorizontalAlignment.Left then
		var12 = false
	else
		var12 = true
	end
	if var12 then
	else
	end
	if any_union_result1_upvr.variant == ChatBubbleEnum_upvr.BUBBLE_VARIANTS.SINGLE then
	elseif any_union_result1_upvr.variant == ChatBubbleEnum_upvr.BUBBLE_VARIANTS.TOP then
	elseif any_union_result1_upvr.variant == ChatBubbleEnum_upvr.BUBBLE_VARIANTS.BOTTOM then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	return React_upvr.createElement(Image_upvr, {
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		Image = ChatBubbleEnum_upvr.GROUPED_OUTGOING_BUBBLES.BUBBLE_MIDDLE;
		ScaleType = Enum.ScaleType.Slice;
		slice = {
			center = ChatBubbleEnum_upvr.GROUPED_BUBBLE_SLICE_CENTER;
		};
		imageStyle = any_union_result1_upvr.imageStyle;
		Position = any_union_result1_upvr.position;
		LayoutOrder = any_union_result1_upvr.layoutOrder;
		onAbsoluteSizeChanged = any_union_result1_upvr.onAbsoluteSizeChanged;
	}, React_upvr.createElement(Foundation_upvr.View, {
		tag = "auto-xy size-0-0";
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		padding = {
			top = UDim.new(0, padding);
			bottom = UDim.new(0, padding);
			left = UDim.new(0, var11_upvr);
			right = UDim.new(0, var11_upvr);
		};
	}, Cryo_upvr.Dictionary.join({
		UIListLayout = React_upvr.createElement("UIListLayout", {
			[React_upvr.Change.AbsoluteContentSize] = React_upvr.useCallback(function(arg1_2) -- Line 40
				--[[ Upvalues[2]:
					[1]: any_union_result1_upvr (readonly)
					[2]: var11_upvr (readonly)
				]]
				any_union_result1_upvr.setContentWidth(arg1_2.AbsoluteContentSize.X + var11_upvr * 2)
			end, {any_union_result1_upvr.setContentWidth, var11_upvr});
		});
	}, any_union_result1_upvr.children)))
end
return React_upvr.memo(ChatBubbleGroupable)