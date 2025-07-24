-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:21
-- Luau version 6, Types version 3
-- Time taken: 0.012719 seconds

local CorePackages = game:GetService("CorePackages")
local var2_upvr
if game:GetEngineFeature("HeapProfilerService") then
	var2_upvr = game:GetService("HeapProfilerService")
else
	var2_upvr = nil
end
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Parent.Components
local Actions = script.Parent.Parent.Parent.Actions
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MainViewLuauHeap")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixSearchCrash", false)
local function filterNode_upvr(arg1, arg2) -- Line 38, Named "filterNode"
	--[[ Upvalues[1]:
		[1]: filterNode_upvr (readonly)
	]]
	if arg2 == nil then
		return false
	end
	local clone_3 = table.clone(arg1)
	local var26 = false
	if clone_3.Name ~= nil then
		if string.find(string.lower(clone_3.Name), string.lower(arg2), 1, true) == nil then
			var26 = false
		else
			var26 = true
		end
	end
	local Source = clone_3.Source
	if Source ~= nil then
		if string.find(string.lower(clone_3.Source), string.lower(arg2), 1, true) == nil then
		else
		end
		var26 = var26 or true
	end
	if clone_3.Paths ~= nil then
		for _, v in clone_3.Paths do
			for _, v_2 in v do
				local var28
				if string.find(string.lower(v_2), string.lower(arg2), 1, true) == nil then
					var28 = false
				else
					var28 = true
				end
				var26 = var26 or var28
			end
		end
	end
	if clone_3.Roots ~= nil then
		for _, v_3 in clone_3.Roots do
			local clone_9 = table.clone(v_3)
			local filterNode_upvr_result1_5 = filterNode_upvr(clone_9, arg2)
			if filterNode_upvr_result1_5 then
				var28 = clone_9
				table.insert({}, var28)
			end
			var26 = var26 or filterNode_upvr_result1_5
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		clone_3.Roots = {}
	end
	if clone_3.Children ~= nil then
		for _, v_4 in clone_3.Children do
			local filterNode_upvr_result1_3 = filterNode_upvr(table.clone(v_4), arg2)
			if filterNode_upvr_result1_3 then
				var28 = v_4
				table.insert({}, var28)
			end
			var26 = var26 or filterNode_upvr_result1_3
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		clone_3.Children = {}
	end
	if var26 then
		return clone_3
	end
	return nil
end
local function filterHeapReportsStatEntryList_upvr(arg1, arg2) -- Line 97, Named "filterHeapReportsStatEntryList"
	if arg2 == nil then
		return arg1
	end
	for _, v_5 in arg1 do
		if string.find(string.lower(v_5.Name), string.lower(arg2), 1, true) ~= nil then
			table.insert({}, table.clone(v_5))
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function filterHeapReportGraph_upvr(arg1, arg2, arg3) -- Line 116, Named "filterHeapReportGraph"
	--[[ Upvalues[1]:
		[1]: filterHeapReportGraph_upvr (readonly)
	]]
	if arg2 == nil then
		return arg1
	end
	local clone_8 = table.clone(arg1)
	local tbl_4 = {}
	for _, v_6 in clone_8.Children do
		local filterHeapReportGraph_upvr_result1 = filterHeapReportGraph_upvr(v_6, arg2, arg3 + 1)
		if filterHeapReportGraph_upvr_result1 then
			table.insert(tbl_4, filterHeapReportGraph_upvr_result1)
		end
	end
	clone_8.Children = tbl_4
	if arg3 == 0 then
		return clone_8
	end
	if 0 >= #tbl_4 then
	else
	end
	if string.find(string.lower(clone_8.Name), string.lower(arg2), 1, true) ~= nil then
	end
	if true then
		return clone_8
	end
	return nil
end
local function filterUniqueRefEntryPath_upvr(arg1, arg2) -- Line 147, Named "filterUniqueRefEntryPath"
	if arg2 == nil then
		return arg1
	end
	local module_4 = {}
	for _, v_7 in arg1 do
		if string.find(string.lower(v_7), string.lower(arg2), 1, true) ~= nil then
			table.insert(module_4, v_7)
		end
	end
	if 0 < #module_4 then
		return module_4
	end
	return nil
