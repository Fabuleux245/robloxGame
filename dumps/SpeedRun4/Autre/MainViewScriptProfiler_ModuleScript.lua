-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:39
-- Luau version 6, Types version 3
-- Time taken: 0.024596 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ScriptProfilerService_upvr = game:GetService("ScriptProfilerService")
local Components = script.Parent.Parent.Parent.Components
local BoxButton_upvr = require(Components.BoxButton)
local ProfilerUtil_upvr = require(script.Parent.ProfilerUtil)
local Constants_upvr = require(script.Parent.Parent.Parent.Constants)
local MainRowPadding_upvr = Constants_upvr.GeneralFormatting.MainRowPadding
local any_extend_result1 = Roact_upvr.PureComponent:extend("MainViewScriptProfiler")
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ScriptProfilerShowPlugins2", false)
local tbl_3_upvr = {"Callgraph", "Functions"}
local function annotateSearchFilterNodes_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 64, Named "annotateSearchFilterNodes"
	--[[ Upvalues[1]:
		[1]: annotateSearchFilterNodes_upvr (readonly)
	]]
	local var20 = arg1.Nodes[arg5]
	local var21
	if not var21 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var21 = arg2[arg4]
			return var21
		end
		if 0 >= arg4 or not INLINED() then
			var21 = arg6
		end
		arg3[arg5] = var21
		var21 = false
		if 0 < arg4 then
			var21 = arg2[arg4]
		end
		return var21
	end
	local var22
	if 0 < arg4 and arg2[arg4] then
		var22 = true
		arg3[arg5] = true
		for i, v in pairs(var20.Children) do
			arg3[v] = true
			annotateSearchFilterNodes_upvr(arg1, arg2, arg3, i, v, true)
		end
		return var22
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for i_2, v_2 in pairs(var20.Children) do
		var22 = var22 or annotateSearchFilterNodes_upvr(arg1, arg2, arg3, i_2, v_2, arg6)
	end
	if var22 or arg6 then
		arg3[arg5] = true
	end
	return var22
