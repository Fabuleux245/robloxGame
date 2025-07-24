-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:05
-- Luau version 6, Types version 3
-- Time taken: 0.007514 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local Cryo_upvr = require(Parent.Cryo)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("InputButton")
any_extend_result1_upvr.validateProps = t.strictInterface({
	text = t.string;
	size = t.optional(t.UDim2);
	image = t.table;
	imageColor = t.Color3;
	fillImage = t.optional(t.table);
	fillImageSize = t.optional(t.UDim2);
	fillImageColor = t.optional(t.Color3);
	selectedColor = t.Color3;
	textColor = t.Color3;
	transparency = t.number;
	onActivated = t.callback;
	isDisabled = t.optional(t.boolean);
	layoutOrder = t.optional(t.number);
	frameRef = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	SelectionImageObject = t.optional(t.table);
})
any_extend_result1_upvr.defaultProps = {
	layoutOrder = 0;
	isDisabled = false;
}
local ControlState_upvr = require(Parent.UIBlox.Core.Control.Enum.ControlState)
function any_extend_result1_upvr.init(arg1) -- Line 49
	--[[ Upvalues[2]:
		[1]: ControlState_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.state = {
		outerImage = arg1.props.image;
		outerTransparency = 1;
		outerImageColor = arg1.props.imageColor;
		innerImage = arg1.props.image;
		innerImageColor = arg1.props.fillImageColor;
		innerTransparency = 1;
	}
	function arg1.changeSprite(arg1_2) -- Line 59
		--[[ Upvalues[2]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
		arg1:setState({
			outerImageColor = arg1.props.selectedColor;
		})
		do
			return
		end
		-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 17. Error Block 7 start (CF ANALYSIS FAILED)
		if arg1_2 == ControlState_upvr.Default then
			arg1:setState({
				outerImageColor = arg1.props.imageColor;
			})
		end
		-- KONSTANTERROR: [24] 17. Error Block 7 end (CF ANALYSIS FAILED)
	end
	if not arg1.props.size then
		local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(UDim2.new(1, 0, 0, 26))
		arg1.sizeBinding = any_createBinding_result1
		arg1.updateSizeBinding = any_createBinding_result2
		function arg1.textAbsoluteSizeChanged(arg1_3) -- Line 77
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var16 = 26
			if var16 < arg1_3.AbsoluteSize.Y then
				var16 = arg1_3.AbsoluteSize.Y
			end
			arg1.updateSizeBinding(UDim2.new(1, 0, 0, var16))
		end
	end
end
local withStyle_upvr = require(Parent.UIBlox.Core.Style.withStyle)
local FitFrameHorizontal_upvr = require(Parent.FitFrame).FitFrameHorizontal
local FitTextLabel_upvr = require(Parent.FitFrame).FitTextLabel
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local Controllable_upvr = require(Parent.UIBlox.Core.Control.Controllable)
local ImageSetComponent_upvr = require(Parent.UIBlox.Core.ImageSet.ImageSetComponent)
function any_extend_result1_upvr.render(arg1) -- Line 87
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FitFrameHorizontal_upvr (readonly)
		[5]: FitTextLabel_upvr (readonly)
		[6]: RoactGamepad_upvr (readonly)
		[7]: Controllable_upvr (readonly)
		[8]: ImageSetComponent_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 88
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: FitFrameHorizontal_upvr (copied, readonly)
			[5]: FitTextLabel_upvr (copied, readonly)
			[6]: RoactGamepad_upvr (copied, readonly)
			[7]: Controllable_upvr (copied, readonly)
			[8]: ImageSetComponent_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Font = arg1_4.Font
		local var26 = "Frame"
		local var27 = false
		local var28
		if arg1.props.size then
			local tbl = {}
			var28 = -34
			tbl.Size = UDim2.new(1, var28, 0, 26)
			tbl.AutomaticSize = Enum.AutomaticSize.Y
			var28 = Roact_upvr
			var28 = arg1.props.isDisabled
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var28 = arg1.props
				return var28.onActivated
			end
			if var28 or not INLINED() then
			end
			tbl[var28.Event.Activated] = nil
		else
			var27 = true
			var26 = FitFrameHorizontal_upvr
			local tbl_8 = {}
			var28 = FitTextLabel_upvr
			tbl_8.width = var28.Width.FitToText
			var28 = arg1
			tbl_8.onActivated = var28.props.onActivated
			var28 = Roact_upvr
			var28 = arg1
			tbl_8[var28.Change.AbsoluteSize] = var28.textAbsoluteSizeChanged
		end
		local fillImage = arg1.props.fillImage
		local module_3 = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var28 = arg1.props
			return var28.size
		end
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var28 = arg1
			return var28.sizeBinding
		end
		if var27 or not INLINED_2() and not INLINED_3() then
		end
		module_3.Size = nil
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var28 = 0
			return UDim.new(var28, 26)
		end
		if not var27 or not INLINED_4() then
		end
		module_3.height = nil
		module_3.AutomaticSize = Enum.AutomaticSize.Y
		module_3.BackgroundTransparency = 1
		var28 = arg1.props
		module_3.LayoutOrder = var28.layoutOrder
		var28 = Roact_upvr
		var28 = arg1.props.frameRef
		module_3[var28.Ref] = var28
		var28 = arg1.props
		module_3.SelectionImageObject = var28.SelectionImageObject
		local tbl_7 = {}
		var28 = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, arg1.props.onActivated)
		tbl_7.Activated = var28
		module_3.inputBindings = tbl_7
		if not var27 or not Enum.FillDirection.Horizontal then
		end
		module_3.FillDirection = nil
		if not var27 or not Enum.VerticalAlignment.Center then
		end
		module_3.VerticalAlignment = nil
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var28 = 0
			return UDim.new(var28, 8)
		end
		if not var27 or not INLINED_5() then
		end
		module_3.contentPadding = nil
		local module = {}
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			var28 = var28("UIListLayout", tbl_2)
			tbl_2.VerticalAlignment = Enum.VerticalAlignment.Center
			tbl_2.Padding = UDim.new(0, 8)
			tbl_2.FillDirection = Enum.FillDirection.Horizontal
			tbl_2.SortOrder = Enum.SortOrder.LayoutOrder
			local tbl_2 = {}
			var28 = Roact_upvr.createElement
			return var28
		end
		if var27 or not INLINED_6() then
			var28 = nil
		end
		module.HorizontalLayout = var28
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			var28 = var28("UIPadding", tbl_5)
			tbl_5.PaddingLeft = UDim.new(0, 8)
			local tbl_5 = {}
			var28 = Roact_upvr.createElement
			return var28
		end
		if var27 or not INLINED_7() then
			var28 = nil
		end
		module.Padding = var28
		var28 = Roact_upvr.createElement
		local tbl_3 = {}
		local tbl_6 = {
			component = ImageSetComponent_upvr.Button;
			props = {
				BackgroundTransparency = 1;
				Size = UDim2.new(0, 26, 0, 26);
				Image = arg1.props.image;
				ImageTransparency = arg1.props.transparency;
				ScaleType = arg1.props.buttonSliceType;
				SliceCenter = arg1.props.buttonSliceCenter;
				ImageColor3 = arg1.state.outerImageColor;
				[Roact_upvr.Event.Activated] = arg1.props.onActivated;
				LayoutOrder = 1;
			};
		}
		local tbl_4 = {}
		local var41 = fillImage
		if var41 then
			var41 = Roact_upvr.createElement
			var41 = var41(ImageSetComponent_upvr.Label, {
				BackgroundTransparency = 1;
				Size = arg1.props.fillImageSize;
				Image = fillImage;
				ImageTransparency = arg1.props.transparency;
				ImageColor3 = arg1.props.fillImageColor;
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.new(0.5, 0, 0.5, 0);
			})
		end
		tbl_4.InputFillImage = var41
		tbl_6.children = tbl_4
		tbl_3.controlComponent = tbl_6
		tbl_3.isDisabled = arg1.props.isDisabled
		local function onStateChanged(arg1_5, arg2) -- Line 185
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1.changeSprite(arg2)
		end
		tbl_3.onStateChanged = onStateChanged
		var28 = var28(Controllable_upvr, tbl_3)
		module.InputButtonImage = var28
		var28 = false
		if arg1.props.text ~= "" then
			var28 = Roact_upvr.createElement
			var28 = var28(Controllable_upvr, {
				controlComponent = {
					component = FitTextLabel_upvr;
					props = Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join({
						LayoutOrder = 2;
						BackgroundTransparency = 1;
						Text = arg1.props.text;
						TextXAlignment = Enum.TextXAlignment.Left;
						TextSize = Font.Body.RelativeSize * Font.BaseSize;
						Font = Font.Body.Font;
						TextWrapped = true;
						TextColor3 = arg1.props.textColor;
						TextTransparency = arg1.props.transparency;
					}, tbl), tbl_8);
				};
				isDisabled = arg1.props.isDisabled;
				onStateChanged = function(arg1_6, arg2) -- Line 196, Named "onStateChanged"
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1.changeSprite(arg2)
				end;
			})
		end
		module.InputButtonText = var28
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable[var26], module_3, module)
	end)
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 204
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)