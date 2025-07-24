-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:03
-- Luau version 6, Types version 3
-- Time taken: 0.007825 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local Roact_upvr = require(CorePackages.Packages.Roact)
local DevConsole = script.Parent.DevConsole
local Constants_upvr = require(DevConsole.Constants)
local Components = DevConsole.Components
local MainViewLog = require(Components.Log.MainViewLog)
local MainViewMemory = require(Components.Memory.MainViewMemory)
local MainViewLuauHeap = require(Components.LuauHeap.MainViewLuauHeap)
local getClientReplicator_upvr = require(DevConsole.Util.getClientReplicator)
local Actions = DevConsole.Actions
local SetTabList_upvr = require(Actions.SetTabList)
local PlayerPermissionsModule_upvr = require(CoreGui_upvr.RobloxGui.Modules.PlayerPermissionsModule)
local game_GetEngineFeature_result1 = game:GetEngineFeature("ScriptProfiler")
local tbl_3_upvr = {
	Log = {
		tab = MainViewLog;
		layoutOrder = 1;
		hasClientServer = true;
	};
	Memory = {
		tab = MainViewMemory;
		layoutOrder = 2;
		hasClientServer = true;
	};
	Network = {
		tab = require(Components.Network.MainViewNetwork);
		layoutOrder = 3;
		hasClientServer = true;
	};
	Scripts = {
		tab = require(Components.Scripts.MainViewScripts);
		layoutOrder = 4;
	};
	DataStores = {
		tab = require(Components.DataStores.MainViewDataStores);
		layoutOrder = 5;
	};
	ServerStats = {
		tab = require(Components.ServerStats.MainViewServerStats);
		layoutOrder = 6;
	};
	ActionBindings = {
		tab = require(Components.ActionBindings.MainViewActionBindings);
		layoutOrder = 7;
	};
	ServerJobs = {
		tab = require(Components.ServerJobs.MainViewServerJobs);
		layoutOrder = 8;
	};
}
local tbl = {
	tab = require(Components.MicroProfiler.MainViewMicroProfiler);
	layoutOrder = 9;
}
tbl_3_upvr.MicroProfiler = tbl
tbl = {}
local var27 = tbl
var27.tab = require(Components.DebugVisualizations.MainViewDebugVisualizations)
var27.layoutOrder = 10
tbl_3_upvr.DebugVisualizations = var27
local var28_upvr
if game_GetEngineFeature_result1 then
	var27 = {}
	var27.tab = require(Components.ScriptProfiler.MainViewScriptProfiler)
	var28_upvr = 11
	var27.layoutOrder = var28_upvr
else
	var27 = nil
end
tbl_3_upvr.ScriptProfiler = var27
local tbl_5 = {
	tab = MainViewLuauHeap;
}
var28_upvr = 12
tbl_5.layoutOrder = var28_upvr
tbl_3_upvr.LuauHeap = tbl_5
local tbl_4_upvr = {}
var28_upvr = {}
var28_upvr.tab = MainViewLog
var28_upvr.layoutOrder = 1
tbl_4_upvr.Log = var28_upvr
var28_upvr = {}
var28_upvr.tab = MainViewMemory
var28_upvr.layoutOrder = 2
tbl_4_upvr.Memory = var28_upvr
if game_GetEngineFeature_result1 then
	var28_upvr = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var28_upvr.tab = require(Components.ScriptProfiler.MainViewScriptProfiler)
	var28_upvr.layoutOrder = 3
else
	var28_upvr = nil
