-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:24
-- Luau version 6, Types version 3
-- Time taken: 0.010124 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local t = require(Parent.t)
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("StickyActionBar")
any_extend_result1.validateProps = t.strictInterface({
	actionBarProps = t.optional(t.table);
	actionBarWidth = t.optional(t.number);
	infoProps = t.optional(t.strictInterface({
		title = t.string;
		icon = t.optional(UIBlox.Core.ImageSet.Validator.validateImage);
		enableInfoAtStart = t.optional(t.boolean);
		infoSectionWidth = t.optional(t.integer);
	}));
	width = t.optional(t.integer);
	layoutOrder = t.optional(t.integer);
})
any_extend_result1.defaultProps = {
	actionBarProps = nil;
	actionBarWidth = 380;
	infoProps = nil;
	layoutOrder = 1;
	width = nil;
}
local GetTextSize_upvr = require(Parent.Style).GetTextSize
function any_extend_result1.init(arg1) -- Line 70
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	arg1.state = {
		containerWidth = nil;
	}
	function arg1.onContainerSizeChange(arg1_2) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_3, arg2) -- Line 75
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			return {
				containerWidth = arg1_2.AbsoluteSize.X;
			}
		end)
	end
	local function _() -- Line 82
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return UDim2.fromOffset(arg1.props.actionBarWidth, 48)
	end
	local function _(arg1_4, arg2, arg3) -- Line 86
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg3 and arg3.infoSectionWidth then
			return arg3.infoSectionWidth
		end
		if not arg2 or not (arg1_4 - 80 - UDim2.fromOffset(arg1.props.actionBarWidth, 48).X.Offset) then
		end
		return arg1_4 - 80
	end
	local function var16_upvr(arg1_5, arg2, arg3, arg4) -- Line 97
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg4 or not arg3 then
			return {
				horizontalAlignment = Enum.HorizontalAlignment.Left;
				left = 24;
				right = 24;
			}
		end
		local var18
		if arg1_5 < 1280 then
			var18 = 24
		else
			var18 = 80
		end
		local Offset = UDim2.fromOffset(arg1.props.actionBarWidth, 48).X.Offset
		return {
			left = math.max(Offset + var18, (arg1_5 - arg2) / 2) - Offset;
			right = 24;
		}
	end
	local function _(arg1_6, arg2, arg3) -- Line 121
		--[[ Upvalues[1]:
			[1]: GetTextSize_upvr (copied, readonly)
		]]
		return GetTextSize_upvr(arg1_6, arg2.RelativeSize * arg3.Font.BaseSize, arg2.Font, Vector2.new(10000, 10000)).X
	end
	function arg1.getLayoutConfig(arg1_7, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 128
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: GetTextSize_upvr (copied, readonly)
			[3]: var16_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
		local var23
		if arg1.props.infoProps and arg1.props.infoProps.enableInfoAtStart then
			var23 = true
		else
			var23 = false
		end
		if 0 < arg4 then
			-- KONSTANTWARNING: GOTO [45] #34
		end
		-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [44] 33. Error Block 37 start (CF ANALYSIS FAILED)
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl_17.actionBarSection = 2
			tbl_17.infoSection = 1
			local tbl_17 = {}
			return tbl_17
		end
		if not var23 or not INLINED() then
		end
		local module_4 = {
			layoutOrder = {
				infoSection = 2;
				actionBarSection = 1;
			};
			infoHorizontalAlignment = Enum.HorizontalAlignment.Left;
		}
		local var27
		if arg3 and arg3.infoSectionWidth then
			var27 = arg3.infoSectionWidth
		else
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var27 = arg1_7 - 80 - UDim2.fromOffset(arg1.props.actionBarWidth, 48).X.Offset
				return var27
			end
			if not arg2 or not INLINED_2() then
				var27 = arg1_7 - 80
			end
		end
		module_4.infoSectionWidth = var27
		var27 = var16_upvr(arg1_7, GetTextSize_upvr(arg5, arg6.RelativeSize * arg7.Font.BaseSize, arg6.Font, Vector2.new(10000, 10000)).X + arg4 + 0, arg2, var23)
		module_4.infoSectionPadding = var27
		var27 = UDim2.fromOffset(arg1.props.actionBarWidth, 48)
		module_4.actionBarSectionSize = var27
		var27 = {}
		var27.left = 0
		var27.right = 0
		var27.top = 0
		var27.bottom = 0
		module_4.actionBarSectionMarginOverride = var27
		do
			return module_4
		end
		-- KONSTANTERROR: [44] 33. Error Block 37 end (CF ANALYSIS FAILED)
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local any_getIconSize_result1_upvr = UIBlox.App.ImageSet.getIconSize(UIBlox.App.ImageSet.Enum.IconSize.Large)
local ActionBar_upvr = UIBlox.App.Button.ActionBar
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function any_extend_result1.render(arg1) -- Line 169
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: any_getIconSize_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ActionBar_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: StyledTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var33_upvr
	if arg1.props.actionBarProps == nil then
		var33_upvr = false
	else
		var33_upvr = true
	end
	if arg1.props.infoProps == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local width_upvr = arg1.props.width
	if not width_upvr then
		width_upvr = arg1.state.containerWidth
	end
	assert(var33_upvr or true, "Either actionbar or info should be present!")
	local var37_upvr = true
	return withStyle_upvr(function(arg1_8) -- Line 174
		--[[ Upvalues[9]:
			[1]: var37_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_getIconSize_result1_upvr (copied, readonly)
			[4]: width_upvr (readonly)
			[5]: var33_upvr (readonly)
			[6]: Roact_upvr (copied, readonly)
			[7]: ActionBar_upvr (copied, readonly)
			[8]: ImageSetLabel_upvr (copied, readonly)
			[9]: StyledTextLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var56
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			var56 = any_getIconSize_result1_upvr
			return var56
		end
		if not var37_upvr or not arg1.props.infoProps.icon or not INLINED_6() then
			var56 = 0
		end
		if not var37_upvr or not arg1.props.infoProps.title then
			local var57 = ""
		end
		local Header2 = arg1_8.Font.Header2
		local any_getLayoutConfig_result1 = arg1.getLayoutConfig(width_upvr or 0, var33_upvr, arg1.props.infoProps, var56, var57, Header2, arg1_8)
		local module_2 = {
			layoutOrder = arg1.props.layoutOrder;
		}
		if not arg1.props.width or not UDim2.new(0, arg1.props.width, 1, 0) then
		end
		module_2.size = UDim2.fromScale(1, 1)
		module_2.onContainerSizeChange = arg1.onContainerSizeChange
		module_2.horizontalAlignment = Enum.HorizontalAlignment.Left
		module_2.padding = {
			left = 56;
			right = 24;
		}
		local module = {}
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			tbl_15.ActionBar = Roact_upvr.createElement(ActionBar_upvr, tbl_3)
			tbl_3.enableButtonAtStart = true
			tbl_3.marginOverride = any_getLayoutConfig_result1.actionBarSectionMarginOverride
			tbl_3.icons = arg1.props.actionBarProps.icons
			tbl_3.button = arg1.props.actionBarProps.button
			local tbl_3 = {}
			local tbl_15 = {}
			tbl_2.horizontalAlignment = Enum.HorizontalAlignment.Left
			tbl_2.size = any_getLayoutConfig_result1.actionBarSectionSize
			tbl_2.layoutOrder = any_getLayoutConfig_result1.layoutOrder.actionBarSection
			local tbl_2 = {}
			return arg1:renderHorizontalLayout(tbl_2, tbl_15)
		end
		if not var33_upvr or not INLINED_7() then
		end
		module.ActionBarSection = nil
		if var37_upvr then
			local var66
			if width_upvr ~= nil then
				local tbl_4 = {}
				var66 = any_getLayoutConfig_result1.layoutOrder
				tbl_4.layoutOrder = var66.infoSection
				tbl_4.width = any_getLayoutConfig_result1.infoSectionWidth
				tbl_4.horizontalAlignment = any_getLayoutConfig_result1.infoHorizontalAlignment
				tbl_4.padding = any_getLayoutConfig_result1.infoSectionPadding
				tbl_4.internalSpacing = 12
				local tbl_11 = {}
				local function INLINED_8() -- Internal function, doesn't exist in bytecode
					var66 = var66(ImageSetLabel_upvr, tbl_14, tbl_8)
					tbl_8.RoundCorner = Roact_upvr.createElement("UICorner", tbl_13)
					tbl_13.CornerRadius = UDim.new(0, 8)
					local tbl_13 = {}
					local tbl_8 = {}
					tbl_14.ScaleType = Enum.ScaleType.Crop
					tbl_14.BackgroundTransparency = 1
					tbl_14.Image = arg1.props.infoProps.icon
					tbl_14.Position = UDim2.new(0, 0, 0, 0)
					tbl_14.LayoutOrder = 1
					tbl_14.Size = UDim2.new(0, var56, 0, var56)
					local tbl_14 = {}
					var66 = Roact_upvr.createElement
					return var66
				end
				if not arg1.props.infoProps.icon or not INLINED_8() then
					var66 = nil
				end
				tbl_11.Icon = var66
				var66 = Roact_upvr.createElement
				var66 = var66(StyledTextLabel_upvr, {
					layoutOrder = 2;
					size = UDim2.new(0, 0, 0, 48);
					automaticSize = Enum.AutomaticSize.X;
					text = var57;
					fluidSizing = false;
					textWrapped = true;
					textXAlignment = Enum.TextXAlignment.Left;
					colorStyle = arg1_8.Theme.TextEmphasis;
					fontStyle = Header2;
					textTruncate = Enum.TextTruncate.AtEnd;
				})
				tbl_11.Title = var66
			end
		end
		module.InfoSection = arg1:renderHorizontalLayout(tbl_4, tbl_11)
		return arg1:renderHorizontalLayout(module_2, module)
	end)
end
function any_extend_result1.renderHorizontalLayout(arg1, arg2, arg3) -- Line 245
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local module_3 = {}
	local var74
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		var74 = arg2.size
		return var74
	end
	if not arg2.size or not INLINED_9() then
		var74 = UDim2.new(0, arg2.width, 0, 0)
	end
	module_3.Size = var74
	var74 = Enum.AutomaticSize.Y
	module_3.AutomaticSize = var74
	var74 = 1
	module_3.BackgroundTransparency = var74
	var74 = arg2.layoutOrder
	module_3.LayoutOrder = var74
	var74 = Roact_upvr.Change.AbsoluteSize
	module_3[var74] = arg2.onContainerSizeChange
	var74 = {}
	local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = arg2.horizontalAlignment;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, arg2.internalSpacing or 0);
	})
	var74.Layout = any_createElement_result1
	if arg2.padding then
		any_createElement_result1 = Roact_upvr.createElement
		any_createElement_result1 = any_createElement_result1("UIPadding", {
			PaddingLeft = UDim.new(0, arg2.padding.left or 0);
			PaddingRight = UDim.new(0, arg2.padding.right or 0);
			PaddingTop = UDim.new(0, arg2.padding.top or 0);
			PaddingBottom = UDim.new(0, arg2.padding.bottom or 0);
		})
	else
		any_createElement_result1 = nil
	end
	var74.Padding = any_createElement_result1
	var74.Elements = Roact_upvr.createFragment(arg3)
	return Roact_upvr.createElement("Frame", module_3, var74)
end
return any_extend_result1