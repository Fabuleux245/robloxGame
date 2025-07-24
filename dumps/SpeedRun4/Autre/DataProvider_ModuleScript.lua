-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:04
-- Luau version 6, Types version 3
-- Time taken: 0.002842 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Components = script.Parent.Parent.Components
local any_extend_result1 = Roact_upvr.Component:extend("DataProvider")
local LogData_upvr = require(Components.Log.LogData)
local ClientMemoryData_upvr = require(Components.Memory.ClientMemoryData)
local ServerMemoryData_upvr = require(Components.Memory.ServerMemoryData)
local NetworkData_upvr = require(Components.Network.NetworkData)
local ServerScriptsData_upvr = require(Components.Scripts.ServerScriptsData)
local DataStoresData_upvr = require(Components.DataStores.DataStoresData)
local ServerStatsData_upvr = require(Components.ServerStats.ServerStatsData)
local ActionBindingsData_upvr = require(Components.ActionBindings.ActionBindingsData)
local ServerJobsData_upvr = require(Components.ServerJobs.ServerJobsData)
local DebugVisualizationsData_upvr = require(Components.DebugVisualizations.DebugVisualizationsData)
local LuauHeapData_upvr = require(Components.LuauHeap.LuauHeapData)
function any_extend_result1.init(arg1) -- Line 22
	--[[ Upvalues[11]:
		[1]: LogData_upvr (readonly)
		[2]: ClientMemoryData_upvr (readonly)
		[3]: ServerMemoryData_upvr (readonly)
		[4]: NetworkData_upvr (readonly)
		[5]: ServerScriptsData_upvr (readonly)
		[6]: DataStoresData_upvr (readonly)
		[7]: ServerStatsData_upvr (readonly)
		[8]: ActionBindingsData_upvr (readonly)
		[9]: ServerJobsData_upvr (readonly)
		[10]: DebugVisualizationsData_upvr (readonly)
		[11]: LuauHeapData_upvr (readonly)
	]]
	arg1:setState({
		DevConsoleData = {
			ClientLogData = LogData_upvr.new(true);
			ServerLogData = LogData_upvr.new(false);
			ClientMemoryData = ClientMemoryData_upvr.new();
			ServerMemoryData = ServerMemoryData_upvr.new();
			ClientNetworkData = NetworkData_upvr.new(true);
			ServerNetworkData = NetworkData_upvr.new(false);
			ServerScriptsData = ServerScriptsData_upvr.new();
			DataStoresData = DataStoresData_upvr.new();
			ServerStatsData = ServerStatsData_upvr.new();
			ActionBindingsData = ActionBindingsData_upvr.new();
			ServerJobsData = ServerJobsData_upvr.new();
			DebugVisualizationsData = DebugVisualizationsData_upvr.new();
			LuauHeapData = LuauHeapData_upvr.new();
		};
	})
end
function any_extend_result1.didMount(arg1) -- Line 42
	arg1.state.DevConsoleData.ClientLogData:start()
	arg1.state.DevConsoleData.ClientMemoryData:start()
end
function any_extend_result1.willUpdate(arg1, arg2, arg3) -- Line 47
	if arg2.isDeveloperView and not arg1.props.isDeveloperView then
		for _, v in pairs(arg1.state.DevConsoleData) do
			if not v:isRunning() then
				v:start()
			end
		end
	end
end
local DataContext_upvr = require(Components.DataContext)
function any_extend_result1.render(arg1) -- Line 57
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: DataContext_upvr (readonly)
	]]
	return Roact_upvr.createElement(DataContext_upvr.Provider, {
		value = arg1.state.DevConsoleData;
	}, Roact_upvr.oneChild(arg1.props[Roact_upvr.Children]))
end
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 63, Named "mapStateToProps"
	return {
		isDeveloperView = arg1.MainView.isDeveloperView;
	}
end, nil)(any_extend_result1)