-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:15
-- Luau version 6, Types version 3
-- Time taken: 0.021416 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local module_4 = {}
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local setTimeout_upvr = LuauPolyfill.setTimeout
local Promise_upvr = require(Parent.Promise)
local invariant_upvr = require(Parent_2.jsutils.invariant).invariant
local equal_upvr = require(Parent_2.jsutils.equal)
local networkStatus = require(script.Parent.networkStatus)
local NetworkStatus_upvr = networkStatus.NetworkStatus
local isNetworkRequestInFlight_upvr = networkStatus.isNetworkRequestInFlight
local utilities = require(script.Parent.Parent.utilities)
local Observable_upvr = utilities.Observable
local setmetatable_result1_upvr = setmetatable({}, {
	__index = Observable_upvr;
})
function setmetatable_result1_upvr.__index(arg1, arg2) -- Line 89
	--[[ Upvalues[1]:
		[1]: setmetatable_result1_upvr (readonly)
	]]
	if arg2 == "variables" then
		return arg1.options.variables
	end
	if rawget(arg1, arg2) then
		return rawget(arg1, arg2)
	end
	if rawget(setmetatable_result1_upvr, arg2) then
		return rawget(setmetatable_result1_upvr, arg2)
	end
	return getmetatable(setmetatable_result1_upvr).__index[arg2]
end
function setmetatable_result1_upvr.__newindex(arg1, arg2, arg3) -- Line 103
	if arg2 == "variables" then
		error("setting getter-only property 'variables'")
	end
	rawset(arg1, arg2, arg3)
