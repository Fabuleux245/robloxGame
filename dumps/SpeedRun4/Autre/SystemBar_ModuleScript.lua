-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:25
-- Luau version 6, Types version 3
-- Time taken: 0.014476 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t_upvr = require(Parent_2.t)
local Cryo_upvr = require(Parent_2.Cryo)
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local validateImageSetData = require(Parent.Core.ImageSet.Validator.validateImageSetData)
local BadgeStates_upvr = require(Parent.App.Indicator.Enum.BadgeStates)
local withAnimation_upvr = require(Parent.Core.Animation.withAnimation)
local Placement_upvr = require(script.Parent.Enum.Placement)
local module_4_upvr = {
	frequency = 3;
}
local var12_upvr = require(Parent.App.ImageSet.getIconSize)(require(Parent.App.ImageSet.Enum.IconSize).Medium)
local var13_upvr = var12_upvr + 8
local var14_upvr = (var13_upvr - var12_upvr) / 2
local var15_upvr = (var13_upvr - var12_upvr) / 2
local any_extend_result1 = Roact_upvr.PureComponent:extend("SystemBar")
any_extend_result1.validateProps = t_upvr.strictInterface({
	itemList = t_upvr.array(t_upvr.strictInterface({
		iconOn = t_upvr.optional(validateImageSetData);
		iconOff = t_upvr.optional(validateImageSetData);
		iconImageComponent = t_upvr.optional(t_upvr.union(t_upvr.table, t_upvr.callback));
		iconComponent = t_upvr.optional(t_upvr.union(t_upvr.table, t_upvr.callback));
		onActivated = t_upvr.callback;
		badgeValue = t_upvr.optional(t_upvr.union(t_upvr.integer, t_upvr.string, BadgeStates_upvr.isEnumValue));
		itemSize = t_upvr.optional(t_upvr.UDim2);
		bottomAligned = t_upvr.optional(t_upvr.boolean);
	}));
	selection = t_upvr.optional(t_upvr.integer);
	placement = t_upvr.optional(Placement_upvr.isEnumValue);
	hidden = t_upvr.optional(t_upvr.boolean);
	onSafeAreaChanged = t_upvr.optional(t_upvr.callback);
	size = t_upvr.optional(t_upvr.UDim2);
	position = t_upvr.optional(t_upvr.UDim2);
	layoutOrder = t_upvr.optional(t_upvr.integer);
	layoutPaddingOffset = t_upvr.optional(t_upvr.UDim);
	firstItemPaddingOffset = t_upvr.optional(t_upvr.UDim);
	lastItemPaddingOffset = t_upvr.optional(t_upvr.UDim);
	[Roact_upvr.Children] = t_upvr.optional(t_upvr.any);
	roundCorners = t_upvr.optional(t_upvr.boolean);
	buttonStroke = t_upvr.optional(t_upvr.boolean);
	bgTransparency = t_upvr.optional(t_upvr.integer);
	sortOrder = t_upvr.optional(t_upvr.enum(Enum.SortOrder));
	clipsDescendants = t_upvr.optional(t_upvr.boolean);
	experimentalTabSizePortraitY = t_upvr.optional(t_upvr.number);
})
any_extend_result1.defaultProps = {
	placement = Placement_upvr.Auto;
	layoutPaddingOffset = UDim.new(0, 0);
	firstItemPaddingOffset = UDim.new(0, 0);
	lastItemPaddingOffset = UDim.new(0, 0);
	clipsDescendants = true;
	experimentalTabSizePortraitY = 48;
}
function any_extend_result1.isPortrait(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: Placement_upvr (readonly)
	]]
	if arg1.props.placement == Placement_upvr.Left then
		return false
	end
	if arg1.props.placement == Placement_upvr.Bottom then
		return true
	end
	return arg1.state.portrait