end
local function filterUniqueRefEntryPathList_upvr(arg1, arg2) -- Line 166, Named "filterUniqueRefEntryPathList"
	--[[ Upvalues[1]:
		[1]: filterUniqueRefEntryPath_upvr (readonly)
	]]
	if arg2 == nil then
		return arg1
	end
	for _, v_8 in arg1 do
		local filterUniqueRefEntryPath_result1 = filterUniqueRefEntryPath_upvr(v_8, arg2)
		if filterUniqueRefEntryPath_result1 then
			table.insert({}, filterUniqueRefEntryPath_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function filterUniqueRefEntry_upvr(arg1, arg2) -- Line 186, Named "filterUniqueRefEntry"
	--[[ Upvalues[1]:
		[1]: filterUniqueRefEntryPathList_upvr (readonly)
	]]
	if arg2 == nil then
		return arg1
	end
	local clone_4 = table.clone(arg1)
	if string.find(string.lower(clone_4.Name), string.lower(arg2), 1, true) ~= nil then
	end
	local filterUniqueRefEntryPathList_result1 = filterUniqueRefEntryPathList_upvr(clone_4.Paths, arg2)
	clone_4.Paths = filterUniqueRefEntryPathList_result1
	if 0 < #filterUniqueRefEntryPathList_result1 then
	end
	if true then
		return clone_4
	end
	return nil
end
local function filterUniqueRefReport_upvr(arg1, arg2) -- Line 215, Named "filterUniqueRefReport"
	--[[ Upvalues[1]:
		[1]: filterUniqueRefEntry_upvr (readonly)
	]]
	if arg2 == nil or arg1 == nil then
		return arg1
	end
	local clone = table.clone(arg1)
	for _, v_9 in clone.Roots do
		local filterUniqueRefEntry_upvr_result1 = filterUniqueRefEntry_upvr(v_9, arg2)
		if filterUniqueRefEntry_upvr_result1 then
			table.insert({}, filterUniqueRefEntry_upvr_result1)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	clone.Roots = {}
	return clone
end
local function filterSnapshots_upvr(arg1, arg2, arg3) -- Line 234, Named "filterSnapshots"
	--[[ Upvalues[5]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: filterHeapReportsStatEntryList_upvr (readonly)
		[3]: filterHeapReportGraph_upvr (readonly)
		[4]: filterUniqueRefReport_upvr (readonly)
		[5]: filterNode_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		if arg2 == nil then
			return arg1
		end
		local module_3 = {}
		for _, v_10 in arg1 do
			local clone_2 = table.clone(v_10)
			clone_2.TagBreakdown = filterHeapReportsStatEntryList_upvr(clone_2.TagBreakdown, arg2)
			clone_2.MemcatBreakdown = filterHeapReportsStatEntryList_upvr(clone_2.MemcatBreakdown, arg2)
			clone_2.UserdataBreakdown = filterHeapReportsStatEntryList_upvr(clone_2.UserdataBreakdown, arg2)
			clone_2.Graph = filterHeapReportGraph_upvr(clone_2.Graph, arg2, 0)
			if clone_2.Refs then
				clone_2.Refs = filterUniqueRefReport_upvr(clone_2.Refs, arg2)
			end
			table.insert(module_3, clone_2)
		end
		return module_3
	end
	if arg2 == nil then
		return arg1
	end
	local module = {}
	for _, v_11 in arg1 do
		local clone_7 = table.clone(v_11)
		for _, v_12 in clone_7.TagBreakdown do
			local filterNode_upvr_result1 = filterNode_upvr(v_12, arg2)
			if filterNode_upvr_result1 then
				table.insert({}, filterNode_upvr_result1)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		clone_7.TagBreakdown = {}
		for _, v_13 in clone_7.MemcatBreakdown do
			local filterNode_upvr_result1_4 = filterNode_upvr(v_13, arg2)
			if filterNode_upvr_result1_4 then
				table.insert({}, filterNode_upvr_result1_4)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		clone_7.MemcatBreakdown = {}
		for _, v_14 in clone_7.UserdataBreakdown do
			local filterNode_upvr_result1_2 = filterNode_upvr(v_14, arg2)
			if filterNode_upvr_result1_2 then
				table.insert({}, filterNode_upvr_result1_2)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		clone_7.UserdataBreakdown = {}
		clone_7.Graph = filterNode_upvr(clone_7.Graph, arg2)
		if clone_7.Refs then
			clone_7.Refs = filterNode_upvr(clone_7.Refs, arg2)
		end
		table.insert(module, clone_7)
	end
	return module
end
function any_extend_result1.getState(arg1, arg2) -- Line 315
	if arg2 then
		return arg1.props.client
	end
	return arg1.props.server
end
function any_extend_result1.getActiveState(arg1) -- Line 319
	return arg1.props.isClientView, arg1:getState(arg1.props.isClientView)
end
local memoize_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).memoize
local Players_upvr = game:GetService("Players")
local HttpService_upvr = game:GetService("HttpService")
local ScriptContext_upvr = game:GetService("ScriptContext")
local getClientReplicator_upvr = require(script.Parent.Parent.Parent.Util.getClientReplicator)
function any_extend_result1.init(arg1) -- Line 323
	--[[ Upvalues[9]:
		[1]: memoize_upvr (readonly)
		[2]: filterSnapshots_upvr (readonly)
		[3]: var2_upvr (readonly)
		[4]: Players_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
		[7]: ScriptContext_upvr (readonly)
		[8]: getClientReplicator_upvr (readonly)
		[9]: Roact_upvr (readonly)
	]]
	function arg1.onUtilTabHeightChanged(arg1_2) -- Line 324
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		tbl_2.utilTabHeight = arg1_2
		arg1:setState(tbl_2)
	end
	arg1.version = 0
	function arg1.dispatchSetLuauHeapState(arg1_3, arg2) -- Line 332
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.version += 1
		arg1.props.dispatchSetLuauHeapState(arg1_3, arg2)
	end
	function arg1.onClientButton() -- Line 336
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetLuauHeapProfileTarget(true)
	end
	function arg1.onServerButton() -- Line 340
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetLuauHeapProfileTarget(false)
	end
	arg1.filterSnapshots = memoize_upvr(filterSnapshots_upvr)
	function arg1.onCreateSnapshot() -- Line 346
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: var2_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: HttpService_upvr (copied, readonly)
			[5]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[6]: ScriptContext_upvr (copied, readonly)
			[7]: getClientReplicator_upvr (copied, readonly)
		]]
		local any_getActiveState_result1_2, any_getActiveState_result2 = arg1:getActiveState()
		local var83
		if game:GetEngineFeature("HeapProfilerService") then
			local var84
			var83 = nil
			if any_getActiveState_result1_2 then
				local pcall_result1_2, pcall_result2 = pcall(var2_upvr.ClientRequestDataAsync, var2_upvr, Players_upvr.LocalPlayer)
				var84 = pcall_result1_2
				var83 = pcall_result2
			else
				local pcall_result1, pcall_result2_2 = pcall(var2_upvr.ServerRequestDataAsync, var2_upvr)
				var84 = pcall_result1
				var83 = pcall_result2_2
			end
			if not var84 then
				warn(var83)
			else
				local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(var83)
				local Report = any_JSONDecode_result1.Report
				Report.Refs = any_JSONDecode_result1.Refs
				local clone_5 = table.clone(any_getActiveState_result2)
				table.insert(clone_5.snapshots, Report)
				clone_5.active = #clone_5.snapshots
				if game_DefineFastFlag_result1_upvr then
					arg1.dispatchSetLuauHeapState(any_getActiveState_result1_2, clone_5)
					return
				end
				arg1.props.dispatchSetLuauHeapState(any_getActiveState_result1_2, clone_5)
			end
		end
		if any_getActiveState_result1_2 then
			local any_GetLuauHeapMemoryReport_result1 = ScriptContext_upvr:GetLuauHeapMemoryReport("game")
			any_GetLuauHeapMemoryReport_result1.Refs = ScriptContext_upvr:GetLuauHeapInstanceReferenceReport("game")
			table.insert(table.clone(any_getActiveState_result2).snapshots, any_GetLuauHeapMemoryReport_result1)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			table.clone(any_getActiveState_result2).active = #table.clone(any_getActiveState_result2).snapshots
			if game_DefineFastFlag_result1_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.dispatchSetLuauHeapState(true, table.clone(any_getActiveState_result2))
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.props.dispatchSetLuauHeapState(true, table.clone(any_getActiveState_result2))
			end
		end
		local getClientReplicator_upvr_result1 = getClientReplicator_upvr()
		if getClientReplicator_upvr_result1 then
			getClientReplicator_upvr_result1:RequestServerLuauHeapData()
		end
	end
	function arg1.onClearSnapshots() -- Line 404
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
		]]
		local any_getActiveState_result1, any_getActiveState_result2_3 = arg1:getActiveState()
		local clone_6 = table.clone(any_getActiveState_result2_3)
		table.clear(clone_6.snapshots)
		clone_6.active = 0
		if game_DefineFastFlag_result1_upvr then
			arg1.dispatchSetLuauHeapState(any_getActiveState_result1, clone_6)
		else
			arg1.props.dispatchSetLuauHeapState(any_getActiveState_result1, clone_6)
		end
	end
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		searchTerm = nil;
		utilTabHeight = 0;
	}
	function arg1.onSearchTermChanged(arg1_4) -- Line 426
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		if arg1_4 == nil or arg1_4 == "" then
			arg1:setState({
				searchTerm = Roact_upvr.None;
			})
		else
			local tbl_3 = {}
			tbl_3.searchTerm = arg1_4
			arg1:setState(tbl_3)
		end
	end
