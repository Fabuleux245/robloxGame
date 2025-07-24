-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:31
-- Luau version 6, Types version 3
-- Time taken: 0.004462 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local Components = script.Parent.Parent.Parent.Components
local any_extend_result1 = Roact_upvr.Component:extend("NetworkView")
function any_extend_result1.init(arg1, arg2) -- Line 22
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	assert(arg2.targetNetworkData, "Make sure the NetworkData is assigned for this NetworkView")
	local any_getCurrentData_result1 = arg2.targetNetworkData:getCurrentData()
	function arg1.onSortChanged(arg1_2) -- Line 27
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 == arg2.targetNetworkData:getSortType() then
			arg1:setState({
				reverseSort = not arg1.state.reverseSort;
			})
		else
			arg2.targetNetworkData:setSortType(arg1_2)
			arg1:setState({
				reverseSort = false;
			})
		end
	end
	function arg1.onSummaryButton(arg1_3, arg2_2) -- Line 41
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			summaryExpanded = not arg1.state.summaryExpanded;
		})
	end
	function arg1.onDetailButton(arg1_4, arg2_3) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			entriesExpanded = not arg1.state.entriesExpanded;
		})
	end
	arg1.ref = Roact_upvr.createRef()
	arg1.state = {
		httpSummaryTable = any_getCurrentData_result1.summaryTable;
		httpSummaryCount = any_getCurrentData_result1.summaryCount;
		httpEntryList = any_getCurrentData_result1.entryList;
		summaryExpanded = true;
		entriesExpanded = true;
		indexOfEntryExpanded = 0;
		reverseSort = false;
		absWidth = 0;
	}
end
function any_extend_result1.didUpdate(arg1) -- Line 67
	if arg1.ref.current and arg1.state.absWidth ~= arg1.ref.current.AbsoluteSize.X then
		arg1:setState({
			absWidth = arg1.ref.current.AbsoluteSize.X;
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 77
	arg1.httpEntryAddedConnector = arg1.props.targetNetworkData:Signal():Connect(function(arg1_5, arg2, arg3) -- Line 79
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.httpSummaryTable = arg1_5
		tbl.httpSummaryCount = arg2
		tbl.httpEntryList = arg3
		arg1:setState(tbl)
	end)
	if arg1.ref.current then
		arg1:setState({
			absWidth = arg1.ref.current.AbsoluteSize.X;
		})
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 94
	arg1.httpEntryAddedConnector:Disconnect()
	arg1.httpEntryAddedConnector = nil
end
local MinFrameWidth_upvr = Constants_upvr.NetworkFormatting.MinFrameWidth
local SummaryButtonHeight_upvr = Constants_upvr.NetworkFormatting.SummaryButtonHeight
local EntryFrameHeight_upvr = Constants_upvr.NetworkFormatting.EntryFrameHeight
local HeaderFrameHeight_upvr = Constants_upvr.NetworkFormatting.HeaderFrameHeight
local BannerButton_upvr = require(Components.BannerButton)
local MainWindow_upvr = Constants_upvr.DefaultFontSize.MainWindow
local MainWindowHeader_upvr = Constants_upvr.Font.MainWindowHeader
local NetworkSummary_upvr = require(Components.Network.NetworkSummary)
local NetworkChart_upvr = require(Components.Network.NetworkChart)
function any_extend_result1.render(arg1) -- Line 99
	--[[ Upvalues[11]:
		[1]: MinFrameWidth_upvr (readonly)
		[2]: SummaryButtonHeight_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: HeaderFrameHeight_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: BannerButton_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: MainWindow_upvr (readonly)
		[9]: MainWindowHeader_upvr (readonly)
		[10]: NetworkSummary_upvr (readonly)
		[11]: NetworkChart_upvr (readonly)
	]]
	local size = arg1.props.size
	local summaryExpanded = arg1.state.summaryExpanded
	local entriesExpanded = arg1.state.entriesExpanded
	local maximum = math.max(MinFrameWidth_upvr, arg1.state.absWidth)
	local var31
	if summaryExpanded then
		var31 = var31 + arg1.state.httpSummaryCount * EntryFrameHeight_upvr + HeaderFrameHeight_upvr
	end
	local var32
	if arg1.ref.current then
		var32 = arg1.ref.current.AbsoluteSize.Y - var31
	else
		var32 = size.Y.Offset - var31
	end
	local module = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Top;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		SummaryButton = Roact_upvr.createElement(BannerButton_upvr, {
			size = UDim2.new(1, 0, 0, SummaryButtonHeight_upvr);
			pos = UDim2.new();
			isExpanded = summaryExpanded;
			onButtonPress = arg1.onSummaryButton;
			layoutOrder = 1;
		}, {
			Text = Roact_upvr.createElement("TextLabel", {
				Text = "Summary";
				TextColor3 = Constants_upvr.Color.Text;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextSize = MainWindow_upvr;
				Font = MainWindowHeader_upvr;
				Size = UDim2.new(1, -30, 0, SummaryButtonHeight_upvr);
				Position = UDim2.new(0, 30, 0, 0);
				BackgroundTransparency = 1;
			});
		});
	}
	local var39 = summaryExpanded
	if var39 then
		var39 = Roact_upvr.createElement
		var39 = var39(NetworkSummary_upvr, {
			width = maximum;
			httpSummaryTable = arg1.state.httpSummaryTable;
			layoutOrder = 2;
		})
	end
	module.Summary = var39
	module.DetailsButton = Roact_upvr.createElement(BannerButton_upvr, {
		size = UDim2.new(1, 0, 0, SummaryButtonHeight_upvr);
		pos = UDim2.new();
		isExpanded = entriesExpanded;
		onButtonPress = arg1.onDetailButton;
		layoutOrder = 3;
	}, {
		Text = Roact_upvr.createElement("TextLabel", {
			Text = "Details";
			TextColor3 = Constants_upvr.Color.Text;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextSize = MainWindow_upvr;
			Font = MainWindowHeader_upvr;
			Size = UDim2.new(1, -30, 0, SummaryButtonHeight_upvr);
			Position = UDim2.new(0, 30, 0, 0);
			BackgroundTransparency = 1;
		});
	})
	local var44 = entriesExpanded
	if var44 then
		var44 = Roact_upvr.createElement
		var44 = var44(NetworkChart_upvr, {
			httpEntryList = arg1.state.httpEntryList;
			chartHeight = math.max(0, var32);
			width = maximum;
			searchTerm = arg1.props.searchTerm;
			reverseSort = arg1.state.reverseSort;
			layoutOrder = 4;
			onSortChanged = arg1.onSortChanged;
		})
	end
	module.Entries = var44
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		LayoutOrder = arg1.props.layoutOrder;
		[Roact_upvr.Ref] = arg1.ref;
	}, module)
end
return any_extend_result1