end
local defaultSubscriptionObserverErrorCallback_upvw
local Set_upvr = LuauPolyfill.Set
local iterateObserversSafely_upvr = utilities.iterateObserversSafely
local getOperationDefinition_upvr = utilities.getOperationDefinition
function setmetatable_result1_upvr.new(arg1) -- Line 110
	--[[ Upvalues[9]:
		[1]: Observable_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: defaultSubscriptionObserverErrorCallback_upvw (read and write)
		[4]: setmetatable_result1_upvr (readonly)
		[5]: Set_upvr (readonly)
		[6]: iterateObserversSafely_upvr (readonly)
		[7]: Object_upvr (readonly)
		[8]: NetworkStatus_upvr (readonly)
		[9]: getOperationDefinition_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local queryManager_2 = arg1.queryManager
	local options = arg1.options
	local var27_upvw
	var27_upvw = setmetatable(Observable_upvr.new(function(arg1_2) -- Line 120
		--[[ Upvalues[3]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: defaultSubscriptionObserverErrorCallback_upvw (copied, read and write)
			[3]: var27_upvw (read and write)
		]]
		xpcall(function() -- Line 123
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: defaultSubscriptionObserverErrorCallback_upvw (copied, read and write)
			]]
			local _observer = arg1_2._subscription._observer
			if Boolean_upvr.toJSBoolean(_observer) and not Boolean_upvr.toJSBoolean(_observer.error) then
				_observer.error = defaultSubscriptionObserverErrorCallback_upvw
			end
		end, function() -- Line 128
		end)
		var27_upvw.observers:add(arg1_2)
		if Boolean_upvr.toJSBoolean(var27_upvw.lastError) then
			if Boolean_upvr.toJSBoolean(arg1_2.error) then
				arg1_2:error(var27_upvw.lastError)
				-- KONSTANTWARNING: GOTO [68] #51
			end
		elseif Boolean_upvr.toJSBoolean(var27_upvw.lastResult) and Boolean_upvr.toJSBoolean(arg1_2.next) then
			arg1_2:next(var27_upvw.lastResult)
		end
		if not Boolean_upvr.toJSBoolean(var27_upvw.observers.size) then
			var27_upvw:reobserve():catch(function() -- Line 151
			end)
		end
		return function() -- Line 154
			--[[ Upvalues[3]:
				[1]: var27_upvw (copied, read and write)
				[2]: arg1_2 (readonly)
				[3]: Boolean_upvr (copied, readonly)
			]]
			if var27_upvw.observers:delete(arg1_2) and not Boolean_upvr.toJSBoolean(var27_upvw.observers.size) then
				var27_upvw:tearDownQuery()
			end
		end
	end), setmetatable_result1_upvr)
	local var33_upvw = var27_upvw
	var33_upvw.observers = Set_upvr.new()
	var33_upvw.subscriptions = Set_upvr.new()
	local tbl_3 = {}
	local function next(arg1_3, arg2) -- Line 167
		--[[ Upvalues[3]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: var33_upvw (read and write)
			[3]: iterateObserversSafely_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean(var33_upvw.lastError) or var33_upvw:isDifferentFromLastResult(arg2) then
			var33_upvw:updateLastResult(arg2)
			iterateObserversSafely_upvr(var33_upvw.observers, "next", arg2)
		end
	end
	tbl_3.next = next
	function tbl_3.error(arg1_4, arg2) -- Line 173
		--[[ Upvalues[4]:
			[1]: var33_upvw (read and write)
			[2]: Object_upvr (copied, readonly)
			[3]: NetworkStatus_upvr (copied, readonly)
			[4]: iterateObserversSafely_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.error = arg2
		tbl.errors = arg2.graphQLErrors
		tbl.networkStatus = NetworkStatus_upvr.error
		tbl.loading = false
		var33_upvw:updateLastResult(Object_upvr.assign({}, var33_upvw.lastResult, tbl))
		var33_upvw.lastError = arg2
		iterateObserversSafely_upvr(var33_upvw.observers, "error", var33_upvw.lastError)
	end
	var33_upvw.observer = tbl_3
	var33_upvw.isTornDown = false
	var33_upvw.options = options
	var33_upvw.queryId = queryManager_2:generateQueryId()
	local getOperationDefinition_upvr_result1 = getOperationDefinition_upvr(options.query)
	local var38
	if not var38 then
		var33_upvw.queryName = getOperationDefinition_upvr_result1
		-- KONSTANTWARNING: GOTO [92] #65
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 54. Error Block 19 start (CF ANALYSIS FAILED)
	var38 = Boolean_upvr.toJSBoolean(getOperationDefinition_upvr_result1.name)
	if not var38 then
		var38 = getOperationDefinition_upvr_result1.name
		var33_upvw.queryName = var38
	else
		var38 = getOperationDefinition_upvr_result1.name.value
		var33_upvw.queryName = var38
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var38 = options.fetchPolicy
		return var38
	end
	if not Boolean_upvr.toJSBoolean(options.fetchPolicy) or not INLINED() then
		var38 = "cache-first"
	end
	var33_upvw.initialFetchPolicy = var38
	var33_upvw.queryManager = queryManager_2
	var33_upvw.queryInfo = arg1.queryInfo
	do
		return var33_upvw
	end
	-- KONSTANTERROR: [74] 54. Error Block 19 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_upvr.result(arg1) -- Line 215
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: setTimeout_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_5, arg2) -- Line 216
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: setTimeout_upvr (copied, readonly)
		]]
		local tbl_5 = {}
		local var41_upvw
		local var42_upvw
		local function next(arg1_6, arg2_2) -- Line 225
			--[[ Upvalues[6]:
				[1]: arg1_5 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: var41_upvw (read and write)
				[4]: Boolean_upvr (copied, readonly)
				[5]: setTimeout_upvr (copied, readonly)
				[6]: var42_upvw (read and write)
			]]
			arg1_5(arg2_2)
			arg1.observers:delete(var41_upvw)
			if not Boolean_upvr.toJSBoolean(arg1.observers.size) then
				arg1.queryManager:removeQuery(arg1.queryId)
			end
			setTimeout_upvr(function() -- Line 242
				--[[ Upvalues[1]:
					[1]: var42_upvw (copied, read and write)
				]]
				var42_upvw:unsubscribe()
			end, 0)
		end
		tbl_5.next = next
		function tbl_5.error(arg1_7, arg2_3) -- Line 246
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2(arg2_3)
		end
		var41_upvw = tbl_5
		var42_upvw = arg1:subscribe(var41_upvw)
	end)
