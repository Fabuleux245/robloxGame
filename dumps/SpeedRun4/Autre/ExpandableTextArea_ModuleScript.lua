-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:21
-- Luau version 6, Types version 3
-- Time taken: 0.009478 seconds

local Parent_3 = script.Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local SpringAnimatedItem_upvr = require(Parent_2.Utility.SpringAnimatedItem)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local Images = require(Parent_2.App.ImageSet.Images)
local var9_upvw = 30
local var10_upvw = 5
local tbl_4_upvr = {
	dampingRatio = 1;
	frequency = 3.5;
}
local tbl_10_upvr = {
	dampingRatio = 1;
	frequency = 3.5;
}
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ExpandableTextArea")
any_extend_result1_upvr.validateProps = t.strictInterface({
	Text = t.optional(t.string);
	Position = t.optional(t.UDim2);
	compactNumberOfLines = t.optional(t.number);
	LayoutOrder = t.optional(t.number);
	width = t.optional(t.UDim);
	padding = t.optional(t.Vector2);
	onClick = t.optional(t.callback);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	frameRef = t.optional(t.table);
	gradientColor = t.optional(t.Color3);
})
any_extend_result1_upvr.defaultProps = {
	compactNumberOfLines = 2;
	Text = "";
}
function any_extend_result1_upvr.init(arg1) -- Line 69
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		isExpanded = false;
		frameWidth = 0;
	}
	function arg1.onClick() -- Line 75
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_2) -- Line 76
			return {
				isExpanded = not arg1_2.isExpanded;
			}
		end)
		if arg1.props.onClick then
			arg1.props.onClick(arg1.state.isExpanded)
		end
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.layoutRef = Roact_upvr.createRef()
end
function any_extend_result1_upvr.getRef(arg1) -- Line 90
	local frameRef = arg1.props.frameRef
	if not frameRef then
		frameRef = arg1.ref
	end
	return frameRef
end
function any_extend_result1_upvr.applyFit(arg1, arg2) -- Line 94
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: var10_upvw (read and write)
	]]
	local any_getRef_result1 = arg1:getRef()
	if not any_getRef_result1.current then
	else
		local current = any_getRef_result1.current
		local var23 = arg2 + var9_upvw + var10_upvw
		local width = arg1.props.width
		if width then
			current.Size = UDim2.new(width.Scale, width.Offset, 0, var23)
			return
		end
		current.Size = UDim2.new(1, 0, 0, var23)
	end
