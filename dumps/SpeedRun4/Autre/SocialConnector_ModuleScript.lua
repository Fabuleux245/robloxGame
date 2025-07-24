-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:56
-- Luau version 6, Types version 3
-- Time taken: 0.001108 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SocialConnector")
function any_extend_result1.didMount(arg1) -- Line 17
	arg1.mounted = true
end
local EventConnection_upvr = require(script.Parent.EventConnection)
local Players_upvr = game:GetService("Players")
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		FriendStatusChangedConnection = Roact_upvr.createElement(EventConnection_upvr, {
			event = Players_upvr.LocalPlayer.FriendStatusChanged;
			callback = function(arg1_2, arg2) -- Line 25, Named "callback"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.props.setPlayerFriendStatus(arg1_2, arg2)
			end;
		});
	})
end
function any_extend_result1.willUnmount(arg1) -- Line 32
	arg1.mounted = false
end
local SetPlayerFriendStatus_upvr = require(script.Parent.Parent.Parent.Actions.SetPlayerFriendStatus)
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 36, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetPlayerFriendStatus_upvr (readonly)
	]]
	return {
		setPlayerFriendStatus = function(arg1_3, arg2) -- Line 38, Named "setPlayerFriendStatus"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerFriendStatus_upvr (copied, readonly)
			]]
			return arg1(SetPlayerFriendStatus_upvr(arg1_3, arg2))
		end;
	}
end)(any_extend_result1)