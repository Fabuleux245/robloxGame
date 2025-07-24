-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:17
-- Luau version 6, Types version 3
-- Time taken: 0.012518 seconds

local module_2 = {}
local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local clearTimeout_upvr = LuauPolyfill.clearTimeout
local Object_upvr = LuauPolyfill.Object
local equal_upvr = require(Parent.jsutils.equal)
local utilities = require(script.Parent.Parent.utilities)
local networkStatus = require(script.Parent.networkStatus)
local NetworkStatus_upvr = networkStatus.NetworkStatus
local tbl_7_upvr = {
	FORBID = 0;
	OVERWRITE = 1;
}
local var13_upvr = 2
tbl_7_upvr.MERGE = var13_upvr
module_2.CacheWriteBehavior = tbl_7_upvr
if utilities.canUseWeakMap then
	var13_upvr = LuauPolyfill.WeakMap.new()
else
	var13_upvr = LuauPolyfill.Map.new(nil)
end
local function _(arg1, arg2) -- Line 98, Named "wrapDestructiveCacheMethod"
	--[[ Upvalues[1]:
		[1]: var13_upvr (readonly)
	]]
	local var14_upvr = arg1[arg2]
	if typeof(var14_upvr) == "function" then
		arg1[arg2] = function(...) -- Line 105
			--[[ Upvalues[3]:
				[1]: var13_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: var14_upvr (readonly)
			]]
			var13_upvr:set(arg1, (var13_upvr:get(arg1) + 1) % 1000000000000000)
			return var14_upvr(...)
		end
	end
end
local function _(arg1) -- Line 119, Named "cancelNotifyTimeout"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: clearTimeout_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.notifyTimeout) then
		clearTimeout_upvr(arg1.notifyTimeout)
		arg1.notifyTimeout = nil
	end
end
local tbl_6_upvr = {}
tbl_6_upvr.__index = tbl_6_upvr
local Set_upvr = LuauPolyfill.Set
function tbl_6_upvr.new(arg1) -- Line 204
	--[[ Upvalues[3]:
		[1]: Set_upvr (readonly)
		[2]: var13_upvr (readonly)
		[3]: tbl_6_upvr (readonly)
	]]
	local tbl = {
		listeners = Set_upvr.new();
		document = nil;
		lastRequestId = 1;
		subscriptions = Set_upvr.new();
		stopped = false;
	}
	tbl.cache = arg1
	tbl.dirty = false
	tbl.observableQuery = nil
	if not var13_upvr:has(arg1) then
		var13_upvr:set(arg1, 0)
		local evict_2_upvr = arg1.evict
		if typeof(evict_2_upvr) == "function" then
			function arg1.evict(...) -- Line 105
				--[[ Upvalues[3]:
					[1]: var13_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: evict_2_upvr (readonly)
				]]
				var13_upvr:set(arg1, (var13_upvr:get(arg1) + 1) % 1000000000000000)
				return evict_2_upvr(...)
			end
		end
		evict_2_upvr = arg1.modify
		local var21_upvr = evict_2_upvr
		if typeof(var21_upvr) == "function" then
			function arg1.modify(...) -- Line 105
				--[[ Upvalues[3]:
					[1]: var13_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: var21_upvr (readonly)
				]]
				var13_upvr:set(arg1, (var13_upvr:get(arg1) + 1) % 1000000000000000)
				return var21_upvr(...)
			end
		end
		var21_upvr = arg1.reset
		local var23_upvr = var21_upvr
		if typeof(var23_upvr) == "function" then
			function arg1.reset(...) -- Line 105
				--[[ Upvalues[3]:
					[1]: var13_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: var23_upvr (readonly)
				]]
				var13_upvr:set(arg1, (var13_upvr:get(arg1) + 1) % 1000000000000000)
				return var23_upvr(...)
			end
		end
	end
	var23_upvr = setmetatable(tbl, tbl_6_upvr)
	return var23_upvr
