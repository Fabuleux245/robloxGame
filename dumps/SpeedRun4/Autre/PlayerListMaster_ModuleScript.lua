-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:33
-- Luau version 6, Types version 3
-- Time taken: 0.009957 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local StarterGui_upvr = game:GetService("StarterGui")
local Players = game:GetService("Players")
local RobloxGui_upvr = CoreGui_upvr:WaitForChild("RobloxGui")
local TenFootInterface_upvr = require(RobloxGui_upvr.Modules.TenFootInterface)
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent
local PlayerList = require(CorePackages.Workspace.Packages.PlayerList)
local SetPlayerListEnabled_upvr = require(Parent.Actions.SetPlayerListEnabled)
if not Players.LocalPlayer then
	Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
end
local FFlagUseNewPlayerList_upvr = PlayerList.Flags.FFlagUseNewPlayerList
local Utility_upvr = require(RobloxGui_upvr.Modules.Settings.Utility)
local function isSmallTouchScreen_upvr() -- Line 51, Named "isSmallTouchScreen"
	--[[ Upvalues[1]:
		[1]: Utility_upvr (readonly)
	]]
	if _G.__TESTEZ_RUNNING_TEST__ then
		return false
	end
	return Utility_upvr:IsSmallTouchScreen()
end
local SetSettings_upvr = require(Parent.Actions.SetSettings)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local function setupSettings_upvr(arg1) -- Line 58, Named "setupSettings"
	--[[ Upvalues[2]:
		[1]: SetSettings_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
	]]
	local function _() -- Line 59, Named "updateSettings"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SetSettings_upvr (copied, readonly)
			[3]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:dispatch(SetSettings_upvr({
			reducedMotion = UserGameSettings_upvr.ReducedMotion;
			preferredTransparency = UserGameSettings_upvr.PreferredTransparency;
		}))
	end
	arg1:dispatch(SetSettings_upvr({
		reducedMotion = UserGameSettings_upvr.ReducedMotion;
		preferredTransparency = UserGameSettings_upvr.PreferredTransparency;
	}))
	UserGameSettings_upvr:GetPropertyChangedSignal("PreferredTransparency"):Connect(function() -- Line 68
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SetSettings_upvr (copied, readonly)
			[3]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:dispatch(SetSettings_upvr({
			reducedMotion = UserGameSettings_upvr.ReducedMotion;
			preferredTransparency = UserGameSettings_upvr.PreferredTransparency;
		}))
	end)
	UserGameSettings_upvr:GetPropertyChangedSignal("ReducedMotion"):Connect(function() -- Line 71
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: SetSettings_upvr (copied, readonly)
			[3]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:dispatch(SetSettings_upvr({
			reducedMotion = UserGameSettings_upvr.ReducedMotion;
			preferredTransparency = UserGameSettings_upvr.PreferredTransparency;
		}))
	end)
