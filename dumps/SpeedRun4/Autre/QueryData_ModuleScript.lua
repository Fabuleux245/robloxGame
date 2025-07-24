-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:57
-- Luau version 6, Types version 3
-- Time taken: 0.017487 seconds

local module = {}
local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local equal_upvr = require(Parent_2.jsutils.equal)
local NetworkStatus_upvr = require(script.Parent.Parent.Parent.core).NetworkStatus
local OperationData_upvr = require(script.Parent.OperationData).OperationData
local setmetatable_result1_upvr = setmetatable({}, {
	__index = OperationData_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new(arg1) -- Line 114
	--[[ Upvalues[3]:
		[1]: OperationData_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: setmetatable_result1_upvr (readonly)
	]]
	local any_new_result1_upvr = OperationData_upvr.new(arg1.options, arg1.context)
	any_new_result1_upvr.runLazy = false
	any_new_result1_upvr.previous = {}
	any_new_result1_upvr.onNewData = arg1.onNewData
	function any_new_result1_upvr.runLazyQuery(arg1_2) -- Line 133
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		any_new_result1_upvr:cleanup()
		any_new_result1_upvr.runLazy = true
		any_new_result1_upvr.lazyOptions = arg1_2
		any_new_result1_upvr:onNewData()
	end
	function any_new_result1_upvr.obsRefetch(arg1_3, arg2) -- Line 140
		--[[ Upvalues[2]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: any_new_result1_upvr (readonly)
		]]
		if Boolean_upvr.toJSBoolean(any_new_result1_upvr.currentObservable) then
			return any_new_result1_upvr.currentObservable:refetch(arg2)
		end
		return nil
	end
	function any_new_result1_upvr.obsFetchMore(arg1_4, arg2) -- Line 147
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		if any_new_result1_upvr.currentObservable then
			return any_new_result1_upvr.currentObservable:fetchMore(arg2)
		end
		return nil
	end
	function any_new_result1_upvr.obsUpdateQuery(arg1_5, arg2) -- Line 161
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		if any_new_result1_upvr.currentObservable then
			return any_new_result1_upvr.currentObservable:updateQuery(arg2)
		end
		return nil
	end
	function any_new_result1_upvr.obsStartPolling(arg1_6, arg2) -- Line 168
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		if any_new_result1_upvr.currentObservable then
			return any_new_result1_upvr.currentObservable:startPolling(arg2)
		end
		return nil
	end
	function any_new_result1_upvr.obsStopPolling(arg1_7) -- Line 172
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		if any_new_result1_upvr.currentObservable then
			return any_new_result1_upvr.currentObservable:stopPolling()
		end
		return nil
	end
	function any_new_result1_upvr.obsSubscribeToMore(arg1_8) -- Line 187
		--[[ Upvalues[1]:
			[1]: any_new_result1_upvr (readonly)
		]]
		if any_new_result1_upvr.currentObservable then
			return any_new_result1_upvr.currentObservable:subscribeToMore(arg1_8)
		end
		return nil
	end
	return setmetatable(any_new_result1_upvr, setmetatable_result1_upvr)
end
function setmetatable_result1_upvr.execute(arg1) -- Line 200
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	arg1:refreshClient()
	local any_getOptions_result1_3 = arg1:getOptions()
	local skip = any_getOptions_result1_3.skip
	local query = any_getOptions_result1_3.query
	if skip or query ~= arg1.previous.query then
		arg1:removeQuerySubscription()
		arg1:removeObservable(not Boolean_upvr.toJSBoolean(skip))
		arg1.previous.query = query
	end
	arg1:updateObservableQuery()
	local any_getExecuteSsrResult_result1 = arg1:getExecuteSsrResult()
	if not any_getExecuteSsrResult_result1 then
		any_getExecuteSsrResult_result1 = arg1:getExecuteResult()
	end
	return any_getExecuteSsrResult_result1
end
function setmetatable_result1_upvr.executeLazy(arg1) -- Line 214
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: NetworkStatus_upvr (readonly)
	]]
	if not Boolean_upvr.toJSBoolean(arg1.runLazy) then
		return table.pack(arg1.runLazyQuery, {
			loading = false;
			networkStatus = NetworkStatus_upvr.ready;
			called = false;
			data = nil;
		})
	end
	return table.pack(arg1.runLazyQuery, arg1:execute())
