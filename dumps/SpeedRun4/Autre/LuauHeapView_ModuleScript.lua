-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.013414 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local HeaderButton_upvr = require(Components.HeaderButton)
local BoxButton_upvr = require(Components.BoxButton)
local LuauHeapViewRefEntry_upvr = require(script.Parent.LuauHeapViewRefEntry)
local Actions = script.Parent.Parent.Parent.Actions
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local LineColor_upvr = Constants_upvr.GeneralFormatting.LineColor
local HeaderFrameHeight_upvr = Constants_upvr.GeneralFormatting.HeaderFrameHeight
local CellPadding_upvr = Constants_upvr.LuauHeapFormatting.CellPadding
local SnapshotWidth_upvr = Constants_upvr.LuauHeapFormatting.SnapshotWidth
local tbl_6_upvr = {}
local tbl_8 = {
	hint = "Graph displays the size of the objects in Luau VM aggregated by the shortest path from the root Engine references to them.\n\t\tMost important root references are ModuleScript tables and functions connected to signals or the task scheduler.";
	headers = {"Name", "Size", "Self"};
}
local function initFragmentSource(arg1) -- Line 47
	return arg1:renderChildren()
end
tbl_8.initFragmentSource = initFragmentSource
tbl_6_upvr.graph = tbl_8
local tbl_4 = {
	hint = "This memory breakdown displays how much memory is used by Luau VM types.";
	headers = {"Name", "Size", "Count"};
}
local function initFragmentSource(arg1) -- Line 55
	return arg1:renderChildrenStats("TagBreakdown")
end
tbl_4.initFragmentSource = initFragmentSource
tbl_6_upvr.tag = tbl_4
local tbl_2 = {
	hint = "Memory separated by the category at the time of allocation.\n\t\tMemory category is assigned to the thread performing the allocation, not the script.\n\t\tDefault value is based on the script name. Custom value can be assigned using 'debug.setmemorycategory' API.";
	headers = {"Name", "Size", "Count"};
}
local function initFragmentSource(arg1) -- Line 65
	return arg1:renderChildrenStats("MemcatBreakdown")
end
tbl_2.initFragmentSource = initFragmentSource
tbl_6_upvr.memcat = tbl_2
tbl_2 = {}
local var20 = tbl_2
var20.hint = "This breakdown shows how much memory inside Luau VM is taken by custom Roblox engine classes.\n\t\tFor DataModel classes like 'Part' this does not include the memory taken inside the engine itself."
var20.headers = {"Name", "Size", "Count"}
local function initFragmentSource(arg1) -- Line 74
	return arg1:renderChildrenStats("UserdataBreakdown")
end
var20.initFragmentSource = initFragmentSource
tbl_6_upvr.userdata = var20
if game:GetEngineFeature("UnparentedInstances") then
	var20 = "UniqueRefs"
else
	var20 = "refs"
end
local tbl_9 = {
	hint = "This view shows engine DataModel instances that are only referenced by Luau VM and are not directly parented to the DataModel.\n\t\tFor each instance, it will show the set of paths that make it accessible and prevent garbage collection.\n\t\tMost often, engine Luau references come from ModuleScript tables, active signal connections and active coroutines in the task scheduler.";
	headers = {"Name", "Count", "Total Instances"};
}
local function initFragmentSource(arg1) -- Line 84
	return arg1:renderChildrenRefs()
