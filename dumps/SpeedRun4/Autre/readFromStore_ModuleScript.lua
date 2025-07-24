-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:08
-- Luau version 6, Types version 3
-- Time taken: 0.013954 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Set_upvr = LuauPolyfill.Set
local NULL_upvr = require(Parent.utilities).NULL
local module = {}
local invariant = require(Parent.jsutils.invariant)
local invariant_upvr = invariant.invariant
local utilities = require(script.Parent.Parent.Parent.utilities)
local isReference_upvr = utilities.isReference
local entityStore = require(script.Parent.entityStore)
local supportsResultCaching_upvr = entityStore.supportsResultCaching
local object-canon = require(script.Parent["object-canon"])
local ObjectCanon_upvr = object-canon.ObjectCanon
local MissingFieldError_upvr = require(script.Parent.Parent.core.types.common).MissingFieldError
local function missingFromInvariant_upvr(arg1, arg2) -- Line 114, Named "missingFromInvariant"
	--[[ Upvalues[2]:
		[1]: MissingFieldError_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	return MissingFieldError_upvr.new(arg1.message, Array_upvr.slice(arg2.path), arg2.query, arg2.variables)
end
local function _(arg1) -- Line 147, Named "execSelectionSetKeyArgs"
	return {arg1.selectionSet, arg1.objectOrReference, arg1.context, arg1.context.canonizeResults}
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.resetCanon(arg1) -- Line 195
	--[[ Upvalues[1]:
		[1]: ObjectCanon_upvr (readonly)
	]]
	arg1.canon = ObjectCanon_upvr.new()
end
local function makeSelectionSetCacheKey_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 200, Named "makeSelectionSetCacheKey"
	--[[ Upvalues[2]:
		[1]: supportsResultCaching_upvr (readonly)
		[2]: isReference_upvr (readonly)
	]]
	local var20
	if supportsResultCaching_upvr(arg4.store) then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = arg3.__ref
			return var20
		end
		if not isReference_upvr(arg3) or not INLINED() then
			var20 = arg3
		end
		return arg4.store:makeCacheKey(arg2, var20, arg4.varString, arg5)
	end
	return nil
end
local function makeSubSelectedCacheKey_upvr(arg1, arg2) -- Line 212, Named "makeSubSelectedCacheKey"
	--[[ Upvalues[1]:
		[1]: supportsResultCaching_upvr (readonly)
	]]
	local context = arg2.context
	if supportsResultCaching_upvr(context.store) then
		return context.store:makeCacheKey(arg2.field, arg2.array, context.varString)
	end
	return nil
end
local WeakMap_upvr = LuauPolyfill.WeakMap
local wrap_upvr = require(Parent.optimism).wrap
local maybeDependOnExistenceOfEntity_upvr = entityStore.maybeDependOnExistenceOfEntity
function tbl_upvr.new(arg1) -- Line 221
	--[[ Upvalues[8]:
		[1]: tbl_upvr (readonly)
		[2]: WeakMap_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: ObjectCanon_upvr (readonly)
		[5]: wrap_upvr (readonly)
		[6]: maybeDependOnExistenceOfEntity_upvr (readonly)
		[7]: makeSelectionSetCacheKey_upvr (readonly)
		[8]: makeSubSelectedCacheKey_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, tbl_upvr)
	setmetatable_result1_upvr.knownResults = WeakMap_upvr.new()
	local tbl = {}
	local keyArgs
	if arg1.addTypename == false then
		keyArgs = false
	else
		keyArgs = true
	end
	tbl.addTypename = keyArgs
	setmetatable_result1_upvr.config = Object_upvr.assign(table.clone(arg1), tbl)
	local canon = arg1.canon
	if not canon then
		canon = ObjectCanon_upvr.new()
	end
	setmetatable_result1_upvr.canon = canon
	local tbl_3 = {}
	keyArgs = setmetatable_result1_upvr.config.resultCacheMaxSize
	tbl_3.max = keyArgs
	function keyArgs(arg1_3, ...) -- Line 271
		local var35 = ...
		return {var35.selectionSet, var35.objectOrReference, var35.context, var35.context.canonizeResults}
	end
	tbl_3.keyArgs = keyArgs
	keyArgs = makeSelectionSetCacheKey_upvr
	tbl_3.makeCacheKey = keyArgs
	keyArgs = setmetatable_result1_upvr
	setmetatable_result1_upvr.executeSelectionSet = wrap_upvr(function(arg1_2, arg2) -- Line 236
		--[[ Upvalues[3]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: maybeDependOnExistenceOfEntity_upvr (copied, readonly)
		]]
		local canonizeResults = arg2.context.canonizeResults
		local any_peek_result1_3 = setmetatable_result1_upvr.executeSelectionSet:peek(table.unpack({arg2.selectionSet, arg2.objectOrReference, arg2.context, not canonizeResults}))
		if any_peek_result1_3 ~= nil then
			if canonizeResults then
				return Object_upvr.assign(table.clone(any_peek_result1_3), {
					result = setmetatable_result1_upvr.canon:admit(any_peek_result1_3.result);
				})
			end
			return any_peek_result1_3
		end
		maybeDependOnExistenceOfEntity_upvr(arg2.context.store, arg2.enclosingRef.__ref)
		return setmetatable_result1_upvr:execSelectionSetImpl(arg2)
	end, tbl_3, keyArgs)
	local tbl_9 = {}
	keyArgs = setmetatable_result1_upvr.config.resultCacheMaxSize
	tbl_9.max = keyArgs
	keyArgs = makeSubSelectedCacheKey_upvr
	tbl_9.makeCacheKey = keyArgs
	keyArgs = setmetatable_result1_upvr
	setmetatable_result1_upvr.executeSubSelectedArray = wrap_upvr(function(arg1_4, arg2) -- Line 281
		--[[ Upvalues[2]:
			[1]: maybeDependOnExistenceOfEntity_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		maybeDependOnExistenceOfEntity_upvr(arg2.context.store, arg2.enclosingRef.__ref)
		return setmetatable_result1_upvr:execSubSelectedArrayImpl(arg2)
	end, tbl_9, keyArgs)
	return setmetatable_result1_upvr
end
local getDefaultValues_upvr = utilities.getDefaultValues
local getQueryDefinition_upvr = utilities.getQueryDefinition
local makeReference_upvr = utilities.makeReference
local getMainDefinition_upvr = utilities.getMainDefinition
local canonicalStringify_upvr = object-canon.canonicalStringify
local createFragmentMap_upvr = utilities.createFragmentMap
local getFragmentDefinitions_upvr = utilities.getFragmentDefinitions
function tbl_upvr.diffQueryAgainstStore(arg1, arg2) -- Line 301
	--[[ Upvalues[8]:
		[1]: Object_upvr (readonly)
		[2]: getDefaultValues_upvr (readonly)
		[3]: getQueryDefinition_upvr (readonly)
		[4]: makeReference_upvr (readonly)
		[5]: getMainDefinition_upvr (readonly)
		[6]: canonicalStringify_upvr (readonly)
		[7]: createFragmentMap_upvr (readonly)
		[8]: getFragmentDefinitions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local query = arg2.query
	local rootId = arg2.rootId
	local var48
	if rootId == nil then
		rootId = "ROOT_QUERY"
	end
	if arg2.returnPartialData == nil then
	end
	if var48 == nil then
		var48 = true
	end
	local any_assign_result1 = Object_upvr.assign({}, getDefaultValues_upvr(getQueryDefinition_upvr(query)), arg2.variables)
	local makeReference_upvr_result1 = makeReference_upvr(rootId)
	local any_executeSelectionSet_result1 = arg1:executeSelectionSet({
		selectionSet = getMainDefinition_upvr(query).selectionSet;
		objectOrReference = makeReference_upvr_result1;
		enclosingRef = makeReference_upvr_result1;
		context = {
			store = arg2.store;
			query = query;
			policies = arg1.config.cache.policies;
			variables = any_assign_result1;
			varString = canonicalStringify_upvr(any_assign_result1);
			canonizeResults = var48;
			fragmentMap = createFragmentMap_upvr(getFragmentDefinitions_upvr(query));
			path = {};
		};
	})
	local missing = any_executeSelectionSet_result1.missing
	if missing then
		if 0 >= #any_executeSelectionSet_result1.missing then
			missing = false
		else
			missing = true
		end
	end
	if missing and not true then
		error(any_executeSelectionSet_result1.missing[1])
	end
	return {
		result = any_executeSelectionSet_result1.result;
		missing = any_executeSelectionSet_result1.missing;
		complete = not missing;
	}
end
function tbl_upvr.isFresh(arg1, arg2, arg3, arg4, arg5) -- Line 349
	--[[ Upvalues[1]:
		[1]: supportsResultCaching_upvr (readonly)
	]]
	if supportsResultCaching_upvr(arg5.store) and arg1.knownResults:get(arg2) == arg4 then
		local any_peek_result1_2 = arg1.executeSelectionSet:peek(arg4, arg3, arg5, arg1.canon:isKnown(arg2))
		if any_peek_result1_2 and arg2 == any_peek_result1_2.result then
			return true
		end
	end
	return false
end
local InvariantError_upvr = invariant.InvariantError
local shouldInclude_upvr = utilities.shouldInclude
local isField_upvr = utilities.isField
local resultKeyNameFromField_upvr = utilities.resultKeyNameFromField
local addTypenameToDocument_upvr = utilities.addTypenameToDocument
local HttpService_upvr = game:GetService("HttpService")
local getFragmentFromSelection_upvr = utilities.getFragmentFromSelection
local mergeDeepArray_upvr = utilities.mergeDeepArray
local maybeDeepFreeze_upvr = utilities.maybeDeepFreeze
function tbl_upvr.execSelectionSetImpl(arg1, arg2) -- Line 375
	--[[ Upvalues[15]:
		[1]: missingFromInvariant_upvr (readonly)
		[2]: InvariantError_upvr (readonly)
		[3]: NULL_upvr (readonly)
		[4]: Set_upvr (readonly)
		[5]: shouldInclude_upvr (readonly)
		[6]: isField_upvr (readonly)
		[7]: resultKeyNameFromField_upvr (readonly)
		[8]: addTypenameToDocument_upvr (readonly)
		[9]: isReference_upvr (readonly)
		[10]: HttpService_upvr (readonly)
		[11]: Array_upvr (readonly)
		[12]: invariant_upvr (readonly)
		[13]: getFragmentFromSelection_upvr (readonly)
		[14]: mergeDeepArray_upvr (readonly)
		[15]: maybeDeepFreeze_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 71 start (CF ANALYSIS FAILED)
	local objectOrReference = arg2.objectOrReference
	local context_2 = arg2.context
	if objectOrReference.__ref and not context_2.policies.rootTypenamesById[objectOrReference.__ref] and not context_2.store:has(objectOrReference.__ref) then
		return {
			result = arg1.canon.empty;
			missing = {missingFromInvariant_upvr(InvariantError_upvr.new("Dangling reference to missing %s object":format(objectOrReference.__ref)), context_2)};
		}
	end
	local tbl_8_upvr = {
		result = NULL_upvr;
	}
	local any_getFieldValue_result1 = context_2.store:getFieldValue(objectOrReference, "__typename")
	if arg1.config.addTypename and type(any_getFieldValue_result1) == "string" and not context_2.policies.rootIdsByTypename[any_getFieldValue_result1] then
		table.insert({}, {
			__typename = any_getFieldValue_result1;
		})
	end
	local function _() -- Line 412, Named "getMissing"
		--[[ Upvalues[1]:
			[1]: tbl_8_upvr (readonly)
		]]
		if not tbl_8_upvr.missing then
			tbl_8_upvr.missing = {}
		end
		return tbl_8_upvr.missing
	end
	local function handleMissing(arg1_5) -- Line 421
		--[[ Upvalues[1]:
			[1]: tbl_8_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if arg1_5.missing then
			if not tbl_8_upvr.missing then
				tbl_8_upvr.missing = {}
			end
			for _, v in arg1_5.missing do
				table.insert(tbl_8_upvr.missing, v)
				local _
			end
		end
		return arg1_5.result
	end
	-- KONSTANTERROR: [0] 1. Error Block 71 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [365] 256. Error Block 57 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [365] 256. Error Block 57 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 75. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [365.20]
	-- KONSTANTERROR: [110] 75. Error Block 10 end (CF ANALYSIS FAILED)
end
local Boolean_upvr = LuauPolyfill.Boolean
local assertSelectionSetForIdValue_upvw
function tbl_upvr.execSubSelectedArrayImpl(arg1, arg2) -- Line 553
	--[[ Upvalues[6]:
		[1]: invariant_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: NULL_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: isReference_upvr (readonly)
		[6]: assertSelectionSetForIdValue_upvw (read and write)
	]]
	local field_upvr = arg2.field
	local array = arg2.array
	local context_upvr = arg2.context
	local var88_upvw
	local function handleMissing_upvr(arg1_6, arg2_2) -- Line 558, Named "handleMissing"
		--[[ Upvalues[3]:
			[1]: var88_upvw (read and write)
			[2]: invariant_upvr (copied, readonly)
			[3]: context_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var93
		if arg1_6.missing then
			local var94 = var88_upvw
			if not var94 then
				var94 = {}
			end
			var88_upvw = var94
			local missing_2 = arg1_6.missing
			var93 = #missing_2
			for i_2 = 1, var93 do
				table.insert(var88_upvw, missing_2[i_2])
				local _
			end
		end
		if table.remove(context_upvr.path) ~= arg2_2 then
			var93 = false
		else
			var93 = true
		end
		invariant_upvr(var93)
		return arg1_6.result
	end
	if field_upvr.selectionSet then
		array = Array_upvr.filter(array, function(arg1_7) -- Line 577
			--[[ Upvalues[1]:
				[1]: context_upvr (readonly)
			]]
			return context_upvr.store:canRead(arg1_7)
		end)
	end
	local var98 = array
	local enclosingRef_upvr = arg2.enclosingRef
	local function var99(arg1_8, arg2_3) -- Line 582
		--[[ Upvalues[11]:
			[1]: NULL_upvr (copied, readonly)
			[2]: context_upvr (readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: handleMissing_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: field_upvr (readonly)
			[7]: enclosingRef_upvr (readonly)
			[8]: Boolean_upvr (copied, readonly)
			[9]: isReference_upvr (copied, readonly)
			[10]: assertSelectionSetForIdValue_upvw (copied, read and write)
			[11]: invariant_upvr (copied, readonly)
		]]
		local var105
		if arg1_8 == var105 then
			var105 = NULL_upvr
			return var105
		end
		var105 = table.insert
		var105(context_upvr.path, arg2_3)
		var105 = Array_upvr.isArray(arg1_8)
		if var105 then
			var105 = #arg1_8
			if 0 < var105 then
				var105 = handleMissing_upvr
				local tbl_4 = {
					field = field_upvr;
				}
				tbl_4.array = arg1_8
				tbl_4.enclosingRef = enclosingRef_upvr
				tbl_4.context = context_upvr
				var105 = var105(arg1:executeSubSelectedArray(tbl_4), arg2_3)
				return var105
			end
		end
		var105 = Boolean_upvr.toJSBoolean(field_upvr.selectionSet)
		local var107
		if var105 then
			var105 = handleMissing_upvr
			local tbl_6 = {}
			var107 = field_upvr.selectionSet
			tbl_6.selectionSet = var107
			tbl_6.objectOrReference = arg1_8
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var107 = arg1_8
				return var107
			end
			if not isReference_upvr(arg1_8) or not INLINED_3() then
				var107 = enclosingRef_upvr
			end
			tbl_6.enclosingRef = var107
			var107 = context_upvr
			tbl_6.context = var107
			var105 = var105(arg1:executeSelectionSet(tbl_6), arg2_3)
			return var105
		end
		var105 = _G.__DEV__
		if var105 then
			var105 = assertSelectionSetForIdValue_upvw
			var105(context_upvr.store, field_upvr, arg1_8)
		end
		if table.remove(context_upvr.path) ~= arg2_3 then
			var105 = false
		else
			var105 = true
		end
		if not var105 then
			invariant_upvr(var105)
		end
		return arg1_8
	end
	local module_2 = {}
	if context_upvr.canonizeResults then
		var98 = arg1.canon:admit(Array_upvr.map(var98, var99))
	else
		var98 = Array_upvr.map(var98, var99)
	end
	module_2.result = var98
	module_2.missing = var88_upvw
	return module_2
end
module.StoreReader = tbl_upvr
local isNonNullObject_upvr = utilities.isNonNullObject
local getTypenameFromStoreObject_upvr = require(script.Parent.helpers).getTypenameFromStoreObject
function assertSelectionSetForIdValue_upvw(arg1, arg2, arg3) -- Line 643, Named "assertSelectionSetForIdValue"
	--[[ Upvalues[7]:
		[1]: Set_upvr (readonly)
		[2]: isNonNullObject_upvr (readonly)
		[3]: invariant_upvr (readonly)
		[4]: isReference_upvr (readonly)
		[5]: getTypenameFromStoreObject_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: Object_upvr (readonly)
	]]
	if not arg2.selectionSet then
		local tbl_2 = {}
		tbl_2[1] = arg3
		local any_new_result1 = Set_upvr.new(tbl_2)
		for _, v_2 in any_new_result1 do
			if isNonNullObject_upvr(v_2) then
				invariant_upvr(not isReference_upvr(v_2), "Missing selection set for object of type %s returned for query field %s":format(getTypenameFromStoreObject_upvr(arg1, v_2) or "nil", arg2.name.value))
				Array_upvr.forEach(Object_upvr.values(v_2), any_new_result1.add, any_new_result1)
			end
		end
	end
end
return module