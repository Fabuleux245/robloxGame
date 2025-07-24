-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:45
-- Luau version 6, Types version 3
-- Time taken: 0.009219 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local HeaderFrameHeight_upvr = Constants_upvr.ServerScriptsFormatting.HeaderFrameHeight
local EntryFrameHeight_upvr = Constants_upvr.ServerScriptsFormatting.EntryFrameHeight
local CellPadding = Constants_upvr.ServerScriptsFormatting.CellPadding
local tbl_5_upvr = {}
local tbl_6_upvr = {}
local tbl_4_upvr = {}
local var17 = 0
for _, v in ipairs(Constants_upvr.ServerScriptsFormatting.ChartCellWidths) do
	table.insert(tbl_5_upvr, UDim2.new(var17, CellPadding, 0, 0))
	table.insert(tbl_6_upvr, UDim2.new(v, -CellPadding, 0, HeaderFrameHeight_upvr))
	table.insert(tbl_4_upvr, UDim2.new(v, -CellPadding, 0, EntryFrameHeight_upvr))
	var17 += v
end
for i_2, v_2 in ipairs(tbl_5_upvr) do
	({})[i_2] = UDim2.new(v_2.X.Scale, v_2.X.Offset - CellPadding, v_2.Y.Scale, v_2.Y.Offset)
	local var25_upvr
end
local any_extend_result1 = Roact_upvr.Component:extend("ServerScripts")
local ChartHeaderNames_upvr = Constants_upvr.ServerScriptsFormatting.ChartHeaderNames
local HeaderButton_upvr = require(script.Parent.Parent.Parent.Components.HeaderButton)
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local function constructHeader_upvr(arg1) -- Line 45, Named "constructHeader"
	--[[ Upvalues[9]:
		[1]: ChartHeaderNames_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: HeaderButton_upvr (readonly)
		[4]: tbl_6_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
		[6]: LineWidth_upvr (readonly)
		[7]: LineColor_upvr (readonly)
		[8]: var25_upvr (readonly)
		[9]: HeaderFrameHeight_upvr (readonly)
	]]
	local module_2 = {}
	for i_3 = 1, #ChartHeaderNames_upvr do
		local tbl = {
			text = ChartHeaderNames_upvr[i_3];
			size = tbl_6_upvr[i_3];
			pos = tbl_5_upvr[i_3];
		}
		tbl.sortfunction = arg1
		module_2[ChartHeaderNames_upvr[i_3]] = Roact_upvr.createElement(HeaderButton_upvr, tbl)
	end
	module_2.upperHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_2.verticalLine1 = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, LineWidth_upvr, 1, 0);
		Position = var25_upvr[2];
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_2.verticalLine2 = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(0, LineWidth_upvr, 1, 0);
		Position = var25_upvr[3];
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_2.lowerHorizontalLine = Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 1, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, HeaderFrameHeight_upvr);
		BackgroundTransparency = 1;
	}, module_2)
end
local function getX_upvr(arg1) -- Line 91, Named "getX"
	return arg1.time
end
local function getActivity_upvr(arg1) -- Line 95, Named "getActivity"
	return arg1.data[1]
end
local function getRate_upvr(arg1) -- Line 99, Named "getRate"
	return arg1.data[2]
end
local function formatScriptsData_upvr(arg1) -- Line 103, Named "formatScriptsData"
	return string.format("%.3f", arg1)
end
function any_extend_result1.init(arg1, arg2) -- Line 107
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	function arg1.onSortChanged(arg1_2) -- Line 110
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 == arg2.ServerScriptsData:getSortType() then
			arg1:setState({
				reverseSort = not arg1.state.reverseSort;
			})
		else
			arg2.ServerScriptsData:setSortType(arg1_2)
			arg1:setState({
				reverseSort = false;
			})
		end
	end
	function arg1.getOnButtonPress(arg1_3) -- Line 124
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return function(arg1_4, arg2_2) -- Line 125
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_3 (readonly)
			]]
			local tbl_3 = {}
			local var46 = false
			if arg1.state.expandIndex ~= arg1_3 then
				var46 = arg1_3
			end
			tbl_3.expandIndex = var46
			arg1:setState(tbl_3)
		end
	end
	function arg1.onCanvasPosChanged() -- Line 132
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
		serverScriptsData = arg2.ServerScriptsData:getCurrentData();
		expandIndex = nil;
	}
end
function any_extend_result1.willUpdate(arg1) -- Line 150
	if arg1.canvasPosConnector then
		arg1.canvasPosConnector:Disconnect()
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 156
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
	end