end
function tbl_6_upvr.init(arg1, arg2) -- Line 230
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: NetworkStatus_upvr (readonly)
		[3]: equal_upvr (readonly)
		[4]: Object_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not Boolean_upvr.toJSBoolean(arg2.networkStatus) or not arg2.networkStatus then
	end
	local var25
	if Boolean_upvr.toJSBoolean(arg1.variables) and arg1.networkStatus ~= NetworkStatus_upvr.loading and not equal_upvr(arg1.variables, arg2.variables) then
	end
	if not equal_upvr(arg2.variables, arg1.variables) then
		arg1.lastDiff = nil
	end
	local tbl_2 = {}
	var25 = arg2.document
	tbl_2.document = var25
	var25 = arg2.variables
	tbl_2.variables = var25
	var25 = Object_upvr.None
	tbl_2.networkError = var25
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var25 = arg1.graphQLErrors
		return var25
	end
	if not Boolean_upvr.toJSBoolean(arg1.graphQLErrors) or not INLINED() then
		var25 = {}
	end
	tbl_2.graphQLErrors = var25
	tbl_2.networkStatus = NetworkStatus_upvr.setVariables
	Object_upvr.assign(arg1, tbl_2)
	if Boolean_upvr.toJSBoolean(arg2.observableQuery) then
		arg1:setObservableQuery(arg2.observableQuery)
	end
	if Boolean_upvr.toJSBoolean(arg2.lastRequestId) then
		arg1.lastRequestId = arg2.lastRequestId
	end
	return arg1
end
function tbl_6_upvr.reset(arg1) -- Line 271
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: clearTimeout_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.notifyTimeout) then
		clearTimeout_upvr(arg1.notifyTimeout)
		arg1.notifyTimeout = nil
	end
	arg1.lastDiff = nil
	arg1.dirty = false
end
function tbl_6_upvr.getDiff(arg1, arg2) -- Line 277
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: equal_upvr (readonly)
	]]
	if arg2 == nil then
		local variables_2 = arg1.variables
	end
	local any_getDiffOptions_result1_2 = arg1:getDiffOptions(variables_2)
	if Boolean_upvr.toJSBoolean(arg1.lastDiff) and equal_upvr(any_getDiffOptions_result1_2, arg1.lastDiff.options) then
		return arg1.lastDiff.diff
	end
	arg1.variables = variables_2
	arg1:updateWatch(arg1.variables)
	local observableQuery_3 = arg1.observableQuery
	if Boolean_upvr.toJSBoolean(observableQuery_3) and observableQuery_3.options.fetchPolicy == "no-cache" then
		return {
			complete = false;
		}
	end
	local any_diff_result1 = arg1.cache:diff(any_getDiffOptions_result1_2)
	arg1:updateLastDiff(any_diff_result1, any_getDiffOptions_result1_2)
	return any_diff_result1
end
function tbl_6_upvr.updateLastDiff(arg1, arg2, arg3) -- Line 302
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var32
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 14 start (CF ANALYSIS FAILED)
	local tbl_3 = {}
	tbl_3.diff = arg2
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var32 = arg3
		return var32
	end
	if not Boolean_upvr.toJSBoolean(arg3) or not INLINED_2() then
		var32 = arg1:getDiffOptions()
	end
	tbl_3.options = var32
	if not tbl_3 then
		-- KONSTANTERROR: [23] 19. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 7 end (CF ANALYSIS FAILED)
	end
	arg1.lastDiff = nil
	-- KONSTANTERROR: [6] 6. Error Block 14 end (CF ANALYSIS FAILED)
end
function tbl_6_upvr.getDiffOptions(arg1, arg2) -- Line 311
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if arg2 == nil then
	end
	local observableQuery = arg1.observableQuery
	local module = {
		query = arg1.document;
		variables = arg1.variables;
		returnPartialData = true;
		optimistic = true;
	}
	local var36 = not Boolean_upvr.toJSBoolean(observableQuery)
	if not var36 then
		if observableQuery.options.canonizeResults == false then
			var36 = false
		else
			var36 = true
		end
	end
	module.canonizeResults = var36
	return module
end
local setTimeout_upvr = LuauPolyfill.setTimeout
function tbl_6_upvr.setDiff(arg1, arg2) -- Line 327
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: equal_upvr (readonly)
		[3]: setTimeout_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local var40
	if Boolean_upvr.toJSBoolean(arg1.lastDiff) then
		var40 = arg1.lastDiff.diff
	else
		var40 = arg1.lastDiff
	end
	arg1:updateLastDiff(arg2)
	if Boolean_upvr.toJSBoolean(var40) then
		-- KONSTANTWARNING: GOTO [31] #24
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 23. Error Block 29 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(arg2) then
	else
	end
	if not arg1.dirty and not equal_upvr(var40, arg2) then
		arg1.dirty = true
		if not Boolean_upvr.toJSBoolean(arg1.notifyTimeout) then
			arg1.notifyTimeout = setTimeout_upvr(function() -- Line 352
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1:notify()
			end, 0)
		end
	end
	-- KONSTANTERROR: [30] 23. Error Block 29 end (CF ANALYSIS FAILED)
