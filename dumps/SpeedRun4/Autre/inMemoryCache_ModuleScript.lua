-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:05
-- Luau version 6, Types version 3
-- Time taken: 0.014332 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local Set_upvr = LuauPolyfill.Set
local NULL_upvr = require(Parent.utilities).NULL
local module_2 = {}
local ApolloCache_upvr = require(script.Parent.Parent.core.cache).ApolloCache
local utilities = require(script.Parent.Parent.Parent.utilities)
local entityStore = require(script.Parent.entityStore)
local reactiveVars = require(script.Parent.reactiveVars)
local policies = require(script.Parent.policies)
local hasOwn_upvr = require(script.Parent.helpers).hasOwn
local canonicalStringify_upvr = require(script.Parent["object-canon"]).canonicalStringify
local tbl_4_upvr = {
	dataIdFromObject = policies.defaultDataIdFromObject;
	addTypename = true;
	resultCaching = true;
	typePolicies = {};
}
local setmetatable_result1_upvr = setmetatable({}, {
	__index = ApolloCache_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
local Map_upvr = LuauPolyfill.Map
local makeVar_upvr = reactiveVars.makeVar
local Policies_upvr = policies.Policies
function setmetatable_result1_upvr.new(arg1) -- Line 199
	--[[ Upvalues[8]:
		[1]: ApolloCache_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: Set_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: makeVar_upvr (readonly)
		[6]: Object_upvr (readonly)
		[7]: tbl_4_upvr (readonly)
		[8]: Policies_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(ApolloCache_upvr.new(), setmetatable_result1_upvr)
	local var22
	if var22 == nil then
		var22 = {}
	end
	setmetatable_result1.watches = Set_upvr.new()
	setmetatable_result1.typenameDocumentCache = Map_upvr.new(nil)
	setmetatable_result1.makeVar = makeVar_upvr
	setmetatable_result1.txCount = 0
	setmetatable_result1.config = Object_upvr.assign({}, tbl_4_upvr, var22)
	setmetatable_result1.addTypename = setmetatable_result1.config.addTypename
	setmetatable_result1.policies = Policies_upvr.new({
		cache = setmetatable_result1;
		dataIdFromObject = setmetatable_result1.config.dataIdFromObject;
		possibleTypes = setmetatable_result1.config.possibleTypes;
		typePolicies = setmetatable_result1.config.typePolicies;
	})
	setmetatable_result1:init()
	return setmetatable_result1
end
local EntityStore_Root_upvr = entityStore.EntityStore_Root
function setmetatable_result1_upvr.init(arg1) -- Line 227
	--[[ Upvalues[1]:
		[1]: EntityStore_Root_upvr (readonly)
	]]
	arg1.data = EntityStore_Root_upvr.new({
		policies = arg1.policies;
		resultCaching = arg1.config.resultCaching;
	})
	arg1.optimisticData = arg1.data.stump
	arg1:resetResultCache()
end
local StoreReader_upvr = require(script.Parent.readFromStore).StoreReader
local StoreWriter_upvr = require(script.Parent.writeToStore).StoreWriter
local wrap_upvr = require(Parent.optimism).wrap
local supportsResultCaching_upvr = entityStore.supportsResultCaching
function setmetatable_result1_upvr.resetResultCache(arg1, arg2) -- Line 247
	--[[ Upvalues[6]:
		[1]: StoreReader_upvr (readonly)
		[2]: StoreWriter_upvr (readonly)
		[3]: wrap_upvr (readonly)
		[4]: supportsResultCaching_upvr (readonly)
		[5]: canonicalStringify_upvr (readonly)
		[6]: Set_upvr (readonly)
	]]
	local storeReader = arg1.storeReader
	local tbl_2 = {}
	tbl_2.cache = arg1
	tbl_2.addTypename = arg1.addTypename
	local resultCacheMaxSize = arg1.config.resultCacheMaxSize
	tbl_2.resultCacheMaxSize = resultCacheMaxSize
	if arg2 then
		resultCacheMaxSize = nil
	elseif storeReader then
		resultCacheMaxSize = storeReader.canon
	else
		resultCacheMaxSize = nil
	end
	tbl_2.canon = resultCacheMaxSize
	arg1.storeReader = StoreReader_upvr.new(tbl_2)
	arg1.storeWriter = StoreWriter_upvr.new(arg1, arg1.storeReader)
	arg1.maybeBroadcastWatch = wrap_upvr(function(arg1_2, arg2_2, arg3) -- Line 264
		--[[ Upvalues[1]:
			[1]: arg1 (read and write)
		]]
		return arg1:broadcastWatch(arg2_2, arg3)
	end, {
		max = arg1.config.resultCacheMaxSize;
		makeCacheKey = function(arg1_3, arg2_3) -- Line 268, Named "makeCacheKey"
			--[[ Upvalues[3]:
				[1]: arg1 (read and write)
				[2]: supportsResultCaching_upvr (copied, readonly)
				[3]: canonicalStringify_upvr (copied, readonly)
			]]
			local var35
			if arg2_3.optimistic then
				var35 = arg1.optimisticData
			else
				var35 = arg1.data
			end
			if supportsResultCaching_upvr(var35) then
				return var35:makeCacheKey(arg2_3.query, arg2_3.callback, canonicalStringify_upvr({
					optimistic = arg2_3.optimistic;
					rootId = arg2_3.rootId;
					variables = arg2_3.variables;
				}))
			end
		end;
	}, arg1)
	Set_upvr.new({arg1.data.group, arg1.optimisticData.group}):forEach(function(arg1_4) -- Line 304
		return arg1_4:resetCaching()
	end)
end
function setmetatable_result1_upvr.restore(arg1, arg2) -- Line 309
	arg1:init()
	if arg2 then
		arg1.data:replace(arg2)
	end
	return arg1
end
function setmetatable_result1_upvr.extract(arg1, arg2) -- Line 322
	if arg2 == nil then
	end
	if false then
		return arg1.optimisticData:extract()
	end
	return arg1.data:extract()
end
local instanceof_upvr = LuauPolyfill.instanceof
local MissingFieldError_upvr = require(script.Parent.Parent.core.types.common).MissingFieldError
function setmetatable_result1_upvr.read(arg1, arg2) -- Line 334
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: NULL_upvr (readonly)
		[3]: instanceof_upvr (readonly)
		[4]: MissingFieldError_upvr (readonly)
	]]
	local var41_upvw
	if arg2.returnPartialData == nil then
		var41_upvw = false
	else
		var41_upvw = arg2.returnPartialData
	end
	local pcall_result1_2, pcall_result2_5 = pcall(function() -- Line 349
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: var41_upvw (read and write)
			[5]: NULL_upvr (copied, readonly)
		]]
		local tbl_3 = {}
		local var44
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var44 = arg1.optimisticData
			return var44
		end
		if not arg2.optimistic or not INLINED() then
			var44 = arg1.data
		end
		tbl_3.store = var44
		var44 = arg1.config
		tbl_3.config = var44
		var44 = var41_upvw
		tbl_3.returnPartialData = var44
		local result = arg1.storeReader:diffQueryAgainstStore(Object_upvr.assign({}, arg2, tbl_3)).result
		if not result then
			result = NULL_upvr
		end
		return result
	end)
	if not pcall_result1_2 then
		if instanceof_upvr(pcall_result2_5, MissingFieldError_upvr) then
			return NULL_upvr
		end
		error(pcall_result2_5)
	end
	return pcall_result2_5
