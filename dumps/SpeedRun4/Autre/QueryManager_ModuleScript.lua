-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:18
-- Luau version 6, Types version 3
-- Time taken: 0.043157 seconds

local module_11 = {}
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local instanceof_upvr = LuauPolyfill.instanceof
local Map_upvr = LuauPolyfill.Map
local Object_upvr = LuauPolyfill.Object
local Promise_upvr = require(Parent_2.Promise)
local isCallable_upvr = require(Parent.luaUtils.isCallable)
local toJSBoolean_upvr = require(Parent.utilities.globals.null).toJSBoolean
local invariant = require(Parent.jsutils.invariant)
local invariant_2_upvr = invariant.invariant
local InvariantError_upvr = invariant.InvariantError
local utilities = require(script.Parent.Parent.utilities)
local getOperationName_upvr = utilities.getOperationName
local graphQLResultHasError_upvr = utilities.graphQLResultHasError
local Observable_upvr = utilities.Observable
local asyncMap_upvr = utilities.asyncMap
local isNonEmptyArray_upvr = utilities.isNonEmptyArray
local Concast_upvr = utilities.Concast
local makeUniqueId_upvr = utilities.makeUniqueId
local errors = require(script.Parent.Parent.errors)
local ApolloError_upvr = errors.ApolloError
local ObservableQuery = require(script.Parent.ObservableQuery)
local ObservableQuery_2_upvr = ObservableQuery.ObservableQuery
local networkStatus_3 = require(script.Parent.networkStatus)
local NetworkStatus_upvr = networkStatus_3.NetworkStatus
local QueryInfo = require(script.Parent.QueryInfo)
local QueryInfo_upvr = QueryInfo.QueryInfo
local shouldWriteResult_upvr = QueryInfo.shouldWriteResult
local tbl_3_upvr = {}
tbl_3_upvr.__index = tbl_3_upvr
local WeakMap_upvr = LuauPolyfill.WeakMap
local LocalState_upvr = require(script.Parent.LocalState).LocalState
function tbl_3_upvr.new(arg1) -- Line 310
	--[[ Upvalues[5]:
		[1]: tbl_3_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: WeakMap_upvr (readonly)
		[4]: LocalState_upvr (readonly)
		[5]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local cache = arg1.cache
	local queryDeduplication_2 = arg1.queryDeduplication
	local var38
	if queryDeduplication_2 == nil then
		queryDeduplication_2 = false
	end
	if arg1.ssrMode == nil then
	end
	if var38 == nil then
		var38 = {}
	end
	local setmetatable_result1 = setmetatable({}, tbl_3_upvr)
	setmetatable_result1.clientAwareness = {}
	setmetatable_result1.queries = Map_upvr.new()
	setmetatable_result1.fetchCancelFns = Map_upvr.new()
	setmetatable_result1.transformCache = WeakMap_upvr.new()
	setmetatable_result1.queryIdCounter = 1
	setmetatable_result1.requestIdCounter = 1
	setmetatable_result1.mutationIdCounter = 1
	setmetatable_result1.inFlightLinkObservables = Map_upvr.new()
	setmetatable_result1.cache = cache
	setmetatable_result1.link = arg1.link
	setmetatable_result1.queryDeduplication = queryDeduplication_2
	setmetatable_result1.clientAwareness = var38
	local localState = arg1.localState
	if not localState then
		localState = LocalState_upvr.new
		localState = localState({
			cache = cache;
		})
	end
	setmetatable_result1.localState = localState
	setmetatable_result1.ssrMode = false
	setmetatable_result1.assumeImmutableResults = Boolean_upvr.toJSBoolean(arg1.assumeImmutableResults)
	setmetatable_result1.onBroadcast = arg1.onBroadcast
	if Boolean_upvr.toJSBoolean(setmetatable_result1.onBroadcast) then
		setmetatable_result1.mutationStore = {}
	end
	return setmetatable_result1
end
function tbl_3_upvr.stop(arg1) -- Line 390
	--[[ Upvalues[1]:
		[1]: InvariantError_upvr (readonly)
	]]
	arg1.queries:forEach(function(arg1_2, arg2) -- Line 391
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:stopQueryNoBroadcast(arg2)
	end)
	arg1:cancelPendingFetches(InvariantError_upvr.new("QueryManager stopped while query was in flight"))
end
function tbl_3_upvr.cancelPendingFetches(arg1, arg2) -- Line 398
	arg1.fetchCancelFns:forEach(function(arg1_3) -- Line 399
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg1_3(arg2)
	end)
	arg1.fetchCancelFns:clear()
end
function tbl_3_upvr.mutate(arg1, arg2) -- Line 405
	--[[ Upvalues[9]:
		[1]: Promise_upvr (readonly)
		[2]: invariant_2_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: asyncMap_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: graphQLResultHasError_upvr (readonly)
		[7]: ApolloError_upvr (readonly)
		[8]: isCallable_upvr (readonly)
		[9]: instanceof_upvr (readonly)
	]]
	return Promise_upvr.resolve():andThen(function() -- Line 408
		--[[ Upvalues[11]:
			[1]: arg2 (readonly)
			[2]: invariant_2_upvr (copied, readonly)
			[3]: Boolean_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: asyncMap_upvr (copied, readonly)
			[7]: Object_upvr (copied, readonly)
			[8]: graphQLResultHasError_upvr (copied, readonly)
			[9]: ApolloError_upvr (copied, readonly)
			[10]: isCallable_upvr (copied, readonly)
			[11]: instanceof_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local mutation = arg2.mutation
		local optimisticResponse_upvr = arg2.optimisticResponse
		local updateQueries_upvr_2 = arg2.updateQueries
		local refetchQueries_2 = arg2.refetchQueries
		local awaitRefetchQueries = arg2.awaitRefetchQueries
		local update_3_upvr = arg2.update
		local fetchPolicy_4_upvr = arg2.fetchPolicy
		local keepRootFields_upvr = arg2.keepRootFields
		local var53_upvw = arg2
		local context_upvr = var53_upvw.context
		local var55_upvw
		if refetchQueries_2 == nil then
			var53_upvw = {}
		else
			var53_upvw = refetchQueries_2
		end
		if awaitRefetchQueries == nil then
		end
		if arg2.errorPolicy == nil then
			local var56_upvw = "none"
		end
		invariant_2_upvr(mutation, "mutation option is required. You must specify your GraphQL document in the mutation option.")
		local var57 = not Boolean_upvr.toJSBoolean(fetchPolicy_4_upvr)
		if not var57 then
			if fetchPolicy_4_upvr ~= "no-cache" then
				var57 = false
			else
				var57 = true
			end
		end
		invariant_2_upvr(var57, "Mutations only support a 'no-cache' fetchPolicy. If you don't want to disable the cache, remove your fetchPolicy setting to proceed with the default mutation behavior.")
		local any_generateMutationId_result1_upvr = arg1:generateMutationId()
		local document_upvw_2 = arg1:transform(mutation).document
		var55_upvw = arg1:getVariables(document_upvw_2, var55_upvw)
		if arg1:transform(document_upvw_2).hasClientExports then
			var55_upvw = arg1.localState:addExportedVariables(document_upvw_2, var55_upvw, context_upvr):expect()
		end
		local var60_upvw
		if Boolean_upvr.toJSBoolean(arg1.mutationStore) then
			arg1.mutationStore[any_generateMutationId_result1_upvr] = {
				mutation = document_upvw_2;
				variables = var55_upvw;
				loading = true;
				error = nil;
			}
			var60_upvw = arg1.mutationStore[any_generateMutationId_result1_upvr]
		else
			var60_upvw = arg1.mutationStore
		end
		if Boolean_upvr.toJSBoolean(optimisticResponse_upvr) then
			arg1:markMutationOptimistic(optimisticResponse_upvr, {
				mutationId = any_generateMutationId_result1_upvr;
				document = document_upvw_2;
				variables = var55_upvw;
				fetchPolicy = fetchPolicy_4_upvr;
				errorPolicy = var56_upvw;
				context = context_upvr;
				updateQueries = updateQueries_upvr_2;
				update = update_3_upvr;
				keepRootFields = keepRootFields_upvr;
			})
		end
		arg1:broadcastQueries()
		local var64_upvw = false
		local onQueryUpdated_upvr_2 = arg2.onQueryUpdated
		return Promise_upvr.new(function(arg1_4, arg2_2) -- Line 486
			--[[ Upvalues[23]:
				[1]: asyncMap_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: document_upvw_2 (read and write)
				[4]: Object_upvr (copied, readonly)
				[5]: context_upvr (readonly)
				[6]: optimisticResponse_upvr (readonly)
				[7]: var55_upvw (read and write)
				[8]: graphQLResultHasError_upvr (copied, readonly)
				[9]: var56_upvw (read and write)
				[10]: ApolloError_upvr (copied, readonly)
				[11]: Boolean_upvr (copied, readonly)
				[12]: var60_upvw (read and write)
				[13]: isCallable_upvr (copied, readonly)
				[14]: var53_upvw (read and write)
				[15]: any_generateMutationId_result1_upvr (readonly)
				[16]: fetchPolicy_4_upvr (readonly)
				[17]: update_3_upvr (readonly)
				[18]: updateQueries_upvr_2 (readonly)
				[19]: var64_upvw (read and write)
				[20]: onQueryUpdated_upvr_2 (readonly)
				[21]: keepRootFields_upvr (readonly)
				[22]: arg1 (readonly)
				[23]: instanceof_upvr (copied, readonly)
			]]
			return asyncMap_upvr(arg1:getObservableFromLink(document_upvw_2, Object_upvr.assign({}, context_upvr, {
				optimisticResponse = optimisticResponse_upvr;
			}), var55_upvw, false), function(arg1_5) -- Line 494
				--[[ Upvalues[20]:
					[1]: graphQLResultHasError_upvr (copied, readonly)
					[2]: var56_upvw (copied, read and write)
					[3]: ApolloError_upvr (copied, readonly)
					[4]: Boolean_upvr (copied, readonly)
					[5]: var60_upvw (copied, read and write)
					[6]: Object_upvr (copied, readonly)
					[7]: isCallable_upvr (copied, readonly)
					[8]: var53_upvw (copied, read and write)
					[9]: arg1 (copied, readonly)
					[10]: any_generateMutationId_result1_upvr (copied, readonly)
					[11]: document_upvw_2 (copied, read and write)
					[12]: var55_upvw (copied, read and write)
					[13]: fetchPolicy_4_upvr (copied, readonly)
					[14]: context_upvr (copied, readonly)
					[15]: update_3_upvr (copied, readonly)
					[16]: updateQueries_upvr_2 (copied, readonly)
					[17]: var64_upvw (copied, read and write)
					[18]: optimisticResponse_upvr (copied, readonly)
					[19]: onQueryUpdated_upvr_2 (copied, readonly)
					[20]: keepRootFields_upvr (copied, readonly)
				]]
				if graphQLResultHasError_upvr(arg1_5) and var56_upvw == "none" then
					error(ApolloError_upvr.new({
						graphQLErrors = arg1_5.errors;
					}))
				end
				if Boolean_upvr.toJSBoolean(var60_upvw) then
					var60_upvw.loading = false
					var60_upvw.error = nil
				end
				local any_assign_result1_3 = Object_upvr.assign({}, arg1_5)
				if isCallable_upvr(var53_upvw) then
					var53_upvw = var53_upvw(any_assign_result1_3)
				end
				local var70
				if var56_upvw == "ignore" and graphQLResultHasError_upvr(any_assign_result1_3) then
					any_assign_result1_3.errors = nil
				end
				local module_13 = {}
				var70 = any_generateMutationId_result1_upvr
				module_13.mutationId = var70
				module_13.result = any_assign_result1_3
				var70 = document_upvw_2
				module_13.document = var70
				var70 = var55_upvw
				module_13.variables = var70
				var70 = fetchPolicy_4_upvr
				module_13.fetchPolicy = var70
				var70 = var56_upvw
				module_13.errorPolicy = var70
				var70 = context_upvr
				module_13.context = var70
				var70 = update_3_upvr
				module_13.update = var70
				var70 = updateQueries_upvr_2
				module_13.updateQueries = var70
				var70 = var64_upvw
				module_13.awaitRefetchQueries = var70
				var70 = var53_upvw
				module_13.refetchQueries = var70
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var70 = any_generateMutationId_result1_upvr
					return var70
				end
				if not Boolean_upvr.toJSBoolean(optimisticResponse_upvr) or not INLINED() then
					var70 = nil
				end
				module_13.removeOptimistic = var70
				var70 = onQueryUpdated_upvr_2
				module_13.onQueryUpdated = var70
				var70 = keepRootFields_upvr
				module_13.keepRootFields = var70
				return arg1:markMutationResult(module_13)
			end):subscribe({
				next = function(arg1_6, arg2_3) -- Line 534, Named "next"
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_4 (readonly)
					]]
					arg1:broadcastQueries()
					arg1_4(arg2_3)
				end;
				error = function(arg1_7, arg2_4) -- Line 544, Named "error"
					--[[ Upvalues[8]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: var60_upvw (copied, read and write)
						[3]: optimisticResponse_upvr (copied, readonly)
						[4]: arg1 (copied, readonly)
						[5]: any_generateMutationId_result1_upvr (copied, readonly)
						[6]: arg2_2 (readonly)
						[7]: instanceof_upvr (copied, readonly)
						[8]: ApolloError_upvr (copied, readonly)
					]]
					local var73
					if Boolean_upvr.toJSBoolean(var60_upvw) then
						var73 = false
						var60_upvw.loading = var73
						var60_upvw.error = arg2_4
					end
					var73 = Boolean_upvr
					var73 = optimisticResponse_upvr
					if var73.toJSBoolean(var73) then
						var73 = arg1
						var73.cache:removeOptimistic(any_generateMutationId_result1_upvr)
					end
					arg1:broadcastQueries()
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var73 = arg2_4
						return var73
					end
					if not instanceof_upvr(arg2_4, ApolloError_upvr) or not INLINED_2() then
						var73 = ApolloError_upvr.new
						local tbl_20 = {}
						tbl_20.networkError = arg2_4
						var73 = var73(tbl_20)
					end
					arg2_2(var73)
				end;
			})
		end)
	end)
end
local hasOwnProperty_upvr = require(Parent.luaUtils.hasOwnProperty)
function tbl_3_upvr.markMutationResult(arg1, arg2, arg3) -- Line 563
	--[[ Upvalues[8]:
		[1]: shouldWriteResult_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: hasOwnProperty_upvr (readonly)
		[4]: getOperationName_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: Promise_upvr (readonly)
		[8]: toJSBoolean_upvr (readonly)
	]]
	if arg3 == nil then
	end
	local result_upvw = arg2.result
	local tbl_upvr = {}
	if arg2.fetchPolicy ~= "no-cache" then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if not true then
		if shouldWriteResult_upvr(result_upvw, arg2.errorPolicy) then
			table.insert(tbl_upvr, {
				result = result_upvw.data;
				dataId = "ROOT_MUTATION";
				query = arg2.document;
				variables = arg2.variables;
			})
			local updateQueries_upvr = arg2.updateQueries
			if updateQueries_upvr ~= nil then
				local cache_2_upvw = arg1.cache
				arg1.queries:forEach(function(arg1_15, arg2_9) -- Line 600
					--[[ Upvalues[8]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: hasOwnProperty_upvr (copied, readonly)
						[3]: updateQueries_upvr (readonly)
						[4]: arg1 (readonly)
						[5]: cache_2_upvw (read and write)
						[6]: result_upvw (read and write)
						[7]: getOperationName_upvr (copied, readonly)
						[8]: tbl_upvr (readonly)
					]]
					-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
					local observableQuery_3 = arg1_15.observableQuery
					local var122
					if Boolean_upvr.toJSBoolean(observableQuery_3) then
						var122 = observableQuery_3.queryName
					else
						var122 = observableQuery_3
					end
					-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [19] 16. Error Block 35 start (CF ANALYSIS FAILED)
					if not hasOwnProperty_upvr(updateQueries_upvr, var122) then
						-- KONSTANTERROR: [24] 21. Error Block 7 start (CF ANALYSIS FAILED)
						do
							return
						end
						-- KONSTANTERROR: [24] 21. Error Block 7 end (CF ANALYSIS FAILED)
					end
					local any_get_result1_2 = arg1.queries:get(arg2_9)
					local document_4 = any_get_result1_2.document
					local variables_2 = any_get_result1_2.variables
					local any_diff_result1_3 = cache_2_upvw:diff({
						query = document_4;
						variables = variables_2;
						returnPartialData = true;
						optimistic = false;
					})
					local result_3 = any_diff_result1_3.result
					if any_diff_result1_3.complete and Boolean_upvr.toJSBoolean(result_3) then
						local tbl_2 = {}
						local var130 = result_upvw
						tbl_2.mutationResult = var130
						if Boolean_upvr.toJSBoolean(document_4) then
							local getOperationName_upvr_result1_2 = getOperationName_upvr(document_4)
							if Boolean_upvr.toJSBoolean(getOperationName_upvr_result1_2) then
								var130 = getOperationName_upvr_result1_2
							else
								var130 = nil
							end
						else
							var130 = nil
						end
						tbl_2.queryName = var130
						tbl_2.queryVariables = variables_2
						local any_any_result1 = updateQueries_upvr[var122](updateQueries_upvr, result_3, tbl_2)
						if Boolean_upvr.toJSBoolean(any_any_result1) then
							table.insert(tbl_upvr, {
								result = any_any_result1;
								dataId = "ROOT_QUERY";
								query = document_4;
								variables = variables_2;
							})
						end
					end
					-- KONSTANTERROR: [19] 16. Error Block 35 end (CF ANALYSIS FAILED)
				end)
			end
		end
	end
	updateQueries_upvr = #tbl_upvr
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		updateQueries_upvr = Boolean_upvr.toJSBoolean(arg2.refetchQueries)
		return updateQueries_upvr
	end
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		updateQueries_upvr = Boolean_upvr.toJSBoolean(arg2.update)
		return updateQueries_upvr
	end
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		updateQueries_upvr = Boolean_upvr.toJSBoolean(arg2.onQueryUpdated)
		return updateQueries_upvr
	end
	local function INLINED_11() -- Internal function, doesn't exist in bytecode
		updateQueries_upvr = Boolean_upvr.toJSBoolean(arg2.removeOptimistic)
		return updateQueries_upvr
	end
	local function INLINED_12() -- Internal function, doesn't exist in bytecode
		arg1:refetchQueries(tbl_29):forEach(function(arg1_19) -- Line 737
			--[[ Upvalues[1]:
				[1]: var134_upvr (readonly)
			]]
			return table.insert(var134_upvr, arg1_19)
		end)
		tbl_29.onQueryUpdated = nil
		if not Boolean_upvr.toJSBoolean(arg2.onQueryUpdated) or not arg2.onQueryUpdated then
		end
		tbl_29.removeOptimistic = arg2.removeOptimistic
		tbl_29.optimistic = false
		tbl_29.include = arg2.refetchQueries
		function tbl_29.updateCache(arg1_16, arg2_10) -- Line 667
			--[[ Upvalues[8]:
				[1]: var136_upvr (readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: tbl_upvr (readonly)
				[4]: arg2 (readonly)
				[5]: Boolean_upvr (copied, readonly)
				[6]: arg1 (readonly)
				[7]: result_upvw (read and write)
				[8]: Object_upvr (copied, readonly)
			]]
			if not var136_upvr then
				Array_upvr.forEach(tbl_upvr, function(arg1_17) -- Line 669
					--[[ Upvalues[1]:
						[1]: arg2_10 (readonly)
					]]
					return arg2_10:write(arg1_17)
				end)
			end
			local update = arg2.update
			if update ~= nil and Boolean_upvr.toJSBoolean(update) then
				if not var136_upvr then
					local any_diff_result1_2 = arg2_10:diff({
						id = "ROOT_MUTATION";
						query = arg1:transform(arg2.document).asQuery;
						variables = arg2.variables;
						optimistic = false;
						returnPartialData = true;
					})
					if any_diff_result1_2.complete then
						result_upvw = Object_upvr.assign({}, result_upvw, {
							data = any_diff_result1_2.result;
						})
					end
				end
				update(arg2, arg2_10, result_upvw, {
					context = arg2.context;
					variables = arg2.variables;
				})
			end
			if not var136_upvr and not arg2.keepRootFields then
				arg2_10:modify({
					id = "ROOT_MUTATION";
					fields = function(arg1_18, arg2_11, arg3_4) -- Line 711, Named "fields"
						if arg3_4.fieldName == "__typename" then
							return arg2_11
						end
						return arg3_4.DELETE
					end;
				})
			end
		end
		local var136_upvr = true
		local tbl_29 = {}
		local var134_upvr = updateQueries_upvr
		updateQueries_upvr = {}
		return arg2.awaitRefetchQueries
	end
	if 0 < updateQueries_upvr or INLINED_8() or INLINED_9() or INLINED_10() or INLINED_11() or INLINED_12() or Boolean_upvr.toJSBoolean(arg2.onQueryUpdated) then
		return Promise_upvr.all(Array_upvr.filter(var134_upvr, toJSBoolean_upvr)):andThen(function() -- Line 746
			--[[ Upvalues[1]:
				[1]: result_upvw (read and write)
			]]
			return result_upvw
		end)
	end
	return Promise_upvr.resolve(result_upvw)
end
function tbl_3_upvr.markMutationOptimistic(arg1, arg2, arg3) -- Line 755
	--[[ Upvalues[3]:
		[1]: isCallable_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: invariant_2_upvr (readonly)
	]]
	local var146_upvw
	if isCallable_upvr(arg2) then
		var146_upvw = arg2(arg3.variables)
	else
		var146_upvw = arg2
	end
	return arg1.cache:recordOptimisticTransaction(function(arg1_20) -- Line 776
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: arg3 (readonly)
			[4]: var146_upvw (read and write)
			[5]: invariant_2_upvr (copied, readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 777
			--[[ Upvalues[5]:
				[1]: arg1 (copied, readonly)
				[2]: Object_upvr (copied, readonly)
				[3]: arg3 (copied, readonly)
				[4]: var146_upvw (copied, read and write)
				[5]: arg1_20 (readonly)
			]]
			arg1:markMutationResult(Object_upvr.assign({}, arg3, {
				result = {
					data = var146_upvw;
				};
			}), arg1_20)
		end)
		if not pcall_result1 then
			invariant_2_upvr.error(pcall_result2)
		end
	end, arg3.mutationId)
end
function tbl_3_upvr.fetchQuery(arg1, arg2, arg3, arg4) -- Line 786
	return arg1:fetchQueryObservable(arg2, arg3, arg4).promise
end
function tbl_3_upvr.getQueryStore(arg1) -- Line 794
	local module_2_upvr = {}
	arg1.queries:forEach(function(arg1_21, arg2) -- Line 796
		--[[ Upvalues[1]:
			[1]: module_2_upvr (readonly)
		]]
		module_2_upvr[arg2] = {
			variables = arg1_21.variables;
			networkStatus = arg1_21.networkStatus;
			networkError = arg1_21.networkError;
			graphQLErrors = arg1_21.graphQLErrors;
		}
	end)
	return module_2_upvr
end
function tbl_3_upvr.resetErrors(arg1, arg2) -- Line 807
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local any_get_result1 = arg1.queries:get(arg2)
	if Boolean_upvr.toJSBoolean(any_get_result1) then
		any_get_result1.networkError = nil
		any_get_result1.graphQLErrors = {}
	end
end
local removeConnectionDirectiveFromDocument_upvr = utilities.removeConnectionDirectiveFromDocument
local hasClientExports_upvr = utilities.hasClientExports
local getDefaultValues_upvr = utilities.getDefaultValues
local getOperationDefinition_upvr = utilities.getOperationDefinition
function tbl_3_upvr.transform(arg1, arg2) -- Line 815
	--[[ Upvalues[7]:
		[1]: removeConnectionDirectiveFromDocument_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: hasClientExports_upvr (readonly)
		[4]: getDefaultValues_upvr (readonly)
		[5]: getOperationDefinition_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: Array_upvr (readonly)
	]]
	local transformCache_upvr = arg1.transformCache
	local var162
	if not transformCache_upvr:has(arg2) then
		local any_transformDocument_result1 = arg1.cache:transformDocument(arg2)
		local var157_result1 = removeConnectionDirectiveFromDocument_upvr(arg1.cache:transformForLink(any_transformDocument_result1))
		local any_clientQuery_result1 = arg1.localState:clientQuery(any_transformDocument_result1)
		var162 = nil
		if Boolean_upvr.toJSBoolean(var157_result1) then
			var162 = arg1.localState:serverQuery(var157_result1)
		else
			var162 = var157_result1
		end
		local tbl_27_upvr = {
			document = any_transformDocument_result1;
			hasClientExports = hasClientExports_upvr(any_transformDocument_result1);
			hasForcedResolvers = arg1.localState:shouldForceResolvers(any_transformDocument_result1);
			clientQuery = any_clientQuery_result1;
			serverQuery = var162;
			defaultVars = getDefaultValues_upvr(getOperationDefinition_upvr(any_transformDocument_result1));
			asQuery = Object_upvr.assign({}, any_transformDocument_result1, {
				definitions = Array_upvr.map(any_transformDocument_result1.definitions, function(arg1_22) -- Line 842
					--[[ Upvalues[1]:
						[1]: Object_upvr (copied, readonly)
					]]
					if arg1_22.kind == "OperationDefinition" and arg1_22.operation ~= "query" then
						return Object_upvr.assign({}, arg1_22, {
							operation = "query";
						})
					end
					return arg1_22
				end);
			});
		}
		local function _(arg1_23) -- Line 851, Named "add"
			--[[ Upvalues[2]:
				[1]: transformCache_upvr (readonly)
				[2]: tbl_27_upvr (readonly)
			]]
			if arg1_23 ~= nil and not transformCache_upvr:has(arg1_23) then
				transformCache_upvr:set(arg1_23, tbl_27_upvr)
			end
		end
		if arg2 ~= nil and not transformCache_upvr:has(arg2) then
			transformCache_upvr:set(arg2, tbl_27_upvr)
		end
		if any_transformDocument_result1 ~= nil and not transformCache_upvr:has(any_transformDocument_result1) then
			transformCache_upvr:set(any_transformDocument_result1, tbl_27_upvr)
		end
		if any_clientQuery_result1 ~= nil and not transformCache_upvr:has(any_clientQuery_result1) then
			transformCache_upvr:set(any_clientQuery_result1, tbl_27_upvr)
		end
		local var170 = var162
		if var170 ~= nil and not transformCache_upvr:has(var170) then
			transformCache_upvr:set(var170, tbl_27_upvr)
		end
	end
	return transformCache_upvr:get(arg2)
end
function tbl_3_upvr.getVariables(arg1, arg2, arg3) -- Line 868
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	return Object_upvr.assign({}, arg1:transform(arg2).defaultVars, arg3)
end
function tbl_3_upvr.watchQuery(arg1, arg2) -- Line 872
	--[[ Upvalues[3]:
		[1]: Object_upvr (readonly)
		[2]: QueryInfo_upvr (readonly)
		[3]: ObservableQuery_2_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, arg2, {
		variables = arg1:getVariables(arg2.query, arg2.variables);
	})
	if typeof(any_assign_result1.notifyOnNetworkStatusChange) == "nil" then
		any_assign_result1.notifyOnNetworkStatusChange = false
	end
	local any_new_result1_2 = QueryInfo_upvr.new(arg1.cache)
	local tbl_23 = {}
	tbl_23.queryManager = arg1
	tbl_23.queryInfo = any_new_result1_2
	tbl_23.options = any_assign_result1
	local any_new_result1_8 = ObservableQuery_2_upvr.new(tbl_23)
	arg1.queries:set(any_new_result1_8.queryId, any_new_result1_2)
	any_new_result1_2:init({
		document = any_assign_result1.query;
		observableQuery = any_new_result1_8;
		variables = any_assign_result1.variables;
	})
	return any_new_result1_8
end
function tbl_3_upvr.query(arg1, arg2, arg3) -- Line 900
	--[[ Upvalues[2]:
		[1]: invariant_2_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	if arg3 == nil then
		local any_generateQueryId_result1_upvw = arg1:generateQueryId()
	end
	local query_4 = arg2.query
	invariant_2_upvr(query_4, "query option is required. You must specify your GraphQL document ".."in the query option.")
	if arg2.query.kind ~= "Document" then
		query_4 = false
	else
		query_4 = true
	end
	invariant_2_upvr(query_4, "You must wrap the query string in a \"gql\" tag.")
	invariant_2_upvr(not Boolean_upvr.toJSBoolean(arg2.returnPartialData), "returnPartialData option only supported on watchQuery.")
	invariant_2_upvr(not Boolean_upvr.toJSBoolean(arg2.pollInterval), "pollInterval option only supported on watchQuery.")
	return arg1:fetchQuery(any_generateQueryId_result1_upvw, arg2):andThen(function(arg1_24) -- Line 927
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_generateQueryId_result1_upvw (read and write)
		]]
		arg1:stopQuery(any_generateQueryId_result1_upvw)
		return arg1_24
	end):catch(function(arg1_25) -- Line 931
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_generateQueryId_result1_upvw (read and write)
		]]
		arg1:stopQuery(any_generateQueryId_result1_upvw)
		error(arg1_25)
	end)
end
function tbl_3_upvr.generateQueryId(arg1) -- Line 937
	arg1.queryIdCounter += 1
	return tostring(arg1.queryIdCounter)
end
function tbl_3_upvr.generateRequestId(arg1) -- Line 944
	arg1.requestIdCounter += 1
	return arg1.requestIdCounter
end
function tbl_3_upvr.generateMutationId(arg1) -- Line 951
	arg1.mutationIdCounter += 1
	return tostring(arg1.mutationIdCounter)
end
function tbl_3_upvr.stopQueryInStore(arg1, arg2) -- Line 958
	arg1:stopQueryInStoreNoBroadcast(arg2)
	arg1:broadcastQueries()
end
function tbl_3_upvr.stopQueryInStoreNoBroadcast(arg1, arg2) -- Line 963
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local any_get_result1_3 = arg1.queries:get(arg2)
	if Boolean_upvr.toJSBoolean(any_get_result1_3) then
		any_get_result1_3:stop()
	end
end
function tbl_3_upvr.clearStore(arg1) -- Line 970
	--[[ Upvalues[3]:
		[1]: InvariantError_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: NetworkStatus_upvr (readonly)
	]]
	arg1:cancelPendingFetches(InvariantError_upvr.new("Store reset while query was in flight (not completed in link chain)"))
	arg1.queries:forEach(function(arg1_26, arg2) -- Line 978
		--[[ Upvalues[2]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: NetworkStatus_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean(arg1_26.observableQuery) then
			arg1_26.networkStatus = NetworkStatus_upvr.loading
		else
			arg1_26:stop()
		end
	end)
	if Boolean_upvr.toJSBoolean(arg1.mutationStore) then
		arg1.mutationStore = {}
	end
	return arg1.cache:reset()
end
function tbl_3_upvr.resetStore(arg1) -- Line 996
	return arg1:clearStore():andThen(function() -- Line 1003
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:reFetchObservableQueries()
	end)
end
local Set_upvr = LuauPolyfill.Set
local isDocumentNode_upvr = utilities.isDocumentNode
local isNonNullObject_upvr = utilities.isNonNullObject
local HttpService_upvr = game:GetService("HttpService")
function tbl_3_upvr.getObservableQueries(arg1, arg2) -- Line 1008
	--[[ Upvalues[11]:
		[1]: Map_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: isDocumentNode_upvr (readonly)
		[5]: isNonNullObject_upvr (readonly)
		[6]: Boolean_upvr (readonly)
		[7]: makeUniqueId_upvr (readonly)
		[8]: ObservableQuery_2_upvr (readonly)
		[9]: Object_upvr (readonly)
		[10]: invariant_2_upvr (readonly)
		[11]: HttpService_upvr (readonly)
	]]
	if arg2 == nil then
		local const_string_upvw = "active"
	end
	local any_new_result1_7_upvr = Map_upvr.new(nil)
	local any_new_result1_4_upvr = Map_upvr.new(nil)
	local any_new_result1_6_upvr = Set_upvr.new()
	if Array_upvr.isArray(const_string_upvw) then
		Array_upvr.forEach(const_string_upvw, function(arg1_27) -- Line 1023
			--[[ Upvalues[6]:
				[1]: any_new_result1_4_upvr (readonly)
				[2]: isDocumentNode_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: isNonNullObject_upvr (copied, readonly)
				[5]: Boolean_upvr (copied, readonly)
				[6]: any_new_result1_6_upvr (readonly)
			]]
			if typeof(arg1_27) == "string" then
				any_new_result1_4_upvr:set(arg1_27, false)
			else
				if isDocumentNode_upvr(arg1_27) then
					any_new_result1_4_upvr:set(arg1:transform(arg1_27).document, false)
					return
				end
				if isNonNullObject_upvr(arg1_27) and Boolean_upvr.toJSBoolean(arg1_27.query) then
					any_new_result1_6_upvr:add(arg1_27)
				end
			end
		end)
	end
	arg1.queries:forEach(function(arg1_28, arg2_12) -- Line 1034
		--[[ Upvalues[4]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: const_string_upvw (read and write)
			[3]: any_new_result1_7_upvr (readonly)
			[4]: any_new_result1_4_upvr (readonly)
		]]
		local observableQuery = arg1_28.observableQuery
		local document = arg1_28.document
		if Boolean_upvr.toJSBoolean(observableQuery) then
			if const_string_upvw == "all" then
				any_new_result1_7_upvr:set(arg2_12, observableQuery)
				return
			end
			local queryName = observableQuery.queryName
			if observableQuery.options.fetchPolicy == "standby" or not observableQuery:hasObservers() then return end
			if const_string_upvw == "active" or Boolean_upvr.toJSBoolean(queryName) and any_new_result1_4_upvr:has(queryName) or Boolean_upvr.toJSBoolean(document) and any_new_result1_4_upvr:has(document) then
				any_new_result1_7_upvr:set(arg2_12, observableQuery)
				if Boolean_upvr.toJSBoolean(queryName) then
					any_new_result1_4_upvr:set(queryName, true)
				end
				if Boolean_upvr.toJSBoolean(document) then
					any_new_result1_4_upvr:set(document, true)
				end
			end
		end
	end)
	if Boolean_upvr.toJSBoolean(any_new_result1_6_upvr.size) then
		for _, v in any_new_result1_6_upvr do
			local makeUniqueId_upvr_result1 = makeUniqueId_upvr("legacyOneTimeQuery")
			local any_init_result1 = arg1:getQuery(makeUniqueId_upvr_result1):init({
				document = v.query;
				variables = v.variables;
			})
			local tbl_25 = {}
			tbl_25.queryManager = arg1
			tbl_25.queryInfo = any_init_result1
			tbl_25.options = Object_upvr.assign({}, v, {
				fetchPolicy = "network-only";
			})
			local any_new_result1_9 = ObservableQuery_2_upvr.new(tbl_25)
			any_init_result1:setObservableQuery(any_new_result1_9)
			any_new_result1_7_upvr:set(makeUniqueId_upvr_result1, any_new_result1_9)
			local var207
		end
	end
	if _G.__DEV__ and Boolean_upvr.toJSBoolean(any_new_result1_4_upvr.size) then
		any_new_result1_4_upvr:forEach(function(arg1_29, arg2_13) -- Line 1086
			--[[ Upvalues[2]:
				[1]: invariant_2_upvr (copied, readonly)
				[2]: HttpService_upvr (copied, readonly)
			]]
			if not arg1_29 then
				if typeof(arg2_13) == "string" then
				else
				end
				invariant_2_upvr.warn("Unknown query %s%s requested in refetchQueries options.include array":format("", HttpService_upvr:JSONEncode(arg2_13)))
			end
		end)
	end
	return var207
end
function tbl_3_upvr.reFetchObservableQueries(arg1, arg2) -- Line 1101
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: toJSBoolean_upvr (readonly)
	]]
	if arg2 == nil then
		local var209_upvw = false
	end
	local module_20_upvr = {}
	if Boolean_upvr.toJSBoolean(var209_upvw) then
	else
	end
	arg1:getObservableQueries("active"):forEach(function(arg1_30, arg2_14) -- Line 1109
		--[[ Upvalues[4]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: var209_upvw (read and write)
			[3]: module_20_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local fetchPolicy_6 = arg1_30.options.fetchPolicy
		arg1_30:resetLastResults()
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 10. Error Block 10 start (CF ANALYSIS FAILED)
		if fetchPolicy_6 ~= "standby" then
			if fetchPolicy_6 ~= "cache-only" then
				-- KONSTANTERROR: [17] 12. Error Block 7 start (CF ANALYSIS FAILED)
				table.insert(module_20_upvr, arg1_30:refetch())
				-- KONSTANTERROR: [17] 12. Error Block 7 end (CF ANALYSIS FAILED)
			end
		end
		arg1:getQuery(arg2_14):setDiff(nil)
		-- KONSTANTERROR: [13] 10. Error Block 10 end (CF ANALYSIS FAILED)
	end)
	arg1:broadcastQueries()
	return Promise_upvr.all(Array_upvr.filter(module_20_upvr, toJSBoolean_upvr))
end
function tbl_3_upvr.setObservableQuery(arg1, arg2) -- Line 1124
	arg1:getQuery(arg2.queryId):setObservableQuery(arg2)
end
function tbl_3_upvr.startGraphQLSubscription(arg1, arg2) -- Line 1128
	--[[ Upvalues[4]:
		[1]: shouldWriteResult_upvr (readonly)
		[2]: graphQLResultHasError_upvr (readonly)
		[3]: ApolloError_upvr (readonly)
		[4]: Observable_upvr (readonly)
	]]
	local context_upvw = arg2.context
	if arg2.context == nil then
		context_upvw = {}
	end
	local document_upvw = arg1:transform(arg2.query).document
	local any_getVariables_result1 = arg1:getVariables(document_upvw, arg2.variables)
	local fetchPolicy_2_upvr = arg2.fetchPolicy
	local errorPolicy_upvr_3 = arg2.errorPolicy
	local function makeObservable(arg1_31) -- Line 1140
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: document_upvw (read and write)
			[3]: context_upvw (read and write)
			[4]: fetchPolicy_2_upvr (readonly)
			[5]: shouldWriteResult_upvr (copied, readonly)
			[6]: errorPolicy_upvr_3 (readonly)
			[7]: graphQLResultHasError_upvr (copied, readonly)
			[8]: ApolloError_upvr (copied, readonly)
		]]
		return arg1:getObservableFromLink(document_upvw, context_upvw, arg1_31):map(function(arg1_32) -- Line 1141
			--[[ Upvalues[8]:
				[1]: fetchPolicy_2_upvr (copied, readonly)
				[2]: shouldWriteResult_upvr (copied, readonly)
				[3]: errorPolicy_upvr_3 (copied, readonly)
				[4]: arg1 (copied, readonly)
				[5]: document_upvw (copied, read and write)
				[6]: arg1_31 (readonly)
				[7]: graphQLResultHasError_upvr (copied, readonly)
				[8]: ApolloError_upvr (copied, readonly)
			]]
			if fetchPolicy_2_upvr ~= "no-cache" then
				if shouldWriteResult_upvr(arg1_32, errorPolicy_upvr_3) then
					local tbl_22 = {
						query = document_upvw;
						result = arg1_32.data;
						dataId = "ROOT_SUBSCRIPTION";
					}
					tbl_22.variables = arg1_31
					arg1.cache:write(tbl_22)
				end
				arg1:broadcastQueries()
			end
			if graphQLResultHasError_upvr(arg1_32) then
				error(ApolloError_upvr.new({
					graphQLErrors = arg1_32.errors;
				}))
			end
			return arg1_32
		end)
	end
	if arg1:transform(document_upvw).hasClientExports then
		local any_andThen_result1_upvr = arg1.localState:addExportedVariables(document_upvw, any_getVariables_result1, context_upvw):andThen(makeObservable)
		return Observable_upvr.new(function(arg1_33) -- Line 1171
			--[[ Upvalues[1]:
				[1]: any_andThen_result1_upvr (readonly)
			]]
			local var223_upvw
			any_andThen_result1_upvr:andThen(function(arg1_34) -- Line 1173
				--[[ Upvalues[2]:
					[1]: var223_upvw (read and write)
					[2]: arg1_33 (readonly)
				]]
				var223_upvw = arg1_34:subscribe(arg1_33)
				return var223_upvw
			end, arg1_33.error)
			return function() -- Line 1177
				--[[ Upvalues[1]:
					[1]: var223_upvw (read and write)
				]]
				if var223_upvw ~= nil then
					return var223_upvw:unsubscribe()
				end
				return var223_upvw
			end
		end)
	end
	return makeObservable(any_getVariables_result1)
end
function tbl_3_upvr.stopQuery(arg1, arg2) -- Line 1190
	arg1:stopQueryNoBroadcast(arg2)
	arg1:broadcastQueries()
end
function tbl_3_upvr.stopQueryNoBroadcast(arg1, arg2) -- Line 1195
	arg1:stopQueryInStoreNoBroadcast(arg2)
	arg1:removeQuery(arg2)
end
function tbl_3_upvr.removeQuery(arg1, arg2) -- Line 1200
	arg1.fetchCancelFns:delete(arg2)
	arg1:getQuery(arg2):stop()
	arg1.queries:delete(arg2)
end
function tbl_3_upvr.broadcastQueries(arg1) -- Line 1211
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.onBroadcast) then
		arg1:onBroadcast()
	end
	arg1.queries:forEach(function(arg1_35, arg2) -- Line 1216
		return arg1_35:notify()
	end)
end
function tbl_3_upvr.getLocalState(arg1) -- Line 1221
	return arg1.localState
end
local canonicalStringify_upvr = require(script.Parent.Parent.cache).canonicalStringify
local execute_upvr = require(script.Parent.Parent.link.core).execute
function tbl_3_upvr.getObservableFromLink(arg1, arg2, arg3, arg4, arg5) -- Line 1225
	--[[ Upvalues[10]:
		[1]: Boolean_upvr (readonly)
		[2]: getOperationName_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: canonicalStringify_upvr (readonly)
		[6]: Concast_upvr (readonly)
		[7]: execute_upvr (readonly)
		[8]: Observable_upvr (readonly)
		[9]: toJSBoolean_upvr (readonly)
		[10]: asyncMap_upvr (readonly)
	]]
	if arg5 == nil then
		if Boolean_upvr.toJSBoolean(arg3) then
			if arg3.queryDeduplication ~= nil then
				local queryDeduplication = arg3.queryDeduplication
			else
			end
		else
		end
	end
	local var230
	local serverQuery_upvr = arg1:transform(arg2).serverQuery
	if Boolean_upvr.toJSBoolean(serverQuery_upvr) then
		local inFlightLinkObservables_upvw = arg1.inFlightLinkObservables
		local tbl_12 = {
			query = serverQuery_upvr;
		}
		tbl_12.variables = arg4
		local var234
		local function INLINED_13() -- Internal function, doesn't exist in bytecode
			var230 = var230(var234)
			var234 = serverQuery_upvr
			var230 = getOperationName_upvr
			return var230
		end
		if not var234 or not INLINED_13() then
			var230 = nil
		end
		tbl_12.operationName = var230
		var230 = arg1:prepareContext(Object_upvr.assign({}, arg3, {
			forceFetch = not arg1.queryDeduplication;
		}))
		tbl_12.context = var230
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg1.queryDeduplication then
			var230 = inFlightLinkObservables_upvw:get(serverQuery_upvr)
			local function INLINED_14() -- Internal function, doesn't exist in bytecode
				var234 = var230
				return var234
			end
			if not Boolean_upvr.toJSBoolean(var230) or not INLINED_14() then
				var234 = Map_upvr.new(nil)
				local var237_upvr = var234
			end
			inFlightLinkObservables_upvw:set(serverQuery_upvr, var237_upvr)
			local var227_result1_upvr = canonicalStringify_upvr(arg4)
			if not Boolean_upvr.toJSBoolean(var237_upvr:get(var227_result1_upvr)) then
				local any_new_result1 = Concast_upvr.new({execute_upvr(arg1.link, tbl_12)})
				var237_upvr:set(var227_result1_upvr, any_new_result1)
				any_new_result1:cleanup(function() -- Line 1277
					--[[ Upvalues[5]:
						[1]: Boolean_upvr (copied, readonly)
						[2]: var237_upvr (readonly)
						[3]: var227_result1_upvr (readonly)
						[4]: inFlightLinkObservables_upvw (readonly)
						[5]: serverQuery_upvr (readonly)
					]]
					if Boolean_upvr.toJSBoolean(var237_upvr:delete(var227_result1_upvr)) and var237_upvr.size < 1 then
						inFlightLinkObservables_upvw:delete(serverQuery_upvr)
					end
				end)
				-- KONSTANTWARNING: GOTO [177] #135
			end
		else
			var237_upvr = Concast_upvr
			var230 = var237_upvr.new
			var237_upvr = {}
			local var242 = var237_upvr
			var227_result1_upvr = execute_upvr
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var227_result1_upvr = var227_result1_upvr(arg1.link, tbl_12)
			var242[1] = var227_result1_upvr
			var230 = var230(var242)
		end
	else
		inFlightLinkObservables_upvw = Concast_upvr.new
		var230 = Observable_upvr
		var230 = {}
		var242 = {}
		var230.data = var242
		;({})[1] = var230.of(var230)
		inFlightLinkObservables_upvw = inFlightLinkObservables_upvw({})
		inFlightLinkObservables_upvw = arg1:prepareContext(tbl_12.context)
	end
	inFlightLinkObservables_upvw = arg1:transform(arg2).clientQuery
	local var244_upvr = inFlightLinkObservables_upvw
	if toJSBoolean_upvr(var244_upvr) then
	end
	return asyncMap_upvr(inFlightLinkObservables_upvw, function(arg1_36) -- Line 1298
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: var244_upvr (readonly)
			[3]: inFlightLinkObservables_upvw (read and write)
			[4]: arg4 (readonly)
		]]
		local module_23 = {
			document = var244_upvr;
		}
		module_23.remoteResult = arg1_36
		module_23.context = inFlightLinkObservables_upvw
		module_23.variables = arg4
		return arg1.localState:runResolvers(module_23)
	end)
