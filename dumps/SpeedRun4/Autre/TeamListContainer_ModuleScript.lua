-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:01
-- Luau version 6, Types version 3
-- Time taken: 0.001265 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local useLeaderboardStore_upvr = require(CorePackages.Workspace.Packages.PlayerList).Hooks.useLeaderboardStore
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local LeaderboardStore_upvr = require(CorePackages.Workspace.Packages.LeaderboardStore)
local TeamListView_upvr = require(script.Parent.Parent.Parent.Components.PresentationCommon.TeamListView)
return React_upvr.memo(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 83, Named "mapStateToProps"
	return {
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
		isDirectionalPreferred = arg1.displayOptions.isTenFootInterface;
		playerIconInfo = arg1.playerIconInfo;
		playerRelationship = arg1.playerRelationship;
	}
end)(function(arg1) -- Line 43, Named "TeamListContainer"
	--[[ Upvalues[5]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: SignalsReact_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LeaderboardStore_upvr (readonly)
		[5]: TeamListView_upvr (readonly)
	]]
	local any_useSignalState_result1_upvr_2 = SignalsReact_upvr.useSignalState(useLeaderboardStore_upvr().getTeamList().getCount)
	local any_useSignalState_result1_upvr = SignalsReact_upvr.useSignalState(arg1.teamData.players.getCount)
	return React_upvr.createElement(TeamListView_upvr, {
		layoutOrder = SignalsReact_upvr.useSignalBinding(arg1.teamData.order);
		showTeamEntry = React_upvr.useMemo(function() -- Line 53
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: LeaderboardStore_upvr (copied, readonly)
				[3]: any_useSignalState_result1_upvr_2 (readonly)
				[4]: any_useSignalState_result1_upvr (readonly)
			]]
			if arg1.teamData.name(false) == LeaderboardStore_upvr.SpecialNeutralTeamName then
				if any_useSignalState_result1_upvr_2 == 1 then
					return false
				end
				if any_useSignalState_result1_upvr == 0 then
					return false
				end
			end
			return true
		end, {any_useSignalState_result1_upvr_2, any_useSignalState_result1_upvr, arg1.teamData.name});
		teamPlayersCount = any_useSignalState_result1_upvr;
		size = arg1.size;
		entrySizeX = arg1.entrySizeX;
		teamData = arg1.teamData;
		playerIconInfos = arg1.playerIconInfos;
		playerRelationships = arg1.playerRelationships;
		firstPlayerRef = arg1.firstPlayerRef;
		setDropDownPlayerDimensionY = arg1.setDropDownPlayerDimensionY;
		isSmallTouchDevice = arg1.isSmallTouchDevice;
		isDirectionalPreferred = arg1.isDirectionalPreferred;
	})
end))