end
function any_extend_result1.didMount(arg1) -- Line 163
	arg1.statsConnector = arg1.props.ServerScriptsData:Signal():Connect(function(arg1_5) -- Line 164
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_7 = {}
		tbl_7.serverScriptsData = arg1_5
		arg1:setState(tbl_7)
	end)
	if arg1.scrollingRef.current then
		arg1.canvasPosConnector = arg1.scrollingRef.current:GetPropertyChangedSignal("CanvasPosition"):Connect(arg1.onCanvasPosChanged)
		arg1:setState({
			absScrollSize = arg1.scrollingRef.current.AbsoluteSize;
			canvasPos = arg1.scrollingRef.current.CanvasPosition;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 181
	arg1.statsConnector:Disconnect()
	arg1.statsConnector = nil
end
local LineGraphHeight_upvr = Constants_upvr.GeneralFormatting.LineGraphHeight
local ServerScriptsEntry_upvr = require(script.Parent.ServerScriptsEntry)
local NoResultSearchStr_upvr = Constants_upvr.GeneralFormatting.NoResultSearchStr
function any_extend_result1.render(arg1) -- Line 186
	--[[ Upvalues[15]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: LineGraphHeight_upvr (readonly)
		[5]: ServerScriptsEntry_upvr (readonly)
		[6]: tbl_4_upvr (readonly)
		[7]: tbl_5_upvr (readonly)
		[8]: var25_upvr (readonly)
		[9]: formatScriptsData_upvr (readonly)
		[10]: getX_upvr (readonly)
		[11]: getActivity_upvr (readonly)
		[12]: getRate_upvr (readonly)
		[13]: NoResultSearchStr_upvr (readonly)
		[14]: constructHeader_upvr (readonly)
		[15]: HeaderFrameHeight_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local searchTerm = arg1.props.searchTerm
	local scriptFilters = arg1.props.scriptFilters
	local serverScriptsData = arg1.state.serverScriptsData
	local canvasPos = arg1.state.canvasPos
	local tbl_8 = {}
	local len = #serverScriptsData
	if len == 0 then
		return Roact_upvr.createElement("TextLabel", {
			Size = arg1.props.size;
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Awaiting Server Scripts Information.";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.layoutOrder;
		})
	end
	local var73
	local var74
	if canvasPos and arg1.state.absScrollSize then
		local _
		for i_4, v_3 in pairs(serverScriptsData) do
			if not searchTerm or string.find(v_3.name:lower(), searchTerm:lower()) ~= nil then
				var74 += 1
				local Active = scriptFilters.Active
				local Inactive = scriptFilters.Inactive
				local any_back_result1 = v_3.dataStats.dataSet:back()
				if Active ~= Inactive then
					if 0 < any_back_result1.data[1] and Inactive then
					elseif any_back_result1.data[1] == 0 and Active then
						local var82
					end
				end
				if false then
					if arg1.state.expandIndex ~= v_3.name then
						var82 = false
					else
						var82 = true
					end
					if not var82 or not (EntryFrameHeight_upvr + 2 * LineGraphHeight_upvr) then
						local var83 = EntryFrameHeight_upvr
					end
					if canvasPos.Y <= var73 + var83 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local var84
						if 0 < arg1.state.absScrollSize.Y then
							var84 = any_back_result1.data[1]
							local function INLINED() -- Internal function, doesn't exist in bytecode
								var84 = Constants_upvr.Color
								return var84.ActiveBox
							end
							if 0 >= var84 or not INLINED() then
								var84 = Constants_upvr.Color
							end
							local function INLINED_2() -- Internal function, doesn't exist in bytecode
								var84 = len - i_4
								return var84
							end
							if not arg1.state.reverseSort or not INLINED_2() then
								var84 = i_4
							end
							tbl_8[i_4] = Roact_upvr.createElement(ServerScriptsEntry_upvr, {
								scriptData = v_3;
								frameHeight = var83;
								showGraph = var82;
								layoutOrder = var84;
								activityBoxColor = var84.InactiveBox;
								entryCellSize = tbl_4_upvr;
								cellOffset = tbl_5_upvr;
								verticalOffsets = var25_upvr;
								onButtonPress = arg1.getOnButtonPress(v_3.name);
								formatScriptsData = formatScriptsData_upvr;
								getX = getX_upvr;
								getActivity = getActivity_upvr;
								getRate = getRate_upvr;
								stringFormatY = formatScriptsData_upvr;
							})
						end
						if -1 < 0 then
						else
						end
					end
					var73 += var83
				end
			end
		end
		if 0 < var74 then
			local tbl_2 = {}
			i_4 = UDim2.new
			v_3 = 1
			i_4 = i_4(v_3, 0, 0, var73)
			tbl_2.Size = i_4
			i_4 = 1
			tbl_2.BackgroundTransparency = i_4
			i_4 = 1
			tbl_2.LayoutOrder = i_4
			tbl_8.WindowingPadding = Roact_upvr.createElement("Frame", tbl_2)
		else
			i_4 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			i_4.Size = arg1.props.size
			i_4.Text = string.format(NoResultSearchStr_upvr, searchTerm)
			v_3 = Constants_upvr.Color.Text
			i_4.TextColor3 = v_3
			v_3 = 1
			i_4.BackgroundTransparency = v_3
			tbl_8.emptySearch = Roact_upvr.createElement("TextLabel", i_4)
		end
	end
	tbl_8.UIListLayout = Roact_upvr.createElement("UIListLayout", {
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local module = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.Size = arg1.props.size
	module.BackgroundTransparency = 1
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.LayoutOrder = arg1.props.layoutOrder
	return Roact_upvr.createElement("Frame", module, {
		Header = constructHeader_upvr(arg1.onSortChanged);
		Entries = Roact_upvr.createElement("ScrollingFrame", {
			Position = UDim2.new(0, 0, 0, HeaderFrameHeight_upvr);
			Size = UDim2.new(1, 0, 1, -HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
			VerticalScrollBarInset = 1;
			ScrollBarThickness = 5;
			CanvasSize = UDim2.new(1, 0, 0, var73);
			[Roact_upvr.Ref] = arg1.scrollingRef;
		}, tbl_8);
	})
end
return require(script.Parent.Parent.Parent.Components.DataConsumer)(any_extend_result1, "ServerScriptsData")