end
local ControlState_upvr = require(Parent.Core.Control.Enum.ControlState)
local var21_upvr = var15_upvr - 4
local var22_upvr = var14_upvr + 4
local ImageSetComponent_upvr = require(Parent.Core.ImageSet.ImageSetComponent)
local Badge_upvr = require(Parent.App.Indicator.Badge)
local function renderItem(arg1, arg2, arg3, arg4, arg5) -- Line 151
	--[[ Upvalues[16]:
		[1]: ControlState_upvr (readonly)
		[2]: Placement_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BadgeStates_upvr (readonly)
		[5]: t_upvr (readonly)
		[6]: var14_upvr (readonly)
		[7]: var15_upvr (readonly)
		[8]: var21_upvr (readonly)
		[9]: var22_upvr (readonly)
		[10]: withAnimation_upvr (readonly)
		[11]: withStyle_upvr (readonly)
		[12]: ImageSetComponent_upvr (readonly)
		[13]: var12_upvr (readonly)
		[14]: var12_upvr (readonly)
		[15]: Badge_upvr (readonly)
		[16]: module_4_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var25
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var25 = true
		return arg2.iconOff == nil
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var25 = true
		return arg2.iconImageComponent == nil
	end
	if arg2.iconOn == nil or INLINED() or INLINED_2() then
		if arg2.iconComponent == nil then
			var25 = false
		else
			var25 = true
		end
	end
	assert(var25, "items must define either iconOn and iconOff or iconImageComponent or iconComponent")
	var25 = ControlState_upvr.Pressed
	if arg3 ~= var25 then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	var25 = true
	if not var25 then
		if arg3 ~= ControlState_upvr.Hover then
			var25 = false
		else
			var25 = true
		end
	end
	if arg2.iconComponent then
		local var27
		if arg1:isPortrait() then
			var27 = Placement_upvr.Bottom
		else
			var27 = Placement_upvr.Left
		end
		local module = {
			placement = var27;
			hovered = var25;
		}
		module.selected = arg4
		module.pressed = true
		module.badgeValue = arg2.badgeValue
		local module_9 = {}
		module_9.LayoutOrder = arg5
		return Roact_upvr.createElement(arg2.iconComponent, module), module_9
	end
	var27 = nil
	local var30_upvw = var27
	if arg2.badgeValue then
		local badgeValue = arg2.badgeValue
		if badgeValue == BadgeStates_upvr.isEmpty then
			var30_upvw = true
		else
			if t_upvr.string(arg2.badgeValue) then
				badgeValue = true
			elseif 0 >= arg2.badgeValue then
				badgeValue = false
			else
				badgeValue = true
			end
			var30_upvw = badgeValue
		end
	else
		var30_upvw = false
	end
	badgeValue = var14_upvr
	if var25 then
		if arg1:isPortrait() then
		else
			badgeValue = var22_upvr
		end
	end
	local var34_upvr = true
	local module_7 = {}
	module_7.LayoutOrder = arg5
	return withAnimation_upvr({
		positionX = badgeValue;
		positionY = var21_upvr;
	}, function(arg1_2) -- Line 204
		--[[ Upvalues[12]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: ImageSetComponent_upvr (copied, readonly)
			[5]: var12_upvr (copied, readonly)
			[6]: var12_upvr (copied, readonly)
			[7]: arg1 (readonly)
			[8]: arg4 (readonly)
			[9]: var34_upvr (readonly)
			[10]: var30_upvw (read and write)
			[11]: Badge_upvr (copied, readonly)
			[12]: BadgeStates_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 205
			--[[ Upvalues[12]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: ImageSetComponent_upvr (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: var12_upvr (copied, readonly)
				[6]: var12_upvr (copied, readonly)
				[7]: arg1 (copied, readonly)
				[8]: arg4 (copied, readonly)
				[9]: var34_upvr (copied, readonly)
				[10]: var30_upvw (copied, read and write)
				[11]: Badge_upvr (copied, readonly)
				[12]: BadgeStates_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
			local var36
			if not arg2.iconImageComponent then
			end
			local module_6 = {}
			var36 = UDim2.fromOffset(math.floor(arg1_2.positionX + 0.5), math.floor(arg1_2.positionY + 0.5))
			module_6.Position = var36
			var36 = UDim2.fromOffset(var12_upvr, var12_upvr)
			module_6.Size = var36
			if arg1.props.buttonStroke then
				var36 = 0.99
			else
				var36 = 1
			end
			module_6.BackgroundTransparency = var36
			if not arg4 or not arg2.iconOn then
			end
			module_6.Image = arg2.iconOff
			module_6.ImageColor3 = arg1_3.Theme.IconDefault.Color
			if var34_upvr then
			else
			end
			module_6.ImageTransparency = 0
			-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [79] 58. Error Block 49 start (CF ANALYSIS FAILED)
			local tbl_4 = {}
			if arg2.badgeValue == BadgeStates_upvr.isEmpty then
				local udim2 = UDim2.fromOffset(22, 2)
			else
			end
			tbl_4.position = UDim2.fromOffset(18, -2)
			tbl_4.value = arg2.badgeValue
			local any_createElement_result1 = Roact_upvr.createElement(Badge_upvr, tbl_4)
			if not any_createElement_result1 then
				-- KONSTANTERROR: [112] 82. Error Block 21 start (CF ANALYSIS FAILED)
				any_createElement_result1 = nil
				-- KONSTANTERROR: [112] 82. Error Block 21 end (CF ANALYSIS FAILED)
			end
			;({}).Badge = any_createElement_result1
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				tbl_6.CornerRadius = UDim.new(0.15, 0)
				local tbl_6 = {}
				return Roact_upvr.createElement("UICorner", tbl_6)
			end
			if not arg1.props.roundCorners or not INLINED_3() then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).UICorner = nil
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				tbl_3.Thickness = 1
				tbl_3.Transparency = 0
				tbl_3.Color = Color3.new(0.4, 0.4, 0.4)
				local tbl_3 = {}
				return Roact_upvr.createElement("UIStroke", tbl_3)
			end
			if not arg1.props.buttonStroke or not INLINED_4() then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).UIStroke = nil
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			do
				return Roact_upvr.createElement(ImageSetComponent_upvr.Label, module_6, {})
			end
			-- KONSTANTERROR: [79] 58. Error Block 49 end (CF ANALYSIS FAILED)
		end)
	end, module_4_upvr), module_7
end
any_extend_result1.renderItem = renderItem
function any_extend_result1.renderPortrait(arg1, arg2, arg3) -- Line 238
	--[[ Upvalues[5]:
		[1]: withAnimation_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: var13_upvr (readonly)
		[5]: module_4_upvr (readonly)
	]]
	local module_5 = {}
	local var46
	if arg1.props.hidden then
		var46 = 0
	else
		var46 = -arg1.props.experimentalTabSizePortraitY
	end
	module_5.offset = var46
	function var46(arg1_4) -- Line 241
		--[[ Upvalues[6]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
			[5]: var13_upvr (copied, readonly)
			[6]: arg3 (readonly)
		]]
		return Roact_upvr.createElement("Frame", Cryo_upvr.Dictionary.join(arg2, {
			Position = UDim2.new(0, 0, 1, math.floor(arg1_4.offset + 0.5));
			Size = UDim2.new(1, 0, 0, arg1.props.experimentalTabSizePortraitY);
			ZIndex = 99;
		}), {
			Layout = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			InnerFrame = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
			}, Cryo_upvr.Dictionary.join({
				Constraint = Roact_upvr.createElement("UISizeConstraint", {
					MaxSize = Vector2.new(600, arg1.props.experimentalTabSizePortraitY);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					Padding = arg1.props.layoutPaddingOffset + UDim.new(1 / #arg1.props.itemList, -var13_upvr);
					SortOrder = arg1.props.sortOrder;
				}, {});
			}, arg3));
		})
	end
	return withAnimation_upvr(module_5, var46, module_4_upvr)
end
local var54_upvr = 12 + (64 - var13_upvr) / 2
local var55_upvr = (4) + (64 - var13_upvr)
function any_extend_result1.renderLandscape(arg1, arg2, arg3, arg4) -- Line 277
	--[[ Upvalues[6]:
		[1]: withAnimation_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: var54_upvr (readonly)
		[5]: var55_upvr (readonly)
		[6]: module_4_upvr (readonly)
	]]
	local module_8 = {}
	local var58
	if arg1.props.hidden then
		var58 = -64
	else
		var58 = 0
	end
	module_8.offset = var58
	function var58(arg1_5) -- Line 280
		--[[ Upvalues[8]:
			[1]: Roact_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
			[5]: arg1 (readonly)
			[6]: var54_upvr (copied, readonly)
			[7]: var55_upvr (copied, readonly)
			[8]: arg3 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl = {
			Position = UDim2.new(0, math.floor(arg1_5.offset + 0.5), 0, 0);
			Size = UDim2.new(0, 64, 1, 0);
		}
		local var60 = 99
		tbl.ZIndex = var60
		if arg4 then
			var60 = 1
		else
			var60 = nil
		end
		tbl.BackgroundTransparency = var60
		if not arg4 then
			-- KONSTANTWARNING: GOTO [72] #56
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [71] 55. Error Block 29 start (CF ANALYSIS FAILED)
		;({}).PaddingTop = nil
		if arg4 then
			-- KONSTANTWARNING: GOTO [89] #69
		end
		-- KONSTANTERROR: [71] 55. Error Block 29 end (CF ANALYSIS FAILED)
	end
	return withAnimation_upvr(module_8, var58, module_4_upvr)
end
function any_extend_result1.renderBackground(arg1, arg2, arg3) -- Line 310
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	if arg1:isPortrait() then
		return arg1:renderPortrait(arg2, arg3)
	end
	local any_filter_result1 = Cryo_upvr.List.filter(arg3, function(arg1_7, arg2_3) -- Line 317
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.itemList[arg2_3].bottomAligned
	end)
	local any_renderLandscape_result1 = arg1:renderLandscape(arg2, Cryo_upvr.List.filter(arg3, function(arg1_6, arg2_2) -- Line 314
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return not arg1.props.itemList[arg2_2].bottomAligned
	end))
	if 0 < #any_filter_result1 then
		any_renderLandscape_result1 = Roact_upvr.createFragment({
			NavBar = any_renderLandscape_result1;
			BottomAlignedNavBar = arg1:renderLandscape(arg2, any_filter_result1, true);
		})
	end
	return any_renderLandscape_result1
end
function any_extend_result1.renderSafeArea(arg1) -- Line 331
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local var66
	local var67
	if arg1.props.hidden then
		var66 = UDim2.new(0, 0, 0, 0)
		var67 = UDim2.new(1, 0, 1, 0)
	elseif arg1:isPortrait() then
		var66 = UDim2.new(0, 0, 0, 0)
		var67 = UDim2.new(1, 0, 1, -arg1.props.experimentalTabSizePortraitY)
	else
		var66 = UDim2.new(0, 64, 0, 0)
		var67 = UDim2.new(1, -64, 1, 0)
	end
	return Roact_upvr.createElement("Frame", {
		Position = var66;
		Size = var67;
		BackgroundTransparency = 1;
		[Roact_upvr.Change.AbsoluteSize] = arg1.onSafeAreaEvent;
		[Roact_upvr.Change.AbsolutePosition] = arg1.onSafeAreaEvent;
	}, arg1.props[Roact_upvr.Children])
end
local function renderList(arg1, arg2, arg3) -- Line 352
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_8) -- Line 353
		--[[ Upvalues[5]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Theme = arg1_8.Theme
		local module_2 = {}
		local position = arg1.props.position
		if not position then
			position = UDim2.new(0, 0, 0, 0)
		end
		module_2.Position = position
		position = arg1.props.size
		local var74 = position
		if not var74 then
			var74 = UDim2.new(1, 0, 1, 0)
		end
		module_2.Size = var74
		module_2.BackgroundColor3 = Color3.new(0, 0, 0)
		module_2.ClipsDescendants = arg1.props.clipsDescendants
		module_2.LayoutOrder = arg1.props.layoutOrder
		module_2.BackgroundTransparency = arg1.props.bgTransparency or 1
		module_2[Roact_upvr.Change.AbsoluteSize] = function(arg1_10) -- Line 365
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			if arg1.state.portrait and arg1_10.AbsoluteSize.Y < arg1_10.AbsoluteSize.X then
				arg1:setState({
					portrait = false;
				})
			elseif not arg1.state.portrait and arg1_10.AbsoluteSize.X < arg1_10.AbsoluteSize.Y then
				arg1:setState({
					portrait = true;
				})
			end
		end
		local module_10 = {}
		local tbl_2 = {}
		local Color = Theme.NavigationBar.Color
		tbl_2.BackgroundColor3 = Color
		if arg1.props.roundCorners then
			Color = 1
		else
			Color = Theme.NavigationBar.Transparency
		end
		tbl_2.BackgroundTransparency = Color
		tbl_2.BorderSizePixel = 0
		module_10.NavBar = arg1:renderBackground(tbl_2, Cryo_upvr.List.map(arg2, function(arg1_9, arg2_4) -- Line 355
			--[[ Upvalues[1]:
				[1]: arg3 (copied, readonly)
			]]
			return arg3(arg2_4)
		end))
		module_10.SafeArea = arg1:renderSafeArea()
		local module_3 = {}
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			tbl_5.CornerRadius = UDim.new(0.15, 0) or nil
			local tbl_5 = {}
			return Roact_upvr.createElement("UICorner", tbl_5)
		end
		if not arg1.props.roundCorners or not INLINED_5() then
		end
		module_3.UICorner = nil
		return Roact_upvr.createElement("Frame", module_2, module_10, module_3)
	end)
end
any_extend_result1.renderList = renderList
function any_extend_result1.init(arg1) -- Line 391
	arg1:setState({
		portrait = true;
	})
	function arg1.onSelectionChanged(arg1_11) -- Line 395
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if 0 < #arg1_11 then
			local var86 = arg1.props.itemList[arg1_11[1]]
			if var86 and var86.onActivated then
				var86.onActivated()
			end
		end
	end
	function arg1.onSafeAreaEvent(arg1_12) -- Line 403
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onSafeAreaChanged then
			arg1.props.onSafeAreaChanged({
				Position = arg1_12.Position;
				AbsolutePosition = arg1_12.AbsolutePosition;
				Size = arg1_12.Size;
				AbsoluteSize = arg1_12.AbsoluteSize;
			})
		end
	end
end
local InteractableList_upvr = require(Parent.Core.Control.InteractableList)
function any_extend_result1.render(arg1) -- Line 415
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: InteractableList_upvr (readonly)
		[3]: var13_upvr (readonly)
		[4]: var13_upvr (readonly)
	]]
	local itemList = arg1.props.itemList
	local selection = arg1.props.selection
	if selection then
		if itemList[selection] == nil then
			selection = nil
		else
			selection = {selection}
		end
	end
	return Roact_upvr.createElement(InteractableList_upvr, {
		itemList = itemList;
		selection = selection;
		itemSize = UDim2.fromOffset(var13_upvr, var13_upvr);
		renderList = function(...) -- Line 431, Named "renderList"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:renderList(...)
		end;
		renderItem = function(...) -- Line 434, Named "renderItem"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:renderItem(...)
		end;
		sortOrder = arg1.props.sortOrder;
		onSelectionChanged = arg1.onSelectionChanged;
	})
end
return any_extend_result1