end
tbl_9.initFragmentSource = initFragmentSource
tbl_6_upvr[var20] = tbl_9
if game:GetEngineFeature("UnparentedInstances") then
	tbl_6_upvr.UnparentedRefs = {
		hint = "This view shows engine DataModel instances that are not parented to any instance (and are also not unique references).\n\t\tFor each instance, it will show the set of paths that make it accessible and prevent garbage collection.\n\t\t";
		headers = {"Name", "Count", "Total Instances"};
		initFragmentSource = function(arg1) -- Line 97, Named "initFragmentSource"
			return arg1:renderUnparentedRefs()
		end;
	}
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("LuauHeapView")
local BannerButton_upvr = require(Components.BannerButton)
local EntryFrameHeight_upvr = Constants_upvr.GeneralFormatting.EntryFrameHeight
local CellLabel_upvr = require(Components.CellLabel)
local SnapshotHighlightSize_upvr = Constants_upvr.LuauHeapFormatting.SnapshotHighlightSize
function any_extend_result1.renderSnapshotList(arg1) -- Line 105
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: BannerButton_upvr (readonly)
		[3]: EntryFrameHeight_upvr (readonly)
		[4]: CellLabel_upvr (readonly)
		[5]: CellPadding_upvr (readonly)
		[6]: SnapshotHighlightSize_upvr (readonly)
		[7]: LineColor_upvr (readonly)
		[8]: BoxButton_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var31
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [210] 155. Error Block 36 start (CF ANALYSIS FAILED)
	var31 = nil
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [211.11]
	nil.HorizontalHighlightRight = var31
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [217.6]
	if arg1.props.activeSnapshot ~= nil then
		var31 = Roact_upvr.createElement
		local tbl_10 = {
			text = "Compare";
			size = UDim2.new(0.3, -6, 1, -6);
			pos = UDim2.new(0.7, 3, 0, 3);
		}
		local var33_upvr
		local function onClicked() -- Line 162
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var33_upvr (readonly)
			]]
			arg1.props.dispatchSetLuauHeapCompareSnapshot(var33_upvr)
		end
		tbl_10.onClicked = onClicked
		var31 = var31(BoxButton_upvr, tbl_10)
	else
		var31 = nil
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.Compare = var31
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [255.8]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [255.9]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [255.10]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({})[var33_upvr] = nil(nil, nil, nil)
	-- KONSTANTERROR: [210] 155. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 34 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if BoxButton_upvr == var33_upvr then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if BoxButton_upvr == var33_upvr then
		-- KONSTANTWARNING: GOTO [145] #108
	end
	-- KONSTANTERROR: [10] 8. Error Block 34 end (CF ANALYSIS FAILED)
end
local LuauHeapViewEntry_upvr = require(script.Parent.LuauHeapViewEntry)
function any_extend_result1.renderChildren(arg1) -- Line 173
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LuauHeapViewEntry_upvr (readonly)
	]]
	local var35 = arg1.props.data[arg1.props.activeSnapshot]
	local var36 = arg1.props.data[arg1.props.compareSnapshot]
	local module_4 = {
		layoutOrder = 0;
	}
	local var38 = 0
	module_4.depth = var38
	if var35 then
		var38 = var35.Graph
	else
		var38 = nil
	end
	module_4.data = var38
	if var36 then
		var38 = var36.Graph
	else
		var38 = nil
	end
	module_4.compare = var38
	return Roact_upvr.createElement(LuauHeapViewEntry_upvr, module_4)
end
local LuauHeapViewStatEntry_upvr = require(script.Parent.LuauHeapViewStatEntry)
function any_extend_result1.renderChildrenStats(arg1, arg2) -- Line 185
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LuauHeapViewStatEntry_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local compareSnapshot = arg1.props.compareSnapshot
	local var41 = arg1.props.data[compareSnapshot]
	if var41 then
		compareSnapshot = var41[arg2]
	else
		compareSnapshot = nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 33. Error Block 14 start (CF ANALYSIS FAILED)
	local tbl_7 = {}
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [51.11]
	tbl_7.layoutOrder = -nil.Size
	tbl_7.depth = 0
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_7.data = nil
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [61.12]
	tbl_7.compare = nil
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [64.10]
	;({})[nil] = Roact_upvr.createElement(LuauHeapViewStatEntry_upvr, tbl_7)
	-- KONSTANTERROR: [46] 33. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 21. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 21. Error Block 6 end (CF ANALYSIS FAILED)
end
function any_extend_result1.renderUnparentedRefs(arg1) -- Line 217
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LuauHeapViewRefEntry_upvr (readonly)
	]]
	local Refs_2 = arg1.props.data[arg1.props.activeSnapshot].Refs
	if not Refs_2 then
		return {}
	end
	local UnparentedReferences = Refs_2.UnparentedReferences
	if not UnparentedReferences then
		return {}
	end
	for i, v in UnparentedReferences do
		({})[i] = Roact_upvr.createElement(LuauHeapViewRefEntry_upvr, {
			layoutOrder = -v.Instances;
			depth = 0;
			data = v;
		})
		local var51
	end
	return var51
end
function any_extend_result1.renderChildrenRefs(arg1) -- Line 242
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LuauHeapViewRefEntry_upvr (readonly)
	]]
	local Refs = arg1.props.data[arg1.props.activeSnapshot].Refs
	if not Refs then
		return {}
	end
	assert(Refs)
	for i_2, v_2 in Refs.Roots do
		({})[i_2] = Roact_upvr.createElement(LuauHeapViewRefEntry_upvr, {
			layoutOrder = -v_2.Instances;
			depth = 0;
			data = v_2;
		})
		local var59
	end
	return var59