end
local ApolloError_upvr = require(script.Parent.Parent.errors).ApolloError
function setmetatable_result1_upvr.getCurrentResult(arg1, arg2) -- Line 255
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: NetworkStatus_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: isNetworkRequestInFlight_upvr (readonly)
		[5]: ApolloError_upvr (readonly)
	]]
	if arg2 == nil then
	end
	local lastResult = arg1.lastResult
	if arg1.options.fetchPolicy == nil then
		local const_string = "cache-first"
	else
	end
	local var48
	if Boolean_upvr.toJSBoolean(arg1.queryInfo.networkStatus) then
		var48 = arg1.queryInfo.networkStatus
	elseif Boolean_upvr.toJSBoolean(lastResult) and Boolean_upvr.toJSBoolean(lastResult.networkStatus) then
		var48 = lastResult.networkStatus
	else
		var48 = NetworkStatus_upvr.ready
	end
	local any_assign_result1 = Object_upvr.assign({}, lastResult, {
		loading = isNetworkRequestInFlight_upvr(var48);
		networkStatus = var48;
	})
	if not arg1.queryManager:transform(arg1.options.query).hasForcedResolvers then
		local any_getDiff_result1 = arg1.queryInfo:getDiff()
		if Boolean_upvr.toJSBoolean(any_getDiff_result1.complete) or Boolean_upvr.toJSBoolean(arg1.options.returnPartialData) then
			any_assign_result1.data = any_getDiff_result1.result
		else
			any_assign_result1.data = nil
		end
		if Boolean_upvr.toJSBoolean(any_getDiff_result1.complete) then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				return arg1.options.fetchPolicy == "cache-only"
			end
			if any_assign_result1.networkStatus == NetworkStatus_upvr.loading and (arg1.options.fetchPolicy == "cache-first" or INLINED_2()) then
				any_assign_result1.networkStatus = NetworkStatus_upvr.ready
				any_assign_result1.loading = false
			end
			any_assign_result1.partial = nil
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if arg1.options.fetchPolicy ~= "no-cache" then
				any_assign_result1.partial = true
			end
		end
		if not Boolean_upvr.toJSBoolean(any_getDiff_result1.complete) and not Boolean_upvr.toJSBoolean(arg1.options.partialRefetch) and not Boolean_upvr.toJSBoolean(any_assign_result1.loading) and not Boolean_upvr.toJSBoolean(any_assign_result1.data) and not Boolean_upvr.toJSBoolean(any_assign_result1.error) then
			any_assign_result1.error = ApolloError_upvr.new({
				clientErrors = any_getDiff_result1.missing;
			})
		end
	end
	if true then
		arg1:updateLastResult(any_assign_result1)
	end
	return any_assign_result1
end
function setmetatable_result1_upvr.isDifferentFromLastResult(arg1, arg2) -- Line 335
	--[[ Upvalues[1]:
		[1]: equal_upvr (readonly)
	]]
	return not equal_upvr(arg1.lastResultSnapshot, arg2)
end
function setmetatable_result1_upvr.getLastResult(arg1) -- Line 341
	return arg1.lastResult
end
function setmetatable_result1_upvr.getLastError(arg1) -- Line 345
	return arg1.lastError
end
function setmetatable_result1_upvr.resetLastResults(arg1) -- Line 349
	arg1.lastResult = nil
	arg1.lastResultSnapshot = nil
	arg1.lastError = nil
	arg1.isTornDown = false
end
function setmetatable_result1_upvr.resetQueryStoreErrors(arg1) -- Line 356
	arg1.queryManager:resetErrors(arg1.queryId)
