-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:34
-- Luau version 6, Types version 3
-- Time taken: 0.003875 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent_4 = Parent_2.Parent
local Parent = Parent_4.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local ToastText = require(Parent_3.ToastText)
local tbl_2_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("InteractiveToast")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	buttonProps = t.optional(t.strictInterface({
		buttonDimensions = t.Vector2;
		buttonText = t.string;
		onActivated = t.callback;
		buttonType = t.optional(require(Parent_2.Button.Enum.ButtonType).isEnumValue);
	}));
	iconProps = t.optional(require(Parent_3.ToastIcon).validateProps);
	iconChildren = t.optional(t.table);
	isCompact = t.optional(t.boolean);
	layoutOrder = t.optional(t.integer);
	padding = t.optional(t.numberMin(0));
	position = t.optional(t.UDim2);
	pressed = t.optional(t.boolean);
	pressedScale = t.number;
	size = t.UDim2;
	subtitleTextProps = t.optional(ToastText.validateProps);
	textFrameSize = t.optional(t.UDim2);
	titleTextProps = ToastText.validateProps;
})
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	layoutOrder = 1;
	position = UDim2.new(0.5, 0, 0.5, 0);
	pressedScale = 0.95;
	size = UDim2.new(1, 0, 1, 0);
}
local withStyle_upvr = require(Parent_4.Core.Style.withStyle)
local ImageSetComponent_upvr = require(Parent_4.Core.ImageSet.ImageSetComponent)
local component_assets_circle_21_upvr = require(Parent_4.App.ImageSet.Images)["component_assets/circle_21"]
local Rect_new_result1_upvr = Rect.new(10, 10, 11, 11)
local SpringAnimatedItem_upvr = require(Parent_4.Utility.SpringAnimatedItem)
local ToastFrame_upvr = require(Parent_3.ToastFrame)
function any_extend_result1.render(arg1) -- Line 72
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: component_assets_circle_21_upvr (readonly)
		[5]: Rect_new_result1_upvr (readonly)
		[6]: SpringAnimatedItem_upvr (readonly)
		[7]: tbl_2_upvr (readonly)
		[8]: ToastFrame_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 73
		--[[ Upvalues[8]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ImageSetComponent_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: component_assets_circle_21_upvr (copied, readonly)
			[5]: Rect_new_result1_upvr (copied, readonly)
			[6]: SpringAnimatedItem_upvr (copied, readonly)
			[7]: tbl_2_upvr (copied, readonly)
			[8]: ToastFrame_upvr (copied, readonly)
		]]
		local Theme = arg1_2.Theme
		local module = {}
		local tbl_4 = {
			springOptions = tbl_2_upvr;
		}
		local tbl = {}
		local var25
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = arg1.props.pressedScale
			return var25
		end
		if not arg1.props.pressed or not INLINED() then
			var25 = 1
		end
		tbl.scale = var25
		tbl_4.animatedValues = tbl
		function tbl_4.mapValuesToProps(arg1_3) -- Line 94
			return {
				Scale = arg1_3.scale;
			}
		end
		module.Scaler = Roact_upvr.createElement(SpringAnimatedItem_upvr.AnimatedUIScale, tbl_4)
		local tbl_3 = {}
		var25 = arg1.props
		tbl_3.buttonProps = var25.buttonProps
		var25 = arg1.props
		tbl_3.iconProps = var25.iconProps
		var25 = arg1.props
		tbl_3.iconChildren = var25.iconChildren
		var25 = arg1.props
		tbl_3.isCompact = var25.isCompact
		var25 = arg1.props
		tbl_3.padding = var25.padding
		var25 = arg1.props
		tbl_3.subtitleTextProps = var25.subtitleTextProps
		var25 = arg1.props
		tbl_3.textFrameSize = var25.textFrameSize
		var25 = arg1.props
		tbl_3.titleTextProps = var25.titleTextProps
		module.ToastFrame = Roact_upvr.createElement(ToastFrame_upvr, tbl_3)
		return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
			AnchorPoint = arg1.props.anchorPoint;
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = component_assets_circle_21_upvr;
			ImageColor3 = Theme.BackgroundUIDefault.Color;
			ImageTransparency = Theme.BackgroundUIDefault.Transparency;
			LayoutOrder = arg1.props.layoutOrder;
			Position = arg1.props.position;
			ScaleType = Enum.ScaleType.Slice;
			Size = arg1.props.size;
			SliceCenter = Rect_new_result1_upvr;
		}, module)
	end)
end
return any_extend_result1