end
function setmetatable_result1_upvr.write(arg1, arg2) -- Line 374
	local pcall_result1_5, pcall_result2 = pcall(function() -- Line 376
		--[[ Upvalues[2]:
			[1]: arg1 (read and write)
			[2]: arg2 (readonly)
		]]
		local var49 = arg1
		var49.txCount += 1
		return arg1.storeWriter:writeToStore(arg1.data, arg2)
	end)
	arg1.txCount -= 1
	if arg1.txCount == 0 and arg2.broadcast ~= false then
		arg1:broadcastWatches()
	end
	if not pcall_result1_5 then
		error(pcall_result2)
	end
	return pcall_result2
end
function setmetatable_result1_upvr.modify(arg1, arg2) -- Line 394
	--[[ Upvalues[1]:
		[1]: hasOwn_upvr (readonly)
	]]
	local var57_upvw
	if var57_upvw then
		var57_upvw = arg2.id
		if not var57_upvw then
			var57_upvw = false
			return var57_upvw
		end
	end
	var57_upvw = nil
	if arg2.optimistic then
		var57_upvw = arg1.optimisticData
	else
		var57_upvw = arg1.data
	end
	local pcall_result1, pcall_result2_3 = pcall(function() -- Line 419
		--[[ Upvalues[3]:
			[1]: arg1 (read and write)
			[2]: var57_upvw (read and write)
			[3]: arg2 (readonly)
		]]
		local var59 = arg1
		var59.txCount += 1
		return var57_upvw:modify(arg2.id or "ROOT_QUERY", arg2.fields)
	end)
	arg1.txCount -= 1
	if arg1.txCount == 0 and arg2.broadcast ~= false then
		arg1:broadcastWatches()
	end
	if not pcall_result1 then
		error(pcall_result2_3)
	end
	return pcall_result2_3