end
function setmetatable_result1_upvr.refetch(arg1, arg2) -- Line 367
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: equal_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: NetworkStatus_upvr (readonly)
	]]
	local module_3 = {
		pollInterval = 0;
	}
	local fetchPolicy = arg1.options.fetchPolicy
	if fetchPolicy == "no-cache" then
		module_3.fetchPolicy = "no-cache"
	elseif fetchPolicy ~= "cache-and-network" then
		module_3.fetchPolicy = "network-only"
	end
	if Boolean_upvr.toJSBoolean(arg2) and not equal_upvr(arg1.options.variables, arg2) then
		arg1.options.variables = Object_upvr.assign({}, arg1.options.variables, arg2)
		module_3.variables = arg1.options.variables
	end
	arg1.queryInfo:resetLastWrite()
	return arg1:reobserve(module_3, NetworkStatus_upvr.refetch)
end
local var55_upvw = false
function setmetatable_result1_upvr.fetchMore(arg1, arg2) -- Line 393
	--[[ Upvalues[5]:
		[1]: Object_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: NetworkStatus_upvr (readonly)
		[4]: var55_upvw (read and write)
		[5]: invariant_upvr (readonly)
	]]
	local any_assign_result1_upvr = Object_upvr.assign({}, (function() -- Line 398
		--[[ Upvalues[4]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: Object_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if Boolean_upvr.toJSBoolean(arg2.query) then
			return arg2
		end
		return Object_upvr.assign({}, arg1.options, arg2, {
			variables = Object_upvr.assign({}, arg1.options.variables, arg2.variables);
		})
	end)(), {
		fetchPolicy = "no-cache";
	})
	local any_generateQueryId_result1_upvr = arg1.queryManager:generateQueryId()
	if Boolean_upvr.toJSBoolean(any_assign_result1_upvr.notifyOnNetworkStatusChange) then
		arg1.queryInfo.networkStatus = NetworkStatus_upvr.fetchMore
		arg1:observe()
	end
	return arg1.queryManager:fetchQuery(any_generateQueryId_result1_upvr, any_assign_result1_upvr, NetworkStatus_upvr.fetchMore):andThen(function(arg1_8) -- Line 431
		--[[ Upvalues[6]:
			[1]: arg2 (readonly)
			[2]: Boolean_upvr (copied, readonly)
			[3]: var55_upvw (copied, read and write)
			[4]: invariant_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: any_assign_result1_upvr (readonly)
		]]
		local data_upvr = arg1_8.data
		local updateQuery_2_upvr = arg2.updateQuery
		if Boolean_upvr.toJSBoolean(updateQuery_2_upvr) then
			if _G.__DEV__ and (not var55_upvw or not _G.__WARNED_ABOUT_OBSERVABLE_QUERY_UPDATE_QUERY__) then
				invariant_upvr.warn("The updateQuery callback for fetchMore is deprecated, and will be removed\nin the next major version of Apollo Client.\n\nPlease convert updateQuery functions to field policies with appropriate\nread and merge functions, or use/adapt a helper function (such as\nconcatPagination, offsetLimitPagination, or relayStylePagination) from\n@apollo/client/utilities.\n\nThe field policy system handles pagination more effectively than a\nhand-written updateQuery function, and you only need to define the policy\nonce, rather than every time you call fetchMore.")
				var55_upvw = true
				_G.__WARNED_ABOUT_OBSERVABLE_QUERY_UPDATE_QUERY__ = var55_upvw
			end
			arg1:updateQuery(function(arg1_9) -- Line 456
				--[[ Upvalues[4]:
					[1]: updateQuery_2_upvr (readonly)
					[2]: arg2 (copied, readonly)
					[3]: data_upvr (readonly)
					[4]: any_assign_result1_upvr (copied, readonly)
				]]
				return updateQuery_2_upvr(arg2, arg1_9, {
					fetchMoreResult = data_upvr;
					variables = any_assign_result1_upvr.variables;
				})
			end)
			return arg1_8
		end
		arg1.queryManager.cache:writeQuery({
			query = any_assign_result1_upvr.query;
			variables = any_assign_result1_upvr.variables;
			data = data_upvr;
		})
		return arg1_8
	end):andThen(function(arg1_10) -- Line 479
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_generateQueryId_result1_upvr (readonly)
		]]
		arg1.queryManager:stopQuery(any_generateQueryId_result1_upvr)
		arg1:reobserve()
		return arg1_10
	end):catch(function(arg1_11) -- Line 484
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_generateQueryId_result1_upvr (readonly)
		]]
		arg1.queryManager:stopQuery(any_generateQueryId_result1_upvr)
		arg1:reobserve()
		error(arg1_11)
	end)
