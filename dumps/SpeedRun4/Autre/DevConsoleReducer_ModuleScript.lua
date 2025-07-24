-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:58
-- Luau version 6, Types version 3
-- Time taken: 0.001762 seconds

local Parent = script.Parent
local DevConsoleDisplayOptions_upvr = require(Parent.DevConsoleDisplayOptions)
local MainView_upvr = require(Parent.MainView)
local MemoryData_upvr = require(Parent.MemoryData)
local NetworkData_upvr = require(Parent.NetworkData)
local ScriptsData_upvr = require(Parent.ScriptsData)
local DataStoresData_upvr = require(Parent.DataStoresData)
local ServerStatsData_upvr = require(Parent.ServerStatsData)
local ServerJobsData_upvr = require(Parent.ServerJobsData)
local ActionBindingsData_upvr = require(Parent.ActionBindingsData)
local MicroProfiler_upvr = require(Parent.MicroProfiler)
local DebugVisualizationsData_upvr = require(Parent.DebugVisualizationsData)
local ScriptProfiler_upvr = require(Parent.ScriptProfiler)
local LuauHeap_upvr = require(Parent.LuauHeap)
return function(arg1, arg2) -- Line 18
	--[[ Upvalues[13]:
		[1]: DevConsoleDisplayOptions_upvr (readonly)
		[2]: MainView_upvr (readonly)
		[3]: MemoryData_upvr (readonly)
		[4]: NetworkData_upvr (readonly)
		[5]: ScriptsData_upvr (readonly)
		[6]: DataStoresData_upvr (readonly)
		[7]: ServerStatsData_upvr (readonly)
		[8]: ServerJobsData_upvr (readonly)
		[9]: ActionBindingsData_upvr (readonly)
		[10]: MicroProfiler_upvr (readonly)
		[11]: DebugVisualizationsData_upvr (readonly)
		[12]: ScriptProfiler_upvr (readonly)
		[13]: LuauHeap_upvr (readonly)
	]]
	local var16 = arg1
	if not var16 then
		var16 = {}
	end
	return {
		DisplayOptions = DevConsoleDisplayOptions_upvr(var16.DisplayOptions, arg2);
		MainView = MainView_upvr(var16.MainView, arg2);
		MemoryData = MemoryData_upvr(var16.MemoryData, arg2);
		NetworkData = NetworkData_upvr(var16.NetworkData, arg2);
		ScriptsData = ScriptsData_upvr(var16.ScriptsData, arg2);
		DataStoresData = DataStoresData_upvr(var16.DataStoresData, arg2);
		ServerStatsData = ServerStatsData_upvr(var16.ServerStatsData, arg2);
		ServerJobsData = ServerJobsData_upvr(var16.ServerJobsData, arg2);
		ActionBindingsData = ActionBindingsData_upvr(var16.ActionBindingsData, arg2);
		MicroProfiler = MicroProfiler_upvr(var16.MicroProfiler, arg2);
		DebugVisualizationsData = DebugVisualizationsData_upvr(var16.DebugVisualizationsData, arg2);
		ScriptProfiler = ScriptProfiler_upvr(var16.ScriptProfiler, arg2);
		LuauHeap = LuauHeap_upvr(var16.LuauHeap, arg2);
	}
end