end
local TabButtonWidth_upvr = Constants_upvr.LuauHeapFormatting.TabButtonWidth
local TabButtonHeight_upvr = Constants_upvr.LuauHeapFormatting.TabButtonHeight
local TabHighlightHeight_upvr = Constants_upvr.LuauHeapFormatting.TabHighlightHeight
function any_extend_result1.createTabSelector(arg1, arg2, arg3) -- Line 267
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: BoxButton_upvr (readonly)
		[3]: TabButtonWidth_upvr (readonly)
		[4]: TabButtonHeight_upvr (readonly)
		[5]: TabHighlightHeight_upvr (readonly)
		[6]: Constants_upvr (readonly)
	]]
	local function _(arg1_2) -- Line 268, Named "onTabSelected"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_5 = {}
		tbl_5.activeTab = arg1_2
		arg1:setState(tbl_5)
	end
	local function createButton(arg1_3, arg2_2, arg3_2) -- Line 274
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: BoxButton_upvr (copied, readonly)
			[3]: TabButtonWidth_upvr (copied, readonly)
			[4]: TabButtonHeight_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module = {}
		module.text = arg2_2
		module.size = UDim2.new(0, TabButtonWidth_upvr, 0, TabButtonHeight_upvr)
		module.pos = UDim2.new(0, TabButtonWidth_upvr * arg3_2, 0, 0)
		function module.onClicked() -- Line 279
			--[[ Upvalues[2]:
				[1]: arg1_3 (readonly)
				[2]: arg1 (copied, readonly)
			]]
			local tbl = {}
			tbl.activeTab = arg1_3
			arg1:setState(tbl)
		end
		return Roact_upvr.createElement(BoxButton_upvr, module)
	end
	local function createHighlight(arg1_4, arg2_3) -- Line 285
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: TabButtonWidth_upvr (copied, readonly)
			[4]: TabHighlightHeight_upvr (copied, readonly)
			[5]: TabButtonHeight_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
		]]
		if arg1.state.activeTab == arg1_4 then
			return Roact_upvr.createElement("Frame", {
				Size = UDim2.new(0, TabButtonWidth_upvr, 0, TabHighlightHeight_upvr);
				Position = UDim2.new(0, TabButtonWidth_upvr * arg2_3, 0, TabButtonHeight_upvr - TabHighlightHeight_upvr);
				BorderSizePixel = 0;
				BackgroundColor3 = Constants_upvr.Color.HighlightBlue;
				ZIndex = 10;
			})
		end
		return nil
	end
	if game:GetEngineFeature("UnparentedInstances") then
		local module_2 = {}
		module_2.Size = arg2
		module_2.Position = arg3
		module_2.BackgroundTransparency = 1
		return Roact_upvr.createElement("Frame", module_2, {
			Graph = createButton("graph", "Graph", 0);
			GraphHighlight = createHighlight("graph", 0);
			Tags = createButton("tag", "Object Tags", 1);
			TagHighlight = createHighlight("tag", 1);
			Memcat = createButton("memcat", "Memory Categories", 2);
			MemcatHighlight = createHighlight("memcat", 2);
			Userdata = createButton("userdata", "Object Classes", 3);
			UserdataHighlight = createHighlight("userdata", 3);
			Refs = createButton("UniqueRefs", "Unique References", 4);
			RefHighlight = createHighlight("UniqueRefs", 4);
			UnparentedInstances = createButton("UnparentedRefs", "Unparented Instances", 5);
			UnparentedHighlight = createHighlight("UnparentedRefs", 5);
		})
	end
	local module_6 = {}
	module_6.Size = arg2
	module_6.Position = arg3
	module_6.BackgroundTransparency = 1
	return Roact_upvr.createElement("Frame", module_6, {
		Graph = createButton("graph", "Graph", 0);
		GraphHighlight = createHighlight("graph", 0);
		Tags = createButton("tag", "Object Tags", 1);
		TagHighlight = createHighlight("tag", 1);
		Memcat = createButton("memcat", "Memory Categories", 2);
		MemcatHighlight = createHighlight("memcat", 2);
		Userdata = createButton("userdata", "Object Classes", 3);
		UserdataHighlight = createHighlight("userdata", 3);
		Refs = createButton("refs", "Unique References", 4);
		RefHighlight = createHighlight("refs", 4);
		UnparentedInstances = createButton("UnparentedRefs", "Unparented Instances", 5);
		UnparentedHighlight = createHighlight("UnparentedRefs", 5);
	})