end
local Promise_upvr = require(Parent.Promise)
function setmetatable_result1_upvr.fetchData(arg1) -- Line 226
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	local any_getOptions_result1_2 = arg1:getOptions()
	local var28
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var28 = any_getOptions_result1_2.skip
		return var28
	end
	if not Boolean_upvr.toJSBoolean(any_getOptions_result1_2.skip) or not INLINED() then
		if any_getOptions_result1_2.ssr ~= false then
			var28 = false
		else
			var28 = true
		end
	end
	if Boolean_upvr.toJSBoolean(var28) then
		return false
	end
	var28 = Promise_upvr
	function var28(arg1_9) -- Line 231
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:startQuerySubscription(arg1_9)
	end
	return var28.new(var28)
end
function setmetatable_result1_upvr.afterExecute(arg1, arg2) -- Line 236
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	if arg2 then
		local _ = arg2
	else
	end
	if ({}).lazy then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: GOTO [12] #10
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 34 start (CF ANALYSIS FAILED)
	arg1.isMounted = true
	local any_getOptions_result1_7 = arg1:getOptions()
	if any_getOptions_result1_7.ssr ~= false then
	else
	end
	if Boolean_upvr.toJSBoolean(arg1.currentObservable) and not Boolean_upvr.toJSBoolean(true) and not Boolean_upvr.toJSBoolean(arg1:ssrInitiated()) then
		arg1:startQuerySubscription()
	end
	if not Boolean_upvr.toJSBoolean(false) or Boolean_upvr.toJSBoolean(arg1.runLazy) then
		arg1:handleErrorOrCompleted()
	end
	arg1.previousOptions = any_getOptions_result1_7
	do
		return function(...) -- Line 254
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:unmount(...)
		end
	end
	-- KONSTANTERROR: [11] 9. Error Block 34 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_upvr.cleanup(arg1) -- Line 259
	arg1:removeQuerySubscription()
	arg1:removeObservable(true)
	arg1.previous.result = nil
end
function setmetatable_result1_upvr.getOptions(arg1) -- Line 265
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local any_getOptions_result1_8 = getmetatable(getmetatable(arg1)).__index.getOptions(arg1)
	if Boolean_upvr.toJSBoolean(arg1.lazyOptions) then
		any_getOptions_result1_8.variables = Object_upvr.assign({}, any_getOptions_result1_8.variables, arg1.lazyOptions.variables)
		any_getOptions_result1_8.context = Object_upvr.assign({}, any_getOptions_result1_8.context, arg1.lazyOptions.context)
	end
	if Boolean_upvr.toJSBoolean(arg1.runLazy) then
		arg1.options.skip = nil
	end
	return any_getOptions_result1_8
end
function setmetatable_result1_upvr.ssrInitiated(arg1) -- Line 281
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.context) then
		return arg1.context.renderPromises
	end
	return arg1.context
end
function setmetatable_result1_upvr.getExecuteSsrResult(arg1) -- Line 289
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: NetworkStatus_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	local any_getOptions_result1_4 = arg1:getOptions()
	local var34
	if any_getOptions_result1_4.ssr ~= false then
		var34 = false
	else
		var34 = true
	end
	local any_assign_result1_2 = Object_upvr.assign({}, {
		loading = true;
		networkStatus = NetworkStatus_upvr.loading;
		called = true;
		data = nil;
		stale = false;
		client = arg1.client;
	}, arg1:observableQueryFields())
	if Boolean_upvr.toJSBoolean(var34) and (Boolean_upvr.toJSBoolean(arg1:ssrInitiated()) or Boolean_upvr.toJSBoolean(arg1:refreshClient().client.disableNetworkFetches)) then
		arg1.previous.result = any_assign_result1_2
		return any_assign_result1_2
	end
	local var37
	if var37 then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var37 = arg1:getExecuteResult()
			return var37
		end
		if not Boolean_upvr.toJSBoolean(arg1:getExecuteResult()) or not INLINED_2() then
			var37 = any_assign_result1_2
		end
		if Boolean_upvr.toJSBoolean(var37.loading) and not Boolean_upvr.toJSBoolean(any_getOptions_result1_4.skip) then
			arg1.context.renderPromises:addQueryPromise(arg1, function() -- Line 315
				return nil
			end)
		end
		return var37
	end
	return nil
