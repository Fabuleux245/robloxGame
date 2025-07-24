-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:16
-- Luau version 6, Types version 3
-- Time taken: 0.002747 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local RobloxGui_upvr = CoreGui:WaitForChild("RobloxGui")
local isNewInGameMenuEnabled_upvr = require(RobloxGui_upvr.Modules.isNewInGameMenuEnabled)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MenuConnector")
any_extend_result1.validateProps = t.strictInterface({
	setMenuOpen = t.callback;
	setRespawnBehaviour = t.callback;
})
function any_extend_result1.didMount(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
		[2]: RobloxGui_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		local InGameMenuInit_2 = require(RobloxGui_upvr.Modules.InGameMenuInit)
		arg1.props.setMenuOpen(InGameMenuInit_2.getOpen())
		local any_getRespawnBehaviour_result1, any_getRespawnBehaviour_result2 = InGameMenuInit_2.getRespawnBehaviour()
		arg1.props.setRespawnBehaviour(any_getRespawnBehaviour_result1, any_getRespawnBehaviour_result2)
	else
		local SettingsHub_2 = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
		arg1.props.setMenuOpen(SettingsHub_2:GetVisibility())
		local any_GetRespawnBehaviour_result1, any_GetRespawnBehaviour_result2 = SettingsHub_2:GetRespawnBehaviour()
		arg1.props.setRespawnBehaviour(any_GetRespawnBehaviour_result1, any_GetRespawnBehaviour_result2)
	end
end
local EventConnection_upvr = require(Parent.Parent.Common.EventConnection)
local GetFFlagEnableInGameMenuDurationLogger_upvr = require(RobloxGui_upvr.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)
local PerfUtils_upvr = require(CoreGui:WaitForChild("RobloxGui").Modules.Common.PerfUtils)
function any_extend_result1.render(arg1) -- Line 48
	--[[ Upvalues[6]:
		[1]: isNewInGameMenuEnabled_upvr (readonly)
		[2]: RobloxGui_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: EventConnection_upvr (readonly)
		[5]: GetFFlagEnableInGameMenuDurationLogger_upvr (readonly)
		[6]: PerfUtils_upvr (readonly)
	]]
	if isNewInGameMenuEnabled_upvr() then
		local InGameMenuInit = require(RobloxGui_upvr.Modules.InGameMenuInit)
		local module_2 = {}
		local tbl_2 = {
			event = InGameMenuInit.getOpenChangedEvent().Event;
		}
		local function callback(arg1_2) -- Line 60
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.setMenuOpen(arg1_2)
		end
		tbl_2.callback = callback
		module_2.MenuOpenChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_2)
		local tbl = {
			event = InGameMenuInit.getRespawnBehaviourChangedEvent().Event;
		}
		local function callback(arg1_3, arg2) -- Line 67
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.setRespawnBehaviour(arg1_3, arg2)
		end
		tbl.callback = callback
		module_2.RespawnBehaviourConnection = Roact_upvr.createElement(EventConnection_upvr, tbl)
		return Roact_upvr.createFragment(module_2)
	end
	local SettingsHub = require(RobloxGui_upvr.Modules.Settings.SettingsHub)
	local module = {}
	local tbl_3 = {
		event = SettingsHub.SettingsShowEvent.Event;
	}
	local function callback(arg1_4) -- Line 81
		--[[ Upvalues[3]:
			[1]: GetFFlagEnableInGameMenuDurationLogger_upvr (copied, readonly)
			[2]: PerfUtils_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if GetFFlagEnableInGameMenuDurationLogger_upvr() and arg1_4 then
			PerfUtils_upvr.menuOpenBegin()
		end
		arg1.props.setMenuOpen(arg1_4)
	end
	tbl_3.callback = callback
	module.MenuOpenChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_3)
	module.RespawnBehaviourConnection = Roact_upvr.createElement(EventConnection_upvr, {
		event = SettingsHub.RespawnBehaviourChangedEvent.Event;
		callback = function(arg1_5, arg2) -- Line 91, Named "callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.setRespawnBehaviour(arg1_5, arg2)
		end;
	})
	return Roact_upvr.createFragment(module)
end
local SetMenuOpen_upvr = require(Parent.Actions.SetMenuOpen)
local SetRespawnBehaviour_upvr = require(Parent.Actions.SetRespawnBehaviour)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 99, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetMenuOpen_upvr (readonly)
		[2]: SetRespawnBehaviour_upvr (readonly)
	]]
	return {
		setMenuOpen = function(arg1_6) -- Line 101, Named "setMenuOpen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetMenuOpen_upvr (copied, readonly)
			]]
			return arg1(SetMenuOpen_upvr(arg1_6))
		end;
		setRespawnBehaviour = function(arg1_7, arg2) -- Line 105
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetRespawnBehaviour_upvr (copied, readonly)
			]]
			return arg1(SetRespawnBehaviour_upvr(arg1_7, arg2))
		end or nil;
	}
end)(any_extend_result1)