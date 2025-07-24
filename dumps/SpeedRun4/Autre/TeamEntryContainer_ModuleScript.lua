-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:00
-- Luau version 6, Types version 3
-- Time taken: 0.001529 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local React_upvr = require(CorePackages.Packages.React)
local useLeaderboardStore_upvr = require(CorePackages.Workspace.Packages.PlayerList).Hooks.useLeaderboardStore
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local GameTranslator_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.GameTranslator)
local TeamEntryView_upvr = require(script.Parent.Parent.Parent.Components.PresentationCommon.TeamEntryView)
return React_upvr.memo(function(arg1) -- Line 41, Named "TeamEntryContainer"
	--[[ Upvalues[6]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: SignalsReact_upvr (readonly)
		[3]: GameTranslator_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: TeamEntryView_upvr (readonly)
	]]
	local any_getGameStatsList_result1 = useLeaderboardStore_upvr().getGameStatsList()
	local stats = arg1.teamData.stats
	return React_upvr.createElement(TeamEntryView_upvr, {
		teamName = SignalsReact_upvr.useSignalBinding(function(arg1_2) -- Line 47
			--[[ Upvalues[3]:
				[1]: GameTranslator_upvr (copied, readonly)
				[2]: CoreGui_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			return GameTranslator_upvr:TranslateGameText(CoreGui_upvr, arg1.teamData.name(arg1_2))
		end);
		teamColor = SignalsReact_upvr.useSignalState(arg1.teamData.color);
		gameStatsCount = SignalsReact_upvr.useSignalState(any_getGameStatsList_result1.getCount);
		teamStatsCount = SignalsReact_upvr.useSignalState(stats.getCount);
		gameStats = any_getGameStatsList_result1;
		teamStats = stats;
		size = arg1.size;
		entrySizeX = arg1.entrySizeX;
		layoutOrder = arg1.layoutOrder;
		isSmallTouchDevice = arg1.isSmallTouchDevice;
		isDirectionalPreferred = arg1.isDirectionalPreferred;
	})
end)