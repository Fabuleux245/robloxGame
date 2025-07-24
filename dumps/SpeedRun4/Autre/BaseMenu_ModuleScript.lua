-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:04
-- Luau version 6, Types version 3
-- Time taken: 0.021781 seconds

local Parent_3 = script.Parent.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent
local RoactGamepad_upvr = require(Parent_2.RoactGamepad)
local Roact_upvr = require(Parent_2.Roact)
local Cryo_upvr = require(Parent_2.Cryo)
local t = require(Parent_2.t)
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local setDefault_upvr = require(Parent.Utility.setDefault)
local component_assets_dropshadow_17_8_upvr = require(Parent_3.ImageSet.Images)["component_assets/dropshadow_17_8"]
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("BaseMenu")
any_extend_result1_upvr.validateProps = t.strictInterface({
	buttonProps = require(script.Parent.validateButtonProps);
	width = t.optional(t.UDim);
	position = t.optional(t.union(t.UDim2, t.table));
	anchorPoint = t.optional(t.Vector2);
	layoutOrder = t.optional(t.number);
	topElementRounded = t.optional(t.boolean);
	bottomElementRounded = t.optional(t.boolean);
	setFirstItemRef = t.optional(t.union(t.callback, t.table));
	setFrameRef = t.optional(t.union(t.callback, t.table));
	stayOnActivated = t.optional(t.boolean);
	maxHeight = t.optional(t.number);
	showDropShadow = t.optional(t.boolean);
	fixedListHeight = t.optional(t.number);
	isElementBackgroundVisible = t.optional(t.boolean);
	isElementDividerVisible = t.optional(t.boolean);
	elementHeight = t.optional(t.number);
	borderCornerRadius = t.optional(t.integer);
	background = t.optional(require(Parent.Core.Style.Validator.validateColorInfo));
	enableTokenOverride = t.optional(t.boolean);
	renderHeader = t.optional(t.callback);
	headerHeight = t.optional(t.number);
	selectionOrder = t.optional(t.number);
})
any_extend_result1_upvr.defaultProps = {
	width = UDim.new(1, 0);
	position = UDim2.new(0, 0, 0, 0);
	topElementRounded = true;
	bottomElementRounded = true;
	showDropShadow = false;
	fixedListHeight = nil;
	isElementBackgroundVisible = true;
	isElementDividerVisible = true;
	elementHeight = 56;
	borderCornerRadius = 4;
	enableTokenOverride = true;
	headerHeight = 0;
}
function any_extend_result1_upvr.init(arg1) -- Line 94
	--[[ Upvalues[1]:
		[1]: RoactGamepad_upvr (readonly)
	]]
	arg1.gamepadRefs = RoactGamepad_upvr.createRefCache()
