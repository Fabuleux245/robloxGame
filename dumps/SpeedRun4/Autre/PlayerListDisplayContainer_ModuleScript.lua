-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:59
-- Luau version 6, Types version 3
-- Time taken: 0.002449 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent.Parent
local React_upvr = require(CorePackages.Packages.React)
local useLeaderboardStore_upvr = require(CorePackages.Workspace.Packages.PlayerList).Hooks.useLeaderboardStore
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local PlayerListDisplayView_upvr = require(Parent.Components.PresentationCommon.PlayerListDisplayView)
local function PlayerListDisplayContainer_upvr(arg1) -- Line 45, Named "PlayerListDisplayContainer"
	--[[ Upvalues[4]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: SignalsReact_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PlayerListDisplayView_upvr (readonly)
	]]
	local useLeaderboardStore_upvr_result1 = useLeaderboardStore_upvr()
	local any_getTeamList_result1 = useLeaderboardStore_upvr_result1.getTeamList()
	if useLeaderboardStore_upvr_result1 then
		return React_upvr.createElement(React_upvr.Fragment, nil, React_upvr.createElement(PlayerListDisplayView_upvr, {
			teamList = any_getTeamList_result1;
			teamListCount = SignalsReact_upvr.useSignalState(any_getTeamList_result1.getCount);
			gameStatsCount = SignalsReact_upvr.useSignalState(useLeaderboardStore_upvr_result1.getGameStatsList().getCount);
			entrySizeX = arg1.entrySize;
			screenSizeY = arg1.screenSizeY;
			playerIconInfo = arg1.playerIconInfo;
			playerRelationship = arg1.playerRelationship;
			dropDownPlayer = arg1.dropDownPlayer;
			dropDownVisible = arg1.dropDownVisible;
			dismissPlayerList = arg1.dismissPlayerList;
			isVisible = arg1.isVisible;
			isMinimized = arg1.isMinimized;
			isSmallTouchDevice = arg1.isSmallTouchDevice;
			isDirectionalPreferred = arg1.isDirectionalPreferred;
			isUsingGamepad = arg1.isUsingGamepad;
		}))
	end
	return nil
end
local SetPlayerListVisibility_upvr = require(Parent.Actions.SetPlayerListVisibility)
return React_upvr.memo(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 92, Named "mapStateToProps"
	return {
		isVisible = arg1.displayOptions.isVisible;
		isMinimized = arg1.displayOptions.isMinimized;
		isDirectionalPreferred = arg1.displayOptions.isTenFootInterface;
		isUsingGamepad = arg1.displayOptions.isUsingGamepad;
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
		playerIconInfo = arg1.playerIconInfo;
		playerRelationship = arg1.playerRelationship;
		dropDownPlayer = arg1.playerDropDown.selectedPlayer;
		dropDownVisible = arg1.playerDropDown.isVisible;
	}
end, function(arg1) -- Line 84, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetPlayerListVisibility_upvr (readonly)
	]]
	return {
		dismissPlayerList = function() -- Line 86, Named "dismissPlayerList"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPlayerListVisibility_upvr (copied, readonly)
			]]
			return arg1(SetPlayerListVisibility_upvr(false))
		end;
	}
end)(function(arg1) -- Line 76, Named "PlayerListDisplayContainerWithLeaderboardStore"
	--[[ Upvalues[2]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: PlayerListDisplayContainer_upvr (readonly)
	]]
	if useLeaderboardStore_upvr() then
		return PlayerListDisplayContainer_upvr(arg1)
	end
	return nil
end))