end
tbl_4_upvr.ScriptProfiler = var28_upvr
var28_upvr = {}
var28_upvr.tab = MainViewLuauHeap
var28_upvr.layoutOrder = 4
tbl_4_upvr.LuauHeap = var28_upvr
var28_upvr = {}
var28_upvr.Log = {
	tab = MainViewLog;
	layoutOrder = 1;
}
var28_upvr.Memory = {
	tab = MainViewMemory;
	layoutOrder = 2;
}
local tbl_2_upvr = {}
tbl_2_upvr.__index = tbl_2_upvr
local tbl_upvr = {
	[Enum.Platform.Windows] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.OSX] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.IOS] = Constants_upvr.FormFactor.Small;
	[Enum.Platform.Android] = Constants_upvr.FormFactor.Small;
	[Enum.Platform.XBoxOne] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.PS4] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.PS3] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.XBox360] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.WiiU] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.NX] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.Ouya] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.AndroidTV] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.Chromecast] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.Linux] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.SteamOS] = Constants_upvr.FormFactor.Console;
	[Enum.Platform.WebOS] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.DOS] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.BeOS] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.UWP] = Constants_upvr.FormFactor.Large;
	[Enum.Platform.None] = Constants_upvr.FormFactor.Large;
}
local function _() -- Line 163, Named "isAdminAsync"
	--[[ Upvalues[2]:
		[1]: PlayerPermissionsModule_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	return PlayerPermissionsModule_upvr.IsPlayerAdminAsync(Players_upvr.LocalPlayer)
end
local RunService_upvr = game:GetService("RunService")
local function _() -- Line 167, Named "isDeveloper"
	--[[ Upvalues[3]:
		[1]: RunService_upvr (readonly)
		[2]: PlayerPermissionsModule_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	if RunService_upvr:IsStudio() then
		return true
	end
	if PlayerPermissionsModule_upvr.CanPlayerManagePlaceAsync(Players_upvr.LocalPlayer) then
		return true
	end
	return false
end
function tbl_2_upvr.new() -- Line 178
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local module_upvr = {}
	setmetatable(module_upvr, tbl_2_upvr)
	module_upvr.init = false
	module_upvr.isDeveloperTabListActive = false
	module_upvr.waitForStart = true
	module_upvr.waitForStartBindable = Instance.new("BindableEvent")
	coroutine.wrap(function() -- Line 188
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr:SetupDevConsole()
	end)()
	return module_upvr
end
local UserInputService_upvr = game:GetService("UserInputService")
local MainView_upvr = require(DevConsole.Reducers.MainView)
local DevConsoleAnalytics_upvr = require(DevConsole.MiddleWare.DevConsoleAnalytics)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local DevConsoleReducer_upvr = require(DevConsole.Reducers.DevConsoleReducer)
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local DataProvider_upvr = require(Components.DataProvider)
local DevConsoleWindow_upvr = require(Components.DevConsoleWindow)
local RCCProfilerDataCompleteListener_upvr = require(Components.MicroProfiler.RCCProfilerDataCompleteListener)
function tbl_2_upvr.SetupDevConsole(arg1) -- Line 195
	--[[ Upvalues[14]:
		[1]: UserInputService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: MainView_upvr (readonly)
		[4]: SetTabList_upvr (readonly)
		[5]: var28_upvr (readonly)
		[6]: DevConsoleAnalytics_upvr (readonly)
		[7]: Rodux_upvr (readonly)
		[8]: DevConsoleReducer_upvr (readonly)
		[9]: Roact_upvr (readonly)
		[10]: RoactRodux_upvr (readonly)
		[11]: DataProvider_upvr (readonly)
		[12]: DevConsoleWindow_upvr (readonly)
		[13]: Constants_upvr (readonly)
		[14]: RCCProfilerDataCompleteListener_upvr (readonly)
	]]
	arg1.store = Rodux_upvr.Store.new(DevConsoleReducer_upvr, {
		MainView = MainView_upvr(nil, SetTabList_upvr(var28_upvr, "Log"));
	}, {DevConsoleAnalytics_upvr})
	arg1.root = Roact_upvr.createElement(RoactRodux_upvr.StoreProvider, {
		store = arg1.store;
	}, {
		DataProvider = Roact_upvr.createElement(DataProvider_upvr, {
			isDeveloperView = false;
		}, {
			App = Roact_upvr.createElement("ScreenGui", {
				OnTopOfCoreBlur = true;
				DisplayOrder = 10;
			}, {
				DevConsoleWindow = Roact_upvr.createElement(DevConsoleWindow_upvr, {
					formFactor = tbl_upvr[UserInputService_upvr:GetPlatform()];
					isDeveloperView = false;
					isVisible = arg1.store:getState().DisplayOptions.isVisible;
					isMinimized = false;
					position = Constants_upvr.MainWindowInit.Position;
					size = Constants_upvr.MainWindowInit.Size;
					tabList = var28_upvr;
					onCloseCallback = function(arg1_2) -- Line 230, Named "onCloseCallback"
						--[[ Upvalues[1]:
							[1]: arg1 (readonly)
						]]
						arg1:SetServerStatsConnection(arg1_2)
					end;
				});
				RCCProfilerDataCompleteListener = Roact_upvr.createElement(RCCProfilerDataCompleteListener_upvr);
			});
		});
	})
	arg1.waitForStart = false
	arg1.waitForStartBindable:Fire()
end
local any_new_result1_upvr = tbl_2_upvr.new()
function tbl_2_upvr.Start(arg1) -- Line 246
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: getClientReplicator_upvr (readonly)
		[4]: PlayerPermissionsModule_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: SetTabList_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: tbl_3_upvr (readonly)
	]]
	if not arg1.init then
		if arg1.waitForStart then
			arg1.waitForStartBindable.Event:Wait()
		end
		arg1.init = true
		arg1.element = Roact_upvr.mount(arg1.root, CoreGui_upvr, "DevConsoleMaster")
		local var12_result1_2 = getClientReplicator_upvr()
		task.spawn(function() -- Line 256
			--[[ Upvalues[5]:
				[1]: PlayerPermissionsModule_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: SetTabList_upvr (copied, readonly)
				[5]: tbl_4_upvr (copied, readonly)
			]]
			if PlayerPermissionsModule_upvr.IsPlayerAdminAsync(Players_upvr.LocalPlayer) and not arg1.isDeveloperTabListActive then
				arg1.store:dispatch(SetTabList_upvr(tbl_4_upvr, "Log", false))
			end
		end)
		if var12_result1_2 then
			arg1._statsConnector = var12_result1_2.StatsReceived:connect(function(arg1_3) -- Line 264
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: SetTabList_upvr (copied, readonly)
					[3]: tbl_3_upvr (copied, readonly)
				]]
				if not arg1._statsConnector then
				else
					arg1._statsConnector:Disconnect()
					arg1._statsConnector = nil
					arg1.isDeveloperTabListActive = true
					arg1.store:dispatch(SetTabList_upvr(tbl_3_upvr, "Log", true))
				end
			end)
			arg1:SetServerStatsConnection(true)
		end
	end
