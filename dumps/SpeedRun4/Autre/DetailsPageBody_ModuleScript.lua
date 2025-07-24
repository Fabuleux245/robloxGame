-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:03
-- Luau version 6, Types version 3
-- Time taken: 0.011149 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local FFlagLuaAppEdpSingleColumn_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpSingleColumn
local FFlagLuaAppEdpAnimatedScrolling_upvr = require(Parent.SharedFlags).FFlagLuaAppEdpAnimatedScrolling
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsPageBody")
local tbl_6 = {
	titleText = t.optional(t.string);
	subTitleText = t.optional(t.string);
	renderInfoContent = t.optional(t.callback);
	componentList = t.optional(require(script.Parent.validateDetailsPageComponentList));
	dualPanelBreakpoint = t.optional(t.number);
	sideMargin = t.optional(t.number);
}
local any_optional_result1 = t.optional(t.boolean)
tbl_6.bodyClipsDescendants = any_optional_result1
if FFlagLuaAppEdpSingleColumn_upvr then
	any_optional_result1 = t.optional(t.number)
else
	any_optional_result1 = nil
end
tbl_6.maxContentWidth = any_optional_result1
any_optional_result1 = t.optional(t.boolean)
tbl_6.showPageDetails = any_optional_result1
any_optional_result1 = t.optional(t.string)
tbl_6.deviceType = any_optional_result1
if FFlagLuaAppEdpAnimatedScrolling_upvr then
	any_optional_result1 = t.optional(t.number)
else
	any_optional_result1 = nil
end
tbl_6.bottomPadding = any_optional_result1
any_extend_result1.validateProps = t.strictInterface(tbl_6)
any_extend_result1.defaultProps = {
	bodyClipsDescendants = true;
	showPageDetails = false;
}
function any_extend_result1.init(arg1) -- Line 52
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		containerWidth = nil;
	}
	arg1.containerFrameRef = Roact_upvr.createRef()
	arg1.mounted = false
	function arg1.onContainerSizeChange(arg1_2) -- Line 58
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if not arg1.mounted then
		else
			arg1:setState(function(arg1_3, arg2) -- Line 63
				--[[ Upvalues[1]:
					[1]: arg1_2 (readonly)
				]]
				if arg1_3.containerWidth ~= arg1_2.AbsoluteSize.x then
					return {
						containerWidth = arg1_2.AbsoluteSize.x;
					}
				end
				return nil
			end)
		end
	end
end
function any_extend_result1.renderSinglePanel(arg1) -- Line 74
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagLuaAppEdpSingleColumn_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local tbl_3 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 24);
		});
	}
	local var24
	if FFlagLuaAppEdpSingleColumn_upvr and arg1.props.maxContentWidth then
		var24 = Roact_upvr.createElement
		var24 = var24("UISizeConstraint", {
			MaxSize = Vector2.new(arg1.props.maxContentWidth, math.huge);
		})
	else
		var24 = nil
	end
	tbl_3.UISizeConstraint = var24
	var24 = pairs(arg1.props.componentList)
	local pairs_result1, pairs_result2_2, pairs_result3 = pairs(arg1.props.componentList)
	for i, v in pairs_result1, pairs_result2_2, pairs_result3 do
		tbl_3[i.."Container"] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = v.portraitLayoutOrder;
		}, {
			[i] = v.renderComponent();
		})
	end
	pairs_result1 = {}
	local tbl_2 = {}
	if FFlagLuaAppEdpSingleColumn_upvr then
		-- KONSTANTWARNING: GOTO [120] #85
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [119] 84. Error Block 28 start (CF ANALYSIS FAILED)
	tbl_2.AnchorPoint = nil
	if FFlagLuaAppEdpSingleColumn_upvr then
	else
	end
	tbl_2.Position = nil
	tbl_2.Size = UDim2.fromScale(1, 0)
	tbl_2.ClipsDescendants = false
	tbl_2.AutomaticSize = Enum.AutomaticSize.Y
	tbl_2.BackgroundTransparency = 1
	pairs_result1.Panel = Roact_upvr.createElement("Frame", tbl_2, tbl_3)
	do
		return pairs_result1
	end
	-- KONSTANTERROR: [119] 84. Error Block 28 end (CF ANALYSIS FAILED)
