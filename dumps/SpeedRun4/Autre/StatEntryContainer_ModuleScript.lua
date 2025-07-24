-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:00
-- Luau version 6, Types version 3
-- Time taken: 0.001195 seconds

local CorePackages = game:GetService("CorePackages")
local CoreGui_upvr = game:GetService("CoreGui")
local React_upvr = require(CorePackages.Packages.React)
local PlayerList = require(CorePackages.Workspace.Packages.PlayerList)
local useLeaderboardStore_upvr = PlayerList.Hooks.useLeaderboardStore
local GameTranslator_upvr = require(CoreGui_upvr:WaitForChild("RobloxGui").Modules.GameTranslator)
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local Signals_upvr = require(CorePackages.Packages.Signals)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local StatEntryView_upvr = PlayerList.Presentation.StatEntryView
return React_upvr.memo(function(arg1) -- Line 43, Named "StatEntryContainer"
	--[[ Upvalues[8]:
		[1]: useLeaderboardStore_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GameTranslator_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
		[5]: SignalsReact_upvr (readonly)
		[6]: Signals_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: StatEntryView_upvr (readonly)
	]]
	local any_getData_result1_upvr = useLeaderboardStore_upvr().getGameStatsList().getData(arg1.statName, false)
	return React_upvr.createElement(StatEntryView_upvr, Cryo_upvr.Dictionary.join({
		statName = React_upvr.useMemo(function() -- Line 48
			--[[ Upvalues[3]:
				[1]: GameTranslator_upvr (copied, readonly)
				[2]: CoreGui_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			return GameTranslator_upvr:TranslateGameText(CoreGui_upvr, arg1.statName)
		end, {arg1.statName});
		statValue = SignalsReact_upvr.useSignalBinding(Signals_upvr.createComputed(function(arg1_2) -- Line 52
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.stat then
				return arg1.stat(arg1_2)
			end
			return '-'
		end));
		layoutOrder = SignalsReact_upvr.useSignalBinding(Signals_upvr.createComputed(function(arg1_3) -- Line 55
			--[[ Upvalues[1]:
				[1]: any_getData_result1_upvr (readonly)
			]]
			if any_getData_result1_upvr then
				return any_getData_result1_upvr.order(arg1_3)
			end
			return math.huge
		end));
	}, arg1))
end)