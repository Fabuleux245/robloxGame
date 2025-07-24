-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:31
-- Luau version 6, Types version 3
-- Time taken: 0.004881 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent_4 = Parent_2.Parent
local Roact_upvr = require(Parent_4.Roact)
local t = require(Parent_4.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ModalWindow")
any_extend_result1.validateProps = t.strictInterface({
	isFullHeight = t.boolean;
	screenSize = t.Vector2;
	[Roact_upvr.Children] = t.table;
	position = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	distanceFromTop = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	distanceFromTop = 0;
}
function any_extend_result1.init(arg1) -- Line 48
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(Vector2.new(0, 0))
	arg1.contentSize = any_createBinding_result1
	arg1.changeContentSize = any_createBinding_result2
end
function any_extend_result1.isFullWidth(arg1, arg2) -- Line 53
	local var12
	if arg2 >= 540 then
		var12 = false
	else
		var12 = true
	end
	return var12
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local getModalWindowWidth_upvr = require(Parent.getModalWindowWidth)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent_3.ImageSet.Images)
local Rect_new_result1_upvr = Rect.new(8, 8, 9, 9)
local FitFrameVertical_upvr = require(Parent_4.FitFrame).FitFrameVertical
function any_extend_result1.render(arg1) -- Line 57
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: getModalWindowWidth_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetComponent_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: Rect_new_result1_upvr (readonly)
		[7]: FitFrameVertical_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 58
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: getModalWindowWidth_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: Rect_new_result1_upvr (copied, readonly)
			[7]: FitFrameVertical_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local screenSize = arg1.props.screenSize
		local var22
		local var23
		local var24
		local udim = UDim.new(0, getModalWindowWidth_upvr(screenSize.X))
		if arg1:isFullWidth(screenSize.X) then
			var22 = Vector2.new(0.5, 1)
			var23 = "component_assets/bullet_17"
			local position = arg1.props.position
			if not position then
				position = UDim2.new(0.5, 0, 1, 0)
			end
			var24 = position
		else
			var22 = Vector2.new(0.5, 0.5)
			var23 = "component_assets/circle_17"
			local position_2 = arg1.props.position
			if not position_2 then
				position_2 = UDim2.new(0.5, 0, 0.5, 0)
			end
			var24 = position_2
		end
		local var28 = arg1.props.anchorPoint or var22
		if arg1.props.isFullHeight then
			local var29
			if 0 < arg1.props.distanceFromTop then
				var29 = UDim.new(1, -arg1.props.distanceFromTop)
			else
				var29 = UDim.new(1, 0)
				if 540 <= screenSize.X and 700 <= screenSize.Y then
					var29 = UDim.new(0.8, 0)
				end
			end
			return Roact_upvr.createElement(ImageSetComponent_upvr.Button, {
				Position = var24;
				Size = UDim2.new(udim, var29);
				AnchorPoint = var28;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Image = Images_upvr[var23];
				ImageColor3 = Theme.BackgroundUIDefault.Color;
				ImageTransparency = Theme.BackgroundUIDefault.Transparency;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect_new_result1_upvr;
				AutoButtonColor = false;
				ClipsDescendants = true;
				Selectable = false;
			}, {
				BackgroundImage = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
					Size = UDim2.new(1, 0, 1, 0);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Position = UDim2.new(0.5, 0, 0.5, 0);
					BackgroundTransparency = 1;
					BorderSizePixel = 0;
				}, arg1.props[Roact_upvr.Children]);
			})
		end
		return Roact_upvr.createElement(ImageSetComponent_upvr.Button, {
			Position = var24;
			Size = arg1.contentSize:map(function(arg1_3) -- Line 112
				return UDim2.new(0, arg1_3.X, 0, arg1_3.Y)
			end);
			AnchorPoint = var28;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = Images_upvr[var23];
			ImageColor3 = Theme.BackgroundUIDefault.Color;
			ImageTransparency = Theme.BackgroundUIDefault.Transparency;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect_new_result1_upvr;
			AutoButtonColor = false;
			ClipsDescendants = true;
			Selectable = false;
		}, {
			BackgroundImage = Roact_upvr.createElement(FitFrameVertical_upvr, {
				Position = UDim2.new(0.5, 0, 0.5, 0);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				width = udim;
				[Roact_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 133
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.changeContentSize(arg1_4.AbsoluteSize)
				end;
			}, arg1.props[Roact_upvr.Children]);
		})
	end)
end
return any_extend_result1