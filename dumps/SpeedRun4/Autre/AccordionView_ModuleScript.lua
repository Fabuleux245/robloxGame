-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:54
-- Luau version 6, Types version 3
-- Time taken: 0.004789 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local tbl_7_upvr = {
	dampingRatio = 1;
	frequency = 3.5;
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("AccordionView")
any_extend_result1.validateProps = t.strictInterface({
	items = t.table;
	itemWidth = t.number;
	itemHeight = t.number;
	renderItem = t.callback;
	placeholderColor = t.Color3;
	placeholderBaseTransparency = t.number;
	collapseButtonSize = t.number;
	renderCollapseButton = t.callback;
	LayoutOrder = t.optional(t.integer);
	maxItemsInCompactView = t.numberPositive;
	onExpand = t.optional(t.callback);
	onCollapse = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	maxItemsInCompactView = 3;
}
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
function any_extend_result1.init(arg1) -- Line 49
	--[[ Upvalues[2]:
		[1]: UIBloxConfig_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	arg1.state = {
		expanded = false;
		isExpandButtonPressed = false;
	}
	function arg1.onExpandButtonActivated() -- Line 55
		--[[ Upvalues[2]:
			[1]: UIBloxConfig_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if UIBloxConfig_upvr.addCallbacksToAccordionView and arg1.props.onExpand then
			arg1.props.onExpand()
		end
		arg1:setState({
			expanded = true;
			isExpandButtonPressed = false;
		})
	end
	function arg1.onCollapseButtonActivated() -- Line 65
		--[[ Upvalues[2]:
			[1]: UIBloxConfig_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if UIBloxConfig_upvr.addCallbacksToAccordionView and arg1.props.onCollapse then
			arg1.props.onCollapse()
		end
		arg1:setState({
			expanded = false;
		})
	end
	function arg1.onExpandButtonInputBegan(arg1_2, arg2) -- Line 74
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2.UserInputState == Enum.UserInputState.Begin and (arg2.UserInputType == Enum.UserInputType.Touch or arg2.UserInputType == Enum.UserInputType.MouseButton1) then
			arg1:setState({
				isExpandButtonPressed = true;
			})
		end
	end
	function arg1.onExpandButtonInputEnded() -- Line 88
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.isExpandButtonPressed then
			arg1:setState({
				isExpandButtonPressed = false;
			})
		end
	end
	arg1.rootFrameRef = Roact_upvr.createRef()
	function arg1.onListLayoutAbsoluteContentSizeChanged(arg1_3) -- Line 98
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.rootFrameRef.current then
			arg1.rootFrameRef.current.Size = UDim2.new(0, arg1.props.itemWidth, 0, math.max(arg1_3.AbsoluteContentSize.Y, arg1:getCompactTotalHeight()))
		end
	end
end
function any_extend_result1.getCompactTotalHeight(arg1) -- Line 109
	local len_2 = #arg1.props.items
	if len_2 == 0 then
		return 0
	end
	return arg1.props.itemHeight + (math.min(arg1.props.maxItemsInCompactView, len_2) - 1) * 10
end
function any_extend_result1.getLayoutInfo(arg1) -- Line 122
	local placeholderBaseTransparency = arg1.props.placeholderBaseTransparency
	local maxItemsInCompactView = arg1.props.maxItemsInCompactView
	local len = #arg1.props.items
	local minimum = math.min(maxItemsInCompactView, len)
	local var27
	if 1 < minimum then
		var27 = (1 - placeholderBaseTransparency) / (minimum - 1)
	end
	for i = 1, len do
		if arg1.state.expanded then
			({})[i] = {
				width = arg1.props.itemWidth;
				height = arg1.props.itemHeight;
				placeholderTransparency = 1;
				itemTransparency = 0;
			}
		elseif i == 1 then
			local tbl = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.width = arg1.props.itemWidth
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.height = arg1.props.itemHeight
			tbl.placeholderTransparency = 1
			tbl.itemTransparency = 0
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = tbl
		elseif i <= maxItemsInCompactView then
			local tbl_8 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_8.width = arg1.props.itemWidth - 20 * (i - 1)
			tbl_8.height = 10
			tbl_8.placeholderTransparency = placeholderBaseTransparency + var27 * (i - 2)
			tbl_8.itemTransparency = 1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = tbl_8
		else
			local tbl_10 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_10.width = arg1.props.itemWidth - 20 * (i - 1)
			tbl_10.height = 0
			tbl_10.placeholderTransparency = 1
			tbl_10.itemTransparency = 1
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i] = tbl_10
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local SpringAnimatedItem_upvr = require(Parent_2.Utility.SpringAnimatedItem)
function any_extend_result1.render(arg1) -- Line 176
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: SpringAnimatedItem_upvr (readonly)
		[3]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
	local var33
	if #arg1.props.items == 0 then
		return nil
	end
	local collapseButtonSize_upvr = arg1.props.collapseButtonSize
	local expanded = arg1.state.expanded
	local tbl_6 = {}
	local tbl_5 = {
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	if expanded then
		var33 = 10
	else
		var33 = 0
	end
	tbl_5.Padding = UDim.new(0, var33)
	var33 = Roact_upvr
	tbl_5[var33.Change.AbsoluteContentSize] = arg1.onListLayoutAbsoluteContentSizeChanged
	tbl_6.Layout = Roact_upvr.createElement("UIListLayout", tbl_5)
	local tbl_9 = {
		springOptions = tbl_7_upvr;
	}
	local tbl_4 = {}
	if arg1.state.isExpandButtonPressed then
		-- KONSTANTWARNING: GOTO [99] #63
	end
	-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [98] 62. Error Block 50 start (CF ANALYSIS FAILED)
	tbl_4.scale = 1
	tbl_9.animatedValues = tbl_4
	local function mapValuesToProps(arg1_4) -- Line 209
		return {
			Scale = arg1_4.scale;
		}
	end
	tbl_9.mapValuesToProps = mapValuesToProps
	tbl_6.Scaler = Roact_upvr.createElement(SpringAnimatedItem_upvr.AnimatedUIScale, tbl_9)
	local tbl_3 = {
		springOptions = tbl_7_upvr;
	}
	local tbl_2 = {}
	if not expanded or not (collapseButtonSize_upvr + 1) then
	end
	tbl_2.sizeOffsetY = 0
	tbl_3.animatedValues = tbl_2
	function tbl_3.mapValuesToProps(arg1_5) -- Line 222
		--[[ Upvalues[1]:
			[1]: collapseButtonSize_upvr (readonly)
		]]
		return {
			Size = UDim2.new(0, collapseButtonSize_upvr, 0, arg1_5.sizeOffsetY);
		}
	end
	local tbl_11 = {
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}
	var33 = Roact_upvr
	var33 = {}
	;({}).springOptions = tbl_7_upvr
	if expanded then
		-- KONSTANTWARNING: GOTO [159] #106
	end
	-- KONSTANTERROR: [98] 62. Error Block 50 end (CF ANALYSIS FAILED)
end
return any_extend_result1