end
function setmetatable_result1_upvr.subscribeToMore(arg1, arg2) -- Line 494
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: invariant_upvr (readonly)
	]]
	local any_subscribe_result1_upvr = arg1.queryManager:startGraphQLSubscription({
		query = arg2.document;
		variables = arg2.variables;
		context = arg2.context;
	}):subscribe({
		next = function(arg1_12, arg2_4) -- Line 508, Named "next"
			--[[ Upvalues[3]:
				[1]: arg2 (readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			local updateQuery_3_upvr = arg2.updateQuery
			if Boolean_upvr.toJSBoolean(updateQuery_3_upvr) then
				arg1:updateQuery(function(arg1_13, arg2_5) -- Line 511
					--[[ Upvalues[2]:
						[1]: updateQuery_3_upvr (readonly)
						[2]: arg2_4 (readonly)
					]]
					local module = {}
					module.subscriptionData = arg2_4
					module.variables = arg2_5.variables
					return updateQuery_3_upvr(arg1_13, module)
				end)
			end
		end;
		error = function(arg1_14, arg2_6) -- Line 520, Named "error"
			--[[ Upvalues[3]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: invariant_upvr (copied, readonly)
			]]
			if Boolean_upvr.toJSBoolean(arg2.onError) then
				arg2:onError(arg2_6)
			else
				invariant_upvr.error("Unhandled GraphQL subscription error", arg2_6)
			end
		end;
	})
	arg1.subscriptions:add(any_subscribe_result1_upvr)
	return function() -- Line 531
		--[[ Upvalues[3]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: any_subscribe_result1_upvr (readonly)
		]]
		if Boolean_upvr.toJSBoolean(arg1.subscriptions:delete(any_subscribe_result1_upvr)) then
			any_subscribe_result1_upvr:unsubscribe()
		end
	end
end
function setmetatable_result1_upvr.setOptions(arg1, arg2) -- Line 538
	return arg1:reobserve(arg2)
end
function setmetatable_result1_upvr.setVariables(arg1, arg2) -- Line 564
	--[[ Upvalues[4]:
		[1]: equal_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: NetworkStatus_upvr (readonly)
	]]
	if equal_upvr(arg1.variables, arg2) then
		if Boolean_upvr.toJSBoolean(arg1.observers.size) then
			return arg1:result()
		end
		return Promise_upvr.resolve()
	end
	arg1.options.variables = arg2
	if not Boolean_upvr.toJSBoolean(arg1.observers.size) then
		return Promise_upvr.resolve()
	end
	local module_2 = {
		fetchPolicy = arg1.initialFetchPolicy;
	}
	module_2.variables = arg2
	return arg1:reobserve(module_2, NetworkStatus_upvr.setVariables)
end
function setmetatable_result1_upvr.updateQuery(arg1, arg2) -- Line 590
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local queryManager = arg1.queryManager
	local tbl_6 = {
		query = arg1.options.query;
		variables = arg1.variables;
	}
	local var79
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var79 = arg1.lastResult.data
		return var79
	end
	if not Boolean_upvr.toJSBoolean(arg1.lastResult) or not INLINED_3() then
		var79 = nil
	end
	tbl_6.previousResult = var79
	var79 = true
	tbl_6.returnPartialData = var79
	var79 = false
	tbl_6.optimistic = var79
	local tbl_4 = {}
	var79 = arg1.variables
	tbl_4.variables = var79
	local arg2_result1 = arg2(queryManager.cache:diff(tbl_6).result, tbl_4)
	if Boolean_upvr.toJSBoolean(arg2_result1) then
		var79 = {}
		var79.query = arg1.options.query
		var79.data = arg2_result1
		var79.variables = arg1.variables
		queryManager.cache:writeQuery(var79)
		queryManager:broadcastQueries()
	end
end
function setmetatable_result1_upvr.startPolling(arg1, arg2) -- Line 623
	arg1.options.pollInterval = arg2
	arg1:updatePolling()
end
function setmetatable_result1_upvr.stopPolling(arg1) -- Line 628
	arg1.options.pollInterval = 0
	arg1:updatePolling()
end
function setmetatable_result1_upvr.fetch(arg1, arg2, arg3) -- Line 633
	arg1.queryManager:setObservableQuery(arg1)
	return arg1.queryManager:fetchQueryObservable(arg1.queryId, arg2, arg3)
end
local clearTimeout_upvr = LuauPolyfill.clearTimeout
function setmetatable_result1_upvr.updatePolling(arg1) -- Line 642
	--[[ Upvalues[6]:
		[1]: Boolean_upvr (readonly)
		[2]: clearTimeout_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: isNetworkRequestInFlight_upvr (readonly)
		[5]: NetworkStatus_upvr (readonly)
		[6]: setTimeout_upvr (readonly)
	]]
	local var89
	if Boolean_upvr.toJSBoolean(arg1.queryManager.ssrMode) then
	else
		local pollingInfo_2 = arg1.pollingInfo
		var89 = arg1.options
		local pollInterval_2 = var89.pollInterval
		var89 = Boolean_upvr.toJSBoolean(pollInterval_2)
		if not var89 then
			var89 = Boolean_upvr.toJSBoolean(pollingInfo_2)
			if var89 then
				var89 = clearTimeout_upvr
				var89(pollingInfo_2.timeout)
				var89 = nil
				arg1.pollingInfo = var89
			end
			return
		end
		var89 = Boolean_upvr.toJSBoolean(pollingInfo_2)
		if var89 then
			var89 = pollingInfo_2.interval
			if var89 == pollInterval_2 then return end
		end
		var89 = invariant_upvr
		var89(pollInterval_2, "Attempted to start a polling query without a polling interval.")
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var89 = pollingInfo_2
			return var89
		end
		if not Boolean_upvr.toJSBoolean(pollingInfo_2) or not INLINED_5() then
			arg1.pollingInfo = {}
			var89 = arg1.pollingInfo
		end
		var89.interval = pollInterval_2
		local poll_upvw
		local function maybeFetch_upvr() -- Line 673, Named "maybeFetch"
			--[[ Upvalues[5]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: isNetworkRequestInFlight_upvr (copied, readonly)
				[4]: NetworkStatus_upvr (copied, readonly)
				[5]: poll_upvw (read and write)
			]]
			if Boolean_upvr.toJSBoolean(arg1.pollingInfo) then
				if not isNetworkRequestInFlight_upvr(arg1.queryInfo.networkStatus) then
					arg1:reobserve({
						fetchPolicy = "network-only";
					}, NetworkStatus_upvr.poll):andThen(poll_upvw, poll_upvw)
					return
				end
				poll_upvw()
			end
		end
		function poll_upvw() -- Line 685, Named "poll"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: Boolean_upvr (copied, readonly)
				[3]: clearTimeout_upvr (copied, readonly)
				[4]: setTimeout_upvr (copied, readonly)
				[5]: maybeFetch_upvr (readonly)
			]]
			local pollingInfo = arg1.pollingInfo
			if Boolean_upvr.toJSBoolean(pollingInfo) then
				if pollingInfo.timeout then
					clearTimeout_upvr(pollingInfo.timeout)
				end
				pollingInfo.timeout = setTimeout_upvr(maybeFetch_upvr, pollingInfo.interval)
			end
		end
		poll_upvw()
	end
end
local cloneDeep_upvr = utilities.cloneDeep
local isNonEmptyArray_upvr = utilities.isNonEmptyArray
function setmetatable_result1_upvr.updateLastResult(arg1, arg2) -- Line 699
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: cloneDeep_upvr (readonly)
		[3]: isNonEmptyArray_upvr (readonly)
	]]
	arg1.lastResult = arg2
	if Boolean_upvr.toJSBoolean(arg1.queryManager.assumeImmutableResults) then
		arg1.lastResultSnapshot = arg2
	else
		arg1.lastResultSnapshot = cloneDeep_upvr(arg2)
	end
	if not isNonEmptyArray_upvr(arg2.errors) then
		arg1.lastError = nil
	end
	return arg1.lastResult
