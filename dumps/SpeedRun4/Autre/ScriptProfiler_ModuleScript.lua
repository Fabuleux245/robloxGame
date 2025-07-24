-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:02
-- Luau version 6, Types version 3
-- Time taken: 0.004196 seconds

local Immutable_upvr = require(script.Parent.Parent.Immutable)
local function _(arg1, arg2) -- Line 68, Named "GetSessionState"
	if arg1 then
		return arg2.client
	end
	return arg2.server
end
local function Update_upvr(arg1, arg2, arg3) -- Line 72, Named "Update"
	--[[ Upvalues[1]:
		[1]: Immutable_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	if arg1 then
	else
	end
	local module = {}
	if arg1 then
		-- KONSTANTWARNING: GOTO [17] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 22 start (CF ANALYSIS FAILED)
	module.client = nil
	if arg1 then
	else
	end
	module.server = Immutable_upvr.JoinDictionaries(arg2.server, arg3)
	do
		return Immutable_upvr.JoinDictionaries(arg2, module)
	end
	-- KONSTANTERROR: [16] 14. Error Block 22 end (CF ANALYSIS FAILED)
end
local SetScriptProfilerState_upvr = require(script.Parent.Parent.Actions.SetScriptProfilerState)
local SetIsProfiling_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetIsProfiling)
local SetAverage_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetAverage)
local SetFrequency_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetFrequency)
local SetDataView_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetDataView)
local SetLiveUpdate_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetLiveUpdate)
local SetShowPlugins_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetShowPlugins)
local SetShowGC_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetShowGC)
local SetSearchData_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetSearchData)
local SetTimerState_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetTimerState)
local SetData_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetData)
local SetThreads_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetThreads)
local ClearStateForNewProfilingSession_upvr = require(script.Parent.Parent.Components.ScriptProfiler.Actions.ClearStateForNewProfilingSession)
local SetScriptProfilerRoot_upvr = require(script.Parent.Parent.Actions.SetScriptProfilerRoot)
return function(arg1, arg2) -- Line 85
	--[[ Upvalues[16]:
		[1]: SetScriptProfilerState_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: SetIsProfiling_upvr (readonly)
		[4]: Update_upvr (readonly)
		[5]: SetAverage_upvr (readonly)
		[6]: SetFrequency_upvr (readonly)
		[7]: SetDataView_upvr (readonly)
		[8]: SetLiveUpdate_upvr (readonly)
		[9]: SetShowPlugins_upvr (readonly)
		[10]: SetShowGC_upvr (readonly)
		[11]: SetSearchData_upvr (readonly)
		[12]: SetTimerState_upvr (readonly)
		[13]: SetData_upvr (readonly)
		[14]: SetThreads_upvr (readonly)
		[15]: ClearStateForNewProfilingSession_upvr (readonly)
		[16]: SetScriptProfilerRoot_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	local tbl = {
		isClientView = true;
		usePercentages = false;
		isExporting = false;
		isShowingMobileSettings = false;
		client = {
			isProfiling = false;
			data = nil;
			serializedData = nil;
			frequency = 1000;
			timedProfilingThread = nil;
			timedProfilingTimerThread = nil;
			timedProfilingDuration = 0;
			timedProfilingCountdown = 0;
			isFunctionsView = false;
			average = 0;
			searchTerm = "";
			searchFilterGraph = {};
			searchFilterFlat = {};
			rootNode = 0;
			rootFunc = 0;
			rootNodeName = nil;
			liveUpdate = false;
			liveUpdateThread = nil;
			showPlugins = false;
			pluginOffsets = {};
			showGC = false;
			gcFunctionOffsets = {};
			gcNodeOffsets = {};
			pluginGCOffsets = {};
			expandedNodes = {};
		};
		server = {
			isProfiling = false;
			data = nil;
			serializedData = nil;
			frequency = 1000;
			timedProfilingThread = nil;
			timedProfilingTimerThread = nil;
			timedProfilingDuration = 0;
			timedProfilingCountdown = 0;
			isFunctionsView = false;
			average = 0;
			searchTerm = "";
			searchFilterGraph = {};
			searchFilterFlat = {};
			rootNode = 0;
			rootFunc = 0;
			rootNodeName = nil;
			liveUpdate = false;
			liveUpdateThread = nil;
			showPlugins = false;
			pluginOffsets = {};
			showGC = false;
			gcFunctionOffsets = {};
			gcNodeOffsets = {};
			pluginGCOffsets = {};
			expandedNodes = {};
		};
	}
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [185] 116. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [185] 116. Error Block 3 end (CF ANALYSIS FAILED)
end