end
local ContentPosition_upvr = require(script.Parent.ContentPosition)
local FFlagSongEdpCarouselIxp_upvr = require(Parent.SharedFlags).FFlagSongEdpCarouselIxp
function any_extend_result1.renderDualPanel(arg1) -- Line 113
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ContentPosition_upvr (readonly)
		[3]: FFlagSongEdpCarouselIxp_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var42
	if arg1.state.containerWidth < 1920 then
		var42 = 48
	else
		var42 = 96
	end
	local tbl_7 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 24);
		});
	}
	local tbl_8 = {
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 24);
		});
	}
	for i_2, v_2 in pairs(arg1.props.componentList) do
		local var50 = tbl_7
		if v_2.landscapePosition == ContentPosition_upvr.Right then
			var50 = tbl_8
		end
		var50[i_2.."Container"] = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			LayoutOrder = v_2.landscapeLayoutOrder;
		}, {
			[i_2] = v_2.renderComponent();
		})
	end
	local tbl = {
		Size = UDim2.new(0.5, -var42 / 2, 0, 0);
	}
	if FFlagSongEdpCarouselIxp_upvr then
	else
	end
	tbl.ClipsDescendants = true
	tbl.BackgroundTransparency = 1
	tbl.AutomaticSize = Enum.AutomaticSize.Y
	tbl.LayoutOrder = 2
	return {
		Layout = Roact_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, var42);
		});
		LeftPanel = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0.5, -var42 / 2, 0, 0);
			ClipsDescendants = true;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 1;
		}, tbl_7);
		RightPanel = Roact_upvr.createElement("Frame", tbl, tbl_8);
	}
end
function any_extend_result1.renderBodyContent(arg1) -- Line 180
	if arg1.state.containerWidth and arg1.props.componentList then
		if arg1.state.containerWidth < (arg1.props.dualPanelBreakpoint or 1280) then
			return arg1:renderSinglePanel()
		end
		return arg1:renderDualPanel()
	end
	return {}
end
local getPlatformConfig_upvr = require(script.Parent.getPlatformConfig)
local DetailsPageTitleContent_upvr = require(script.Parent.DetailsPageTitleContent)
function any_extend_result1.render(arg1) -- Line 193
	--[[ Upvalues[4]:
		[1]: getPlatformConfig_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: DetailsPageTitleContent_upvr (readonly)
		[4]: FFlagLuaAppEdpAnimatedScrolling_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local deviceType = arg1.props.deviceType
	local var60
	if arg1.props.sideMargin then
		deviceType = arg1.props.sideMargin
	else
		deviceType = getPlatformConfig_upvr(deviceType).sideMargin
	end
	local module_2 = {}
	var60 = 1
	module_2.Size = UDim2.fromScale(var60, 0)
	module_2.BackgroundTransparency = 1
	var60 = arg1.props
	module_2.ClipsDescendants = var60.bodyClipsDescendants
	module_2.AutomaticSize = Enum.AutomaticSize.Y
	var60 = Roact_upvr
	var60 = arg1.containerFrameRef
	module_2[var60.Ref] = var60
	var60 = Roact_upvr.Change
	var60 = arg1.onContainerSizeChange
	module_2[var60.AbsoluteSize] = var60
	local module = {}
	var60 = Roact_upvr.createElement
	var60 = var60("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
	})
	module.Layout = var60
	var60 = Roact_upvr.createElement
	var60 = var60("UIPadding", {
		PaddingLeft = UDim.new(0, deviceType);
		PaddingRight = UDim.new(0, deviceType);
	})
	module.UIPadding = var60
	var60 = arg1.props.showPageDetails
	if var60 then
		var60 = Roact_upvr.createElement
		var60 = var60(DetailsPageTitleContent_upvr, {
			titleText = arg1.props.titleText;
			subTitleText = arg1.props.subTitleText;
			renderInfoContent = arg1.props.renderInfoContent;
			verticalAlignment = Enum.VerticalAlignment.Top;
			layoutOrder = 1;
		} or nil)
	end
	module.TitleInfo = var60
	var60 = Roact_upvr.createElement
	local tbl_4 = {}
	if not arg1.props.showPageDetails then
	else
	end
	tbl_4.Size = UDim2.new(1, 0, 0, deviceType)
	tbl_4.BackgroundTransparency = 1
	tbl_4.LayoutOrder = 2
	var60 = var60("Frame", tbl_4)
	module.Padding = var60
	var60 = Roact_upvr.createElement
	var60 = var60("Frame", {
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = 3;
	}, arg1:renderBodyContent())
	module.ContentFrame = var60
	var60 = Roact_upvr.createElement
	local tbl_5 = {}
	if FFlagLuaAppEdpAnimatedScrolling_upvr then
		if not arg1.props.bottomPadding then
			-- KONSTANTWARNING: GOTO [224] #150
		end
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [224] 150. Error Block 16 start (CF ANALYSIS FAILED)
	tbl_5.Size = UDim2.new(1, 0, 0, 3 * deviceType)
	tbl_5.BackgroundTransparency = 1
	tbl_5.LayoutOrder = 4
	var60 = var60("Frame", tbl_5)
	module.BottomPadding = var60
	do
		return Roact_upvr.createElement("Frame", module_2, module)
	end
	-- KONSTANTERROR: [224] 150. Error Block 16 end (CF ANALYSIS FAILED)
end
function any_extend_result1.didMount(arg1) -- Line 248
	arg1.mounted = true
	if arg1.containerFrameRef.current then
		arg1.onContainerSizeChange(arg1.containerFrameRef.current)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 256
	arg1.mounted = false
end
return any_extend_result1