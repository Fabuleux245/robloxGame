-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:35
-- Luau version 6, Types version 3
-- Time taken: 0.002036 seconds

local FetchStatusRodux = script:FindFirstAncestor("FetchStatusRodux")
local FetchStatusNamespace_upvr = require(FetchStatusRodux.FetchStatusNamespace)
local RetrievalStatus_upvr = require(FetchStatusRodux.Parent.Http).Enum.RetrievalStatus
local function initializeFetchStatus_upvr() -- Line 9, Named "initializeFetchStatus"
	--[[ Upvalues[2]:
		[1]: FetchStatusNamespace_upvr (readonly)
		[2]: RetrievalStatus_upvr (readonly)
	]]
	return {
		[FetchStatusNamespace_upvr.GameSortToken] = {
			Games = RetrievalStatus_upvr.NotStarted;
			HomeGames = RetrievalStatus_upvr.NotStarted;
			GamesSeeAll = RetrievalStatus_upvr.NotStarted;
		};
		[FetchStatusNamespace_upvr.GameSorts] = {};
		[FetchStatusNamespace_upvr.OmniRecommendations] = {};
	}
end
local SetFetchStatus_upvr = require(FetchStatusRodux.SetFetchStatus)
return {
	key = "FetchStatusKey";
	reducer = function(arg1, arg2) -- Line 21
		--[[ Upvalues[2]:
			[1]: initializeFetchStatus_upvr (readonly)
			[2]: SetFetchStatus_upvr (readonly)
		]]
		local var9 = arg1
		if not var9 then
			var9 = initializeFetchStatus_upvr()
		end
		local var10 = var9
		if arg2.type == SetFetchStatus_upvr.name then
			assert(var10, "state should always exist, assert for linter")
			local fetchNamespace = arg2.fetchNamespace
			local fetchKey = arg2.fetchKey
			assert(fetchNamespace, "SetFetchStatus does not have a valid fetch namespace")
			assert(fetchKey, `SetFetchStatus does not have a valid fetch key for namespace {fetchNamespace}`)
			local var13 = var10[fetchNamespace]
			if not var13 then
				warn(`No namespace {fetchNamespace} defined in FetchStatusReducer for action`)
				return var10
			end
			assert(var13, "namespaceState should always exist, assert for linter")
			local clone = table.clone(var13)
			clone[fetchKey] = arg2.fetchStatus
			local clone_2 = table.clone(var10)
			clone_2[fetchNamespace] = clone
			return clone_2
		end
		return var10
	end;
}