end
local DocumentType_upvr = require(script.Parent.Parent.parser).DocumentType
function setmetatable_result1_upvr.prepareObservableQueryOptions(arg1) -- Line 325
	--[[ Upvalues[3]:
		[1]: DocumentType_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local any_getOptions_result1_5 = arg1:getOptions()
	arg1:verifyDocumentType(any_getOptions_result1_5.query, DocumentType_upvr.Query)
	local var41
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var41 = any_getOptions_result1_5.displayName
		return var41
	end
	if not Boolean_upvr.toJSBoolean(any_getOptions_result1_5.displayName) or not INLINED_3() then
		var41 = "Query"
	end
	if Boolean_upvr.toJSBoolean(arg1:ssrInitiated()) and (any_getOptions_result1_5.fetchPolicy == "network-only" or any_getOptions_result1_5.fetchPolicy == "cache-and-network") then
		any_getOptions_result1_5.fetchPolicy = "cache-first"
	end
	return Object_upvr.assign({}, any_getOptions_result1_5, {
		displayName = var41;
		context = any_getOptions_result1_5.context;
	})
end
function setmetatable_result1_upvr.initializeObservableQuery(arg1) -- Line 341
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1:ssrInitiated()) then
		arg1.currentObservable = arg1.context.renderPromises:getSSRObservable(arg1:getOptions())
	end
	if not Boolean_upvr.toJSBoolean(arg1.currentObservable) then
		local any_prepareObservableQueryOptions_result1 = arg1:prepareObservableQueryOptions()
		arg1.previous.observableQueryOptions = Object_upvr.assign({}, any_prepareObservableQueryOptions_result1, {
			children = Object_upvr.None;
		})
		arg1.currentObservable = arg1:refreshClient().client:watchQuery(Object_upvr.assign({}, any_prepareObservableQueryOptions_result1))
		if Boolean_upvr.toJSBoolean(arg1:ssrInitiated()) then
			arg1.context.renderPromises:registerSSRObservable(arg1.currentObservable, any_prepareObservableQueryOptions_result1)
		end
	end
end
function setmetatable_result1_upvr.updateObservableQuery(arg1) -- Line 358
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: equal_upvr (readonly)
	]]
	if not Boolean_upvr.toJSBoolean(arg1.currentObservable) then
		arg1:initializeObservableQuery()
	else
		local any_assign_result1 = Object_upvr.assign({}, arg1:prepareObservableQueryOptions(), {
			children = Object_upvr.None;
		})
		if Boolean_upvr.toJSBoolean(arg1:getOptions().skip) then
			arg1.previous.observableQueryOptions = any_assign_result1
			return
		end
		if not equal_upvr(any_assign_result1, arg1.previous.observableQueryOptions) then
			arg1.previous.observableQueryOptions = any_assign_result1
			arg1.currentObservable:setOptions(any_assign_result1):catch(function() -- Line 378
			end)
		end
	end
