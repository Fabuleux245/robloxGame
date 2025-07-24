-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:51
-- Luau version 6, Types version 3
-- Time taken: 0.002270 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("CoreGuiConnector")
function any_extend_result1.didMount(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	arg1.props.setPerformanceStatsVisible(UserGameSettings_upvr.PerformanceStatsVisible)
end
local EventConnection_upvr = require(script.Parent.EventConnection)
local any_GetBlockedStatusChangedEvent_result1_upvr = require(CorePackages.Workspace.Packages.BlockingUtility):GetBlockedStatusChangedEvent()
local Players_upvr = game:GetService("Players")
function any_extend_result1.render(arg1) -- Line 26
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
		[4]: any_GetBlockedStatusChangedEvent_result1_upvr (readonly)
		[5]: Players_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		event = UserGameSettings_upvr.PerformanceStatsVisibleChanged;
	}
	local function callback(arg1_2) -- Line 30
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setPerformanceStatsVisible(arg1_2)
	end
	tbl.callback = callback
	module.PerformanceStatsChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl)
	module.BlockedStatusChangedConnection = Roact_upvr.createElement(EventConnection_upvr, {
		event = any_GetBlockedStatusChangedEvent_result1_upvr;
		callback = function(arg1_3, arg2) -- Line 37, Named "callback"
			--[[ Upvalues[2]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1_3)
			if any_GetPlayerByUserId_result1 then
				arg1.props.setPlayerIsBlocked(any_GetPlayerByUserId_result1, arg2)
			end
		end;
	})
	return Roact_upvr.createFragment(module)
end
local SetPerformanceStatsVisible_upvr = require(Parent.Actions.SetPerformanceStatsVisible)
local SetPlayerIsBlocked_upvr = require(Parent.Actions.SetPlayerIsBlocked)
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 47, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: SetPerformanceStatsVisible_upvr (readonly)
		[2]: SetPlayerIsBlocked_upvr (readonly)
	]]
	return {
		setPerformanceStatsVisible = function(arg1_4) -- Line 49, Named "setPerformanceStatsVisible"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPerformanceStatsVisible_upvr (copied, readonly)
			]]
			return arg1(SetPerformanceStatsVisible_upvr(arg1_4))
		end;
		setPlayerIsBlocked = function(arg1_5, arg2) -- Line 53, Named "setPlayerIsBlocked"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerIsBlocked_upvr (copied, readonly)
			]]
			return arg1(SetPlayerIsBlocked_upvr(arg1_5, arg2))
		end;
	}
end)(any_extend_result1)