end
function any_extend_result1_upvr.didMount(arg1) -- Line 109
	arg1.isMounted = true
	local current_2 = arg1.layoutRef.current
	if current_2 then
		arg1:applyFit(current_2.AbsoluteContentSize.y)
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 118
	arg1.isMounted = false
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local withSelectionCursorProvider_upvr = require(Parent_3.SelectionImage.withSelectionCursorProvider)
local ExpandableTextUtils_upvr = require(Parent_2.Core.Text.ExpandableText.ExpandableTextUtils)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local CursorKind_upvr = require(Parent_3.SelectionImage.CursorKind)
local GenericTextLabel_upvr = require(Parent_2.Core.Text.GenericTextLabel.GenericTextLabel)
local any_wrap_result1_upvr = SpringAnimatedItem_upvr.wrap(ImageSetComponent_upvr.Label)
local gradient_gradient_0_100_upvr = Images["gradient/gradient_0_100"]
local udim2_upvr = UDim2.new(1, 0, 0, 36)
local truncate_arrows_actions_truncationCollapse_upvr = Images["truncate_arrows/actions_truncationCollapse"]
local truncate_arrows_actions_truncationExpand_upvr = Images["truncate_arrows/actions_truncationExpand"]
local udim2_upvr_2 = UDim2.new(0, 36, 0, 36)
function any_extend_result1_upvr.render(arg1) -- Line 122
	--[[ Upvalues[19]:
		[1]: var9_upvw (read and write)
		[2]: var10_upvw (read and write)
		[3]: withStyle_upvr (readonly)
		[4]: withSelectionCursorProvider_upvr (readonly)
		[5]: ExpandableTextUtils_upvr (readonly)
		[6]: RoactGamepad_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: CursorKind_upvr (readonly)
		[9]: SpringAnimatedItem_upvr (readonly)
		[10]: tbl_4_upvr (readonly)
		[11]: GenericTextLabel_upvr (readonly)
		[12]: any_wrap_result1_upvr (readonly)
		[13]: gradient_gradient_0_100_upvr (readonly)
		[14]: tbl_10_upvr (readonly)
		[15]: udim2_upvr (readonly)
		[16]: ImageSetComponent_upvr (readonly)
		[17]: truncate_arrows_actions_truncationCollapse_upvr (readonly)
		[18]: truncate_arrows_actions_truncationExpand_upvr (readonly)
		[19]: udim2_upvr_2 (readonly)
	]]
	local padding = arg1.props.padding
	local var39
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var39 = padding.Y
		return var39
	end
	if not padding or not INLINED() then
		var39 = 30
	end
	var9_upvw = var39
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var39 = padding.X
		return var39
	end
	if not padding or not INLINED_2() then
		var39 = 5
	end
	var10_upvw = var39
	var39 = withStyle_upvr
	local Text_upvr = arg1.props.Text
	local compactNumberOfLines_upvr = arg1.props.compactNumberOfLines
	local LayoutOrder_upvr = arg1.props.LayoutOrder
	local Position_upvr = arg1.props.Position
	local width_upvr = arg1.props.width
	local any_getRef_result1_2_upvr = arg1:getRef()
	local gradientColor_upvr = arg1.props.gradientColor
	var39 = var39(function(arg1_3) -- Line 135
		--[[ Upvalues[26]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: ExpandableTextUtils_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Text_upvr (readonly)
			[5]: compactNumberOfLines_upvr (readonly)
			[6]: var10_upvw (copied, read and write)
			[7]: RoactGamepad_upvr (copied, readonly)
			[8]: Roact_upvr (copied, readonly)
			[9]: LayoutOrder_upvr (readonly)
			[10]: Position_upvr (readonly)
			[11]: width_upvr (readonly)
			[12]: CursorKind_upvr (copied, readonly)
			[13]: any_getRef_result1_2_upvr (readonly)
			[14]: var9_upvw (copied, read and write)
			[15]: SpringAnimatedItem_upvr (copied, readonly)
			[16]: tbl_4_upvr (copied, readonly)
			[17]: GenericTextLabel_upvr (copied, readonly)
			[18]: any_wrap_result1_upvr (copied, readonly)
			[19]: gradient_gradient_0_100_upvr (copied, readonly)
			[20]: gradientColor_upvr (readonly)
			[21]: tbl_10_upvr (copied, readonly)
			[22]: udim2_upvr (copied, readonly)
			[23]: ImageSetComponent_upvr (copied, readonly)
			[24]: truncate_arrows_actions_truncationCollapse_upvr (copied, readonly)
			[25]: truncate_arrows_actions_truncationExpand_upvr (copied, readonly)
			[26]: udim2_upvr_2 (copied, readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_4) -- Line 136
			--[[ Upvalues[26]:
				[1]: arg1_3 (readonly)
				[2]: ExpandableTextUtils_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: Text_upvr (copied, readonly)
				[5]: compactNumberOfLines_upvr (copied, readonly)
				[6]: var10_upvw (copied, read and write)
				[7]: RoactGamepad_upvr (copied, readonly)
				[8]: Roact_upvr (copied, readonly)
				[9]: LayoutOrder_upvr (copied, readonly)
				[10]: Position_upvr (copied, readonly)
				[11]: width_upvr (copied, readonly)
				[12]: CursorKind_upvr (copied, readonly)
				[13]: any_getRef_result1_2_upvr (copied, readonly)
				[14]: var9_upvw (copied, read and write)
				[15]: SpringAnimatedItem_upvr (copied, readonly)
				[16]: tbl_4_upvr (copied, readonly)
				[17]: GenericTextLabel_upvr (copied, readonly)
				[18]: any_wrap_result1_upvr (copied, readonly)
				[19]: gradient_gradient_0_100_upvr (copied, readonly)
				[20]: gradientColor_upvr (copied, readonly)
				[21]: tbl_10_upvr (copied, readonly)
				[22]: udim2_upvr (copied, readonly)
				[23]: ImageSetComponent_upvr (copied, readonly)
				[24]: truncate_arrows_actions_truncationCollapse_upvr (copied, readonly)
				[25]: truncate_arrows_actions_truncationExpand_upvr (copied, readonly)
				[26]: udim2_upvr_2 (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Theme = arg1_3.Theme
			local Font = arg1_3.Font
			local any_getExpandableTextHeights_result1, any_getExpandableTextHeights_result2 = ExpandableTextUtils_upvr.getExpandableTextHeights(Font, arg1.state.frameWidth, Text_upvr, compactNumberOfLines_upvr)
			local var53 = 1
			local udim2 = UDim2.new(var53, 0, 0, any_getExpandableTextHeights_result1 + var10_upvw)
			local var55
			if any_getExpandableTextHeights_result2 >= any_getExpandableTextHeights_result1 then
				var53 = false
			else
				var53 = true
			end
			var55 = not var53
			if not var55 then
				var55 = arg1.state.isExpanded
			end
			if not var55 or not udim2 then
				local udim2_upvr_3 = UDim2.new(1, 0, 0, any_getExpandableTextHeights_result2 + var10_upvw)
			end
			if var55 then
			else
			end
			if not var53 or not RoactGamepad_upvr.Focusable.Frame then
			end
			local module_3 = {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				LayoutOrder = LayoutOrder_upvr;
				Position = Position_upvr;
			}
			if not width_upvr or not UDim2.new(width_upvr.Scale, width_upvr.Offset, 0, 0) then
			end
			module_3.Size = UDim2.new(1, 0, 0, 0)
			module_3.AutomaticSize = Enum.AutomaticSize.Y
			module_3.SelectionImageObject = arg1_4(CursorKind_upvr.RoundedRect)
			module_3[Roact_upvr.Ref] = any_getRef_result1_2_upvr
			module_3[Roact_upvr.Change.AbsoluteSize] = function(arg1_5) -- Line 167
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				if arg1.state.frameWidth ~= arg1_5.AbsoluteSize.X then
					arg1:setState({
						frameWidth = arg1_5.AbsoluteSize.X;
					})
				end
			end
			module_3.NextSelectionUp = arg1.props.NextSelectionUp
			module_3.NextSelectionDown = arg1.props.NextSelectionDown
			module_3.NextSelectionLeft = arg1.props.NextSelectionLeft
			module_3.NextSelectionRight = arg1.props.NextSelectionRight
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				tbl.Activated = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, arg1.onClick)
				local tbl = {}
				return tbl
			end
			if not var53 or not INLINED_3() then
			end
			module_3.inputBindings = nil
			local module_2 = {
				Layout = Roact_upvr.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
					Padding = UDim.new(0, 10);
					[Roact_upvr.Change.AbsoluteContentSize] = function(arg1_6) -- Line 190
						--[[ Upvalues[1]:
							[1]: arg1 (copied, readonly)
						]]
						arg1:applyFit(arg1_6.AbsoluteContentSize.y)
					end;
					[Roact_upvr.Ref] = arg1.layoutRef;
				});
				UIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingTop = UDim.new(0, var9_upvw);
				});
			}
			local tbl_2 = {
				animatedValues = {
					height = udim2_upvr_3.Y.Offset;
				};
			}
			local function mapValuesToProps(arg1_7) -- Line 203
				--[[ Upvalues[1]:
					[1]: udim2_upvr_3 (readonly)
				]]
				return {
					Size = UDim2.new(1, 0, udim2_upvr_3.Y.Scale, arg1_7.height);
				}
			end
			tbl_2.mapValuesToProps = mapValuesToProps
			tbl_2.regularProps = {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ClipsDescendants = true;
				Size = udim2_upvr_3;
				LayoutOrder = 0;
			}
			tbl_2.springOptions = tbl_4_upvr
			local tbl_9 = {
				DescriptionText = Roact_upvr.createElement(GenericTextLabel_upvr, {
					colorStyle = Theme.TextDefault;
					fontStyle = Font.Body;
					Size = udim2_upvr_3;
					Text = Text_upvr;
					TextSize = Font.BaseSize * Font.Body.RelativeSize;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextWrapped = true;
					BackgroundTransparency = 1;
				});
			}
			if var53 then
				local tbl_5 = {
					animatedValues = {
						height = 30;
					};
					mapValuesToProps = function(arg1_8) -- Line 231, Named "mapValuesToProps"
						return {
							Size = UDim2.new(1, 0, 0, arg1_8.height);
						}
					end;
				}
				local tbl_8 = {
					Size = UDim2.new(1, 0, 0, 30);
					Position = UDim2.new(0, 0, 1, 0);
					AnchorPoint = Vector2.new(0, 1);
					BackgroundTransparency = 1;
					Image = gradient_gradient_0_100_upvr;
				}
				local var75 = gradientColor_upvr
				if not var75 then
					var75 = Theme.BackgroundDefault.Color
				end
				tbl_8.ImageColor3 = var75
				tbl_5.regularProps = tbl_8
				tbl_5.springOptions = tbl_10_upvr
			end
			tbl_9.Gradient = Roact_upvr.createElement(any_wrap_result1_upvr, tbl_5)
			module_2.ExpandableContainer = Roact_upvr.createElement(SpringAnimatedItem_upvr.AnimatedFrame, tbl_2, tbl_9)
			local var76
			if var53 then
				local tbl_11 = {}
				local tbl_3 = {}
				var76 = -24
				tbl_3.Position = UDim2.new(0, 0, 0, var76)
				tbl_3.BackgroundTransparency = 1
				tbl_3.BorderSizePixel = 0
				tbl_3.Size = udim2_upvr
				tbl_3.Text = ""
				tbl_3[Roact_upvr.Event.Activated] = arg1.onClick
				local tbl_7 = {}
				local tbl_6 = {}
				var76 = Vector2.new(0.5, 0)
				tbl_6.AnchorPoint = var76
				var76 = 1
				tbl_6.BackgroundTransparency = var76
				var76 = 0
				tbl_6.BorderSizePixel = var76
				var76 = UDim2.new(0.5, 0, 0, 0)
				tbl_6.Position = var76
				local function INLINED_4() -- Internal function, doesn't exist in bytecode
					var76 = truncate_arrows_actions_truncationCollapse_upvr
					return var76
				end
				if udim2_upvr_3 ~= udim2 or not INLINED_4() then
					var76 = truncate_arrows_actions_truncationExpand_upvr
				end
				tbl_6.Image = var76
				var76 = Theme.IconEmphasis.Color
				tbl_6.ImageColor3 = var76
				var76 = Theme.IconEmphasis.Transparency
				tbl_6.ImageTransparency = var76
				var76 = udim2_upvr_2
				tbl_6.Size = var76
				tbl_7.DownArrow = Roact_upvr.createElement(ImageSetComponent_upvr.Label, tbl_6)
				tbl_11.PressableButton = Roact_upvr.createElement("TextButton", tbl_3, tbl_7)
			end
			module_2.ButtonContainer = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 0, 10);
				LayoutOrder = 1;
			}, tbl_11)
			return Roact_upvr.createElement("Frame", module_3, module_2)
		end)
	end)
	return var39
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 278
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)