end
function tbl_2_upvr.ToggleVisibility(arg1) -- Line 281
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	if not arg1.init then
		any_new_result1_upvr:Start()
	end
	arg1:SetVisibility(not arg1.store:getState().DisplayOptions.isVisible)
end
function tbl_2_upvr.GetVisibility(arg1) -- Line 290
	if not arg1.init then
		return false
	end
	local any_getState_result1 = arg1.store:getState()
	if any_getState_result1 and any_getState_result1.DisplayOptions then
		local isVisible = any_getState_result1.DisplayOptions.isVisible
		if isVisible then
			isVisible = not any_getState_result1.DisplayOptions.isMinimized
		end
		return isVisible
	end
	return false
end
function tbl_2_upvr.SetServerStatsConnection(arg1, arg2) -- Line 305
	--[[ Upvalues[1]:
		[1]: getClientReplicator_upvr (readonly)
	]]
	local var12_result1 = getClientReplicator_upvr()
	if var12_result1 then
		var12_result1:RequestServerStats(arg2)
	end
end
local SetDevConsoleVisibility_upvr = require(Actions.SetDevConsoleVisibility)
function tbl_2_upvr.SetVisibility(arg1, arg2) -- Line 312
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: SetDevConsoleVisibility_upvr (readonly)
	]]
	if type(arg2) == "boolean" then
		if not arg1.init and arg2 then
			any_new_result1_upvr:Start()
		end
		arg1:SetServerStatsConnection(arg2)
		arg1.store:dispatch(SetDevConsoleVisibility_upvr(arg2))
	end
end
StarterGui:RegisterGetCore("DevConsoleVisible", function() -- Line 324
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	return any_new_result1_upvr:GetVisibility()
end)
StarterGui:RegisterSetCore("DevConsoleVisible", function(arg1) -- Line 328
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	if type(arg1) ~= "boolean" then
		error("DevConsoleVisible must be given a boolean value.")
	end
	any_new_result1_upvr:SetVisibility(arg1)
end)
return any_new_result1_upvr