end
local module_upvr = {}
module_upvr.__index = module_upvr
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local Rodux_upvr = require(CorePackages.Packages.Rodux)
local Reducer_upvr = require(Parent.Reducers.Reducer)
local SetSmallTouchDevice_upvr = require(Parent.Actions.SetSmallTouchDevice)
local SetTenFootInterface_upvr = require(Parent.Actions.SetTenFootInterface)
local SetSubjectToChinaPolicies_upvr = require(Parent.Actions.SetSubjectToChinaPolicies)
local CachedPolicyService_upvr = require(CorePackages.Workspace.Packages.CachedPolicyService)
local UserInputService_upvr = game:GetService("UserInputService")
local SetIsUsingGamepad_upvr = require(Parent.Actions.SetIsUsingGamepad)
local Constants_upvr = require(CorePackages.Packages.UIBlox).App.Style.Constants
local RoactRodux_upvr = require(CorePackages.Packages.RoactRodux)
local PlayerListSwitcher_upvr = require(Parent.PlayerListSwitcher)
local ApolloProvider_upvr = require(CorePackages.Packages.ApolloClient).ApolloProvider
local ApolloClient_upvr = require(CoreGui_upvr.RobloxGui.Modules.ApolloClient)
local LeaderboardStoreInstanceManager_upvr = PlayerList.LeaderboardStoreInstanceManager
local PlayerListContainer_upvr = PlayerList.Container.PlayerListContainer
function module_upvr.new() -- Line 79
	--[[ Upvalues[26]:
		[1]: module_upvr (readonly)
		[2]: GlobalConfig_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Rodux_upvr (readonly)
		[5]: Reducer_upvr (readonly)
		[6]: setupSettings_upvr (readonly)
		[7]: StarterGui_upvr (readonly)
		[8]: SetPlayerListEnabled_upvr (readonly)
		[9]: SetSmallTouchDevice_upvr (readonly)
		[10]: isSmallTouchScreen_upvr (readonly)
		[11]: SetTenFootInterface_upvr (readonly)
		[12]: TenFootInterface_upvr (readonly)
		[13]: SetSubjectToChinaPolicies_upvr (readonly)
		[14]: CachedPolicyService_upvr (readonly)
		[15]: UserInputService_upvr (readonly)
		[16]: SetIsUsingGamepad_upvr (readonly)
		[17]: Constants_upvr (readonly)
		[18]: RoactRodux_upvr (readonly)
		[19]: PlayerListSwitcher_upvr (readonly)
		[20]: ApolloProvider_upvr (readonly)
		[21]: ApolloClient_upvr (readonly)
		[22]: LeaderboardStoreInstanceManager_upvr (readonly)
		[23]: FFlagUseNewPlayerList_upvr (readonly)
		[24]: PlayerListContainer_upvr (readonly)
		[25]: RobloxGui_upvr (readonly)
		[26]: CoreGui_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	local var55
	if GlobalConfig_upvr.propValidation then
		Roact_upvr.setGlobalConfig({
			propValidation = true;
		})
	end
	if GlobalConfig_upvr.elementTracing then
		Roact_upvr.setGlobalConfig({
			elementTracing = true;
		})
	end
	setmetatable_result1_upvr.layerCollectorRef = Roact_upvr.createRef()
	local tbl_2 = {}
	var55 = Rodux_upvr
	tbl_2[1] = var55.thunkMiddleware
	setmetatable_result1_upvr.store = Rodux_upvr.Store.new(Reducer_upvr, nil, tbl_2)
	setupSettings_upvr(setmetatable_result1_upvr.store)
	if not StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList) then
		setmetatable_result1_upvr.store:dispatch(SetPlayerListEnabled_upvr(false))
	end
	coroutine.wrap(function() -- Line 105
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: SetSmallTouchDevice_upvr (copied, readonly)
			[3]: isSmallTouchScreen_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.store:dispatch(SetSmallTouchDevice_upvr(isSmallTouchScreen_upvr()))
	end)()
	setmetatable_result1_upvr.store:dispatch(SetTenFootInterface_upvr(TenFootInterface_upvr:IsEnabled()))
	local function var44() -- Line 111
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: SetSubjectToChinaPolicies_upvr (copied, readonly)
			[3]: CachedPolicyService_upvr (copied, readonly)
		]]
		setmetatable_result1_upvr.store:dispatch(SetSubjectToChinaPolicies_upvr(CachedPolicyService_upvr:IsSubjectToChinaPolicies()))
	end
	coroutine.wrap(var44)()
	var44 = UserInputService_upvr:GetLastInputType()
	local var46 = var44
	if var46 then
		var46 = UserInputService_upvr:GetLastInputType().Name:find("Gamepad")
	end
	if var46 == nil then
		var55 = false
	else
		var55 = true
	end
	setmetatable_result1_upvr.store:dispatch(SetIsUsingGamepad_upvr(var55))
	setmetatable_result1_upvr:_trackEnabled()
	local tbl = {}
	var55 = Constants_upvr
	tbl.themeName = var55.ThemeName.Dark
	var55 = Constants_upvr
	tbl.fontName = var55.FontName.Gotham
	var55 = RoactRodux_upvr
	var55 = {}
	var55.store = setmetatable_result1_upvr.store
	setmetatable_result1_upvr.root = Roact_upvr.createElement(var55.StoreProvider, var55, {
		Switcher = Roact_upvr.createElement(PlayerListSwitcher_upvr, {
			appStyleForUiModeStyleProvider = tbl;
			setLayerCollectorEnabled = function(arg1) -- Line 131, Named "setLayerCollectorEnabled"
				--[[ Upvalues[1]:
					[1]: setmetatable_result1_upvr (readonly)
				]]
				if not setmetatable_result1_upvr.layerCollectorRef.current then
				else
					setmetatable_result1_upvr.layerCollectorRef.current.Enabled = arg1
				end
			end;
		});
	})
	var55 = {}
	var55.client = ApolloClient_upvr
	setmetatable_result1_upvr.root = Roact_upvr.createElement(ApolloProvider_upvr, var55, {
		StoreProvider = setmetatable_result1_upvr.root;
	})
	function setmetatable_result1_upvr._mountLeaderboardStore() -- Line 146
		--[[ Upvalues[1]:
			[1]: LeaderboardStoreInstanceManager_upvr (copied, readonly)
		]]
		LeaderboardStoreInstanceManager_upvr.createLeaderboardStoreInstance()
	end
	function setmetatable_result1_upvr._unmountLeaderboardStore() -- Line 150
		--[[ Upvalues[1]:
			[1]: LeaderboardStoreInstanceManager_upvr (copied, readonly)
		]]
		LeaderboardStoreInstanceManager_upvr.cleanUpInstance()
	end
	if FFlagUseNewPlayerList_upvr then
		setmetatable_result1_upvr._mountLeaderboardStore()
		var55 = {}
		var55.leaderboardStore = LeaderboardStoreInstanceManager_upvr.getLeaderboardStoreInstance
		var55.TopBarConstants = require(RobloxGui_upvr.Modules.TopBar.Constants)
		var55.isTenFoot = TenFootInterface_upvr:IsEnabled()
		setmetatable_result1_upvr.root = Roact_upvr.createElement(PlayerListContainer_upvr, var55, {
			PlayerListMaster = setmetatable_result1_upvr.root;
		})
	end
	var55 = {}
	var55.AutoLocalize = false
	var55.IgnoreGuiInset = true
	var55.DisplayOrder = 1
	var55.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	var55[Roact_upvr.Ref] = setmetatable_result1_upvr.layerCollectorRef
	setmetatable_result1_upvr.root = Roact_upvr.createElement("ScreenGui", var55, {
		PlayerListMaster = setmetatable_result1_upvr.root;
	})
	var55 = CoreGui_upvr
	setmetatable_result1_upvr.element = Roact_upvr.mount(setmetatable_result1_upvr.root, var55, "PlayerList")
	setmetatable_result1_upvr.topBarEnabled = true
	setmetatable_result1_upvr.mounted = true
	var55 = Enum.CoreGuiType.PlayerList
	setmetatable_result1_upvr.coreGuiEnabled = StarterGui_upvr:GetCoreGuiEnabled(var55)
	setmetatable_result1_upvr:_updateMounted()
	setmetatable_result1_upvr.SetVisibleChangedEvent = Instance.new("BindableEvent")
	function var55(arg1, arg2) -- Line 184
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		if arg1.displayOptions.setVisible ~= arg2.displayOptions.setVisible then
			setmetatable_result1_upvr.SetVisibleChangedEvent:Fire(arg1.displayOptions.setVisible)
		end
	end
	setmetatable_result1_upvr.store.changed:connect(var55)
	return setmetatable_result1_upvr