end
local hasOwnProperty_upvr = require(Parent_2.luaUtils.hasOwnProperty)
function setmetatable_result1_upvr.startQuerySubscription(arg1, arg2) -- Line 388
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: equal_upvr (readonly)
		[3]: hasOwnProperty_upvr (readonly)
	]]
	if arg2 == nil then
		local onNewData_upvw = arg1.onNewData
	end
	if Boolean_upvr.toJSBoolean(arg1.currentSubscription) or Boolean_upvr.toJSBoolean(arg1:getOptions().skip) then
	else
		arg1.currentSubscription = arg1.currentObservable:subscribe({
			next = function(arg1_10, arg2_2) -- Line 396, Named "next"
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: Boolean_upvr (copied, readonly)
					[3]: equal_upvr (copied, readonly)
					[4]: onNewData_upvw (read and write)
				]]
				local result = arg1.previous.result
				if Boolean_upvr.toJSBoolean(result) and result.loading == arg2_2.loading and result.networkStatus == arg2_2.networkStatus and equal_upvr(result.data, arg2_2.data) then
				else
					onNewData_upvw(arg1)
				end
			end;
			error = function(arg1_11, arg2_3) -- Line 412
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: hasOwnProperty_upvr (copied, readonly)
					[3]: Boolean_upvr (copied, readonly)
					[4]: equal_upvr (copied, readonly)
					[5]: onNewData_upvw (read and write)
				]]
				arg1:resubscribeToQuery()
				if not hasOwnProperty_upvr(arg2_3, "graphQLErrors") then
					error(arg2_3)
				end
				local result_4 = arg1.previous.result
				if Boolean_upvr.toJSBoolean(result_4) and Boolean_upvr.toJSBoolean(result_4.loading) or not equal_upvr(arg2_3, arg1.previous.error) then
					arg1.previous.error = arg2_3
					onNewData_upvw(arg1)
				end
			end;
		})
	end
end
function setmetatable_result1_upvr.resubscribeToQuery(arg1) -- Line 429
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	arg1:removeQuerySubscription()
	local currentObservable = arg1.currentObservable
	if Boolean_upvr.toJSBoolean(currentObservable) then
		currentObservable:resetLastResults()
		arg1:startQuerySubscription()
		Object_upvr.assign(currentObservable, {
			lastError = currentObservable:getLastError();
			lastResult = currentObservable:getLastResult();
		})
	end