end
local VerticalScrollView_upvr = require(Parent_3.Container.VerticalScrollView)
function any_extend_result1_upvr.renderFixedHeightMenu(arg1, arg2, arg3, arg4) -- Line 98
	--[[ Upvalues[5]:
		[1]: setDefault_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetComponent_upvr (readonly)
		[4]: component_assets_dropshadow_17_8_upvr (readonly)
		[5]: VerticalScrollView_upvr (readonly)
	]]
	local setDefault_upvr_result1 = setDefault_upvr(arg2.borderCornerRadius, 8)
	local BackgroundUIDefault = arg3.Theme.BackgroundUIDefault
	local var9_result1 = setDefault_upvr(arg2.background, {
		Color = BackgroundUIDefault.Color;
		Transparency = BackgroundUIDefault.Transparency;
	})
	local module_3 = {}
	local var21
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var21 = var21(ImageSetComponent_upvr.Label, tbl_2)
		tbl_2.SliceCenter = Rect.new(16, 16, 16, 16)
		tbl_2.ScaleType = Enum.ScaleType.Slice
		tbl_2.ImageTransparency = arg3.Theme.DropShadow.Transparency
		tbl_2.ImageColor3 = arg3.Theme.DropShadow.Color
		tbl_2.Image = component_assets_dropshadow_17_8_upvr
		tbl_2.Size = UDim2.new(1, 16, 1, 16)
		tbl_2.BackgroundTransparency = 1
		tbl_2.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_2.Position = UDim2.new(0.5, 0, 0.5, 0)
		tbl_2.ZIndex = 2
		local tbl_2 = {}
		var21 = Roact_upvr.createElement
		return var21
	end
	if not arg2.showDropShadow or not INLINED() then
		var21 = nil
	end
	module_3.DropShadow = var21
	var21 = Roact_upvr.createElement
	var21 = var21("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundColor3 = var9_result1.Color;
		BackgroundTransparency = var9_result1.Transparency;
		ZIndex = 3;
	}, {
		UICorner = Roact_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, setDefault_upvr_result1);
		});
		ClippingFrame = Roact_upvr.createElement("Frame", {
			ZIndex = 4;
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, -setDefault_upvr_result1 * 2);
			Position = UDim2.new(0, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0, 0.5);
			ClipsDescendants = true;
		}, {
			ScrollingFrame = Roact_upvr.createElement(VerticalScrollView_upvr, {
				canvasSizeY = UDim.new(0, #arg2.buttonProps * arg2.elementHeight);
				selectable = false;
			}, arg4);
		});
	})
	module_3.ContentFrame = var21
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg2.anchorPoint;
		BackgroundTransparency = 1;
		LayoutOrder = arg2.layoutOrder;
		Size = UDim2.new(arg2.width.Scale, arg2.width.Offset, 0, arg2.fixedListHeight);
		Position = arg2.position;
	}, module_3)