end
local isApolloError_upvr = errors.isApolloError
function tbl_3_upvr.getResultsFromLink(arg1, arg2, arg3, arg4) -- Line 1311
	--[[ Upvalues[6]:
		[1]: asyncMap_upvr (readonly)
		[2]: isNonEmptyArray_upvr (readonly)
		[3]: ApolloError_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: NetworkStatus_upvr (readonly)
		[6]: isApolloError_upvr (readonly)
	]]
	arg2.lastRequestId = arg1:generateRequestId()
	local lastRequestId_upvr = arg2.lastRequestId
	return asyncMap_upvr(arg1:getObservableFromLink(arg2.document, arg4.context, arg4.variables), function(arg1_37) -- Line 1321
		--[[ Upvalues[8]:
			[1]: isNonEmptyArray_upvr (copied, readonly)
			[2]: lastRequestId_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
			[5]: ApolloError_upvr (copied, readonly)
			[6]: arg3 (readonly)
			[7]: Boolean_upvr (copied, readonly)
			[8]: NetworkStatus_upvr (copied, readonly)
		]]
		local var253
		if var253 <= lastRequestId_upvr then
			if isNonEmptyArray_upvr(arg1_37.errors) then
				var253 = arg4
				if var253.errorPolicy == "none" then
					var253 = arg2
					var253 = var253:markError(ApolloError_upvr.new({
						graphQLErrors = arg1_37.errors;
					}))
					error(var253)
				end
			end
			arg2:markResult(arg1_37, arg4, arg3)
			arg2:markReady()
		end
		local module_4 = {}
		var253 = arg1_37.data
		module_4.data = var253
		var253 = false
		module_4.loading = var253
		local function INLINED_16() -- Internal function, doesn't exist in bytecode
			var253 = arg2.networkStatus
			return var253
		end
		if not Boolean_upvr.toJSBoolean(arg2.networkStatus) or not INLINED_16() then
			var253 = NetworkStatus_upvr.ready
		end
		module_4.networkStatus = var253
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if isNonEmptyArray_upvr(arg1_37.errors) then
			var253 = arg4.errorPolicy
			if var253 ~= "ignore" then
				var253 = arg1_37.errors
				module_4.errors = var253
			end
		end
		return module_4
	end, function(arg1_38) -- Line 1350
		--[[ Upvalues[4]:
			[1]: isApolloError_upvr (copied, readonly)
			[2]: ApolloError_upvr (copied, readonly)
			[3]: lastRequestId_upvr (readonly)
			[4]: arg2 (readonly)
		]]
		local var257
		if isApolloError_upvr(arg1_38) then
			var257 = arg1_38
		else
			local tbl_16 = {}
			tbl_16.networkError = arg1_38
			var257 = ApolloError_upvr.new(tbl_16)
		end
		if arg2.lastRequestId <= lastRequestId_upvr then
			arg2:markError(var257)
		end
		error(var257)
	end)
