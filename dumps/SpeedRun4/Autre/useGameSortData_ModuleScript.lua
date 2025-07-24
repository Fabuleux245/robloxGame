-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:09
-- Luau version 6, Types version 3
-- Time taken: 0.003843 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local FetchStatusRodux = require(Parent.FetchStatusRodux)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local TopicInfosReducer_upvr = require(Parent.TopicInfosRodux).TopicInfosReducer
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local any_memoize_result1_upvr = require(Parent.AppCommonLib).memoize(function(arg1) -- Line 32
	if arg1 and arg1.sorts then
		for i, v in ipairs(arg1.sorts) do
			if v.topicId then
				({})[tostring(v.topicId)] = i
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end)
local GameSortGroups_upvr = require(Parent.DiscoveryTypes).GameSortGroups
local TopicContentsReducer_upvr = require(Parent.TopicContentsRodux).TopicContentsReducer
local FetchStatusNamespace_upvr = FetchStatusRodux.FetchStatusNamespace
local FetchStatusReducer_upvr = FetchStatusRodux.FetchStatusReducer
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local tutils_upvr = require(Parent.tutils)
return function(arg1, arg2) -- Line 47, Named "useGameSortData"
	--[[ Upvalues[10]:
		[1]: useSelector_upvr (readonly)
		[2]: TopicInfosReducer_upvr (readonly)
		[3]: AppPage_upvr (readonly)
		[4]: any_memoize_result1_upvr (readonly)
		[5]: GameSortGroups_upvr (readonly)
		[6]: TopicContentsReducer_upvr (readonly)
		[7]: FetchStatusNamespace_upvr (readonly)
		[8]: FetchStatusReducer_upvr (readonly)
		[9]: RetrievalStatus_upvr (readonly)
		[10]: tutils_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1_2) -- Line 48
		--[[ Upvalues[10]:
			[1]: TopicInfosReducer_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: AppPage_upvr (copied, readonly)
			[5]: any_memoize_result1_upvr (copied, readonly)
			[6]: GameSortGroups_upvr (copied, readonly)
			[7]: TopicContentsReducer_upvr (copied, readonly)
			[8]: FetchStatusNamespace_upvr (copied, readonly)
			[9]: FetchStatusReducer_upvr (copied, readonly)
			[10]: RetrievalStatus_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var29 = false
		local var30 = false
		local var31
		local var32
		local var34
		if arg1_2.Personalization[TopicInfosReducer_upvr.key][arg1] ~= nil then
			local var35
			if var35 then
				var35 = arg2
				var34 = AppPage_upvr
				if var35 == var34.Home then
					var34 = arg2
					var35 = arg1_2.OmniRecommendations[var34]
					var34 = var35
					var34 = any_memoize_result1_upvr(var34)[arg1]
					if var34 then
						var29 = true
						var30 = true
						var31 = var34
						-- KONSTANTWARNING: GOTO [67] #53
					end
					-- KONSTANTWARNING: GOTO [67] #53
				end
			else
				var29 = true
				var35 = nil
				var34 = AppPage_upvr.Games
				if arg2 == var34 then
					var35 = GameSortGroups_upvr.Games
				else
					var34 = AppPage_upvr.Home
					if arg2 == var34 then
						var35 = GameSortGroups_upvr.HomeGames
					end
				end
				if var35 then
					var34 = arg1_2.GameSortGroups
					var32 = var34[var35].pageId
				else
					var32 = nil
				end
			end
		end
		var34 = arg1_2.Personalization
		var34 = arg1
		var34 = arg1_2.Personalization[TopicInfosReducer_upvr.key]
		var34 = nil
		if var30 then
			var34 = FetchStatusNamespace_upvr.OmniRecommendations
		else
			var34 = FetchStatusNamespace_upvr.GameSorts
		end
		local module_2 = {
			sortIndex = var31;
			isOmni = var30;
			gameSortDataFound = var29;
			gamesApiSortPageId = var32;
			sort = var34[arg1];
			gameSortContents = var34[TopicContentsReducer_upvr.key][var34];
		}
		local var37 = arg1_2.Personalization[FetchStatusReducer_upvr.key][var34][arg1]
		if not var37 then
			var37 = RetrievalStatus_upvr.NotStarted
		end
		module_2.gameSortFetchingStatus = var37
		return module_2
	end, tutils_upvr.shallowEqual)
end