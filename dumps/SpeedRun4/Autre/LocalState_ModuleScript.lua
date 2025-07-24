-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:14
-- Luau version 6, Types version 3
-- Time taken: 0.013246 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Boolean_upvr = LuauPolyfill.Boolean
local Promise_upvr = require(Parent_2.Promise)
local NULL_upvr = require(Parent.utilities.globals.null).NULL
local module_6 = {}
local GraphQL = require(Parent_2.GraphQL)
local utilities = require(script.Parent.Parent.utilities)
local resultKeyNameFromField_upvr = utilities.resultKeyNameFromField
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1) -- Line 185
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	local client = arg1.client
	local resolvers = arg1.resolvers
	local fragmentMatcher = arg1.fragmentMatcher
	setmetatable_result1.cache = arg1.cache
	if client ~= nil then
		setmetatable_result1.client = client
	end
	if resolvers ~= nil then
		setmetatable_result1:addResolvers(resolvers)
	end
	if fragmentMatcher ~= nil then
		setmetatable_result1:setFragmentMatcher(fragmentMatcher)
	end
	return setmetatable_result1
end
local mergeDeep_upvr = utilities.mergeDeep
function tbl_upvr.addResolvers(arg1, arg2) -- Line 206
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: mergeDeep_upvr (readonly)
	]]
	local var19
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var19 = arg1.resolvers
		return var19
	end
	if not Boolean_upvr.toJSBoolean(arg1.resolvers) or not INLINED() then
		var19 = {}
	end
	arg1.resolvers = var19
	var19 = Array_upvr.isArray(arg2)
	if var19 then
		var19 = Array_upvr.forEach
		var19(arg2, function(arg1_2) -- Line 209
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: mergeDeep_upvr (copied, readonly)
			]]
			arg1.resolvers = mergeDeep_upvr(arg1.resolvers, arg1_2)
		end)
	else
		var19 = mergeDeep_upvr(arg1.resolvers, arg2)
		arg1.resolvers = var19
	end
end
function tbl_upvr.setResolvers(arg1, arg2) -- Line 217
	arg1.resolvers = {}
	arg1:addResolvers(arg2)
end
function tbl_upvr.getResolvers(arg1) -- Line 222
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var21
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var21 = arg1.resolvers
		return var21
	end
	if not Boolean_upvr.toJSBoolean(arg1.resolvers) or not INLINED_2() then
		var21 = {}
	end
	return var21
end
function tbl_upvr.runResolvers(arg1, arg2) -- Line 230
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local document = arg2.document
	local remoteResult_upvr = arg2.remoteResult
	local var24
	if arg2.onlyRunForcedResolvers == nil then
		var24 = false
	end
	if Boolean_upvr.toJSBoolean(document) then
		return arg1:resolveDocument(document, remoteResult_upvr.data, arg2.context, arg2.variables, arg1.fragmentMatcher, var24):andThen(function(arg1_3) -- Line 251
			--[[ Upvalues[2]:
				[1]: Object_upvr (copied, readonly)
				[2]: remoteResult_upvr (readonly)
			]]
			return Object_upvr.assign({}, remoteResult_upvr, {
				data = arg1_3.result;
			})
		end)
	end
	return Promise_upvr.resolve(remoteResult_upvr)
end
function tbl_upvr.setFragmentMatcher(arg1, arg2) -- Line 259
	arg1.fragmentMatcher = arg2
end
function tbl_upvr.getFragmentMatcher(arg1) -- Line 263
	return arg1.fragmentMatcher
end
local hasDirectives_upvr = utilities.hasDirectives
function tbl_upvr.clientQuery(arg1, arg2) -- Line 269
	--[[ Upvalues[3]:
		[1]: hasDirectives_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: NULL_upvr (readonly)
	]]
	if hasDirectives_upvr({"client"}, arg2) and Boolean_upvr.toJSBoolean(arg1.resolvers) then
		return arg2
	end
	return NULL_upvr
end
local removeClientSetsFromDocument_upvr = utilities.removeClientSetsFromDocument
function tbl_upvr.serverQuery(arg1, arg2) -- Line 279
	--[[ Upvalues[1]:
		[1]: removeClientSetsFromDocument_upvr (readonly)
	]]
	return removeClientSetsFromDocument_upvr(arg2)