end
function tbl_6_upvr.setObservableQuery(arg1, arg2) -- Line 359
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if arg2 == arg1.observableQuery then
	else
		if Boolean_upvr.toJSBoolean(arg1.oqListener) then
			arg1.listeners:delete(arg1.oqListener)
		end
		arg1.observableQuery = arg2
		if Boolean_upvr.toJSBoolean(arg2) and arg2 ~= nil then
			arg2.queryInfo = arg1
			function arg1.oqListener() -- Line 373
				--[[ Upvalues[3]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: arg2 (readonly)
				]]
				if Boolean_upvr.toJSBoolean(arg1:getDiff().fromOptimisticTransaction) then
					arg2.observe(arg2)
				else
					arg2:reobserve()
				end
			end
			arg1.listeners:add(arg1.oqListener)
			return
		end
		arg1.oqListener = nil
	end
end
function tbl_6_upvr.notify(arg1) -- Line 391
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: clearTimeout_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.notifyTimeout) then
		clearTimeout_upvr(arg1.notifyTimeout)
		arg1.notifyTimeout = nil
	end
	if arg1:shouldNotify() then
		arg1.listeners:forEach(function(arg1_2) -- Line 395
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1_2(arg1)
		end)
	end
	arg1.dirty = false
end
local isNetworkRequestInFlight_upvr = networkStatus.isNetworkRequestInFlight
function tbl_6_upvr.shouldNotify(arg1) -- Line 402
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: isNetworkRequestInFlight_upvr (readonly)
	]]
	if not arg1.dirty or not Boolean_upvr.toJSBoolean(arg1.listeners.size) then
		return false
	end
	if isNetworkRequestInFlight_upvr(arg1.networkStatus) and Boolean_upvr.toJSBoolean(arg1.observableQuery) then
		local fetchPolicy = arg1.observableQuery.options.fetchPolicy
		if fetchPolicy ~= "cache-only" and fetchPolicy ~= "cache-and-network" then
			return false
		end
	end
	return true
end
function tbl_6_upvr.stop(arg1) -- Line 416
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	if not arg1.stopped then
		arg1.stopped = true
		arg1:reset()
		arg1:cancel()
		arg1.cancel = tbl_6_upvr.cancel
		arg1.subscriptions:forEach(function(arg1_4) -- Line 426
			return arg1_4:unsubscribe()
		end)
		local observableQuery_4 = arg1.observableQuery
		if Boolean_upvr.toJSBoolean(observableQuery_4) then
			observableQuery_4:stopPolling()
		end
	end
end
function tbl_6_upvr.cancel(arg1) -- Line 440
end
function tbl_6_upvr.updateWatch(arg1, arg2) -- Line 442
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: equal_upvr (readonly)
	]]
	if arg2 == nil then
	end
	local observableQuery_5 = arg1.observableQuery
	if Boolean_upvr.toJSBoolean(observableQuery_5) and observableQuery_5.options.fetchPolicy == "no-cache" then
	else
		local tbl_8 = {}
		tbl_8.watcher = arg1
		function tbl_8.callback(arg1_5, arg2_2) -- Line 461
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1:setDiff(arg2_2)
		end
		local any_assign_result1 = Object_upvr.assign({}, arg1:getDiffOptions(arg1.variables), tbl_8)
		if not Boolean_upvr.toJSBoolean(arg1.lastWatch) or not equal_upvr(Object_upvr.assign({}, any_assign_result1, {
			callback = Object_upvr.None;
		}), Object_upvr.assign({}, arg1.lastWatch, {
			callback = Object_upvr.None;
		})) then
			arg1:cancel()
			arg1.lastWatch = any_assign_result1
			arg1.cancel = arg1.cache:watch(arg1.lastWatch)
		end
	end
end
function tbl_6_upvr.resetLastWrite(arg1) -- Line 477
	arg1.lastWrite = nil
end
function tbl_6_upvr.shouldWrite(arg1, arg2, arg3) -- Line 481
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: var13_upvr (readonly)
		[3]: equal_upvr (readonly)
	]]
	local lastWrite_2 = arg1.lastWrite
	local any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean(lastWrite_2)
	if any_toJSBoolean_result1 then
		any_toJSBoolean_result1 = false
		if lastWrite_2.dmCount == var13_upvr:get(arg1.cache) then
			any_toJSBoolean_result1 = equal_upvr(arg3, lastWrite_2.variables)
			if any_toJSBoolean_result1 then
				any_toJSBoolean_result1 = equal_upvr(arg2.data, lastWrite_2.result.data)
			end
		end
	end
	return not any_toJSBoolean_result1