end
local ValueCellWidth_upvr = Constants_upvr.LuauHeapFormatting.ValueCellWidth
local ValuePadding_upvr = Constants_upvr.LuauHeapFormatting.ValuePadding
local LineWidth_upvr = Constants_upvr.GeneralFormatting.LineWidth
function any_extend_result1.createStatsTableHeader(arg1, arg2, arg3, arg4) -- Line 347
	--[[ Upvalues[9]:
		[1]: Roact_upvr (readonly)
		[2]: SnapshotWidth_upvr (readonly)
		[3]: HeaderFrameHeight_upvr (readonly)
		[4]: HeaderButton_upvr (readonly)
		[5]: ValueCellWidth_upvr (readonly)
		[6]: ValuePadding_upvr (readonly)
		[7]: CellPadding_upvr (readonly)
		[8]: LineColor_upvr (readonly)
		[9]: LineWidth_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local module_7 = {
		Size = UDim2.new(1 - SnapshotWidth_upvr, 0, 0, HeaderFrameHeight_upvr);
	}
	local var75 = SnapshotWidth_upvr
	module_7.Position = UDim2.new(var75, 0, arg2, arg3)
	module_7.BackgroundTransparency = 1
	local module_3 = {}
	if arg4[1] then
		var75 = Roact_upvr.createElement
		var75 = var75(HeaderButton_upvr, {
			text = arg4[1];
			size = UDim2.new(1 - ValueCellWidth_upvr * 2, -ValuePadding_upvr - CellPadding_upvr, 0, HeaderFrameHeight_upvr);
			pos = UDim2.new(0, CellPadding_upvr, 0, 0);
			sortfunction = arg1.onSortChanged;
		})
	else
		var75 = nil
	end
	module_3.First = var75
	if arg4[2] then
		var75 = Roact_upvr.createElement
		var75 = var75(HeaderButton_upvr, {
			text = arg4[2];
			size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 0, HeaderFrameHeight_upvr);
			pos = UDim2.new(1 - ValueCellWidth_upvr * 2, ValuePadding_upvr, 0, 0);
			sortfunction = arg1.onSortChanged;
		})
		-- KONSTANTWARNING: GOTO [108] #86
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 85. Error Block 22 start (CF ANALYSIS FAILED)
	var75 = nil
	module_3.Second = var75
	if arg4[3] then
		var75 = Roact_upvr.createElement
		var75 = var75(HeaderButton_upvr, {
			text = arg4[3];
			size = UDim2.new(ValueCellWidth_upvr, -CellPadding_upvr, 0, HeaderFrameHeight_upvr);
			pos = UDim2.new(1 - ValueCellWidth_upvr, ValuePadding_upvr, 0, 0);
			sortfunction = arg1.onSortChanged;
		})
	else
		var75 = nil
	end
	module_3.Third = var75
	var75 = Roact_upvr.createElement
	var75 = var75("Frame", {
		Size = UDim2.new(1, 0, 0, 1);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_3.TopHorizontal = var75
	var75 = Roact_upvr.createElement
	var75 = var75("Frame", {
		Size = UDim2.new(1, 0, 0, LineWidth_upvr);
		Position = UDim2.new(0, 0, 1, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_3.LowerHorizontal = var75
	var75 = Roact_upvr.createElement
	var75 = var75("Frame", {
		Size = UDim2.new(0, LineWidth_upvr, 1, 0);
		Position = UDim2.new(1 - ValueCellWidth_upvr, 0, 0, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_3.Vertical1 = var75
	var75 = Roact_upvr.createElement
	var75 = var75("Frame", {
		Size = UDim2.new(0, LineWidth_upvr, 1, 0);
		Position = UDim2.new(1 - ValueCellWidth_upvr * 2, 0, 0, 0);
		BackgroundColor3 = LineColor_upvr;
		BorderSizePixel = 0;
	})
	module_3.Vertical2 = var75
	do
		return Roact_upvr.createElement("Frame", module_7, module_3)
	end
	-- KONSTANTERROR: [107] 85. Error Block 22 end (CF ANALYSIS FAILED)
end
function any_extend_result1.init(arg1) -- Line 403
	arg1.state = {
		activeTab = "graph";
	}
end
local TabsHeight_upvr = Constants_upvr.LuauHeapFormatting.TabsHeight
local TableHintHeight_upvr = Constants_upvr.LuauHeapFormatting.TableHintHeight
function any_extend_result1.render(arg1) -- Line 409
	--[[ Upvalues[9]:
		[1]: tbl_6_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: HeaderButton_upvr (readonly)
		[5]: SnapshotWidth_upvr (readonly)
		[6]: CellPadding_upvr (readonly)
		[7]: HeaderFrameHeight_upvr (readonly)
		[8]: TabsHeight_upvr (readonly)
		[9]: TableHintHeight_upvr (readonly)
	]]
	local layoutOrder = arg1.props.layoutOrder
	local var88
	local var89 = tbl_6_upvr[arg1.state.activeTab]
	if not arg1.props.data or #arg1.props.data == 0 then
		var88 = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Position = UDim2.new(0, 0, 0, 0);
			Text = "Capture a Snapshot to view details";
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
			LayoutOrder = layoutOrder;
		})
	end
	local module_5 = {
		SnapshotHeader = Roact_upvr.createElement(HeaderButton_upvr, {
			text = "Snapshots";
			size = UDim2.new(SnapshotWidth_upvr, -CellPadding_upvr, 0, HeaderFrameHeight_upvr);
			pos = UDim2.new(0, CellPadding_upvr, 0, 0);
		});
		Snapshots = Roact_upvr.createElement("ScrollingFrame", {
			Size = UDim2.new(SnapshotWidth_upvr, -4, 1, -HeaderFrameHeight_upvr);
			Position = UDim2.new(0, 2, 0, HeaderFrameHeight_upvr);
			BackgroundTransparency = 1;
			VerticalScrollBarInset = Enum.ScrollBarInset.None;
			ScrollBarThickness = 5;
			CanvasSize = UDim2.fromScale(0, 0);
			AutomaticCanvasSize = Enum.AutomaticSize.Y;
		}, {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			Stroke = Roact_upvr.createElement("UIStroke", {
				Thickness = 2;
				Color = Color3.new(0.6, 0.6, 0.6);
			});
			Children = Roact_upvr.createFragment(arg1:renderSnapshotList());
		});
		Tabs = arg1:createTabSelector(UDim2.new(1 - SnapshotWidth_upvr, 0, 0, TabsHeight_upvr), UDim2.new(SnapshotWidth_upvr, 0, 0, 0));
		Hint = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1 - SnapshotWidth_upvr, 0, 0, TableHintHeight_upvr);
			Position = UDim2.new(SnapshotWidth_upvr, 0, 0, TabsHeight_upvr);
			Text = var89.hint;
			TextColor3 = Constants_upvr.Color.Text;
			BackgroundTransparency = 1;
		});
		Headers = arg1:createStatsTableHeader(0, TabsHeight_upvr + TableHintHeight_upvr, var89.headers);
	}
	local tbl_3 = {}
	local any_createElement_result1 = Roact_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	tbl_3.Layout = any_createElement_result1
	if var88 then
		any_createElement_result1 = var88
	else
		any_createElement_result1 = Roact_upvr.createFragment(var89.initFragmentSource(arg1))
	end
	tbl_3.Children = any_createElement_result1
	module_5.Entries = Roact_upvr.createElement("ScrollingFrame", {
		Size = UDim2.new(1 - SnapshotWidth_upvr, 0, 1, -(TabsHeight_upvr + TableHintHeight_upvr + HeaderFrameHeight_upvr));
		Position = UDim2.new(SnapshotWidth_upvr, 0, 0, TabsHeight_upvr + TableHintHeight_upvr + HeaderFrameHeight_upvr);
		BackgroundTransparency = 1;
		VerticalScrollBarInset = Enum.ScrollBarInset.None;
		ScrollBarThickness = 5;
		CanvasSize = UDim2.fromScale(0, 0);
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
	}, tbl_3)
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundTransparency = 1;
		LayoutOrder = layoutOrder;
	}, module_5)
end
local SetLuauHeapActiveSnapshot_upvr = require(Actions.SetLuauHeapActiveSnapshot)
local SetLuauHeapCompareSnapshot_upvr = require(Actions.SetLuauHeapCompareSnapshot)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 491, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetLuauHeapActiveSnapshot_upvr (readonly)
		[2]: SetLuauHeapCompareSnapshot_upvr (readonly)
	]]
	return {
		dispatchSetLuauHeapActiveSnapshot = function(arg1_5) -- Line 493, Named "dispatchSetLuauHeapActiveSnapshot"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLuauHeapActiveSnapshot_upvr (copied, readonly)
			]]
			arg1(SetLuauHeapActiveSnapshot_upvr(arg1_5))
		end;
		dispatchSetLuauHeapCompareSnapshot = function(arg1_6) -- Line 496, Named "dispatchSetLuauHeapCompareSnapshot"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLuauHeapCompareSnapshot_upvr (copied, readonly)
			]]
			arg1(SetLuauHeapCompareSnapshot_upvr(arg1_6))
		end;
	}
end)(any_extend_result1)