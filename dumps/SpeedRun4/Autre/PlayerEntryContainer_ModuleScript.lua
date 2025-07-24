-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:59
-- Luau version 6, Types version 3
-- Time taken: 0.002640 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent.Parent
local React_upvr = require(CorePackages.Packages.React)
local useLeaderboardStore_upvr = require(CorePackages.Workspace.Packages.PlayerList).Hooks.useLeaderboardStore
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local Signals_upvr = require(CorePackages.Packages.Signals)
local PlayerEntryView_upvr = require(Parent.Components.PresentationCommon.PlayerEntryView)
local ClosePlayerDropDown_upvr = require(Parent.Actions.ClosePlayerDropDown)
local OpenPlayerDropDown_upvr = require(Parent.Actions.OpenPlayerDropDown)
return React_upvr.memo(require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 92, Named "mapStateToProps"
	return {
		selectedPlayer = arg1.playerDropDown.selectedPlayer;
		dropdownOpen = arg1.playerDropDown.isVisible;
		isSmallTouchDevice = arg1.displayOptions.isSmallTouchDevice;
		isDirectionalPreferred = arg1.displayOptions.isTenFootInterface;
	}
end, function(arg1) -- Line 102, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: ClosePlayerDropDown_upvr (readonly)
		[2]: OpenPlayerDropDown_upvr (readonly)
	]]
	return {
		closeDropdown = function() -- Line 104, Named "closeDropdown"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ClosePlayerDropDown_upvr (copied, readonly)
			]]
			return arg1(ClosePlayerDropDown_upvr())
		end;
		openDropdown = function(arg1_3) -- Line 107, Named "openDropdown"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: OpenPlayerDropDown_upvr (copied, readonly)
			]]
			return arg1(OpenPlayerDropDown_upvr(arg1_3))
		end;
	}
end)(function(arg1) -- Line 54, Named "PlayerEntryContainer"
	--[[ Upvalues[5]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: SignalsReact_upvr (readonly)
		[3]: Signals_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: PlayerEntryView_upvr (readonly)
	]]
	local useLeaderboardStore_upvr_result1 = useLeaderboardStore_upvr()
	local any_getGameStatsList_result1 = useLeaderboardStore_upvr_result1.getGameStatsList()
	local any_getPlayerEntry_result1 = useLeaderboardStore_upvr_result1.getPlayerEntry(arg1.player, false)
	if any_getPlayerEntry_result1 then
		return React_upvr.createElement(PlayerEntryView_upvr, {
			playerData = any_getPlayerEntry_result1;
			gameStats = any_getGameStatsList_result1;
			gameStatsCount = SignalsReact_upvr.useSignalState(any_getGameStatsList_result1.getCount);
			size = arg1.size;
			entrySizeX = arg1.entrySizeX;
			layoutOrder = arg1.layoutOrder;
			player = arg1.player;
			titlePlayerEntry = arg1.titlePlayerEntry;
			teamPlayersCount = Signals_upvr.createComputed(function(arg1_2) -- Line 62
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.teamData then
					return arg1.teamData.players.getCount(arg1_2)
				end
				return 1
			end);
			playerIconInfo = arg1.playerIconInfo;
			playerRelationship = arg1.playerRelationship;
			dropdownOpen = arg1.dropdownOpen;
			selectedPlayer = arg1.selectedPlayer;
			firstPlayerRef = arg1.firstPlayerRef;
			openDropdown = arg1.openDropdown;
			closeDropdown = arg1.closeDropdown;
			setDropDownPlayerDimensionY = arg1.setDropDownPlayerDimensionY;
			isSmallTouchDevice = arg1.isSmallTouchDevice;
			isDirectionalPreferred = arg1.isDirectionalPreferred;
		})
	end
	return nil
end))