-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:07
-- Luau version 6, Types version 3
-- Time taken: 0.001451 seconds

local Players_upvr = game:GetService("Players")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendStatusConnector")
function any_extend_result1.init(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	arg1.state = {
		localPlayer = Players_upvr.LocalPlayer;
	}
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	local module = {}
	local tbl_2 = {
		event = Players_upvr.PlayerAdded;
	}
	local function callback(arg1_2) -- Line 25
		--[[ Upvalues[2]:
			[1]: Players_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 == Players_upvr.LocalPlayer then
			local tbl = {}
			tbl.localPlayer = arg1_2
			arg1:setState(tbl)
		else
			arg1.props.setFriendStatus(arg1_2.UserId, Enum.FriendStatus.Unknown)
		end
	end
	tbl_2.callback = callback
	module.PlayerAdded = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_2)
	local tbl_3 = {
		event = Players_upvr.PlayerRemoving;
	}
	local function callback(arg1_3) -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.setFriendStatus(arg1_3.UserId, nil)
	end
	tbl_3.callback = callback
	module.PlayerRemoving = Roact_upvr.createElement(ExternalEventConnection_upvr, tbl_3)
	if arg1.state.localPlayer then
		module.FriendStatusChanged = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = Players_upvr.LocalPlayer.FriendStatusChanged;
			callback = function(arg1_4, arg2) -- Line 47, Named "callback"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.props.setFriendStatus(arg1_4.UserId, arg2)
			end;
		})
	end
	return Roact_upvr.createFragment(module)
end
local SetFriendStatus_upvr = require(Parent.Actions.SetFriendStatus)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 56
	--[[ Upvalues[1]:
		[1]: SetFriendStatus_upvr (readonly)
	]]
	return {
		setFriendStatus = function(arg1_5, arg2) -- Line 58, Named "setFriendStatus"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetFriendStatus_upvr (copied, readonly)
			]]
			return arg1(SetFriendStatus_upvr(arg1_5, arg2))
		end;
	}
end)(any_extend_result1)