end
local isNonEmptyArray_upvr = utilities.isNonEmptyArray
local shouldWriteResult_upvw
function tbl_6_upvr.markResult(arg1, arg2, arg3, arg4) -- Line 507
	--[[ Upvalues[5]:
		[1]: isNonEmptyArray_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: shouldWriteResult_upvw (read and write)
		[4]: var13_upvr (readonly)
		[5]: Boolean_upvr (readonly)
	]]
	if isNonEmptyArray_upvr(arg2.errors) then
		arg1.graphQLErrors = arg2.errors
	else
		arg1.graphQLErrors = {}
	end
	arg1:reset()
	if arg3.fetchPolicy == "no-cache" then
		arg1:updateLastDiff({
			result = arg2.data;
			complete = true;
		}, arg1:getDiffOptions(arg3.variables))
	elseif arg4 ~= tbl_7_upvr.FORBID then
		if shouldWriteResult_upvw(arg2, arg3.errorPolicy) then
			arg1.cache:performTransaction(function(arg1_6) -- Line 529
				--[[ Upvalues[7]:
					[1]: arg1 (readonly)
					[2]: arg2 (readonly)
					[3]: arg3 (readonly)
					[4]: arg4 (readonly)
					[5]: tbl_7_upvr (copied, readonly)
					[6]: var13_upvr (copied, readonly)
					[7]: Boolean_upvr (copied, readonly)
				]]
				if arg1:shouldWrite(arg2, arg3.variables) then
					local tbl_4 = {
						query = arg1.document;
						data = arg2.data;
					}
					local variables = arg3.variables
					tbl_4.variables = variables
					if arg4 ~= tbl_7_upvr.OVERWRITE then
						variables = false
					else
						variables = true
					end
					tbl_4.overwrite = variables
					arg1_6:writeQuery(tbl_4)
					local tbl_5 = {}
					tbl_5.result = arg2
					tbl_5.variables = arg3.variables
					tbl_5.dmCount = var13_upvr:get(arg1.cache)
					arg1.lastWrite = tbl_5
				elseif Boolean_upvr.toJSBoolean(arg1.lastDiff) and Boolean_upvr.toJSBoolean(arg1.lastDiff.diff.complete) then
					arg2.data = arg1.lastDiff.diff.result
					return
				end
				local any_getDiffOptions_result1 = arg1:getDiffOptions(arg3.variables)
				local any_diff_result1_2 = arg1_6:diff(any_getDiffOptions_result1)
				if not arg1.stopped then
					arg1:updateWatch(arg3.variables)
				end
				arg1:updateLastDiff(any_diff_result1_2, any_getDiffOptions_result1)
				if Boolean_upvr.toJSBoolean(any_diff_result1_2.complete) then
					arg2.data = any_diff_result1_2.result
				end
			end)
			return
		end
		arg1.lastWrite = nil
	end
end
function tbl_6_upvr.markReady(arg1) -- Line 613
	--[[ Upvalues[1]:
		[1]: NetworkStatus_upvr (readonly)
	]]
	arg1.networkError = nil
	arg1.networkStatus = NetworkStatus_upvr.ready
	return arg1.networkStatus
end
function tbl_6_upvr.markError(arg1, arg2) -- Line 619
	--[[ Upvalues[2]:
		[1]: NetworkStatus_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	arg1.networkStatus = NetworkStatus_upvr.error
	arg1.lastWrite = nil
	arg1:reset()
	if Boolean_upvr.toJSBoolean(arg2.graphQLErrors) then
		arg1.graphQLErrors = arg2.graphQLErrors
	end
	if Boolean_upvr.toJSBoolean(arg2.networkError) then
		arg1.networkError = arg2.networkError
	end
	return arg2
end
module_2.QueryInfo = tbl_6_upvr
local graphQLResultHasError_upvr = utilities.graphQLResultHasError
function shouldWriteResult_upvw(arg1, arg2) -- Line 637, Named "shouldWriteResult"
	--[[ Upvalues[2]:
		[1]: graphQLResultHasError_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	if arg2 == nil then
		local const_string = "none"
	end
	if const_string ~= "ignore" then
		if const_string ~= "all" then
		else
		end
	end
	local var73 = not graphQLResultHasError_upvr(arg1)
	if not var73 then
		if true and Boolean_upvr.toJSBoolean(arg1.data) then
			var73 = true
		end
	end
	return var73
end
module_2.shouldWriteResult = shouldWriteResult_upvw
return module_2