end
function setmetatable_result1_upvr.diff(arg1, arg2) -- Line 439
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local module = {}
	local var63
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var63 = arg1.optimisticData
		return var63
	end
	if not arg2.optimistic or not INLINED_2() then
		var63 = arg1.data
	end
	module.store = var63
	var63 = arg2.id or "ROOT_QUERY"
	module.rootId = var63
	var63 = arg1.config
	module.config = var63
	return arg1.storeReader:diffQueryAgainstStore(Object_upvr.assign({}, arg2, module))
end
local recallCache_upvr = reactiveVars.recallCache
local forgetCache_upvr = reactiveVars.forgetCache
function setmetatable_result1_upvr.watch(arg1, arg2) -- Line 449
	--[[ Upvalues[2]:
		[1]: recallCache_upvr (readonly)
		[2]: forgetCache_upvr (readonly)
	]]
	if arg1.watches.size == 0 then
		recallCache_upvr(arg1)
	end
	arg1.watches:add(arg2)
	if arg2.immediate then
		arg1:maybeBroadcastWatch(arg2)
	end
	return function() -- Line 470
		--[[ Upvalues[3]:
			[1]: arg1 (read and write)
			[2]: arg2 (readonly)
			[3]: forgetCache_upvr (copied, readonly)
		]]
		if arg1.watches:delete(arg2) and arg1.watches.size == 0 then
			forgetCache_upvr(arg1)
		end
		arg1.maybeBroadcastWatch:forget(arg2)
	end
end
function setmetatable_result1_upvr.gc(arg1, arg2) -- Line 486
	--[[ Upvalues[1]:
		[1]: canonicalStringify_upvr (readonly)
	]]
	canonicalStringify_upvr:reset()
	if arg2 and arg1.txCount == 0 then
		if arg2.resetResultCache then
			arg1:resetResultCache(arg2.resetResultIdentities)
			return arg1.optimisticData:gc()
		end
		if arg2.resetResultIdentities then
			arg1.storeReader:resetCanon()
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return arg1.optimisticData:gc()
end
function setmetatable_result1_upvr.retain(arg1, arg2, arg3) -- Line 518
	if arg3 then
		return arg1.optimisticData:retain(arg2)
	end
	return arg1.data:retain(arg2)
end
function setmetatable_result1_upvr.release(arg1, arg2, arg3) -- Line 533
	if arg3 then
		return arg1.optimisticData:release(arg2)
	end
	return arg1.data:release(arg2)