end
local applyNextFetchPolicy_upvr = ObservableQuery.applyNextFetchPolicy
function tbl_3_upvr.fetchQueryObservable(arg1, arg2, arg3, arg4) -- Line 1368
	--[[ Upvalues[5]:
		[1]: NetworkStatus_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: Concast_upvr (readonly)
		[5]: applyNextFetchPolicy_upvr (readonly)
	]]
	if arg4 == nil then
	end
	local document_2 = arg1:transform(arg3.query).document
	local fetchPolicy = arg3.fetchPolicy
	if fetchPolicy == nil then
		fetchPolicy = "cache-first"
	end
	if arg3.errorPolicy == nil then
	end
	if arg3.returnPartialData == nil then
	end
	if arg3.notifyOnNetworkStatusChange == nil then
	end
	if arg3.context == nil then
	end
	local any_assign_result1_2_upvr = Object_upvr.assign({}, arg3, {
		query = document_2;
		variables = arg1:getVariables(document_2, arg3.variables);
		fetchPolicy = fetchPolicy;
		errorPolicy = "none";
		returnPartialData = false;
		notifyOnNetworkStatusChange = false;
		context = {};
	})
	local any_getQuery_result1_upvr = arg1:getQuery(arg2)
	local loading_upvw = NetworkStatus_upvr.loading
	local function fromVariables_upvr(arg1_39) -- Line 1417, Named "fromVariables"
		--[[ Upvalues[4]:
			[1]: any_assign_result1_2_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_getQuery_result1_upvr (readonly)
			[4]: loading_upvw (read and write)
		]]
		any_assign_result1_2_upvr.variables = arg1_39
		return arg1:fetchQueryByPolicy(any_getQuery_result1_upvr, any_assign_result1_2_upvr, loading_upvw)
	end
	local var267_upvw
	arg1.fetchCancelFns:set(arg2, function(arg1_40) -- Line 1430
		--[[ Upvalues[2]:
			[1]: Promise_upvr (copied, readonly)
			[2]: var267_upvw (read and write)
		]]
		Promise_upvr.delay(0):andThen(function() -- Line 1433
			--[[ Upvalues[2]:
				[1]: var267_upvw (copied, read and write)
				[2]: arg1_40 (readonly)
			]]
			return var267_upvw:cancel(arg1_40)
		end)
	end)
	var267_upvw = Concast_upvr.new((function() -- Line 1441
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_assign_result1_2_upvr (readonly)
			[3]: fromVariables_upvr (readonly)
		]]
		if arg1:transform(any_assign_result1_2_upvr.query).hasClientExports then
			return arg1.localState:addExportedVariables(any_assign_result1_2_upvr.query, any_assign_result1_2_upvr.variables, any_assign_result1_2_upvr.context):andThen(fromVariables_upvr)
		end
		return fromVariables_upvr(any_assign_result1_2_upvr.variables)
	end)())
	local var270 = var267_upvw
	var270:cleanup(function() -- Line 1458
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: applyNextFetchPolicy_upvr (copied, readonly)
			[4]: arg3 (readonly)
		]]
		arg1.fetchCancelFns:delete(arg2)
		applyNextFetchPolicy_upvr(arg3)
	end)
	return var270