end
local ApolloError_upvr = require(Parent_2.errors).ApolloError
function setmetatable_result1_upvr.getExecuteResult(arg1) -- Line 449
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: NetworkStatus_upvr (readonly)
		[4]: ApolloError_upvr (readonly)
	]]
	local any_observableQueryFields_result1 = arg1:observableQueryFields()
	local any_getOptions_result1_6 = arg1:getOptions()
	if Boolean_upvr.toJSBoolean(any_getOptions_result1_6.skip) then
		any_observableQueryFields_result1 = Object_upvr.assign({}, any_observableQueryFields_result1, {
			data = Object_upvr.None;
			error = Object_upvr.None;
			loading = false;
			networkStatus = NetworkStatus_upvr.ready;
			called = true;
		})
	elseif Boolean_upvr.toJSBoolean(arg1.currentObservable) then
		local any_getCurrentResult_result1 = arg1.currentObservable:getCurrentResult()
		local data = any_getCurrentResult_result1.data
		local loading = any_getCurrentResult_result1.loading
		local errors = any_getCurrentResult_result1.errors
		local var66
		if Boolean_upvr.toJSBoolean(errors) and 0 < #errors then
			var66 = ApolloError_upvr.new({
				graphQLErrors = errors;
			})
		end
		any_observableQueryFields_result1 = Object_upvr.assign({}, any_observableQueryFields_result1, {
			data = data;
			loading = loading;
			networkStatus = any_getCurrentResult_result1.networkStatus;
			error = var66;
			called = true;
		})
		if Boolean_upvr.toJSBoolean(loading) then
		elseif Boolean_upvr.toJSBoolean(var66) then
			local tbl = {}
			local any_getLastResult_result1 = arg1.currentObservable:getLastResult()
			if not any_getLastResult_result1 then
				any_getLastResult_result1 = {}
			end
			tbl.data = any_getLastResult_result1.data
			Object_upvr.assign(any_observableQueryFields_result1, tbl)
		elseif Boolean_upvr.toJSBoolean(any_getOptions_result1_6.partialRefetch) and Boolean_upvr.toJSBoolean(any_getCurrentResult_result1.partial) and (not Boolean_upvr.toJSBoolean(data) or #Object_upvr.keys(data) == 0) or arg1.currentObservable.options.fetchPolicy ~= "cache-only" then
			Object_upvr.assign(any_observableQueryFields_result1, {
				loading = true;
				networkStatus = NetworkStatus_upvr.loading;
			})
			any_observableQueryFields_result1:refetch()
			return any_observableQueryFields_result1
		end
	end
	any_observableQueryFields_result1.client = arg1.client
	arg1:setOptions(any_getOptions_result1_6, true)
	local result_2 = arg1.previous.result
	if Boolean_upvr.toJSBoolean(result_2) and Boolean_upvr.toJSBoolean(result_2.loading) then
		arg1.previous.loading = result_2.loading
	else
		arg1.previous.loading = false
	end
	local var73
	if var73 then
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var73 = result_2.data
			return var73
		end
		if not Boolean_upvr.toJSBoolean(result_2.data) or not INLINED_4() then
			var73 = result_2.previousData
		end
		any_observableQueryFields_result1.previousData = var73
	else
		any_observableQueryFields_result1.previousData = result_2
	end
	arg1.previous.result = any_observableQueryFields_result1
	if Boolean_upvr.toJSBoolean(arg1.currentObservable) then
		arg1.currentObservable:resetQueryStoreErrors()
	end
	return any_observableQueryFields_result1
end
function setmetatable_result1_upvr.handleErrorOrCompleted(arg1) -- Line 554
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: equal_upvr (readonly)
	]]
	if not arg1.currentObservable or not arg1.previous.result then
	else
		local result_3 = arg1.previous.result
		local error = result_3.error
		if not Boolean_upvr.toJSBoolean(result_3.loading) then
			local any_getOptions_result1 = arg1:getOptions()
			local onCompleted = any_getOptions_result1.onCompleted
			local onError = any_getOptions_result1.onError
			if Boolean_upvr.toJSBoolean(arg1.previousOptions) and not Boolean_upvr.toJSBoolean(arg1.previous.loading) and equal_upvr(arg1.previousOptions.query, any_getOptions_result1.query) and equal_upvr(arg1.previousOptions.variables, any_getOptions_result1.variables) then return end
			if Boolean_upvr.toJSBoolean(onCompleted) and not Boolean_upvr.toJSBoolean(error) and not Boolean_upvr.toJSBoolean(any_getOptions_result1.skip) then
				onCompleted(result_3.data)
				return
			end
			if Boolean_upvr.toJSBoolean(onError) and Boolean_upvr.toJSBoolean(error) then
				onError(error)
			end
		end
	end
end
function setmetatable_result1_upvr.removeQuerySubscription(arg1) -- Line 583
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.currentSubscription) then
		arg1.currentSubscription:unsubscribe()
		arg1.currentSubscription = nil
	end
end
function setmetatable_result1_upvr.removeObservable(arg1, arg2) -- Line 590
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.currentObservable) then
		arg1.currentObservable.tearDownQuery(arg1.currentObservable)
		if Boolean_upvr.toJSBoolean(arg2) then
			arg1.currentObservable = nil
		end
	end
end
function setmetatable_result1_upvr.observableQueryFields(arg1) -- Line 599
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var79
	if Boolean_upvr.toJSBoolean(arg1.currentObservable) then
		var79 = arg1.currentObservable.variables
	else
		var79 = nil
	end
	return {
		variables = var79;
		refetch = arg1.obsRefetch;
		fetchMore = arg1.obsFetchMore;
		updateQuery = arg1.obsUpdateQuery;
		startPolling = arg1.obsStartPolling;
		stopPolling = arg1.obsStopPolling;
		subscribeToMore = arg1.obsSubscribeToMore;
	}
end
module.QueryData = setmetatable_result1_upvr
return module