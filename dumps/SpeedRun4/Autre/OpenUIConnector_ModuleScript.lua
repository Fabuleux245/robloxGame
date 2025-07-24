-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:17
-- Luau version 6, Types version 3
-- Time taken: 0.002123 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local BackpackScript_upvr = require(RobloxGui.Modules.BackpackScript)
local EmotesMenuMaster_upvr = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local PlayerListManager_upvr = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local any_extend_result1 = Roact_upvr.PureComponent:extend("OpenUIConnector")
any_extend_result1.validateProps = t.strictInterface({
	setBackpackOpen = t.callback;
	setEmotesOpen = t.callback;
	setLeaderboardOpen = t.callback;
	setEmotesEnabled = t.callback;
})
function any_extend_result1.didMount(arg1) -- Line 33
	--[[ Upvalues[3]:
		[1]: PlayerListManager_upvr (readonly)
		[2]: BackpackScript_upvr (readonly)
		[3]: EmotesMenuMaster_upvr (readonly)
	]]
	arg1.props.setLeaderboardOpen(PlayerListManager_upvr:GetSetVisible())
	arg1.props.setBackpackOpen(BackpackScript_upvr.IsOpen)
	arg1.props.setEmotesOpen(EmotesMenuMaster_upvr:isOpen())
	arg1.props.setEmotesEnabled(EmotesMenuMaster_upvr.MenuIsVisible)
end
local EventConnection_upvr = require(Parent.Parent.Common.EventConnection)
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[5]:
		[1]: PlayerListManager_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EventConnection_upvr (readonly)
		[4]: BackpackScript_upvr (readonly)
		[5]: EmotesMenuMaster_upvr (readonly)
	]]
	local module = {}
	local tbl_3 = {
		event = PlayerListManager_upvr:GetSetVisibleChangedEvent().Event;
	}
	local function callback(arg1_2) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setLeaderboardOpen(arg1_2)
	end
	tbl_3.callback = callback
	module.LeaderboardOpenChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_3)
	local tbl = {
		event = BackpackScript_upvr.StateChanged.Event;
	}
	local function callback(arg1_3) -- Line 54
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setBackpackOpen(arg1_3)
	end
	tbl.callback = callback
	module.BackpackOpenChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl)
	local tbl_2 = {
		event = EmotesMenuMaster_upvr.EmotesMenuToggled.Event;
	}
	local function callback(arg1_4) -- Line 61
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setEmotesOpen(arg1_4)
	end
	tbl_2.callback = callback
	module.EmotesOpenChangedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl_2)
	module.EmotesEnabledChangedConnection = Roact_upvr.createElement(EventConnection_upvr, {
		event = EmotesMenuMaster_upvr.MenuVisibilityChanged.Event;
		callback = function(arg1_5) -- Line 68, Named "callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.setEmotesEnabled(arg1_5)
		end;
	})
	return Roact_upvr.createFragment(module)
end
local SetBackpackOpen_upvr = require(Parent.Actions.SetBackpackOpen)
local SetEmotesOpen_upvr = require(Parent.Actions.SetEmotesOpen)
local SetLeaderboardOpen_upvr = require(Parent.Actions.SetLeaderboardOpen)
local SetEmotesEnabled_upvr = require(Parent.Actions.SetEmotesEnabled)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(nil, function(arg1) -- Line 75, Named "mapDispatchToProps"
	--[[ Upvalues[4]:
		[1]: SetBackpackOpen_upvr (readonly)
		[2]: SetEmotesOpen_upvr (readonly)
		[3]: SetLeaderboardOpen_upvr (readonly)
		[4]: SetEmotesEnabled_upvr (readonly)
	]]
	return {
		setBackpackOpen = function(arg1_6) -- Line 77, Named "setBackpackOpen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetBackpackOpen_upvr (copied, readonly)
			]]
			return arg1(SetBackpackOpen_upvr(arg1_6))
		end;
		setEmotesOpen = function(arg1_7) -- Line 81, Named "setEmotesOpen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetEmotesOpen_upvr (copied, readonly)
			]]
			return arg1(SetEmotesOpen_upvr(arg1_7))
		end;
		setLeaderboardOpen = function(arg1_8) -- Line 85, Named "setLeaderboardOpen"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetLeaderboardOpen_upvr (copied, readonly)
			]]
			return arg1(SetLeaderboardOpen_upvr(arg1_8))
		end;
		setEmotesEnabled = function(arg1_9) -- Line 89, Named "setEmotesEnabled"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetEmotesEnabled_upvr (copied, readonly)
			]]
			return arg1(SetEmotesEnabled_upvr(arg1_9))
		end;
	}
end)(any_extend_result1)