end
function tbl_3_upvr.refetchQueries(arg1, arg2) -- Line 1466
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: makeUniqueId_upvr (readonly)
		[3]: Map_upvr (readonly)
		[4]: instanceof_upvr (readonly)
		[5]: QueryInfo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local updateCache_3 = arg2.updateCache
	local include = arg2.include
	local onQueryUpdated_upvr = arg2.onQueryUpdated
	local var275
	if var275 == nil then
		var275 = false
	end
	if arg2.removeOptimistic == nil then
		if Boolean_upvr.toJSBoolean(var275) then
			local _ = makeUniqueId_upvr("refetchQueries")
		else
		end
	end
	local any_new_result1_5_upvr = Map_upvr.new(nil)
	if Boolean_upvr.toJSBoolean(include) then
		arg1:getObservableQueries(include):forEach(function(arg1_41, arg2_15) -- Line 1490
			--[[ Upvalues[2]:
				[1]: any_new_result1_5_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			local tbl_6 = {}
			tbl_6.oq = arg1_41
			tbl_6.lastDiff = arg1:getQuery(arg2_15):getDiff()
			any_new_result1_5_upvr:set(arg2_15, tbl_6)
		end)
	end
	local any_new_result1_3_upvr = Map_upvr.new(nil)
	if Boolean_upvr.toJSBoolean(updateCache_3) then
		local tbl_8 = {
			update = updateCache_3;
		}
		if var275 then
			if Boolean_upvr.toJSBoolean(nil) then
				-- KONSTANTWARNING: GOTO [74] #58
			end
		end
		tbl_8.optimistic = false
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_8.removeOptimistic = nil
		function tbl_8.onWatchUpdated(arg1_42, arg2_16, arg3, arg4) -- Line 1545
			--[[ Upvalues[7]:
				[1]: instanceof_upvr (copied, readonly)
				[2]: QueryInfo_upvr (copied, readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: onQueryUpdated_upvr (readonly)
				[5]: any_new_result1_5_upvr (readonly)
				[6]: arg2 (readonly)
				[7]: any_new_result1_3_upvr (readonly)
			]]
			local var282
			if instanceof_upvr(arg2_16.watcher, QueryInfo_upvr) then
				var282 = arg2_16.watcher.observableQuery
			else
				var282 = instanceof_upvr(arg2_16.watcher, QueryInfo_upvr)
			end
			if Boolean_upvr.toJSBoolean(var282) then
				local var283
				if var283 then
					var283 = any_new_result1_5_upvr:delete
					var283(var282.queryId)
					var283 = onQueryUpdated_upvr(arg2, var282, arg3, arg4)
					if var283 == true then
						var283 = var282:refetch()
					end
					if var283 ~= false then
						any_new_result1_3_upvr:set(var282, var283)
					end
					return false
				end
				if onQueryUpdated_upvr then
					local tbl_30 = {
						oq = var282;
					}
					tbl_30.lastDiff = arg4
					tbl_30.diff = arg3
					any_new_result1_5_upvr:set(var282.queryId, tbl_30)
				end
			end
			return nil
		end
		arg1.cache:batch(tbl_8)
	end
	if Boolean_upvr.toJSBoolean(any_new_result1_5_upvr.size) then
		any_new_result1_5_upvr:forEach(function(arg1_43, arg2_17) -- Line 1593
			--[[ Upvalues[4]:
				[1]: onQueryUpdated_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: any_new_result1_3_upvr (readonly)
				[4]: arg1 (readonly)
			]]
			local oq = arg1_43.oq
			local diff = arg1_43.diff
			local var288
			if onQueryUpdated_upvr ~= nil then
				if diff == nil then
					local queryInfo = oq.queryInfo
					queryInfo:reset()
					diff = queryInfo:getDiff()
				end
				var288 = onQueryUpdated_upvr(arg2, oq, diff, arg1_43.lastDiff)
			end
			if onQueryUpdated_upvr == nil or var288 == true then
				var288 = oq:refetch()
			end
			if var288 ~= false then
				any_new_result1_3_upvr:set(oq, var288)
			end
			local string_find_result1 = string.find(arg2_17, "legacyOneTimeQuery")
			if string_find_result1 ~= nil and 1 <= string_find_result1 then
				arg1:stopQueryNoBroadcast(arg2_17)
			end
		end)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if Boolean_upvr.toJSBoolean(nil) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.cache:removeOptimistic(nil)
	end
	return any_new_result1_3_upvr
end
local equal_upvr = require(Parent.jsutils.equal)
local isNetworkRequestInFlight_upvr = networkStatus_3.isNetworkRequestInFlight
local CacheWriteBehavior_upvr = QueryInfo.CacheWriteBehavior
function tbl_3_upvr.fetchQueryByPolicy(arg1, arg2, arg3, arg4) -- Line 1653
	--[[ Upvalues[10]:
		[1]: Boolean_upvr (readonly)
		[2]: NetworkStatus_upvr (readonly)
		[3]: isNonEmptyArray_upvr (readonly)
		[4]: equal_upvr (readonly)
		[5]: invariant_2_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: Observable_upvr (readonly)
		[8]: Object_upvr (readonly)
		[9]: isNetworkRequestInFlight_upvr (readonly)
		[10]: CacheWriteBehavior_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	local query_2_upvr = arg3.query
	local variables_3_upvr = arg3.variables
	local fetchPolicy_3_upvr = arg3.fetchPolicy
	local returnPartialData_upvr_2 = arg3.returnPartialData
	local context_upvr_3 = arg3.context
	local networkStatus = arg2.networkStatus
	local tbl_15 = {
		document = query_2_upvr;
		variables = variables_3_upvr;
	}
	tbl_15.networkStatus = arg4
	arg2:init(tbl_15)
	local function resultsFromCache(arg1_48, arg2_19) -- Line 1683
		--[[ Upvalues[15]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: NetworkStatus_upvr (copied, readonly)
			[4]: isNonEmptyArray_upvr (copied, readonly)
			[5]: equal_upvr (copied, readonly)
			[6]: returnPartialData_upvr_2 (readonly)
			[7]: invariant_2_upvr (copied, readonly)
			[8]: Array_upvr (copied, readonly)
			[9]: Observable_upvr (copied, readonly)
			[10]: Object_upvr (copied, readonly)
			[11]: isNetworkRequestInFlight_upvr (copied, readonly)
			[12]: arg1 (readonly)
			[13]: query_2_upvr (readonly)
			[14]: context_upvr_3 (readonly)
			[15]: variables_3_upvr (readonly)
		]]
		if arg2_19 == nil then
			if not Boolean_upvr.toJSBoolean(arg2.networkStatus) or not arg2.networkStatus then
			end
		end
		local result = arg1_48.result
		if _G.__DEV__ and arg1_48.missing ~= nil and isNonEmptyArray_upvr(arg1_48.missing) and not equal_upvr(result, {}) and not Boolean_upvr.toJSBoolean(returnPartialData_upvr_2) then
			invariant_2_upvr.debug("Missing cache result fields: %s":format(Array_upvr.join(Array_upvr.map(arg1_48.missing, function(arg1_49) -- Line 1701
				--[[ Upvalues[1]:
					[1]: Array_upvr (copied, readonly)
				]]
				return Array_upvr.join(arg1_49.path, '.')
			end), ", ")), arg1_48.missing)
		end
		local loading_upvw_3 = NetworkStatus_upvr.loading
		local function fromData_upvr(arg1_50) -- Line 1710, Named "fromData"
			--[[ Upvalues[6]:
				[1]: Observable_upvr (copied, readonly)
				[2]: Object_upvr (copied, readonly)
				[3]: isNetworkRequestInFlight_upvr (copied, readonly)
				[4]: loading_upvw_3 (read and write)
				[5]: Boolean_upvr (copied, readonly)
				[6]: arg1_48 (readonly)
			]]
			local module_6 = {}
			module_6.data = arg1_50
			module_6.loading = isNetworkRequestInFlight_upvr(loading_upvw_3)
			local var341 = loading_upvw_3
			module_6.networkStatus = var341
			if Boolean_upvr.toJSBoolean(arg1_48.complete) then
				var341 = nil
			else
				var341 = {}
				var341.partial = true
			end
			return Observable_upvr.of(Object_upvr.assign({}, module_6, var341))
		end
		if Boolean_upvr.toJSBoolean(result) and arg1:transform(query_2_upvr).hasForcedResolvers then
			return arg1.localState:runResolvers({
				document = query_2_upvr;
				remoteResult = {
					data = result;
				};
				context = context_upvr_3;
				variables = variables_3_upvr;
				onlyRunForcedResolvers = true;
			}):andThen(function(arg1_51) -- Line 1737
				--[[ Upvalues[2]:
					[1]: fromData_upvr (readonly)
					[2]: Boolean_upvr (copied, readonly)
				]]
				local var345
				local function INLINED_18() -- Internal function, doesn't exist in bytecode
					var345 = arg1_51.data
					return var345
				end
				if not Boolean_upvr.toJSBoolean(arg1_51.data) or not INLINED_18() then
					var345 = nil
				end
				return fromData_upvr(var345)
			end)
		end
		return fromData_upvr(result)
	end
	if fetchPolicy_3_upvr == "no-cache" then
		-- KONSTANTWARNING: GOTO [68] #49
	end
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 40. Error Block 79 start (CF ANALYSIS FAILED)
	local var346_upvw
	if arg4 == NetworkStatus_upvr.refetch and arg3.refetchWritePolicy ~= "merge" then
		var346_upvw = CacheWriteBehavior_upvr.OVERWRITE
	else
		var346_upvw = CacheWriteBehavior_upvr.MERGE
	end
	local errorPolicy_upvr = arg3.errorPolicy
	local function resultsFromLink() -- Line 1758
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: var346_upvw (read and write)
			[4]: variables_3_upvr (readonly)
			[5]: context_upvr_3 (readonly)
			[6]: fetchPolicy_3_upvr (readonly)
			[7]: errorPolicy_upvr (readonly)
		]]
		return arg1:getResultsFromLink(arg2, var346_upvw, {
			variables = variables_3_upvr;
			context = context_upvr_3;
			fetchPolicy = fetchPolicy_3_upvr;
			errorPolicy = errorPolicy_upvr;
		})
	end
	local notifyOnNetworkStatusChange = arg3.notifyOnNetworkStatusChange
	if notifyOnNetworkStatusChange then
		notifyOnNetworkStatusChange = false
		if typeof(networkStatus) == "number" then
			notifyOnNetworkStatusChange = false
			if networkStatus ~= arg4 then
				notifyOnNetworkStatusChange = isNetworkRequestInFlight_upvr(arg4)
			end
		end
	end
	if fetchPolicy_3_upvr == "cache-first" then
		local any_getDiff_result1_6 = arg2:getDiff(variables_3_upvr)
		if Boolean_upvr.toJSBoolean(any_getDiff_result1_6.complete) then
			return {resultsFromCache(any_getDiff_result1_6, arg2:markReady())}
		end
		if Boolean_upvr.toJSBoolean(returnPartialData_upvr_2) or Boolean_upvr.toJSBoolean(notifyOnNetworkStatusChange) then
			return {resultsFromCache(any_getDiff_result1_6), resultsFromLink()}
		end
		return {resultsFromLink()}
	end
	if fetchPolicy_3_upvr == "cache-and-network" then
		local any_getDiff_result1_2 = arg2:getDiff(variables_3_upvr)
		if Boolean_upvr.toJSBoolean(any_getDiff_result1_2.complete) or Boolean_upvr.toJSBoolean(returnPartialData_upvr_2) or Boolean_upvr.toJSBoolean(notifyOnNetworkStatusChange) then
			return {resultsFromCache(any_getDiff_result1_2), resultsFromLink()}
		end
		return {resultsFromLink()}
	end
	if fetchPolicy_3_upvr == "cache-only" then
		return {resultsFromCache(arg2:getDiff(variables_3_upvr), arg2:markReady())}
	end
	if fetchPolicy_3_upvr == "network-only" then
		if Boolean_upvr.toJSBoolean(notifyOnNetworkStatusChange) then
			return {resultsFromCache((function() -- Line 1679, Named "readCache"
				--[[ Upvalues[2]:
					[1]: arg2 (readonly)
					[2]: variables_3_upvr (readonly)
				]]
				return arg2:getDiff(variables_3_upvr)
			end)()), resultsFromLink()}
		end
		return {resultsFromLink()}
	end
	if fetchPolicy_3_upvr == "no-cache" then
		if Boolean_upvr.toJSBoolean(notifyOnNetworkStatusChange) then
			return {resultsFromCache(arg2:getDiff()), resultsFromLink()}
		end
		return {resultsFromLink()}
	end
	if fetchPolicy_3_upvr == "standby" then
		return {}
	end
	local any_getDiff_result1 = arg2:getDiff(variables_3_upvr)
	if Boolean_upvr.toJSBoolean(any_getDiff_result1.complete) then
		return {resultsFromCache(any_getDiff_result1, arg2:markReady())}
	end
	if Boolean_upvr.toJSBoolean(returnPartialData_upvr_2) or Boolean_upvr.toJSBoolean(notifyOnNetworkStatusChange) then
		return {resultsFromCache(any_getDiff_result1), resultsFromLink()}
	end
	do
		return {resultsFromLink()}
	end
	-- KONSTANTERROR: [54] 40. Error Block 79 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.getQuery(arg1, arg2) -- Line 1834
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: QueryInfo_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg2) and not arg1.queries:has(arg2) then
		arg1.queries:set(arg2, QueryInfo_upvr.new(arg1.cache))
	end
	return arg1.queries:get(arg2)
end
function tbl_3_upvr.prepareContext(arg1, arg2) -- Line 1841
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	if arg2 == nil then
	end
	return Object_upvr.assign({}, arg1.localState:prepareContext({}), {
		clientAwareness = arg1.clientAwareness;
	})
end
module_11.QueryManager = tbl_3_upvr
return module_11