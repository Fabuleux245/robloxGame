-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:23
-- Luau version 6, Types version 3
-- Time taken: 0.011676 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local MemoryViewEntry_upvr = require(script.Parent.MemoryViewEntry)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local EntryFrameHeight_upvr = Constants_upvr.GeneralFormatting.EntryFrameHeight
local any_extend_result1 = Roact_upvr.Component:extend("MemoryView")
local function getX_upvr(arg1) -- Line 37, Named "getX"
	return arg1.time
end
local function getY_upvr(arg1) -- Line 41, Named "getY"
	return arg1.data
end
local function formatValueStr_upvr(arg1) -- Line 45, Named "formatValueStr"
	return string.format("%.3f", arg1)
end
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)
function any_extend_result1.init(arg1, arg2) -- Line 49
	--[[ Upvalues[4]:
		[1]: EntryFrameHeight_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: TweenInfo_new_result1_upvr (readonly)
		[4]: Roact_upvr (readonly)
	]]
	function arg1.getOnButtonPress(arg1_2, arg2_2) -- Line 50
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: EntryFrameHeight_upvr (copied, readonly)
			[3]: TweenService_upvr (copied, readonly)
			[4]: TweenInfo_new_result1_upvr (copied, readonly)
		]]
		return function(arg1_3, arg2_3) -- Line 51
			--[[ Upvalues[6]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg2_2 (readonly)
				[4]: EntryFrameHeight_upvr (copied, readonly)
				[5]: TweenService_upvr (copied, readonly)
				[6]: TweenInfo_new_result1_upvr (copied, readonly)
			]]
			if arg1.state.expandIndex ~= arg1_2 then
				if arg1_2 then
					local current = arg1.scrollingRef.current
					if current then
						TweenService_upvr:Create(current, TweenInfo_new_result1_upvr, {
							CanvasPosition = Vector2.new(0, (arg2_2 - 2.4) * EntryFrameHeight_upvr);
						}):Play()
					end
				end
			end
			local tbl_7 = {}
			local var17 = false
			if arg1.state.expandIndex ~= arg1_2 then
				var17 = arg1_2
			end
			tbl_7.expandIndex = var17
			arg1:setState(tbl_7)
		end
	end
	function arg1.onSortChanged(arg1_4) -- Line 71
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_4 == arg2.targetMemoryData:getSortType() then
			arg2.targetMemoryData:setSortType(arg1_4)
			arg1:setState({
				reverseSort = not arg1.state.reverseSort;
			})
		else
			arg2.targetMemoryData:setSortType(arg1_4)
			arg1:setState({
				reverseSort = false;
			})
		end
	end
	function arg1.onCanvasPosChanged() -- Line 87
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local CanvasPosition = arg1.scrollingRef.current.CanvasPosition
		if arg1.state.canvasPos ~= CanvasPosition then
			arg1:setState({
				absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
				canvasPos = CanvasPosition;
			})
		end
	end
	arg1.scrollingRef = Roact_upvr.createRef()
	arg1.state = {
		memoryData = arg2.targetMemoryData:getMemoryData();
		reverseSort = false;
		expandIndex = false;
	}
end
function any_extend_result1.willUpdate(arg1) -- Line 106
	if arg1.canvasPosConnector then
		arg1.canvasPosConnector:Disconnect()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 112
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
	end