end
local compact_upvr = utilities.compact
function setmetatable_result1_upvr.reobserve(arg1, arg2, arg3) -- Line 715
	--[[ Upvalues[5]:
		[1]: NetworkStatus_upvr (readonly)
		[2]: compact_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: equal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.isTornDown = false
	local var103 = true
	local var104
	if arg3 ~= NetworkStatus_upvr.refetch then
		var103 = true
		var104 = NetworkStatus_upvr
		if arg3 ~= var104.fetchMore then
			var104 = NetworkStatus_upvr
			if arg3 ~= var104.poll then
				var103 = false
			else
				var103 = true
			end
		end
	end
	var104 = arg1.options
	if var103 then
	else
	end
	if not var103 then
		arg1:updatePolling()
		if arg2 ~= nil and Boolean_upvr.toJSBoolean(arg2.variables) then
			if not Boolean_upvr.toJSBoolean(arg2.fetchPolicy) and not equal_upvr(arg2.variables, var104.variables) then
				Object_upvr.assign(arg1.options, compact_upvr(arg2)).fetchPolicy = arg1.initialFetchPolicy
				if arg3 == nil then
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_fetch_result1 = arg1:fetch(Object_upvr.assign(arg1.options, compact_upvr(arg2)), NetworkStatus_upvr.setVariables)
	if not var103 then
		if arg1.concast then
			arg1.concast:removeObserver(arg1.observer, true)
		end
		arg1.concast = any_fetch_result1
	end
	any_fetch_result1:addObserver(arg1.observer)
	return any_fetch_result1.promise
end
function setmetatable_result1_upvr.observe(arg1) -- Line 785
	arg1.observer:next(arg1:getCurrentResult(false))
end
function setmetatable_result1_upvr.hasObservers(arg1) -- Line 793
	local var106
	if 0 >= arg1.observers.size then
		var106 = false
	else
		var106 = true
	end
	return var106
end
function setmetatable_result1_upvr.tearDownQuery(arg1) -- Line 797
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.isTornDown) then
	else
		if Boolean_upvr.toJSBoolean(arg1.concast) then
			arg1.concast:removeObserver(arg1.observer)
			arg1.concast = nil
		end
		arg1:stopPolling()
		arg1.subscriptions:forEach(function(arg1_15) -- Line 809
			return arg1_15:unsubscribe()
		end)
		arg1.subscriptions:clear()
		arg1.queryManager:stopQuery(arg1.queryId)
		arg1.observers:clear()
		arg1.isTornDown = true
	end
end
utilities.fixObservableSubclass(setmetatable_result1_upvr)
module_4.ObservableQuery = setmetatable_result1_upvr
function defaultSubscriptionObserverErrorCallback_upvw(arg1, arg2) -- Line 825, Named "defaultSubscriptionObserverErrorCallback"
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	invariant_upvr.error("Unhandled error", arg2.message, arg2.stack)
end
local isCallable_upvr = require(Parent_2.luaUtils.isCallable)
function module_4.applyNextFetchPolicy(arg1) -- Line 833
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: isCallable_upvr (readonly)
	]]
	local var109
	if arg1.fetchPolicy == nil then
		var109 = "cache-first"
	else
		var109 = arg1.fetchPolicy
	end
	local nextFetchPolicy = arg1.nextFetchPolicy
	if Boolean_upvr.toJSBoolean(nextFetchPolicy) then
		if isCallable_upvr(nextFetchPolicy) then
			arg1.fetchPolicy = nextFetchPolicy(arg1, var109)
			return
		end
		arg1.fetchPolicy = nextFetchPolicy
	end
end
return module_4