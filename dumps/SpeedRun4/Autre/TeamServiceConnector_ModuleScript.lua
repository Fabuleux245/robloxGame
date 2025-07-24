-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:57
-- Luau version 6, Types version 3
-- Time taken: 0.004756 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("TeamServiceConnector")
function any_extend_result1.init(arg1) -- Line 21
	arg1.state = {
		teams = game:FindService("Teams");
	}
end
function any_extend_result1.didMount(arg1) -- Line 28
	if arg1.state.teams then
		for _, v in ipairs(arg1.state.teams:GetTeams()) do
			arg1.props.addTeam(v)
			for _, v_2 in ipairs(v:GetPlayers()) do
				arg1.props.addPlayerToTeam(v_2, v)
			end
		end
	end
end
local EventConnection_upvr = require(script.Parent.EventConnection)
function any_extend_result1.render(arg1) -- Line 39
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: EventConnection_upvr (readonly)
	]]
	local tbl_4 = {}
	local tbl_2 = {}
	local tbl_3 = {}
	for i_3, v_3_upvr in ipairs(arg1.props.teams) do
		local tbl_8 = {
			event = v_3_upvr.Changed;
		}
		local function callback(arg1_2) -- Line 47
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_3_upvr (readonly)
			]]
			if arg1_2 == "Name" then
				arg1.props.setTeamName(v_3_upvr)
			elseif arg1_2 == "TeamColor" then
				arg1.props.setTeamColor(v_3_upvr)
			end
		end
		tbl_8.callback = callback
		tbl_4[i_3] = Roact_upvr.createElement(EventConnection_upvr, tbl_8)
		local tbl_5 = {
			event = v_3_upvr.PlayerAdded;
		}
		local function callback(arg1_3) -- Line 58
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_3_upvr (readonly)
			]]
			arg1.props.addPlayerToTeam(arg1_3, v_3_upvr)
		end
		tbl_5.callback = callback
		tbl_2[i_3] = Roact_upvr.createElement(EventConnection_upvr, tbl_5)
		local tbl_6 = {
			event = v_3_upvr.PlayerRemoved;
		}
		local function callback(arg1_4) -- Line 65
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_3_upvr (readonly)
			]]
			arg1.props.removePlayerFromTeam(arg1_4, v_3_upvr)
		end
		tbl_6.callback = callback
		tbl_3[i_3] = Roact_upvr.createElement(EventConnection_upvr, tbl_6)
	end
	local teams = arg1.state.teams
	local module = {
		TeamChangedConnections = Roact_upvr.createFragment(tbl_4);
		PlayerAddedConnections = Roact_upvr.createFragment(tbl_2);
		PlayerRemovedConnections = Roact_upvr.createFragment(tbl_3);
	}
	local var32 = not teams
	if var32 then
		var32 = Roact_upvr.createElement
		local tbl_7 = {
			event = game.ChildAdded;
		}
		local function callback(arg1_5) -- Line 80
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_5:IsA("Teams") then
				local tbl = {}
				tbl.teams = arg1_5
				arg1:setState(tbl)
			end
		end
		tbl_7.callback = callback
		var32 = var32(EventConnection_upvr, tbl_7)
	end
	module.ServiceAddedConnection = var32
	var32 = teams
	local var35 = var32
	if var35 then
		var35 = Roact_upvr.createElement
		local tbl_9 = {
			event = teams.ChildAdded;
		}
		local function callback(arg1_6) -- Line 91
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_6:IsA("Team") then
				arg1.props.addTeam(arg1_6)
			end
		end
		tbl_9.callback = callback
		var35 = var35(EventConnection_upvr, tbl_9)
	end
	module.TeamAddedConnection = var35
	var35 = teams
	local var37 = var35
	if var37 then
		var37 = Roact_upvr.createElement
		var37 = var37(EventConnection_upvr, {
			event = teams.ChildRemoved;
			callback = function(arg1_7) -- Line 100, Named "callback"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1_7:IsA("Team") then
					arg1.props.removeTeam(arg1_7)
				end
			end;
		})
	end
	module.TeamRemovedConnection = var37
	return Roact_upvr.createFragment(module)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 109
	if arg1.props.teams ~= arg2.teams then
		for _, v_4 in ipairs(arg2.teams) do
			({})[v_4] = true
			local var55
		end
		for _, v_5 in ipairs(arg1.props.teams) do
			if not var55[v_5] then
				for _, v_6 in ipairs(v_5:GetPlayers()) do
					arg1.props.addPlayerToTeam(v_6, v_5)
				end
			end
		end
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 125
	if arg1.state.teams then
		for _, v_7 in ipairs(arg1.state.teams:GetTeams()) do
			arg1.props.removeTeam(v_7)
		end
	end
end
local SetTeamName_upvr = require(Parent.Actions.SetTeamName)
local SetTeamColor_upvr = require(Parent.Actions.SetTeamColor)
local AddPlayerToTeam_upvr = require(Parent.Actions.AddPlayerToTeam)
local RemovePlayerFromTeam_upvr = require(Parent.Actions.RemovePlayerFromTeam)
local AddTeam_upvr = require(Parent.Actions.AddTeam)
local RemoveTeam_upvr = require(Parent.Actions.RemoveTeam)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 133, Named "mapStateToProps"
	return {
		teams = arg1.teams;
	}
end, function(arg1) -- Line 139, Named "mapDispatchToProps"
	--[[ Upvalues[6]:
		[1]: SetTeamName_upvr (readonly)
		[2]: SetTeamColor_upvr (readonly)
		[3]: AddPlayerToTeam_upvr (readonly)
		[4]: RemovePlayerFromTeam_upvr (readonly)
		[5]: AddTeam_upvr (readonly)
		[6]: RemoveTeam_upvr (readonly)
	]]
	return {
		setTeamName = function(arg1_8) -- Line 141, Named "setTeamName"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetTeamName_upvr (copied, readonly)
			]]
			return arg1(SetTeamName_upvr(arg1_8, arg1_8.Name))
		end;
		setTeamColor = function(arg1_9) -- Line 145, Named "setTeamColor"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetTeamColor_upvr (copied, readonly)
			]]
			return arg1(SetTeamColor_upvr(arg1_9, arg1_9.TeamColor))
		end;
		addPlayerToTeam = function(arg1_10, arg2) -- Line 149, Named "addPlayerToTeam"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AddPlayerToTeam_upvr (copied, readonly)
			]]
			return arg1(AddPlayerToTeam_upvr(arg1_10, arg2))
		end;
		removePlayerFromTeam = function(arg1_11, arg2) -- Line 153, Named "removePlayerFromTeam"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RemovePlayerFromTeam_upvr (copied, readonly)
			]]
			return arg1(RemovePlayerFromTeam_upvr(arg1_11, arg2))
		end;
		addTeam = function(arg1_12) -- Line 157, Named "addTeam"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: AddTeam_upvr (copied, readonly)
			]]
			return arg1(AddTeam_upvr(arg1_12))
		end;
		removeTeam = function(arg1_13) -- Line 161, Named "removeTeam"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: RemoveTeam_upvr (copied, readonly)
			]]
			return arg1(RemoveTeam_upvr(arg1_13))
		end;
	}
end)(any_extend_result1)