end
function any_extend_result1.didMount(arg1) -- Line 119
	arg1.treeViewItemConnector = arg1.props.targetMemoryData:treeUpdatedSignal():Connect(function(arg1_5) -- Line 121
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.memoryData = arg1_5
		arg1:setState(tbl_3)
	end)
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		arg1:setState({
			absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
			canvasPos = arg1.scrollingRef.current.CanvasPosition;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 138
	arg1.treeViewItemConnector:Disconnect()
end
function any_extend_result1.appendAdditionTabInformation(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 142
	--[[ Upvalues[4]:
		[1]: EntryFrameHeight_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: MemoryViewEntry_upvr (readonly)
		[4]: formatValueStr_upvr (readonly)
	]]
	for _, v in ipairs(arg3) do
		local name_2 = v.name
		arg6.layoutOrder += 1
		if arg1.scrollingRef.current.CanvasPosition.Y <= arg6.scrollingFrameHeight + EntryFrameHeight_upvr and arg6.usedFrameSpace < arg1.scrollingRef.current.AbsoluteSize.Y then
			local tbl = {
				size = UDim2.new(1, 0, 0, EntryFrameHeight_upvr);
			}
			tbl.depth = arg5
			tbl.name = name_2
			tbl.showGraph = false
			tbl.value = v.value
			tbl.formatValueStr = formatValueStr_upvr
			tbl.layoutOrder = arg6.layoutOrder
			arg2[arg4..name_2] = Roact_upvr.createElement(MemoryViewEntry_upvr, tbl)
			if arg6.paddingHeight < 0 then
				arg6.paddingHeight = arg6.scrollingFrameHeight
			else
				arg6.usedFrameSpace += EntryFrameHeight_upvr
			end
		end
		arg6.scrollingFrameHeight += EntryFrameHeight_upvr
		if v.moreInfo and type(v.moreInfo) == "table" then
			arg1:appendAdditionTabInformation(arg2, v.moreInfo, arg4..name_2, arg5 + 1, arg6)
		end
	end
end
local LineGraphHeight_upvr = Constants_upvr.GeneralFormatting.LineGraphHeight
function any_extend_result1.recursiveConstructEntries(arg1, arg2, arg3, arg4, arg5) -- Line 183
	--[[ Upvalues[7]:
		[1]: EntryFrameHeight_upvr (readonly)
		[2]: LineGraphHeight_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: MemoryViewEntry_upvr (readonly)
		[5]: formatValueStr_upvr (readonly)
		[6]: getX_upvr (readonly)
		[7]: getY_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	assert(arg1.scrollingRef.current, "ScrollingFrame not initialized yet")
	local name = arg3.name
	local any_lower_result1 = name:lower()
	local var50
	if string.find(any_lower_result1, arg1.props.searchTerm or "":lower()) then
		if arg1.state.expandIndex ~= name then
			any_lower_result1 = false
		else
			any_lower_result1 = true
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var50 = EntryFrameHeight_upvr + LineGraphHeight_upvr
			return var50
		end
		if not any_lower_result1 or not INLINED() then
			var50 = EntryFrameHeight_upvr
		end
		arg5.layoutOrder += 1
		if arg1.scrollingRef.current.CanvasPosition.Y <= arg5.scrollingFrameHeight + var50 and arg5.usedFrameSpace < arg1.scrollingRef.current.AbsoluteSize.Y then
			local tbl_8 = {
				size = UDim2.new(1, 0, 0, var50);
			}
			tbl_8.depth = arg4
			tbl_8.name = arg3.name
			tbl_8.showGraph = any_lower_result1
			tbl_8.dataStats = arg3.dataStats
			tbl_8.onButtonPress = arg1.getOnButtonPress(name, arg5.layoutOrder)
			tbl_8.formatValueStr = formatValueStr_upvr
			tbl_8.getX = getX_upvr
			tbl_8.getY = getY_upvr
			tbl_8.layoutOrder = arg5.layoutOrder
			arg2[name] = Roact_upvr.createElement(MemoryViewEntry_upvr, tbl_8)
			if arg5.paddingHeight < 0 then
				arg5.paddingHeight = arg5.scrollingFrameHeight
			else
				arg5.usedFrameSpace += var50
			end
		end
		arg5.scrollingFrameHeight += var50
		if any_lower_result1 and arg3.dataStats.additionalInfoFunc then
			arg1:appendAdditionTabInformation(arg2, arg3.dataStats.additionalInfoFunc(), arg3.name, arg4 + 1, arg5)
		end
	end
	local sortedChildren = arg3.dataStats.sortedChildren
	if sortedChildren then
		if arg1.state.reverseSort then
			local len = #sortedChildren
			for i_2 = 1, len do
				arg1:recursiveConstructEntries(arg2, sortedChildren[len - i_2 + 1], arg4 + 1, arg5)
				local _
			end
			return
		end
		for _, v_2 in ipairs(sortedChildren) do
			arg1:recursiveConstructEntries(arg2, v_2, arg4 + 1, arg5)
		end
	end
end
local NoResultSearchStr_upvr = Constants_upvr.GeneralFormatting.NoResultSearchStr
local HeaderFrameHeight_upvr = Constants_upvr.GeneralFormatting.HeaderFrameHeight
local HeaderButton_upvr = require(script.Parent.Parent.Parent.Components.HeaderButton)
local ChartHeaderNames_upvr = Constants_upvr.MemoryFormatting.ChartHeaderNames
local ValueCellWidth_upvr = Constants_upvr.MemoryFormatting.ValueCellWidth
local ValuePadding_upvr = Constants_upvr.MemoryFormatting.ValuePadding
local CellPadding_upvr = Constants_upvr.MemoryFormatting.CellPadding
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
function any_extend_result1.render(arg1) -- Line 251
	--[[ Upvalues[11]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: NoResultSearchStr_upvr (readonly)
		[4]: HeaderFrameHeight_upvr (readonly)
		[5]: HeaderButton_upvr (readonly)
		[6]: ChartHeaderNames_upvr (readonly)
		[7]: ValueCellWidth_upvr (readonly)
		[8]: ValuePadding_upvr (readonly)
		[9]: CellPadding_upvr (readonly)
		[10]: LineColor_upvr (readonly)
		[11]: LineWidth_upvr (readonly)
	]]
	local tbl_6 = {}
	local var72 = arg1.props.searchTerm or ""
	local tbl_5 = {
		scrollingFrameHeight = 0;
		paddingHeight = -1;
		usedFrameSpace = 0;
		layoutOrder = 1;
	}
	if arg1.scrollingRef.current then
		for _, v_3 in ipairs(arg1.state.memoryData) do
			arg1:recursiveConstructEntries(tbl_6, v_3, 0, tbl_5)
		end
		tbl_6.UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
		})
		tbl_6.WindowingPadding = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, tbl_5.paddingHeight);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		})
	end
	if tbl_5.layoutOrder == 1 then
		if var72 == "" then
			tbl_6.noDataMessage = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(0, 0, 0, 0);
				Text = "Awaiting Memory Stats";
				TextColor3 = Constants_upvr.Color.Text;
				BackgroundTransparency = 1;
				LayoutOrder = arg1.props.layoutOrder;
			})
		else
			local tbl_4 = {
				Size = UDim2.new(1, 0, 1, 0);
				Position = UDim2.new(0, 0, 0, 0);
				Text = string.format(NoResultSearchStr_upvr, var72);
				TextColor3 = Constants_upvr.Color.Text;
				BackgroundTransparency = 1;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_4.LayoutOrder = arg1.props.layoutOrder
			tbl_6.noDataMessage = Roact_upvr.createElement("TextLabel", tbl_4)
		end
	end
	local module = {
		Size = arg1.props.size;
		BackgroundTransparency = 1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.LayoutOrder = arg1.props.layoutOrder
	return Roact_upvr.createElement("Frame", module, {
		Header = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
		}, {
			Name = Roact_upvr.createElement(HeaderButton_upvr, {
				text = ChartHeaderNames_upvr[1];
				size = UDim2.new(1 - ValueCellWidth_upvr, -ValuePadding_upvr - CellPadding_upvr, 0, HeaderFrameHeight_upvr);
				pos = UDim2.new(0, CellPadding_upvr, 0, 0);
				sortfunction = arg1.onSortChanged;
			});
			ValueMB = Roact_upvr.createElement(HeaderButton_upvr, {
				text = ChartHeaderNames_upvr[2];
				size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 0, HeaderFrameHeight_upvr);
				pos = UDim2.new(1 - ValueCellWidth_upvr, ValuePadding_upvr, 0, 0);
				sortfunction = arg1.onSortChanged;
			});
			TopHorizontal = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			LowerHorizontal = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, LineWidth_upvr);
				Position = UDim2.new(0, 0, 1, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
			vertical = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, LineWidth_upvr, 1, 0);
				Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
				BackgroundColor3 = LineColor_upvr;
				BorderSizePixel = 0;
			});
		});
		Entries = Roact_upvr.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr);
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
			VerticalScrollBarInset = 1;
			ScrollBarThickness = 5;
			CanvasSize = UDim2.new(1, 0, 0, tbl_5.scrollingFrameHeight);
			[Roact_upvr.Ref] = arg1.scrollingRef;
		}, tbl_6);
	})
end
return any_extend_result1