end
local function generateSearchFilters_upvr(arg1, arg2) -- Line 109, Named "generateSearchFilters"
	--[[ Upvalues[2]:
		[1]: ProfilerUtil_upvr (readonly)
		[2]: annotateSearchFilterNodes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg2 == "" then
		return nil, nil
	end
	local data_2 = arg1.data
	if not data_2 then
		return nil, nil
	end
	local table_create_result1_9 = table.create(#data_2.Functions, false)
	for i_3, v_3 in data_2.Functions do
		local any_getName_result1 = ProfilerUtil_upvr.getName(data_2, v_3)
		if any_getName_result1 and string.find(any_getName_result1, arg2, 1, true) then
			table_create_result1_9[i_3] = true
		end
	end
	for _, v_4 in data_2.Categories do
		annotateSearchFilterNodes_upvr(data_2, table_create_result1_9, table.create(#data_2.Nodes, false), 0, v_4.NodeId, false)
		local var85
	end
	for i_5, v_5 in var85.Functions do
		if table_create_result1_9[i_5] ~= true and not ProfilerUtil_upvr.getName(var85, v_5) then
			local any_getSourceName_result1 = ProfilerUtil_upvr.getSourceName(var85, v_5)
			if any_getSourceName_result1 and string.find(any_getSourceName_result1, arg2, 1, true) then
				table_create_result1_9[i_5] = true
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return table_create_result1_9, table.create(#data_2.Nodes, false)
end
local getPluginFlag_upvr = ProfilerUtil_upvr.getPluginFlag
local getDurations_upvr = ProfilerUtil_upvr.getDurations
local function generatePluginDurationOffsets_upvr(arg1, arg2) -- Line 153, Named "generatePluginDurationOffsets"
	--[[ Upvalues[2]:
		[1]: getPluginFlag_upvr (readonly)
		[2]: getDurations_upvr (readonly)
	]]
	if arg2 then
		if arg2.Version ~= 2 then
		else
		end
		assert(true)
		local table_create_result1_3 = table.create(#arg2.Categories, 0)
		local table_create_result1_2 = table.create(#arg2.Categories, 0)
		for i_6, v_6 in arg2.Categories do
			local var116 = 0
			local var117 = 0
			local Children_2 = arg2.Nodes[v_6.NodeId].Children
			if Children_2 then
				for i_7, v_7 in pairs(Children_2) do
					if getPluginFlag_upvr(arg2, arg2.Functions[i_7]) then
						var116 += getDurations_upvr(arg2, v_7)
						if 0 < #arg1 then
							var117 += arg1[v_7]
						end
					end
				end
			end
			table_create_result1_3[i_6] = var116
			table_create_result1_2[i_6] = var117
			local var122 = 0 + var116
		end
		table_create_result1_3.Total = var122
		table_create_result1_2.Total = var122
		return table_create_result1_3, table_create_result1_2
	end
	return {}, {}
end
local function getGCOverhead_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 203, Named "getGCOverhead"
	--[[ Upvalues[1]:
		[1]: getGCOverhead_upvr (readonly)
	]]
	local var127 = arg3.Nodes[arg4]
	local var128 = 0
	if var127.Children then
		for i_8, v_8 in pairs(var127.Children) do
			local var132
			if i_8 == arg5 then
				var132 = arg3.Nodes[v_8].TotalDuration
			else
				var132 = getGCOverhead_upvr(arg1, arg2, arg3, v_8, arg5)
			end
			arg1[i_8] += var132
			arg2[v_8] = var132
			var128 += var132
		end
	end
	return var128
end
local function generateGCOverheadOffsets_upvr(arg1) -- Line 231, Named "generateGCOverheadOffsets"
	--[[ Upvalues[1]:
		[1]: getGCOverhead_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1 then
		local var155
		if arg1.GCFuncId then
			var155 = arg1.Functions
			var155 = 0
			var155 = #arg1.Nodes
			local table_create_result1_7 = table.create(var155, 0)
			var155 = 0
			for _, v_9 in arg1.Categories do
				local NodeId_2 = v_9.NodeId
				local getGCOverhead_result1_2 = getGCOverhead_upvr(table.create(#var155, var155), table_create_result1_7, arg1, NodeId_2, arg1.GCFuncId)
				var155 += getGCOverhead_result1_2
				table_create_result1_7[NodeId_2] = getGCOverhead_result1_2
				local var160
			end
			table_create_result1_7.Total = var155
			return var160, table_create_result1_7
		end
	end
	return {}, {}
end
function any_extend_result1.getActiveState(arg1) -- Line 259
	local isClientView = arg1.props.isClientView
	if arg1.props.isClientView then
		return isClientView, arg1.props.client
	end
	return isClientView, arg1.props.server
end
function any_extend_result1.getState(arg1, arg2) -- Line 263
	if arg2 then
		return arg1.props.client
	end
	return arg1.props.server
end
function any_extend_result1.UpdateState(arg1, arg2, arg3) -- Line 267
	if arg2 then
		arg1.props.dispatchSetScriptProfilerState(nil, nil, arg3, nil)
	else
		arg1.props.dispatchSetScriptProfilerState(nil, nil, nil, arg3)
	end
end
local function OnNewProfilingData_upvr(arg1, arg2, arg3) -- Line 275, Named "OnNewProfilingData"
	--[[ Upvalues[4]:
		[1]: ScriptProfilerService_upvr (readonly)
		[2]: generateGCOverheadOffsets_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: generatePluginDurationOffsets_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.serializedData = arg3
	arg1.data = ScriptProfilerService_upvr:DeserializeJSON(arg3)
	local generateGCOverheadOffsets_upvr_result1, generateGCOverheadOffsets_upvr_result2 = generateGCOverheadOffsets_upvr(arg1.data)
	arg1.gcFunctionOffsets = generateGCOverheadOffsets_upvr_result1
	arg1.gcNodeOffsets = generateGCOverheadOffsets_upvr_result2
	generateGCOverheadOffsets_upvr_result1 = game_DefineFastFlag_result1_upvr
	local var164
	if var164 then
		var164 = generatePluginDurationOffsets_upvr(arg1.gcNodeOffsets, arg1.data)
		local generatePluginDurationOffsets_upvr_result1, generatePluginDurationOffsets_upvr_result2 = generatePluginDurationOffsets_upvr(arg1.gcNodeOffsets, arg1.data)
		arg1.pluginOffsets = generatePluginDurationOffsets_upvr_result1
		arg1.pluginGCOffsets = generatePluginDurationOffsets_upvr_result2
	end
	if arg1.data then
		generatePluginDurationOffsets_upvr_result1 = #arg1.data.Nodes
	else
		generatePluginDurationOffsets_upvr_result1 = 0
	end
	if arg2.data then
	else
	end
	local table_create_result1_4 = table.create(generatePluginDurationOffsets_upvr_result1, false)
	table.move(arg2.expandedNodes, 1, 0, 1, table_create_result1_4)
	arg1.expandedNodes = table_create_result1_4
end
local Players_upvr = game:GetService("Players")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("ScriptProfilerLiveUpdateIntervalMS", 1000)
function any_extend_result1.init(arg1) -- Line 293
	--[[ Upvalues[5]:
		[1]: ScriptProfilerService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
		[4]: generateSearchFilters_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	local function _(arg1_2, arg2) -- Line 294, Named "StartScriptProfiling"
		--[[ Upvalues[2]:
			[1]: ScriptProfilerService_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		if arg1_2 then
			ScriptProfilerService_upvr:ClientStart(Players_upvr.LocalPlayer, arg2.frequency)
		else
			ScriptProfilerService_upvr:ServerStart(arg2.frequency)
		end
	end
	local function _(arg1_3) -- Line 302, Named "StopScriptProfiling"
		--[[ Upvalues[2]:
			[1]: ScriptProfilerService_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		if arg1_3 then
			ScriptProfilerService_upvr:ClientStop(Players_upvr.LocalPlayer)
		else
			ScriptProfilerService_upvr:ServerStop()
		end
		return nil
	end
	local function _(arg1_4) -- Line 311, Named "RequestNewData"
		--[[ Upvalues[2]:
			[1]: ScriptProfilerService_upvr (copied, readonly)
			[2]: Players_upvr (copied, readonly)
		]]
		if arg1_4 then
			ScriptProfilerService_upvr:ClientRequestData(Players_upvr.LocalPlayer)
		else
			ScriptProfilerService_upvr:ServerRequestData()
		end
	end
	local function _(arg1_5) -- Line 319, Named "StopTimedProfiling"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ScriptProfilerService_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		if arg1:getState(arg1_5).isProfiling then
			if arg1_5 then
				ScriptProfilerService_upvr:ClientStop(Players_upvr.LocalPlayer)
			else
				ScriptProfilerService_upvr:ServerStop()
			end
			arg1.props.dispatchSetIsProfiling(arg1_5, false)
			if arg1_5 then
				ScriptProfilerService_upvr:ClientRequestData(Players_upvr.LocalPlayer)
				return
			end
			ScriptProfilerService_upvr:ServerRequestData()
		end
	end
	function arg1.onUtilTabHeightChanged(arg1_6) -- Line 331
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_12 = {}
		tbl_12.utilTabHeight = arg1_6
		arg1:setState(tbl_12)
	end
	local function UpdateTimedProfilingTimer_upvr(arg1_7) -- Line 337, Named "UpdateTimedProfilingTimer"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		while task.wait(0.5) do
			local timedProfilingCountdown = arg1:getState(arg1_7).timedProfilingCountdown
			if timedProfilingCountdown <= 0 then break end
			arg1.props.dispatchSetTimer(arg1_7, {
				timedProfilingCountdown = timedProfilingCountdown - 0.5;
			})
		end
	end
	local function LiveUpdate_upvr(arg1_8) -- Line 352, Named "LiveUpdate"
		--[[ Upvalues[4]:
			[1]: game_DefineFastInt_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ScriptProfilerService_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
		]]
		while task.wait(game_DefineFastInt_result1_upvr / 1000) do
			if arg1:getState(arg1_8).liveUpdate then
				if arg1_8 then
					ScriptProfilerService_upvr:ClientRequestData(Players_upvr.LocalPlayer)
				else
					ScriptProfilerService_upvr:ServerRequestData()
				end
			end
		end
	end
	function arg1.onBeginProfile() -- Line 362
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: ScriptProfilerService_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
			[4]: UpdateTimedProfilingTimer_upvr (readonly)
			[5]: LiveUpdate_upvr (readonly)
		]]
		local any_getActiveState_result1_5_upvr, any_getActiveState_result2 = arg1:getActiveState()
		if any_getActiveState_result1_5_upvr then
			ScriptProfilerService_upvr:ClientStart(Players_upvr.LocalPlayer, any_getActiveState_result2.frequency)
		else
			ScriptProfilerService_upvr:ServerStart(any_getActiveState_result2.frequency)
		end
		arg1.props.dispatchSetIsProfiling(any_getActiveState_result1_5_upvr, true)
		arg1.props.dispatchClearStateForNewSession(any_getActiveState_result1_5_upvr)
		local tbl_4 = {}
		if 0 < any_getActiveState_result2.timedProfilingDuration then
			arg1.props.dispatchSetTimer(any_getActiveState_result1_5_upvr, {
				timedProfilingCountdown = any_getActiveState_result2.timedProfilingDuration;
			})
			tbl_4.timedProfilingThread = task.delay(any_getActiveState_result2.timedProfilingDuration, function() -- Line 375
				--[[ Upvalues[4]:
					[1]: any_getActiveState_result1_5_upvr (readonly)
					[2]: arg1 (copied, readonly)
					[3]: ScriptProfilerService_upvr (copied, readonly)
					[4]: Players_upvr (copied, readonly)
				]]
				local var180 = any_getActiveState_result1_5_upvr
				if arg1:getState(var180).isProfiling then
					if var180 then
						ScriptProfilerService_upvr:ClientStop(Players_upvr.LocalPlayer)
					else
						ScriptProfilerService_upvr:ServerStop()
					end
					arg1.props.dispatchSetIsProfiling(var180, false)
					if var180 then
						ScriptProfilerService_upvr:ClientRequestData(Players_upvr.LocalPlayer)
						return
					end
					ScriptProfilerService_upvr:ServerRequestData()
				end
			end)
			tbl_4.timedProfilingTimerThread = task.spawn(function() -- Line 379
				--[[ Upvalues[2]:
					[1]: UpdateTimedProfilingTimer_upvr (copied, readonly)
					[2]: any_getActiveState_result1_5_upvr (readonly)
				]]
				UpdateTimedProfilingTimer_upvr(any_getActiveState_result1_5_upvr)
			end)
		end
		tbl_4.liveUpdateThread = task.spawn(LiveUpdate_upvr, any_getActiveState_result1_5_upvr)
		arg1.props.dispatchSetThreads(any_getActiveState_result1_5_upvr, tbl_4)
	end
	function arg1.onEndProfile() -- Line 389
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: ScriptProfilerService_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		local any_getActiveState_result1_6, any_getActiveState_result2_4 = arg1:getActiveState()
		if any_getActiveState_result1_6 then
			ScriptProfilerService_upvr:ClientStop(Players_upvr.LocalPlayer)
		else
			ScriptProfilerService_upvr:ServerStop()
		end
		local tbl_6 = {}
		if any_getActiveState_result2_4.timedProfilingThread then
			task.cancel(any_getActiveState_result2_4.timedProfilingThread)
			tbl_6.timedProfilingThread = nil
		end
		if any_getActiveState_result2_4.timedProfilingTimerThread then
			task.cancel(any_getActiveState_result2_4.timedProfilingTimerThread)
			tbl_6.timedProfilingTimerThread = nil
		end
		if any_getActiveState_result2_4.liveUpdateThread then
			task.cancel(any_getActiveState_result2_4.liveUpdateThread)
			tbl_6.liveUpdateThread = nil
		end
		arg1.props.dispatchSetThreads(any_getActiveState_result1_6, {})
		arg1.props.dispatchSetIsProfiling(any_getActiveState_result1_6, false)
		if any_getActiveState_result1_6 then
			ScriptProfilerService_upvr:ClientRequestData(Players_upvr.LocalPlayer)
		else
			ScriptProfilerService_upvr:ServerRequestData()
		end
	end
	function arg1.toggleTimedProfiling() -- Line 417
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 13 start (CF ANALYSIS FAILED)
		local _, any_getActiveState_result2_7 = arg1:getActiveState()
		local timedProfilingDuration = any_getActiveState_result2_7.timedProfilingDuration
		if timedProfilingDuration == 0 then
			timedProfilingDuration = 60
			-- KONSTANTWARNING: GOTO [19] #15
		end
		-- KONSTANTERROR: [0] 1. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 8. Error Block 12 start (CF ANALYSIS FAILED)
		if timedProfilingDuration == 60 then
			-- KONSTANTWARNING: GOTO [19] #15
		end
		-- KONSTANTERROR: [10] 8. Error Block 12 end (CF ANALYSIS FAILED)
	end
	function arg1.toggleAverage() -- Line 435
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		local any_getActiveState_result1, _ = arg1:getActiveState()
		local var193
		if var193 == 0 then
			var193 = 1
			-- KONSTANTWARNING: GOTO [23] #18
		end
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 8. Error Block 17 start (CF ANALYSIS FAILED)
		if var193 == 1 then
			var193 = 60
		elseif var193 == 60 then
			var193 = 300
		elseif var193 == 300 then
			var193 = 600
		else
			var193 = 0
		end
		arg1.props.dispatchSetAverage(any_getActiveState_result1, var193)
		-- KONSTANTERROR: [10] 8. Error Block 17 end (CF ANALYSIS FAILED)
	end
	function arg1.toggleUnits() -- Line 455
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetScriptProfilerState(nil, not arg1.props.usePercentages, nil, nil)
	end
	function arg1.toggleFrequency() -- Line 459
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getActiveState_result1_4, any_getActiveState_result2_2 = arg1:getActiveState()
		local frequency = any_getActiveState_result2_2.frequency
		if frequency == 1000 then
			frequency = 10000
		else
			frequency = 1000
		end
		arg1.props.dispatchSetFrequency(any_getActiveState_result1_4, frequency)
	end
	function arg1.onClientButton() -- Line 473
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetScriptProfilerState(true)
	end
	function arg1.onServerButton() -- Line 477
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.dispatchSetScriptProfilerState(false)
	end
	function arg1.dataViewDropDownCallback(arg1_9) -- Line 481
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_getActiveState_result1_2, any_getActiveState_result2_3 = arg1:getActiveState()
		local isFunctionsView = any_getActiveState_result2_3.isFunctionsView
		if arg1_9 == 1 then
			isFunctionsView = false
		elseif arg1_9 == 2 then
			isFunctionsView = true
		end
		arg1.props.dispatchSetDataView(any_getActiveState_result1_2, isFunctionsView)
	end
	function arg1.onCheckBoxChanged(arg1_10, arg2) -- Line 495
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local isClientView_2 = arg1.props.isClientView
		if arg1_10 == "Live" then
			arg1.props.dispatchSetLiveUpdate(isClientView_2, arg2)
		else
			if arg1_10 == "Plugins" then
				arg1.props.dispatchSetShowPlugins(isClientView_2, arg2)
				return
			end
			if arg1_10 == "GC" then
				arg1.props.dispatchSetShowGC(isClientView_2, arg2)
			end
		end
	end
	function arg1.onSearchTermChanged(arg1_11) -- Line 507
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: generateSearchFilters_upvr (copied, readonly)
		]]
		local any_getActiveState_result1_7, any_getActiveState_result2_5 = arg1:getActiveState()
		local generateSearchFilters_result1, generateSearchFilters_result2 = generateSearchFilters_upvr(any_getActiveState_result2_5, arg1_11)
		local tbl_11 = {}
		tbl_11.searchTerm = arg1_11
		local var213 = generateSearchFilters_result1
		if not var213 then
			var213 = {}
		end
		tbl_11.searchFilterFlat = var213
		var213 = generateSearchFilters_result2
		local var214 = var213
		if not var214 then
			var214 = {}
		end
		tbl_11.searchFilterGraph = var214
		arg1.props.dispatchSetSearchData(any_getActiveState_result1_7, tbl_11)
	end
	arg1.utilRef = Roact_upvr.createRef()
	arg1.state = {
		utilTabHeight = 0;
	}
end
function any_extend_result1.didMount(arg1) -- Line 525
	--[[ Upvalues[2]:
		[1]: ScriptProfilerService_upvr (readonly)
		[2]: OnNewProfilingData_upvr (readonly)
	]]
	arg1:setState({
		utilTabHeight = arg1.utilRef.current.Size.Y.Offset;
	})
	arg1.scriptProfilerConnection = ScriptProfilerService_upvr.OnNewData:Connect(function(arg1_12, arg2) -- Line 531
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: OnNewProfilingData_upvr (copied, readonly)
		]]
		if arg1_12 == nil then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		local tbl_10 = {}
		OnNewProfilingData_upvr(tbl_10, arg1:getState(true), arg2)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.props.dispatchSetData(true, tbl_10)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 543
	arg1.scriptProfilerConnection:Disconnect()
	arg1.scriptProfilerConnection = nil
end
function any_extend_result1.didUpdate(arg1) -- Line 548
	local Size = arg1.utilRef.current.Size
	if Size.Y.Offset ~= arg1.state.utilTabHeight then
		arg1:setState({
			utilTabHeight = Size.Y.Offset;
		})
	end
end
local function _(arg1) -- Line 557, Named "formatTimer"
	--[[ Upvalues[1]:
		[1]: ProfilerUtil_upvr (readonly)
	]]
	local any_formatTimer_result1 = ProfilerUtil_upvr.formatTimer(arg1)
	if any_formatTimer_result1 ~= "" then
		return ": "..any_formatTimer_result1
	end
	return any_formatTimer_result1
end
local formatFrequency_upvr = ProfilerUtil_upvr.formatFrequency
local MainWindowHeader_upvr = Constants_upvr.DefaultFontSize.MainWindowHeader
local Text_upvr = Constants_upvr.Color.Text
local MainWindowHeader_upvr_2 = Constants_upvr.Font.MainWindowHeader
local UnselectedGray_upvr = Constants_upvr.Color.UnselectedGray
local DropDown_upvr = require(Components.DropDown)
local SmallFrameHeight_upvr = Constants_upvr.UtilityBarFormatting.SmallFrameHeight
function any_extend_result1.renderUtilButtons(arg1, arg2, arg3, arg4) -- Line 567
	--[[ Upvalues[12]:
		[1]: Roact_upvr (readonly)
		[2]: BoxButton_upvr (readonly)
		[3]: formatFrequency_upvr (readonly)
		[4]: MainWindowHeader_upvr (readonly)
		[5]: Text_upvr (readonly)
		[6]: MainWindowHeader_upvr_2 (readonly)
		[7]: Constants_upvr (readonly)
		[8]: UnselectedGray_upvr (readonly)
		[9]: ProfilerUtil_upvr (readonly)
		[10]: DropDown_upvr (readonly)
		[11]: SmallFrameHeight_upvr (readonly)
		[12]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	local isProfiling = arg2.isProfiling
	local tbl_5 = {}
	local tbl_9 = {}
	local var233
	if isProfiling then
		var233 = "Stop"
	else
		var233 = "Start"
	end
	tbl_9.text = var233
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var233 = arg1.onEndProfile
		return var233
	end
	if not isProfiling or not INLINED_2() then
		var233 = arg1.onBeginProfile
	end
	tbl_9.onClicked = var233
	table.insert(tbl_5, Roact_upvr.createElement(BoxButton_upvr, tbl_9))
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 23. Error Block 79 start (CF ANALYSIS FAILED)
	local tbl_8 = {}
	if arg1.props.usePercentages then
		var233 = "Unit: %"
	else
		var233 = "Unit: ms"
	end
	tbl_8.text = var233
	var233 = arg1.toggleUnits
	tbl_8.onClicked = var233
	table.insert(tbl_5, Roact_upvr.createElement(BoxButton_upvr, tbl_8))
	-- KONSTANTERROR: [30] 23. Error Block 79 end (CF ANALYSIS FAILED)
end
local UtilAndTab_upvr = require(Components.UtilAndTab)
local Immutable_upvr = require(script.Parent.Parent.Parent.Immutable)
function any_extend_result1.renderUtilAndTab(arg1, arg2, arg3) -- Line 699
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: UtilAndTab_upvr (readonly)
		[3]: Immutable_upvr (readonly)
	]]
	return Roact_upvr.createElement(UtilAndTab_upvr, Immutable_upvr.JoinDictionaries({
		windowWidth = arg1.props.size.X.Offset;
		formFactor = arg1.props.formFactor;
		tabList = arg1.props.tabList;
		layoutOrder = 1;
		refForParent = arg1.utilRef;
		onHeightChanged = arg1.onUtilTabHeightChanged;
	}, arg2), arg3)
end
local ProfilerExportView_upvr = require(script.Parent.ProfilerExportView)
function any_extend_result1.renderExportView(arg1) -- Line 719
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: MainRowPadding_upvr (readonly)
		[4]: BoxButton_upvr (readonly)
		[5]: ProfilerExportView_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UtilAndTab = arg1:renderUtilAndTab({}, {Roact_upvr.createElement(BoxButton_upvr, {
			text = "Exit";
			onClicked = arg1.props.dispatchFinishedExporting;
		})});
		ExportView = Roact_upvr.createElement(ProfilerExportView_upvr, {
			size = UDim2.new(1, 0, 1, -arg1.state.utilTabHeight);
		});
	})
end
local MobileSettingsView_upvr = require(script.Parent.MobileSettingsView)
function any_extend_result1.renderMobileSettingsUI(arg1) -- Line 748
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: MainRowPadding_upvr (readonly)
		[4]: BoxButton_upvr (readonly)
		[5]: MobileSettingsView_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, {
		UIListLayout = Roact_upvr.createElement("UIListLayout", {
			Padding = UDim.new(0, MainRowPadding_upvr);
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		UtilAndTab = arg1:renderUtilAndTab({}, {Roact_upvr.createElement(BoxButton_upvr, {
			text = "Export";
			onClicked = arg1.props.dispatchStartExport;
		}), Roact_upvr.createElement(BoxButton_upvr, {
			text = "Exit";
			onClicked = arg1.props.dispatchHideMobileSettings;
		})});
		MobileSettingsView = Roact_upvr.createElement(MobileSettingsView_upvr, {
			size = UDim2.new(1, 0, 1, -arg1.state.utilTabHeight);
		});
	})
end
local ProfilerFunctionsView_upvr = require(script.Parent.ProfilerFunctionsView)
local ProfilerView_upvr = require(script.Parent.ProfilerView)
function any_extend_result1.renderProfilerView(arg1, arg2, arg3, arg4, arg5) -- Line 783
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: MainRowPadding_upvr (readonly)
		[4]: ProfilerFunctionsView_upvr (readonly)
		[5]: ProfilerView_upvr (readonly)
		[6]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local data_3 = arg3.data
	local isFunctionsView_2 = arg3.isFunctionsView
	local var257
	if data_3 and data_3.SessionStartTime and data_3.SessionEndTime then
	end
	local module_2 = {}
	local tbl_7 = {}
	var257 = UDim.new(0, MainRowPadding_upvr)
	tbl_7.Padding = var257
	var257 = Enum.SortOrder.LayoutOrder
	tbl_7.SortOrder = var257
	module_2.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_7)
	local tbl = {}
	tbl.isClientView = arg2
	var257 = arg1.onClientButton
	tbl.onClientButton = var257
	var257 = arg1.onServerButton
	tbl.onServerButton = var257
	tbl.orderedCheckBoxState = arg5
	var257 = arg1.onCheckBoxChanged
	tbl.onCheckBoxChanged = var257
	var257 = arg1.onSearchTermChanged
	tbl.onSearchTermChanged = var257
	var257 = arg3.searchTerm
	tbl.searchTerm = var257
	var257 = arg4
	module_2.UtilAndTab = arg1:renderUtilAndTab(tbl, var257)
	if isFunctionsView_2 then
	else
	end
	local tbl_2 = {}
	var257 = UDim2.new(1, 0, 1, -arg1.state.utilTabHeight)
	tbl_2.size = var257
	if isFunctionsView_2 then
		var257 = arg3.searchFilterFlat
	else
		var257 = arg3.searchFilterGraph
	end
	tbl_2.searchFilter = var257
	var257 = 2
	tbl_2.layoutOrder = var257
	tbl_2.data = data_3
	tbl_2.profiling = arg3.isProfiling
	tbl_2.showAsPercentages = arg1.props.usePercentages
	tbl_2.sessionLength = data_3.SessionEndTime - data_3.SessionStartTime
	tbl_2.rootNode = arg3.rootNode
	tbl_2.rootFunc = arg3.rootFunc
	tbl_2.rootNodeName = arg3.rootNodeName
	var257 = arg3.average
	tbl_2.average = var257
	var257 = arg3.showPlugins
	if not var257 then
	end
	tbl_2.showPlugins = not game_DefineFastFlag_result1_upvr
	tbl_2.pluginOffsets = arg3.pluginOffsets
	tbl_2.showGC = arg3.showGC
	tbl_2.gcFunctionOffsets = arg3.gcFunctionOffsets
	tbl_2.gcNodeOffsets = arg3.gcNodeOffsets
	local pluginGCOffsets = arg3.pluginGCOffsets
	tbl_2.pluginGCOffsets = pluginGCOffsets
	if isFunctionsView_2 then
		pluginGCOffsets = nil
	else
		pluginGCOffsets = arg3.expandedNodes
	end
	tbl_2.expandedNodes = pluginGCOffsets
	module_2.ProfilerView = Roact_upvr.createElement(ProfilerView_upvr, tbl_2)
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundColor3 = Constants_upvr.Color.BaseGray;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}, module_2)
end
function any_extend_result1.render(arg1) -- Line 847
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var264
	if arg1.props.isExporting then
		return arg1:renderExportView()
	end
	if arg1.props.isShowingMobileSettings then
		return arg1:renderMobileSettingsUI()
	end
	local any_getActiveState_result1_3, any_getActiveState_result2_6 = arg1:getActiveState()
	local module = {}
	if arg1.props.formFactor ~= Constants_upvr.FormFactor.Small then
		var264 = false
	else
		var264 = true
		local var268
	end
	if not var264 then
		module[1] = {
			name = "Live";
			state = any_getActiveState_result2_6.liveUpdate;
		}
		if game_DefineFastFlag_result1_upvr then
			var268 += 1
			module[var268] = {
				name = "Plugins";
				state = any_getActiveState_result2_6.showPlugins;
			}
		end
		var268 += 1
		module[var268] = {
			name = "GC";
			state = any_getActiveState_result2_6.showGC;
		}
	end
	return arg1:renderProfilerView(any_getActiveState_result1_3, any_getActiveState_result2_6, arg1:renderUtilButtons(any_getActiveState_result2_6, var264, var264), module)
end
local SetScriptProfilerState_upvr = require(script.Parent.Parent.Parent.Actions.SetScriptProfilerState)
local SetIsProfiling_upvr = require(script.Parent.Actions.SetIsProfiling)
local SetData_upvr = require(script.Parent.Actions.SetData)
local SetThreads_upvr = require(script.Parent.Actions.SetThreads)
local SetTimerState_upvr = require(script.Parent.Actions.SetTimerState)
local ClearStateForNewProfilingSession_upvr = require(script.Parent.Actions.ClearStateForNewProfilingSession)
local SetAverage_upvr = require(script.Parent.Actions.SetAverage)
local SetFrequency_upvr = require(script.Parent.Actions.SetFrequency)
local SetDataView_upvr = require(script.Parent.Actions.SetDataView)
local SetLiveUpdate_upvr = require(script.Parent.Actions.SetLiveUpdate)
local SetShowPlugins_upvr = require(script.Parent.Actions.SetShowPlugins)
local SetShowGC_upvr = require(script.Parent.Actions.SetShowGC)
local SetSearchData_upvr = require(script.Parent.Actions.SetSearchData)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 882, Named "mapStateToProps"
	return {
		isClientView = arg1.ScriptProfiler.isClientView;
		usePercentages = arg1.ScriptProfiler.usePercentages;
		isExporting = arg1.ScriptProfiler.isExporting;
		isShowingMobileSettings = arg1.ScriptProfiler.isShowingMobileSettings;
		client = arg1.ScriptProfiler.client;
		server = arg1.ScriptProfiler.server;
	}
end, function(arg1) -- Line 894, Named "mapDispatchToProps"
	--[[ Upvalues[13]:
		[1]: SetScriptProfilerState_upvr (readonly)
		[2]: SetIsProfiling_upvr (readonly)
		[3]: SetData_upvr (readonly)
		[4]: SetThreads_upvr (readonly)
		[5]: SetTimerState_upvr (readonly)
		[6]: ClearStateForNewProfilingSession_upvr (readonly)
		[7]: SetAverage_upvr (readonly)
		[8]: SetFrequency_upvr (readonly)
		[9]: SetDataView_upvr (readonly)
		[10]: SetLiveUpdate_upvr (readonly)
		[11]: SetShowPlugins_upvr (readonly)
		[12]: SetShowGC_upvr (readonly)
		[13]: SetSearchData_upvr (readonly)
	]]
	return {
		dispatchSetScriptProfilerState = function(arg1_13, arg2, arg3, arg4) -- Line 896, Named "dispatchSetScriptProfilerState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerState_upvr(arg1_13, arg2, arg3, arg4))
		end;
		dispatchSetIsProfiling = function(arg1_14, arg2) -- Line 900, Named "dispatchSetIsProfiling"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetIsProfiling_upvr (copied, readonly)
			]]
			arg1(SetIsProfiling_upvr(arg1_14, arg2))
		end;
		dispatchSetData = function(arg1_15, arg2) -- Line 904, Named "dispatchSetData"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetData_upvr (copied, readonly)
			]]
			arg1(SetData_upvr(arg1_15, arg2))
		end;
		dispatchSetThreads = function(arg1_16, arg2) -- Line 908, Named "dispatchSetThreads"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetThreads_upvr (copied, readonly)
			]]
			arg1(SetThreads_upvr(arg1_16, arg2))
		end;
		dispatchSetTimer = function(arg1_17, arg2) -- Line 912, Named "dispatchSetTimer"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetTimerState_upvr (copied, readonly)
			]]
			arg1(SetTimerState_upvr(arg1_17, arg2))
		end;
		dispatchClearStateForNewSession = function(arg1_18) -- Line 916, Named "dispatchClearStateForNewSession"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClearStateForNewProfilingSession_upvr (copied, readonly)
			]]
			arg1(ClearStateForNewProfilingSession_upvr(arg1_18))
		end;
		dispatchSetAverage = function(arg1_19, arg2) -- Line 920, Named "dispatchSetAverage"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetAverage_upvr (copied, readonly)
			]]
			arg1(SetAverage_upvr(arg1_19, arg2))
		end;
		dispatchSetFrequency = function(arg1_20, arg2) -- Line 924, Named "dispatchSetFrequency"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetFrequency_upvr (copied, readonly)
			]]
			arg1(SetFrequency_upvr(arg1_20, arg2))
		end;
		dispatchSetDataView = function(arg1_21, arg2) -- Line 928, Named "dispatchSetDataView"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDataView_upvr (copied, readonly)
			]]
			arg1(SetDataView_upvr(arg1_21, arg2))
		end;
		dispatchSetLiveUpdate = function(arg1_22, arg2) -- Line 932, Named "dispatchSetLiveUpdate"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLiveUpdate_upvr (copied, readonly)
			]]
			arg1(SetLiveUpdate_upvr(arg1_22, arg2))
		end;
		dispatchSetShowPlugins = function(arg1_23, arg2) -- Line 936, Named "dispatchSetShowPlugins"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetShowPlugins_upvr (copied, readonly)
			]]
			arg1(SetShowPlugins_upvr(arg1_23, arg2))
		end;
		dispatchSetShowGC = function(arg1_24, arg2) -- Line 940, Named "dispatchSetShowGC"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetShowGC_upvr (copied, readonly)
			]]
			arg1(SetShowGC_upvr(arg1_24, arg2))
		end;
		dispatchSetSearchData = function(arg1_25, arg2) -- Line 944, Named "dispatchSetSearchData"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetSearchData_upvr (copied, readonly)
			]]
			arg1(SetSearchData_upvr(arg1_25, arg2))
		end;
		dispatchStartExport = function() -- Line 948, Named "dispatchStartExport"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerState_upvr(nil, nil, nil, nil, true))
		end;
		dispatchFinishedExporting = function() -- Line 952, Named "dispatchFinishedExporting"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerState_upvr(nil, nil, nil, nil, false))
		end;
		dispatchShowMobileSettings = function() -- Line 956, Named "dispatchShowMobileSettings"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerState_upvr(nil, nil, nil, nil, nil, true))
		end;
		dispatchHideMobileSettings = function() -- Line 960, Named "dispatchHideMobileSettings"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScriptProfilerState_upvr (copied, readonly)
			]]
			arg1(SetScriptProfilerState_upvr(nil, nil, nil, nil, nil, false))
		end;
	}
end)(any_extend_result1)