end
function tbl_upvr.prepareContext(arg1, arg2) -- Line 283
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	local cache_upvr = arg1.cache
	return Object_upvr.assign({}, arg2, {
		cache = cache_upvr;
		getCacheKey = function(arg1_4, arg2_2) -- Line 291, Named "getCacheKey"
			--[[ Upvalues[1]:
				[1]: cache_upvr (readonly)
			]]
			return cache_upvr:identify(arg2_2)
		end;
	})
end
function tbl_upvr.addExportedVariables(arg1, arg2, arg3, arg4) -- Line 300
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	if arg3 == nil then
		local module_7_upvw = {}
	end
	if arg4 == nil then
	end
	local var33
	if Boolean_upvr.toJSBoolean(arg2) then
		local any_buildRootValueFromCache_result1 = arg1:buildRootValueFromCache(arg2, module_7_upvw)
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var33 = any_buildRootValueFromCache_result1
			return var33
		end
		if not Boolean_upvr.toJSBoolean(any_buildRootValueFromCache_result1) or not INLINED_3() then
			var33 = {}
		end
		return arg1:resolveDocument(arg2, var33, arg1:prepareContext({}), module_7_upvw):andThen(function(arg1_5) -- Line 319
			--[[ Upvalues[2]:
				[1]: Object_upvr (copied, readonly)
				[2]: module_7_upvw (read and write)
			]]
			return Object_upvr.assign({}, module_7_upvw, arg1_5.exportedVariables)
		end)
	end
	return Promise_upvr.resolve(Object_upvr.assign({}, module_7_upvw))
end
local visit_upvr = GraphQL.visit
local BREAK_upvr = GraphQL.BREAK
function tbl_upvr.shouldForceResolvers(arg1, arg2) -- Line 327
	--[[ Upvalues[4]:
		[1]: visit_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: BREAK_upvr (readonly)
	]]
	local var38_upvw = false
	visit_upvr(arg2, {
		Directive = {
			enter = function(arg1_6, arg2_3) -- Line 331, Named "enter"
				--[[ Upvalues[4]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: var38_upvw (read and write)
					[3]: Array_upvr (copied, readonly)
					[4]: BREAK_upvr (copied, readonly)
				]]
				if arg2_3.name.value == "client" and Boolean_upvr.toJSBoolean(arg2_3.arguments) then
					var38_upvw = Array_upvr.some(arg2_3.arguments, function(arg1_8) -- Line 333
						local var45 = false
						if arg1_8.name.value == "always" then
							var45 = false
							if arg1_8.value.kind == "BooleanValue" then
								if arg1_8.value.value ~= true then
									var45 = false
								else
									var45 = true
								end
							end
						end
						return var45
					end)
					if var38_upvw then
						return BREAK_upvr
					end
				end
				return nil
			end;
		};
	})
	return var38_upvw
end
local buildQueryFromSelectionSet_upvr = utilities.buildQueryFromSelectionSet
function tbl_upvr.buildRootValueFromCache(arg1, arg2, arg3) -- Line 350
	--[[ Upvalues[1]:
		[1]: buildQueryFromSelectionSet_upvr (readonly)
	]]
	local module = {
		query = buildQueryFromSelectionSet_upvr(arg2);
	}
	module.variables = arg3
	module.returnPartialData = true
	module.optimistic = false
	return arg1.cache:diff(module).result