end
local isReference_upvr = utilities.isReference
function setmetatable_result1_upvr.identify(arg1, arg2) -- Line 549
	--[[ Upvalues[1]:
		[1]: isReference_upvr (readonly)
	]]
	if isReference_upvr(arg2) then
		return arg2.__ref
	end
	return arg1.policies:identify(arg2)[1]
end
function setmetatable_result1_upvr.evict(arg1, arg2) -- Line 557
	--[[ Upvalues[2]:
		[1]: hasOwn_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local var68_upvw
	if not arg2.id then
		if hasOwn_upvr(var68_upvw, "id") then
			return false
		end
		var68_upvw = Object_upvr.assign(table.clone(var68_upvw), {
			id = "ROOT_QUERY";
		})
	end
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 572
		--[[ Upvalues[2]:
			[1]: arg1 (read and write)
			[2]: var68_upvw (read and write)
		]]
		local var71 = arg1
		var71.txCount += 1
		return arg1.optimisticData:evict(var68_upvw)
	end)
	arg1.txCount -= 1
	if arg1.txCount == 0 and var68_upvw.broadcast ~= false then
		arg1:broadcastWatches()
	end
	if not pcall_result1_3 then
		error(pcall_result2_2)
	end
	return pcall_result2_2
end
local Promise_upvr = require(Parent_2.Promise)
function setmetatable_result1_upvr.reset(arg1) -- Line 594
	--[[ Upvalues[2]:
		[1]: canonicalStringify_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	arg1:init()
	arg1:broadcastWatches()
	canonicalStringify_upvr:reset()
	return Promise_upvr.delay(0)
end
function setmetatable_result1_upvr.removeOptimistic(arg1, arg2) -- Line 601
	local any_removeLayer_result1 = arg1.optimisticData:removeLayer(arg2)
	if any_removeLayer_result1 ~= arg1.optimisticData then
		arg1.optimisticData = any_removeLayer_result1
		arg1:broadcastWatches()
	end
end
function setmetatable_result1_upvr.batch(arg1, arg2) -- Line 609
	--[[ Upvalues[2]:
		[1]: Set_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 33 start (CF ANALYSIS FAILED)
	local var76
	if arg2.optimistic == nil then
		var76 = true
	else
		var76 = arg2.optimistic
	end
	local removeOptimistic_2 = arg2.removeOptimistic
	local onWatchUpdated_3_upvr = arg2.onWatchUpdated
	local function perform(arg1_5) -- Line 614
		--[[ Upvalues[2]:
			[1]: arg1 (read and write)
			[2]: arg2 (readonly)
		]]
		local var79 = arg1
		var79.txCount += 1
		if arg1_5 then
			arg1.optimisticData = arg1_5
			arg1.data = arg1.optimisticData
		end
		local pcall_result1_4, pcall_result2_6 = pcall(arg2.update, arg2, arg1)
		local var82 = arg1
		var82.txCount -= 1
		arg1.data = arg1.data
		arg1.optimisticData = arg1.optimisticData
		if not pcall_result1_4 then
			error(pcall_result2_6)
		end
	end
	local any_new_result1_upvr = Set_upvr.new()
	if onWatchUpdated_3_upvr and arg1.txCount == 0 then
		local tbl = {}
		local function onWatchUpdated(arg1_6, arg2_4) -- Line 651
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:add(arg2_4)
			return false
		end
		tbl.onWatchUpdated = onWatchUpdated
		arg1:broadcastWatches(Object_upvr.assign(table.clone(arg2), tbl))
	end
	if typeof(var76) == "string" then
		arg1.optimisticData = arg1.optimisticData:addLayer(var76, perform)
	elseif var76 == false then
		perform(arg1.data)
	else
		perform()
	end
	if typeof(removeOptimistic_2) == "string" then
		arg1.optimisticData = arg1.optimisticData:removeLayer(removeOptimistic_2)
	end
	if onWatchUpdated_3_upvr and 0 < any_new_result1_upvr.size then
		arg1:broadcastWatches(Object_upvr.assign(table.clone(arg2), {
			onWatchUpdated = function(arg1_7, arg2_5, arg3) -- Line 687, Named "onWatchUpdated"
				--[[ Upvalues[2]:
					[1]: onWatchUpdated_3_upvr (readonly)
					[2]: any_new_result1_upvr (readonly)
				]]
				local var78_result1 = onWatchUpdated_3_upvr(arg1_7, arg2_5, arg3)
				if var78_result1 ~= false then
					any_new_result1_upvr:delete(arg2_5)
				end
				return var78_result1
			end;
		}))
		if 0 < any_new_result1_upvr.size then
			any_new_result1_upvr:forEach(function(arg1_8) -- Line 703
				--[[ Upvalues[1]:
					[1]: arg1 (read and write)
				]]
				return arg1.maybeBroadcastWatch:dirty(arg1_8)
			end)
			-- KONSTANTWARNING: GOTO [119] #86
		end
	else
		arg1:broadcastWatches(arg2)
	end
	-- KONSTANTERROR: [0] 1. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [119] 86. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [119] 86. Error Block 22 end (CF ANALYSIS FAILED)
end
function setmetatable_result1_upvr.performTransaction(arg1, arg2, arg3) -- Line 724
	--[[ Upvalues[1]:
		[1]: NULL_upvr (readonly)
	]]
	local module_3 = {}
	local function update(arg1_9, ...) -- Line 727
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2(...)
	end
	module_3.update = update
	update = arg3
	local var89 = update
	if not var89 then
		if arg3 == NULL_upvr then
			var89 = false
		else
			var89 = true
		end
	end
	module_3.optimistic = var89
	return arg1:batch(module_3)
end
local addTypenameToDocument_upvr = utilities.addTypenameToDocument
function setmetatable_result1_upvr.transformDocument(arg1, arg2) -- Line 736
	--[[ Upvalues[1]:
		[1]: addTypenameToDocument_upvr (readonly)
	]]
	if arg1.addTypename then
		if not arg1.typenameDocumentCache:get(arg2) then
			local addTypenameToDocument_upvr_result1 = addTypenameToDocument_upvr(arg2)
			arg1.typenameDocumentCache:set(arg2, addTypenameToDocument_upvr_result1)
			arg1.typenameDocumentCache:set(addTypenameToDocument_upvr_result1, addTypenameToDocument_upvr_result1)
		end
		return addTypenameToDocument_upvr_result1
	end
	return arg2
end
function setmetatable_result1_upvr.broadcastWatches(arg1, arg2) -- Line 752
	if arg1.txCount == 0 then
		arg1.watches:forEach(function(arg1_10) -- Line 755
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1:maybeBroadcastWatch(arg1_10, arg2)
		end)
	end
end
local equal_upvr = require(Parent.jsutils.equal)
function setmetatable_result1_upvr.broadcastWatch(arg1, arg2, arg3) -- Line 767
	--[[ Upvalues[1]:
		[1]: equal_upvr (readonly)
	]]
	local lastDiff = arg2.lastDiff
	local any_diff_result1 = arg1:diff({
		query = arg2.query;
		variables = arg2.variables;
		optimistic = arg2.optimistic;
	})
	if arg3 then
		if arg2.optimistic and typeof(arg3.optimistic) == "string" then
			any_diff_result1.fromOptimisticTransaction = true
		end
		local onWatchUpdated = arg3.onWatchUpdated
		if onWatchUpdated and onWatchUpdated(arg1, arg2, any_diff_result1, lastDiff) == false then return end
	end
	if not lastDiff or not equal_upvr(lastDiff.result, any_diff_result1.result) then
		arg2.lastDiff = any_diff_result1
		arg2:callback(arg2.lastDiff, lastDiff)
	end
end
module_2.InMemoryCache = setmetatable_result1_upvr
return module_2