end
function any_extend_result1.didMount(arg1) -- Line 439
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
	if not game:GetEngineFeature("HeapProfilerService") then
		arg1.statsConnector = arg1.props.LuauHeapData:Signal():Connect(function(arg1_5) -- Line 445
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
			]]
			local Report_2 = arg1_5.Report
			Report_2.Refs = arg1_5.Refs
			local clone_10 = table.clone(arg1:getState(false))
			table.insert(clone_10.snapshots, Report_2)
			clone_10.active = #clone_10.snapshots
			if game_DefineFastFlag_result1_upvr then
				arg1.dispatchSetLuauHeapState(false, clone_10)
			else
				arg1.props.dispatchSetLuauHeapState(false, clone_10)
			end
		end)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 468
	if not game:GetEngineFeature("HeapProfilerService") then
		arg1.statsConnector:Disconnect()
		arg1.statsConnector = nil
	end
end
function any_extend_result1.didUpdate(arg1) -- Line 475
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local UtilAndTab_upvr = require(Components.UtilAndTab)
local BoxButton_upvr = require(Components.BoxButton)
local LuauHeapView_upvr = require(script.Parent.LuauHeapView)
function any_extend_result1.render(arg1) -- Line 484
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: MainRowPadding_upvr (readonly)
		[4]: UtilAndTab_upvr (readonly)
		[5]: BoxButton_upvr (readonly)
		[6]: LuauHeapView_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local size = arg1.props.size
	local any_getActiveState_result1_3, any_getActiveState_result2_2 = arg1:getActiveState()
	local module_2 = {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UtilAndTab = Roact_upvr.createElement(UtilAndTab_upvr, {
			windowWidth = size.X.Offset;
			formFactor = arg1.props.formFactor;
			tabList = arg1.props.tabList;
			layoutOrder = 1;
			isClientView = any_getActiveState_result1_3;
			onClientButton = arg1.onClientButton;
			onServerButton = arg1.onServerButton;
			refForParent = arg1.utilRef;
			onHeightChanged = arg1.onUtilTabHeightChanged;
			onSearchTermChanged = arg1.onSearchTermChanged;
		}, {Roact_upvr.createElement(BoxButton_upvr, {
			text = "Create Snapshot";
			onClicked = arg1.onCreateSnapshot;
		}), Roact_upvr.createElement(BoxButton_upvr, {
			text = "Clear Snapshots";
			onClicked = arg1.onClearSnapshots;
		})});
	}
	local tbl = {
		size = UDim2.new(1, 0, 1, -arg1.state.utilTabHeight);
	}
	local var123 = 2
	tbl.layoutOrder = var123
	if game_DefineFastFlag_result1_upvr then
		var123 = arg1.filterSnapshots(any_getActiveState_result2_2.snapshots, arg1.state.searchTerm, arg1.version)
	else
		var123 = arg1.filterSnapshots(any_getActiveState_result2_2.snapshots, arg1.state.searchTerm)
	end
	tbl.data = var123
	tbl.activeSnapshot = any_getActiveState_result2_2.active
	tbl.compareSnapshot = any_getActiveState_result2_2.compare
	module_2.LuauHeapView = Roact_upvr.createElement(LuauHeapView_upvr, tbl)
	return Roact_upvr.createElement("Frame", {
		Size = size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, module_2)
end
local SetLuauHeapState_upvr = require(Actions.SetLuauHeapState)
local SetLuauHeapProfileTarget_upvr = require(Actions.SetLuauHeapProfileTarget)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 540, Named "mapStateToProps"
	return {
		isClientView = arg1.LuauHeap.isClientView;
		client = arg1.LuauHeap.client;
		server = arg1.LuauHeap.server;
	}
end, function(arg1) -- Line 549, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetLuauHeapState_upvr (readonly)
		[2]: SetLuauHeapProfileTarget_upvr (readonly)
	]]
	return {
		dispatchSetLuauHeapState = function(arg1_6, arg2) -- Line 551, Named "dispatchSetLuauHeapState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLuauHeapState_upvr (copied, readonly)
			]]
			arg1(SetLuauHeapState_upvr(arg1_6, arg2))
		end;
		dispatchSetLuauHeapProfileTarget = function(arg1_7) -- Line 554, Named "dispatchSetLuauHeapProfileTarget"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLuauHeapProfileTarget_upvr (copied, readonly)
			]]
			arg1(SetLuauHeapProfileTarget_upvr(arg1_7))
		end;
	}
end)(require(Components.DataConsumer)(any_extend_result1, "LuauHeapData"))