end
local getMainDefinition_upvr = utilities.getMainDefinition
local getFragmentDefinitions_upvr = utilities.getFragmentDefinitions
local createFragmentMap_upvr = utilities.createFragmentMap
local String_upvr = LuauPolyfill.String
function tbl_upvr.resolveDocument(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 359
	--[[ Upvalues[6]:
		[1]: getMainDefinition_upvr (readonly)
		[2]: getFragmentDefinitions_upvr (readonly)
		[3]: createFragmentMap_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: String_upvr (readonly)
		[6]: Object_upvr (readonly)
	]]
	if arg4 == nil then
	end
	if arg5 == nil then
	end
	if arg6 == nil then
	end
	if arg7 == nil then
	end
	local var48_result1 = getMainDefinition_upvr(arg2)
	local operation = var48_result1.operation
	local var55
	if Boolean_upvr.toJSBoolean(operation) then
		var55 = string.upper(string.sub(operation, 1, 1))..String_upvr.slice(operation, 2)
	else
		var55 = "Query"
	end
	local module_5_upvr = {
		fragmentMap = createFragmentMap_upvr(getFragmentDefinitions_upvr(arg2));
		context = Object_upvr.assign({}, {}, {
			cache = arg1.cache;
			client = arg1.client;
		});
		variables = {};
		fragmentMatcher = function() -- Line 377
			return true
		end;
		defaultOperationType = var55;
		exportedVariables = {};
		onlyRunForcedResolvers = false;
	}
	return arg1:resolveSelectionSet(var48_result1.selectionSet, arg3, module_5_upvr):andThen(function(arg1_9) -- Line 413
		--[[ Upvalues[1]:
			[1]: module_5_upvr (readonly)
		]]
		local module_3 = {}
		module_3.result = arg1_9
		module_3.exportedVariables = module_5_upvr.exportedVariables
		return module_3
	end)
end
local shouldInclude_upvr = utilities.shouldInclude
local isField_upvr = utilities.isField
local isInlineFragment_upvr = utilities.isInlineFragment
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local mergeDeepArray_upvr = utilities.mergeDeepArray
function tbl_upvr.resolveSelectionSet(arg1, arg2, arg3, arg4) -- Line 418
	--[[ Upvalues[9]:
		[1]: Boolean_upvr (readonly)
		[2]: shouldInclude_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: isField_upvr (readonly)
		[5]: resultKeyNameFromField_upvr (readonly)
		[6]: isInlineFragment_upvr (readonly)
		[7]: invariant_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: mergeDeepArray_upvr (readonly)
	]]
	local module_2_upvr = {}
	module_2_upvr[1] = arg3
	local variables_upvr = arg4.variables
	local fragmentMap_upvr = arg4.fragmentMap
	local context_upvr = arg4.context
	return Promise_upvr.all(Array_upvr.map(arg2.selections, function(arg1_10) -- Line 426, Named "execute"
		--[[ Upvalues[14]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: shouldInclude_upvr (copied, readonly)
			[3]: variables_upvr (readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: isField_upvr (copied, readonly)
			[6]: arg1 (readonly)
			[7]: arg3 (readonly)
			[8]: arg4 (readonly)
			[9]: module_2_upvr (readonly)
			[10]: resultKeyNameFromField_upvr (copied, readonly)
			[11]: isInlineFragment_upvr (copied, readonly)
			[12]: fragmentMap_upvr (readonly)
			[13]: invariant_upvr (copied, readonly)
			[14]: context_upvr (readonly)
		]]
		local var69
		if not var69 then
			var69 = Promise_upvr.resolve(nil)
			return var69
		end
		var69 = isField_upvr(arg1_10)
		if var69 then
			var69 = arg1:resolveField(arg1_10, arg3, arg4)
			var69 = var69:andThen(function(arg1_11) -- Line 433
				--[[ Upvalues[3]:
					[1]: module_2_upvr (copied, readonly)
					[2]: resultKeyNameFromField_upvr (copied, readonly)
					[3]: arg1_10 (readonly)
				]]
				if typeof(arg1_11) ~= "nil" then
					local tbl = {}
					tbl[resultKeyNameFromField_upvr(arg1_10)] = arg1_11
					table.insert(module_2_upvr, tbl)
				end
			end)
			return var69
		end
		var69 = nil
		if isInlineFragment_upvr(arg1_10) then
			var69 = arg1_10
		else
			var69 = fragmentMap_upvr[arg1_10.name.value]
			invariant_upvr(var69, "No fragment named %s":format(arg1_10.name.value))
		end
		if var69 and var69.typeCondition ~= nil and Boolean_upvr.toJSBoolean(arg4:fragmentMatcher(arg3, var69.typeCondition.name.value, context_upvr)) then
			return arg1:resolveSelectionSet(var69.selectionSet, arg3, arg4):andThen(function(arg1_12) -- Line 454
				--[[ Upvalues[1]:
					[1]: module_2_upvr (copied, readonly)
				]]
				table.insert(module_2_upvr, arg1_12)
			end)
		end
		return Promise_upvr.resolve(nil)
	end)):andThen(function() -- Line 462
		--[[ Upvalues[2]:
			[1]: mergeDeepArray_upvr (copied, readonly)
			[2]: module_2_upvr (readonly)
		]]
		return mergeDeepArray_upvr(module_2_upvr)
	end)
end
local cacheSlot_upvr = require(script.Parent.Parent.cache).cacheSlot
local argumentsObjectFromField_upvr = utilities.argumentsObjectFromField
function tbl_upvr.resolveField(arg1, arg2, arg3, arg4) -- Line 467
	--[[ Upvalues[7]:
		[1]: resultKeyNameFromField_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Promise_upvr (readonly)
		[4]: cacheSlot_upvr (readonly)
		[5]: argumentsObjectFromField_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: NULL_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local value = arg2.name.value
	local var12_result1 = resultKeyNameFromField_upvr(arg2)
	local var78_upvr
	if value == var12_result1 then
	else
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var78_upvr = arg3[var12_result1]
		return var78_upvr
	end
	if not Boolean_upvr.toJSBoolean(arg3[var12_result1]) or not INLINED_4() then
		var78_upvr = arg3[value]
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		if Boolean_upvr.toJSBoolean(arg1.resolvers) then
			local _ = arg1.resolvers[tostring(arg4.defaultOperationType)]
		else
		end
		if not Boolean_upvr.toJSBoolean(arg3.__typename) or not arg3.__typename then
		end
		return Boolean_upvr.toJSBoolean(arg1.resolvers)
	end
	if not arg4.onlyRunForcedResolvers or arg1:shouldForceResolvers(arg2) or INLINED_5() then
		if true then
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var80 = arg1.resolvers[var12_result1]
		if Boolean_upvr.toJSBoolean(var80) then
			local module_4 = {}
			local tbl_2 = {}
			tbl_2.field = arg2
			tbl_2.fragmentMap = arg4.fragmentMap
			module_4[1] = arg3
			module_4[2] = argumentsObjectFromField_upvr(arg2, arg4.variables)
			module_4[3] = arg4.context
			module_4[4] = tbl_2
		end
	end
	return Promise_upvr.resolve(cacheSlot_upvr:withValue(arg1.cache, var80, module_4)):andThen(function(arg1_13) -- Line 512
		--[[ Upvalues[7]:
			[1]: var78_upvr (readonly)
			[2]: arg2 (readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: Boolean_upvr (copied, readonly)
			[5]: arg4 (readonly)
			[6]: NULL_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		if arg1_13 == nil then
			local var84_upvw = var78_upvr
		end
		if arg2.directives ~= nil then
			Array_upvr.forEach(arg2.directives, function(arg1_14) -- Line 519
				--[[ Upvalues[4]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: Array_upvr (copied, readonly)
					[3]: arg4 (copied, readonly)
					[4]: var84_upvw (read and write)
				]]
				if arg1_14.name.value == "export" and Boolean_upvr.toJSBoolean(arg1_14.arguments) then
					Array_upvr.forEach(arg1_14.arguments, function(arg1_15) -- Line 521
						--[[ Upvalues[2]:
							[1]: arg4 (copied, readonly)
							[2]: var84_upvw (copied, read and write)
						]]
						if arg1_15.name.value == "as" and arg1_15.value.kind == "StringValue" then
							arg4.exportedVariables[arg1_15.value.value] = var84_upvw
						end
					end)
				end
			end)
		end
		if not Boolean_upvr.toJSBoolean(arg2.selectionSet) then
			return var84_upvw
		end
		if var84_upvw == nil or var84_upvw == NULL_upvr then
			return var84_upvw
		end
		if Array_upvr.isArray(var84_upvw) then
			return arg1:resolveSubSelectedArray(arg2, var84_upvw, arg4)
		end
		if Boolean_upvr.toJSBoolean(arg2.selectionSet) then
			return arg1:resolveSelectionSet(arg2.selectionSet, var84_upvw, arg4)
		end
		return nil
	end)
end
function tbl_upvr.resolveSubSelectedArray(arg1, arg2, arg3, arg4) -- Line 554
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: NULL_upvr (readonly)
		[4]: Boolean_upvr (readonly)
	]]
	return Promise_upvr.all(Array_upvr.map(arg3, function(arg1_16) -- Line 555
		--[[ Upvalues[6]:
			[1]: NULL_upvr (copied, readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg4 (readonly)
			[6]: Boolean_upvr (copied, readonly)
		]]
		if arg1_16 == NULL_upvr then
			return NULL_upvr
		end
		if Array_upvr.isArray(arg1_16) then
			return arg1:resolveSubSelectedArray(arg2, arg1_16, arg4)
		end
		if Boolean_upvr.toJSBoolean(arg2.selectionSet) then
			return arg1:resolveSelectionSet(arg2.selectionSet, arg1_16, arg4)
		end
		return nil
	end))
end
module_6.LocalState = tbl_upvr
return module_6