end
function module_upvr._updateMounted(arg1) -- Line 193
	--[[ Upvalues[4]:
		[1]: TenFootInterface_upvr (readonly)
		[2]: FFlagUseNewPlayerList_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
	]]
	local var56
	if not var56 then
		var56 = arg1.coreGuiEnabled
		if var56 then
			var56 = arg1.topBarEnabled
		end
		if var56 and not arg1.mounted then
			if FFlagUseNewPlayerList_upvr then
				arg1._mountLeaderboardStore()
			end
			arg1.element = Roact_upvr.mount(arg1.root, CoreGui_upvr, "PlayerList")
			arg1.mounted = true
			return
		end
		if not var56 and arg1.mounted then
			Roact_upvr.unmount(arg1.element)
			if FFlagUseNewPlayerList_upvr then
				arg1._unmountLeaderboardStore()
			end
			arg1.mounted = false
			if arg1.inspector then
				arg1.inspector:destroy()
				arg1.inspector = nil
			end
		end
	end
end
function module_upvr._trackEnabled(arg1) -- Line 216
	--[[ Upvalues[2]:
		[1]: StarterGui_upvr (readonly)
		[2]: SetPlayerListEnabled_upvr (readonly)
	]]
	StarterGui_upvr.CoreGuiChangedSignal:Connect(function(arg1_2, arg2) -- Line 217
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetPlayerListEnabled_upvr (copied, readonly)
		]]
		if arg1_2 == Enum.CoreGuiType.All or arg1_2 == Enum.CoreGuiType.PlayerList then
			arg1.coreGuiEnabled = arg2
			arg1:_updateMounted()
			arg1.store:dispatch(SetPlayerListEnabled_upvr(arg2))
		end
	end)
end
function module_upvr.GetVisibility(arg1) -- Line 226
	return arg1.store:getState().displayOptions.isVisible
end
function module_upvr.GetSetVisible(arg1) -- Line 230
	return arg1.store:getState().displayOptions.setVisible
end
function module_upvr.GetSetVisibleChangedEvent(arg1) -- Line 234
	return arg1.SetVisibleChangedEvent
end
local SetPlayerListVisibility_upvr = require(Parent.Actions.SetPlayerListVisibility)
function module_upvr.SetVisibility(arg1, arg2) -- Line 238
	--[[ Upvalues[1]:
		[1]: SetPlayerListVisibility_upvr (readonly)
	]]
	arg1.store:dispatch(SetPlayerListVisibility_upvr(arg2))
end
local SetTempHideKey_upvr = require(Parent.Actions.SetTempHideKey)
function module_upvr.HideTemp(arg1, arg2, arg3) -- Line 242
	--[[ Upvalues[1]:
		[1]: SetTempHideKey_upvr (readonly)
	]]
	if arg3 == false then
	end
	arg1.store:dispatch(SetTempHideKey_upvr(arg2, nil))
end
function module_upvr.SetTopBarEnabled(arg1, arg2) -- Line 249
	arg1.topBarEnabled = arg2
	arg1:_updateMounted()
end
local SetMinimized_2_upvr = require(Parent.Actions.SetMinimized)
function module_upvr.SetMinimized(arg1, arg2) -- Line 254
	--[[ Upvalues[1]:
		[1]: SetMinimized_2_upvr (readonly)
	]]
	arg1.store:dispatch(SetMinimized_2_upvr(arg2))
end
return module_upvr