end
local CursorKind_upvr = require(Parent_3.SelectionImage.CursorKind)
local withSelectionCursorProvider_upvr = require(Parent_3.SelectionImage.withSelectionCursorProvider)
local Cell_upvr = require(script.Parent.Cell)
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local RoundedFrame_upvr = require(script.Parent.RoundedFrame)
function any_extend_result1_upvr.render(arg1) -- Line 153
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: CursorKind_upvr (readonly)
		[3]: withSelectionCursorProvider_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: RoactGamepad_upvr (readonly)
		[6]: Cell_upvr (readonly)
		[7]: withStyle_upvr (readonly)
		[8]: setDefault_upvr (readonly)
		[9]: ImageSetComponent_upvr (readonly)
		[10]: component_assets_dropshadow_17_8_upvr (readonly)
		[11]: RoundedFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local headerHeight_2_upvr = arg1.props.headerHeight
	local var107 = arg1.props.elementHeight * 7.5 + headerHeight_2_upvr
	local var108_upvw
	if var107 <= var108_upvw then
		var108_upvw = var107
	end
	local maxHeight_3 = arg1.props.maxHeight
	local var110_upvw
	if maxHeight_3 and 0 < maxHeight_3 and maxHeight_3 < var108_upvw then
		var108_upvw = (math.max(math.floor((maxHeight_3 - arg1.props.elementHeight * 0.5 - headerHeight_2_upvr) / arg1.props.elementHeight), 1) + 0.5) * arg1.props.elementHeight + headerHeight_2_upvr
		var110_upvw = true
	end
	local tbl_20_upvr = {}
	for i_upvr, v_upvr in ipairs(arg1.props.buttonProps) do
		local tbl_14 = {
			elementHeight = arg1.props.elementHeight;
		}
		local topElementRounded = arg1.props.topElementRounded
		if topElementRounded then
			topElementRounded = false
			if i_upvr == 1 then
				topElementRounded = not var110_upvw
			end
		end
		tbl_14.hasRoundTop = topElementRounded
		topElementRounded = arg1.props.bottomElementRounded
		local var117 = topElementRounded
		if var117 then
			var117 = false
			if i_upvr == #arg1.props.buttonProps then
				var117 = not var110_upvw
			end
		end
		tbl_14.hasRoundBottom = var117
		if arg1.props.isElementDividerVisible then
			if i_upvr >= #arg1.props.buttonProps then
			else
			end
		else
		end
		tbl_14.hasDivider = false
		local var118
		tbl_14.layoutOrder = i_upvr
		var118 = Cryo_upvr.None
		tbl_14.inputBindingKey = var118
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			var118 = arg1.props.setFirstItemRef
			return var118
		end
		if i_upvr ~= 1 or not INLINED_9() then
			var118 = nil
		end
		tbl_14.setButtonRef = var118
		var118 = arg1.props.isElementBackgroundVisible
		tbl_14.isElementBackgroundVisible = var118
		var118 = arg1.props.borderCornerRadius
		tbl_14.borderCornerRadius = var118
		var118 = arg1.props.background
		tbl_14.background = var118
		local any_join_result1_3 = Cryo_upvr.Dictionary.join(v_upvr, tbl_14)
		if any_join_result1_3.hasRoundBottom and any_join_result1_3.hasRoundTop then
			local _ = CursorKind_upvr.RoundedRectNoInset
		elseif any_join_result1_3.hasRoundBottom then
		elseif any_join_result1_3.hasRoundTop then
		else
		end
		var118 = Cryo_upvr.Dictionary
		var118 = any_join_result1_3
		var118 = "cell "
		var118 = withSelectionCursorProvider_upvr
		local Square_upvw_2 = CursorKind_upvr.Square
		local any_join_result1_upvw = var118.join(var118, {
			cursorKind = CursorKind_upvr.Square;
			selectionOrder = arg1.props.selectionOrder;
		})
		var118 = var118(function(arg1_5) -- Line 204
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: RoactGamepad_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: i_upvr (readonly)
				[5]: v_upvr (readonly)
				[6]: Square_upvw_2 (read and write)
				[7]: Cell_upvr (copied, readonly)
				[8]: any_join_result1_upvw (read and write)
			]]
			local module = {
				Size = UDim2.new(arg1.props.width, UDim.new(0, arg1.props.elementHeight));
				BackgroundTransparency = 1;
				LayoutOrder = i_upvr;
				[Roact_upvr.Ref] = arg1.gamepadRefs[i_upvr];
			}
			local var126
			local function INLINED_10() -- Internal function, doesn't exist in bytecode
				var126 = arg1.gamepadRefs[i_upvr - 1]
				return var126
			end
			if 1 >= i_upvr or not INLINED_10() then
				var126 = nil
			end
			module.NextSelectionUp = var126
			local function INLINED_11() -- Internal function, doesn't exist in bytecode
				var126 = arg1.gamepadRefs[i_upvr + 1]
				return var126
			end
			if i_upvr >= #arg1.props.buttonProps or not INLINED_11() then
				var126 = nil
			end
			module.NextSelectionDown = var126
			var126 = {}
			var126.Activated = RoactGamepad_upvr.Input.onBegin(Enum.KeyCode.ButtonA, v_upvr.onActivated, {
				key = v_upvr.inputBindingKey;
			})
			module.inputBindings = var126
			var126 = arg1_5(Square_upvw_2)
			module.SelectionImageObject = var126
			var126 = {}
			var126.Cell = Roact_upvr.createElement(Cell_upvr, any_join_result1_upvw)
			return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, module, var126)
		end)
		tbl_20_upvr[var118..i_upvr] = var118
	end
	tbl_20_upvr.layout = Roact_upvr.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	return withStyle_upvr(function(arg1_6) -- Line 231
		--[[ Upvalues[10]:
			[1]: setDefault_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var110_upvw (read and write)
			[4]: tbl_20_upvr (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: var108_upvw (read and write)
			[7]: ImageSetComponent_upvr (copied, readonly)
			[8]: component_assets_dropshadow_17_8_upvr (copied, readonly)
			[9]: RoundedFrame_upvr (copied, readonly)
			[10]: headerHeight_2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 101 start (CF ANALYSIS FAILED)
		local BackgroundUIDefault_4 = arg1_6.Theme.BackgroundUIDefault
		local var132 = var110_upvw
		if var132 then
			var132 = arg1.props.topElementRounded
			if var132 then
				var132 = arg1.props.isElementBackgroundVisible
			end
		end
		local var133 = var110_upvw
		if var133 then
			var133 = arg1.props.bottomElementRounded
			if var133 then
				var133 = arg1.props.isElementBackgroundVisible
			end
		end
		if var132 then
		else
		end
		if var133 then
		else
		end
		local var134
		if not var132 and arg1.props.renderHeader then
		else
		end
		if arg1.props.fixedListHeight then
			var134 = tbl_20_upvr
			return arg1:renderFixedHeightMenu(arg1.props, arg1_6, var134)
		end
		local tbl_12 = {}
		var134 = arg1.props
		tbl_12.AnchorPoint = var134.anchorPoint
		tbl_12.BackgroundTransparency = 1
		var134 = arg1.props
		tbl_12.LayoutOrder = var134.layoutOrder
		var134 = arg1.props.width.Scale
		tbl_12.Size = UDim2.new(var134, arg1.props.width.Offset, 0, var108_upvw)
		var134 = arg1.props
		tbl_12.Position = var134.position
		local function INLINED_12() -- Internal function, doesn't exist in bytecode
			var134 = var134(ImageSetComponent_upvr.Label, tbl_11)
			tbl_11.SliceCenter = Rect.new(16, 16, 16, 16)
			tbl_11.ScaleType = Enum.ScaleType.Slice
			tbl_11.ImageTransparency = arg1_6.Theme.DropShadow.Transparency
			tbl_11.ImageColor3 = arg1_6.Theme.DropShadow.Color
			tbl_11.Image = component_assets_dropshadow_17_8_upvr
			tbl_11.Size = UDim2.new(1, 16, 1, 16)
			tbl_11.BackgroundTransparency = 1
			tbl_11.AnchorPoint = Vector2.new(0.5, 0.5)
			tbl_11.Position = UDim2.new(0.5, 0, 0.5, 0)
			tbl_11.ZIndex = 2
			local tbl_11 = {}
			var134 = Roact_upvr.createElement
			return var134
		end
		if not arg1.props.showDropShadow or not INLINED_12() then
			var134 = nil
		end
		;({}).DropShadow = var134
		-- KONSTANTERROR: [0] 1. Error Block 101 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [211] 147. Error Block 26 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [211] 147. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [212] 148. Error Block 85 start (CF ANALYSIS FAILED)
		var134 = Roact_upvr.createElement
		local _ = {
			zIndex = -1;
			background = setDefault_upvr(arg1.props.background, {
				Color = BackgroundUIDefault_4.Color;
				Transparency = BackgroundUIDefault_4.Transparency;
			});
		}
		if var132 then
			-- KONSTANTWARNING: GOTO [234] #164
		end
		-- KONSTANTERROR: [212] 148. Error Block 85 end (CF ANALYSIS FAILED)
	end)
end
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local StyleDefaults_upvr = require(script.Parent.StyleDefaults)
local React_upvr = require(Parent_2.React)
return function(arg1) -- Line 327, Named "BaseMenuFn"
	--[[ Upvalues[5]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: StyleDefaults_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: any_extend_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var149 = arg1
	if arg1.enableTokenOverride then
		local tbl_10 = {}
		for i_2, v_2 in ipairs(arg1.buttonProps) do
			tbl_10[i_2] = Cryo_upvr.Dictionary.join(v_2, StyleDefaults_upvr.getCellDefaultTokens(useStyle_upvr()))
			local var155
		end
		var149 = Cryo_upvr.Dictionary.join(var149, StyleDefaults_upvr.getBaseMenuDefaultTokens(var155), {
			buttonProps = tbl_10;
		})
	end
	return React_upvr.createElement(any_extend_result1_upvr, var149)
end