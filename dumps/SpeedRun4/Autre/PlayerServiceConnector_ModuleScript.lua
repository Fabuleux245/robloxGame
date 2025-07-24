-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:55
-- Luau version 6, Types version 3
-- Time taken: 0.002673 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerServiceConnector")
function any_extend_result1.didMount(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v in ipairs(Players_upvr:GetPlayers()) do
		arg1.props.addPlayer(v)
		arg1.props.makePlayerInfoRequests(v)
	end
end
local EventConnection_upvr = require(script.Parent.EventConnection)
function any_extend_result1.render(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		event = Players_upvr.PlayerAdded;
	}
	local function callback(arg1_2) -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.addPlayer(arg1_2)
		arg1.props.makePlayerInfoRequests(arg1_2)
	end
	tbl.callback = callback
	module.PlayerAddedConnection = Roact_upvr.createElement(EventConnection_upvr, tbl)
	module.PlayerRemovingConnection = Roact_upvr.createElement(EventConnection_upvr, {
		event = Players_upvr.PlayerRemoving;
		callback = function(arg1_3) -- Line 39, Named "callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.removePlayer(arg1_3)
		end;
	})
	return Roact_upvr.createFragment(module)
end
function any_extend_result1.willUnmount(arg1) -- Line 46
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v_2 in ipairs(Players_upvr:GetPlayers()) do
		arg1.props.removePlayer(v_2)
	end
end
local AddPlayer_upvr = require(Parent.Actions.AddPlayer)
local MakePlayerInfoRequests_upvr = require(Parent.Thunks.MakePlayerInfoRequests)
local RemovePlayer_upvr = require(Parent.Actions.RemovePlayer)
return require(CorePackages.Packages.RoactRodux).connect(nil, function(arg1) -- Line 53, Named "mapDispatchToProps"
	--[[ Upvalues[3]:
		[1]: AddPlayer_upvr (readonly)
		[2]: MakePlayerInfoRequests_upvr (readonly)
		[3]: RemovePlayer_upvr (readonly)
	]]
	return {
		addPlayer = function(arg1_4) -- Line 55, Named "addPlayer"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AddPlayer_upvr (copied, readonly)
			]]
			return arg1(AddPlayer_upvr(arg1_4))
		end;
		makePlayerInfoRequests = function(arg1_5) -- Line 59, Named "makePlayerInfoRequests"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: MakePlayerInfoRequests_upvr (copied, readonly)
			]]
			return arg1(MakePlayerInfoRequests_upvr(arg1_5))
		end;
		removePlayer = function(arg1_6) -- Line 63, Named "removePlayer"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RemovePlayer_upvr (copied, readonly)
			]]
			return arg1(RemovePlayer_upvr(arg1_6))
		end;
	}
end)(any_extend_result1)