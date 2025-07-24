-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:21
-- Luau version 6, Types version 3
-- Time taken: 0.009137 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local playerInterface = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Interfaces.playerInterface)
local Parent = script.Parent
local Parent_2 = Parent.Parent.Parent
local GetFakeNeutralTeam_upvr = require(Parent_2.GetFakeNeutralTeam)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerListSorter")
function any_extend_result1.init(arg1) -- Line 22
	arg1.state = {
		sortedPlayers = {};
		playerKeys = {};
	}
end
local function _(arg1, arg2) -- Line 29, Named "playerInTeam"
	if arg2 == nil then
		if arg1.Team ~= nil then
		else
		end
		return true
	end
	if arg1.TeamColor ~= arg2.TeamColor then
	else
	end
	return true
end
local function getTeamScores_upvr(arg1, arg2, arg3, arg4) -- Line 36, Named "getTeamScores"
	local module = {}
	for _, v in ipairs(arg1) do
		local var41
		for _, v_2 in ipairs(arg2) do
			if arg4 == nil then
				if v_2.Team ~= nil then
					var41 = false
				else
					var41 = true
				end
			elseif v_2.TeamColor ~= arg4.TeamColor then
				var41 = false
			else
				var41 = true
			end
			if var41 then
				var41 = arg3[v_2.UserId][v.name]
				if type(var41) == "number" then
					module[v.name] = module[v.name] or 0
					module[v.name] += var41
				end
			end
		end
	end
	return module
end
local function buildTeamScores_upvr(arg1, arg2, arg3, arg4) -- Line 52, Named "buildTeamScores"
	--[[ Upvalues[2]:
		[1]: getTeamScores_upvr (readonly)
		[2]: GetFakeNeutralTeam_upvr (readonly)
	]]
	local module_3 = {}
	for _, v_3 in ipairs(arg2) do
		module_3[v_3] = getTeamScores_upvr(arg1, arg3, arg4, v_3)
	end
	module_3[GetFakeNeutralTeam_upvr] = getTeamScores_upvr(arg1, arg3, arg4, nil)
	return module_3
end
local function _(arg1) -- Line 61, Named "shouldShowNeutralTeam"
	for _, v_4 in ipairs(arg1) do
		if v_4.Team == nil then
			return true
		end
	end
	return false
end
local function buildSortedTeams_upvr(arg1, arg2, arg3, arg4) -- Line 70, Named "buildSortedTeams"
	--[[ Upvalues[1]:
		[1]: GetFakeNeutralTeam_upvr (readonly)
	]]
	local module_4 = {}
	local tbl = {}
	for i_5, v_5 in ipairs(arg3) do
		if tbl[v_5.TeamColor.Number] == nil then
			tbl[v_5.TeamColor.Number] = true
			module_4[#module_4 + 1] = {
				team = v_5;
				originalPos = v_5.ChildOrder;
			}
		end
	end
	if arg4 then
		local tbl_2 = {
			team = GetFakeNeutralTeam_upvr;
		}
		i_5 = #module_4
		tbl_2.originalPos = i_5 + 1
		module_4[#module_4 + 1] = tbl_2
	end
	table.sort(module_4, function(arg1_2, arg2_2) -- Line 90
		--[[ Upvalues[1]:
			[1]: GetFakeNeutralTeam_upvr (copied, readonly)
		]]
		local var65
		if var65 == GetFakeNeutralTeam_upvr then
			var65 = false
			return var65
		end
		var65 = arg2_2.team
		if var65 == GetFakeNeutralTeam_upvr then
			var65 = true
			return var65
		end
		if arg1_2.originalPos >= arg2_2.originalPos then
			var65 = false
		else
			var65 = true
		end
		return var65
	end)
	return module_4
end
any_extend_result1.validateProps = t.strictInterface({
	screenSizeY = t.number;
	entrySize = t.integer;
	players = t.array(playerInterface);
	teams = t.array(t.instanceIsA("Team"));
	playerTeam = t.map(t.integer, t.instanceIsA("Team"));
	playerKeys = t.strictInterface({
		keys = t.map(playerInterface, t.strictInterface({
			name = t.string;
			stat = t.union(t.number, t.string, t.none);
		}));
		primaryStat = t.optional(t.string);
	});
	playerStats = t.map(t.integer, t.map(t.string, t.any));
	gameStats = t.array(t.strictInterface({
		name = t.string;
		text = t.string;
		addId = t.integer;
		isPrimary = t.boolean;
		priority = t.number;
	}));
})
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local PlayerListDisplay_upvr = require(Parent.PlayerListDisplay)
function any_extend_result1.render(arg1) -- Line 131
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: buildTeamScores_upvr (readonly)
		[3]: buildSortedTeams_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: PlayerListDisplay_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local var76
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var76 = arg1.props.gameStats[1].name
		return var76
	end
	if not arg1.props.gameStats[1] or not INLINED() then
		var76 = nil
	end
	local sortedPlayers = arg1.state.sortedPlayers
	local any_isEmpty_result1 = Cryo_upvr.isEmpty(arg1.props.teams)
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [63] 40. Error Block 31 start (CF ANALYSIS FAILED)
	local tbl_3 = {}
	for _, v_6 in ipairs(sortedPlayers) do
		if v_6.TeamColor and arg1.props.playerTeam[v_6.UserId] ~= nil then
			if tbl_3[v_6.TeamColor.Number] then
				table.insert(tbl_3[v_6.TeamColor.Number], v_6)
			else
				tbl_3[v_6.TeamColor.Number] = {v_6}
			end
		end
	end
	do
		return Roact_upvr.createElement(PlayerListDisplay_upvr, {
			sortedPlayers = sortedPlayers;
			sortedTeams = buildSortedTeams_upvr(any_isEmpty_result1, var76, arg1.props.teams, false);
			teamColorToPlayerMap = tbl_3;
			teamScores = any_isEmpty_result1;
			screenSizeY = arg1.props.screenSizeY;
			entrySize = arg1.props.entrySize;
		})
	end
	-- KONSTANTERROR: [63] 40. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [149] 95. Error Block 20 start (CF ANALYSIS FAILED)
	do
		return Roact_upvr.createElement(PlayerListDisplay_upvr, {
			sortedPlayers = sortedPlayers;
			sortedTeams = nil;
			teamColorToPlayerMap = nil;
			teamScores = nil;
			screenSizeY = arg1.props.screenSizeY;
			entrySize = arg1.props.entrySize;
		})
	end
	-- KONSTANTERROR: [149] 95. Error Block 20 end (CF ANALYSIS FAILED)
end
any_extend_result1.getDerivedStateFromProps = require(Parent_2.PlayerSorting).getDerivedStateFromProps
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 178, Named "mapStateToProps"
	return {
		gameStats = arg1.gameStats;
		teams = arg1.teams;
		players = arg1.players;
		playerKeys = arg1.playerKeys;
		playerStats = arg1.playerStats;
		playerTeam = arg1.playerTeam;
	}
end, nil)(any_extend_result1)