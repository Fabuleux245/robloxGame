-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:07
-- Luau version 6, Types version 3
-- Time taken: 0.026056 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local HttpService_upvr = game:GetService("HttpService")
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Set_upvr = LuauPolyfill.Set
local objectKeysForEach_upvr = require(Parent_2.luaUtils.objectKeysForEach)
local module = {}
local makeFieldFunctionOptions_upvw
local makeMergeObjectsFunction_upvw
local keyArgsFnFromSpecifier_upvw
local keyFieldsFnFromSpecifier_upvw
local computeKeyObject_upvw
local invariant = require(Parent_2.jsutils.invariant)
local invariant_upvr = invariant.invariant
local utilities = require(script.Parent.Parent.Parent.utilities)
local argumentsObjectFromField_upvr = utilities.argumentsObjectFromField
local isReference_upvr = utilities.isReference
local getStoreKeyName_upvr = utilities.getStoreKeyName
local helpers = require(script.Parent.helpers)
local hasOwnProperty_upvr = require(Parent_2.luaUtils.hasOwnProperty)
local fieldNameFromStoreName_upvr = helpers.fieldNameFromStoreName
getStoreKeyName_upvr:setStringify(require(script.Parent["object-canon"]).canonicalStringify)
local function _(arg1) -- Line 145, Named "argsFromFieldSpecifier"
	--[[ Upvalues[1]:
		[1]: argumentsObjectFromField_upvr (readonly)
	]]
	if arg1.args ~= nil then
		return arg1.args
	end
	if arg1.field then
		return argumentsObjectFromField_upvr(arg1.field, arg1.variables)
	end
	return nil
end
local function defaultDataIdFromObject_upvr(arg1, arg2, arg3) -- Line 159, Named "defaultDataIdFromObject"
	--[[ Upvalues[1]:
		[1]: HttpService_upvr (readonly)
	]]
	local __typename = arg2.__typename
	local id = arg2.id
	local _id = arg2._id
	if type(__typename) == "string" then
		if arg3 then
			if id ~= nil then
				arg3.keyObject = {
					id = id;
				}
			elseif _id ~= nil then
				arg3.keyObject = {
					_id = _id;
				}
			else
				arg3.keyObject = nil
			end
		end
		if id == nil then
			id = _id
			local var29
		end
		if id ~= nil then
			local type_result1_4 = type(id)
			if type_result1_4 == "number" or type_result1_4 == "string" then
				var29 = id
			else
				var29 = HttpService_upvr:JSONEncode(id)
			end
			return string.format("%s:%s", __typename, var29)
		end
	end
	return nil
end
module.defaultDataIdFromObject = defaultDataIdFromObject_upvr
local function nullKeyFieldsFn_upvr(arg1) -- Line 191, Named "nullKeyFieldsFn"
	return nil
end
local function simpleKeyArgsFn_upvr(arg1, arg2) -- Line 194, Named "simpleKeyArgsFn"
	return arg2.fieldName
end
local function mergeTrueFn_upvw(arg1, arg2, arg3, arg4) -- Line 201, Named "mergeTrueFn"
	return arg4:mergeObjects(arg2, arg3)
end
local function mergeFalseFn_upvw(arg1, arg2, arg3) -- Line 205, Named "mergeFalseFn"
	return arg3
end
local tbl_4_upvr = {}
tbl_4_upvr.__index = tbl_4_upvr
local Map_upvr = LuauPolyfill.Map
function tbl_4_upvr.new(arg1) -- Line 312
	--[[ Upvalues[4]:
		[1]: tbl_4_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: defaultDataIdFromObject_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_4_upvr)
	setmetatable_result1.typePolicies = {}
	setmetatable_result1.toBeAdded = {}
	setmetatable_result1.supertypeMap = Map_upvr.new(nil)
	setmetatable_result1.fuzzySubtypes = Map_upvr.new(nil)
	setmetatable_result1.cache = nil
	setmetatable_result1.rootIdsByTypename = {}
	setmetatable_result1.rootTypenamesById = {}
	setmetatable_result1.usingPossibleTypes = false
	setmetatable_result1.config = arg1
	setmetatable_result1.config = Object_upvr.assign({
		dataIdFromObject = defaultDataIdFromObject_upvr;
	}, arg1)
	setmetatable_result1.cache = setmetatable_result1.config.cache
	setmetatable_result1:setRootTypename("Query")
	setmetatable_result1:setRootTypename("Mutation")
	setmetatable_result1:setRootTypename("Subscription")
	if arg1.possibleTypes then
		setmetatable_result1:addPossibleTypes(arg1.possibleTypes)
	end
	if arg1.typePolicies then
		setmetatable_result1:addTypePolicies(arg1.typePolicies)
	end
	return setmetatable_result1
end
local getTypenameFromResult_upvr = utilities.getTypenameFromResult
function tbl_4_upvr.identify(arg1, arg2, arg3, arg4) -- Line 353
	--[[ Upvalues[2]:
		[1]: getTypenameFromResult_upvr (readonly)
		[2]: keyFieldsFnFromSpecifier_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [71] 56. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [71.9]
	-- KONSTANTERROR: [71] 56. Error Block 33 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	if arg3 and arg4 then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.4]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.4293591112]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.5]
	if nil == nil then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.7]
	if nil and nil then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.8]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [72.10]
		if nil == "table" then
			-- KONSTANTWARNING: GOTO [53] #40
		end
		-- KONSTANTWARNING: GOTO [71] #56
	end
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 59. Error Block 46 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local _ = tostring(nil)
	else
	end
	if nil.keyObject then
		local module_2 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_2[1] = nil
		module_2[2] = nil.keyObject
		return module_2
	end
	local module_6 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_6[1] = nil
	do
		return module_6
	end
	-- KONSTANTERROR: [74] 59. Error Block 46 end (CF ANALYSIS FAILED)
end
function tbl_4_upvr.addTypePolicies(arg1, arg2) -- Line 425
	--[[ Upvalues[3]:
		[1]: objectKeysForEach_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: hasOwnProperty_upvr (readonly)
	]]
	objectKeysForEach_upvr(arg2, function(arg1_2) -- Line 427
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: hasOwnProperty_upvr (copied, readonly)
		]]
		local var40 = arg2[arg1_2]
		local any_assign_result1 = Object_upvr.assign({}, var40, {
			queryType = Object_upvr.None;
			mutationType = Object_upvr.None;
			subscriptionType = Object_upvr.None;
		})
		if var40.queryType then
			arg1:setRootTypename("Query", arg1_2)
		end
		if var40.mutationType then
			arg1:setRootTypename("Mutation", arg1_2)
		end
		if var40.subscriptionType then
			arg1:setRootTypename("Subscription", arg1_2)
		end
		if hasOwnProperty_upvr(arg1.toBeAdded, arg1_2) then
			table.insert(arg1.toBeAdded[arg1_2], any_assign_result1)
		else
			arg1.toBeAdded[arg1_2] = {any_assign_result1}
		end
	end)
end
local isCallable_upvr = require(Parent_2.luaUtils.isCallable)
function tbl_4_upvr.updateTypePolicy(arg1, arg2, arg3) -- Line 471
	--[[ Upvalues[8]:
		[1]: isCallable_upvr (readonly)
		[2]: mergeTrueFn_upvw (read and write)
		[3]: mergeFalseFn_upvw (read and write)
		[4]: nullKeyFieldsFn_upvr (readonly)
		[5]: keyFieldsFnFromSpecifier_upvw (read and write)
		[6]: objectKeysForEach_upvr (readonly)
		[7]: simpleKeyArgsFn_upvr (readonly)
		[8]: keyArgsFnFromSpecifier_upvw (read and write)
	]]
	local any_getTypePolicy_result1_3 = arg1:getTypePolicy(arg2)
	local keyFields = arg3.keyFields
	local fields_upvr = arg3.fields
	local function _(arg1_3, arg2_2) -- Line 475, Named "setMerge"
		--[[ Upvalues[3]:
			[1]: isCallable_upvr (copied, readonly)
			[2]: mergeTrueFn_upvw (copied, read and write)
			[3]: mergeFalseFn_upvw (copied, read and write)
		]]
		if isCallable_upvr(arg2_2) then
			arg1_3.merge = arg2_2
		else
			if arg2_2 == true then
				arg1_3.merge = mergeTrueFn_upvw
				return
			end
			if arg2_2 == false then
				arg1_3.merge = mergeFalseFn_upvw
				return
			end
			arg1_3.merge = arg1_3.merge
		end
	end
	local merge = arg3.merge
	if isCallable_upvr(merge) then
		any_getTypePolicy_result1_3.merge = merge
	elseif merge == true then
		any_getTypePolicy_result1_3.merge = mergeTrueFn_upvw
	elseif merge == false then
		any_getTypePolicy_result1_3.merge = mergeFalseFn_upvw
	else
		any_getTypePolicy_result1_3.merge = any_getTypePolicy_result1_3.merge
	end
	if keyFields == false then
		any_getTypePolicy_result1_3.keyFn = nullKeyFieldsFn_upvr
	else
		local type_result1 = type(keyFields)
		if type_result1 == "table" then
			any_getTypePolicy_result1_3.keyFn = keyFieldsFnFromSpecifier_upvw(keyFields)
		elseif type_result1 == "function" then
			any_getTypePolicy_result1_3.keyFn = keyFields
		else
			any_getTypePolicy_result1_3.keyFn = any_getTypePolicy_result1_3.keyFn
		end
	end
	if fields_upvr then
		objectKeysForEach_upvr(fields_upvr, function(arg1_4) -- Line 530
			--[[ Upvalues[8]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: fields_upvr (readonly)
				[4]: simpleKeyArgsFn_upvr (copied, readonly)
				[5]: keyArgsFnFromSpecifier_upvw (copied, read and write)
				[6]: isCallable_upvr (copied, readonly)
				[7]: mergeTrueFn_upvw (copied, read and write)
				[8]: mergeFalseFn_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
			local any_getFieldPolicy_result1 = arg1:getFieldPolicy(arg2, arg1_4, true)
			local var52 = fields_upvr[arg1_4]
			if type(var52) == "function" then
				any_getFieldPolicy_result1.read = var52
				-- KONSTANTWARNING: GOTO [85] #60
			end
			-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 16. Error Block 46 start (CF ANALYSIS FAILED)
			local keyArgs = var52.keyArgs
			local read = var52.read
			local merge_2 = var52.merge
			if keyArgs == false then
				any_getFieldPolicy_result1.keyFn = simpleKeyArgsFn_upvr
			else
				local type_result1_3 = type(keyArgs)
				if type_result1_3 == "table" then
					any_getFieldPolicy_result1.keyFn = keyArgsFnFromSpecifier_upvw(keyArgs)
				elseif type_result1_3 == "function" then
					any_getFieldPolicy_result1.keyFn = keyArgs
				else
					any_getFieldPolicy_result1.keyFn = any_getFieldPolicy_result1.keyFn
				end
			end
			if type(read) == "function" then
				any_getFieldPolicy_result1.read = read
			end
			if isCallable_upvr(merge_2) then
				any_getFieldPolicy_result1.merge = merge_2
				-- KONSTANTWARNING: GOTO [85] #60
			end
			if merge_2 == true then
				any_getFieldPolicy_result1.merge = mergeTrueFn_upvw
			elseif merge_2 == false then
				any_getFieldPolicy_result1.merge = mergeFalseFn_upvw
			else
				any_getFieldPolicy_result1.merge = any_getFieldPolicy_result1.merge
			end
			if any_getFieldPolicy_result1.read and any_getFieldPolicy_result1.merge then
				local keyFn = any_getFieldPolicy_result1.keyFn
				if not keyFn then
					keyFn = simpleKeyArgsFn_upvr
				end
				any_getFieldPolicy_result1.keyFn = keyFn
			end
			-- KONSTANTERROR: [19] 16. Error Block 46 end (CF ANALYSIS FAILED)
		end)
	end
end
function tbl_4_upvr.setRootTypename(arg1, arg2, arg3) -- Line 588
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	local var58 = arg3
	if var58 == nil then
		var58 = arg2
	end
	local var59 = "ROOT_"..string.upper(arg2)
	local var60 = arg1.rootTypenamesById[var59]
	if var58 ~= var60 then
		local var61 = not var60
		if not var61 then
			if var60 ~= arg2 then
				var61 = false
			else
				var61 = true
			end
		end
		if not var61 then
			invariant_upvr(var61, "Cannot change root %s __typename more than once":format(arg2))
		end
		if var60 then
			arg1.rootIdsByTypename[var60] = nil
		end
		arg1.rootIdsByTypename[var58] = var59
		arg1.rootTypenamesById[var59] = var58
	end
end
local TypeOrFieldNameRegExp_upvr = helpers.TypeOrFieldNameRegExp
local LuauRegExp_upvr = require(Parent.LuauRegExp)
function tbl_4_upvr.addPossibleTypes(arg1, arg2) -- Line 617
	--[[ Upvalues[4]:
		[1]: objectKeysForEach_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: TypeOrFieldNameRegExp_upvr (readonly)
		[4]: LuauRegExp_upvr (readonly)
	]]
	arg1.usingPossibleTypes = true
	objectKeysForEach_upvr(arg2, function(arg1_5) -- Line 620
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: TypeOrFieldNameRegExp_upvr (copied, readonly)
			[5]: LuauRegExp_upvr (copied, readonly)
		]]
		arg1:getSupertypeSet(arg1_5, true)
		Array_upvr.forEach(arg2[arg1_5], function(arg1_6) -- Line 627
			--[[ Upvalues[4]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_5 (readonly)
				[3]: TypeOrFieldNameRegExp_upvr (copied, readonly)
				[4]: LuauRegExp_upvr (copied, readonly)
			]]
			arg1:getSupertypeSet(arg1_6, true):add(arg1_5)
			local any_exec_result1 = TypeOrFieldNameRegExp_upvr:exec(arg1_6)
			if not any_exec_result1 or any_exec_result1[1] ~= arg1_6 then
				arg1.fuzzySubtypes:set(arg1_6, LuauRegExp_upvr.new(arg1_6))
			end
		end)
	end)
end
function tbl_4_upvr.getTypePolicy(arg1, arg2) -- Line 639
	--[[ Upvalues[3]:
		[1]: hasOwnProperty_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	if not hasOwnProperty_upvr(arg1.typePolicies, arg2) then
		arg1.typePolicies[arg2] = {}
		local var73_upvr = arg1.typePolicies[arg2]
		var73_upvr.fields = {}
		local any_get_result1 = arg1.supertypeMap:get(arg2)
		if any_get_result1 and 0 < any_get_result1.size then
			any_get_result1:forEach(function(arg1_9) -- Line 673
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: Object_upvr (copied, readonly)
					[3]: var73_upvr (readonly)
				]]
				local any_getTypePolicy_result1 = arg1:getTypePolicy(arg1_9)
				Object_upvr.assign(var73_upvr, Object_upvr.assign(table.clone(any_getTypePolicy_result1), {
					fields = Object_upvr.None;
				}))
				Object_upvr.assign(var73_upvr.fields, any_getTypePolicy_result1.fields)
			end)
		end
	end
	var73_upvr = arg1.toBeAdded[arg2]
	local var78 = var73_upvr
	if var78 and 0 < #var78 then
		Array_upvr.forEach(Array_upvr.splice(var78, 1), function(arg1_10) -- Line 690
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:updateTypePolicy(arg2, arg1_10)
		end)
	end
	return arg1.typePolicies[arg2]
end
function tbl_4_upvr.getFieldPolicy(arg1, arg2, arg3, arg4) -- Line 698
	if arg2 then
		local fields = arg1:getTypePolicy(arg2).fields
		if fields[arg3] then
			return fields[arg3]
		end
		if arg4 then
			fields[arg3] = {}
			return fields[arg3]
		end
		return nil
	end
	return nil
end
function tbl_4_upvr.getSupertypeSet(arg1, arg2, arg3) -- Line 725
	--[[ Upvalues[1]:
		[1]: Set_upvr (readonly)
	]]
	local any_get_result1_2 = arg1.supertypeMap:get(arg2)
	if not any_get_result1_2 then
		if arg3 then
			any_get_result1_2 = Set_upvr.new()
			arg1.supertypeMap:set(arg2, any_get_result1_2)
		end
	end
	return any_get_result1_2
end
local selectionSetMatchesResult_upvr = helpers.selectionSetMatchesResult
function tbl_4_upvr.fragmentMatches(arg1, arg2, arg3, arg4, arg5) -- Line 736
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: selectionSetMatchesResult_upvr (readonly)
	]]
	if not arg2.typeCondition then
		return true
	end
	if not arg3 then
		return false
	end
	local value_2 = arg2.typeCondition.name.value
	if arg3 == value_2 then
		return true
	end
	if arg1.usingPossibleTypes then
		local var103
		if arg1.supertypeMap:has(value_2) then
			var103 = true
			local any_getSupertypeSet_result1_4 = arg1:getSupertypeSet(arg3, var103)
			local tbl_6_upvr = {any_getSupertypeSet_result1_4}
			var103 = false
			if arg4 ~= nil then
				if 0 >= arg1.fuzzySubtypes.size then
					var103 = false
				else
					var103 = true
				end
			end
			for i, _ in tbl_6_upvr do
				local var107 = tbl_6_upvr[i]
				if var107:has(value_2) then
					if not any_getSupertypeSet_result1_4:has(value_2) then
						if false then
							invariant_upvr.warn("Inferring subtype %s of supertype %s":format(arg3, value_2))
						end
						any_getSupertypeSet_result1_4:add(value_2)
					end
					return true
				end
				var107:forEach(function(arg1_13) -- Line 767, Named "maybeEnqueue"
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: Array_upvr (copied, readonly)
						[3]: tbl_6_upvr (readonly)
					]]
					local any_getSupertypeSet_result1_3 = arg1:getSupertypeSet(arg1_13, false)
					if any_getSupertypeSet_result1_3 then
						if 0 < any_getSupertypeSet_result1_3.size then
							if Array_upvr.indexOf(tbl_6_upvr, any_getSupertypeSet_result1_3) < 1 then
								table.insert(tbl_6_upvr, any_getSupertypeSet_result1_3)
							end
						end
					end
				end)
				if var103 and i == #tbl_6_upvr and selectionSetMatchesResult_upvr(arg2.selectionSet, arg4, arg5) then
					var103 = false
					Array_upvr.forEach(arg1.fuzzySubtypes:entries(), function(arg1_14) -- Line 834
						--[[ Upvalues[4]:
							[1]: arg3 (readonly)
							[2]: arg1 (readonly)
							[3]: Array_upvr (copied, readonly)
							[4]: tbl_6_upvr (readonly)
						]]
						local any_exec_result1_2 = arg1_14[2]:exec(arg3)
						if any_exec_result1_2 then
							if any_exec_result1_2[1] == arg3 then
								local any_getSupertypeSet_result1_5 = arg1:getSupertypeSet(arg1_14[1], false)
								if any_getSupertypeSet_result1_5 then
									if 0 < any_getSupertypeSet_result1_5.size and Array_upvr.indexOf(tbl_6_upvr, any_getSupertypeSet_result1_5) < 1 then
										table.insert(tbl_6_upvr, any_getSupertypeSet_result1_5)
									end
								end
							end
						end
						return 1
					end)
				end
			end
		end
	end
	return false
end
function tbl_4_upvr.hasKeyArgs(arg1, arg2, arg3) -- Line 852
	local any_getFieldPolicy_result1_6 = arg1:getFieldPolicy(arg2, arg3, false)
	local var112 = false
	if any_getFieldPolicy_result1_6 ~= nil then
		if any_getFieldPolicy_result1_6.keyFn == nil then
			var112 = false
		else
			var112 = true
		end
	end
	return var112
end
local storeKeyNameFromField_upvr = utilities.storeKeyNameFromField
function tbl_4_upvr.getStoreFieldName(arg1, arg2) -- Line 859
	--[[ Upvalues[5]:
		[1]: argumentsObjectFromField_upvr (readonly)
		[2]: keyArgsFnFromSpecifier_upvw (read and write)
		[3]: storeKeyNameFromField_upvr (readonly)
		[4]: getStoreKeyName_upvr (readonly)
		[5]: fieldNameFromStoreName_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
	local typename = arg2.typename
	local fieldName = arg2.fieldName
	local any_getFieldPolicy_result1_3 = arg1:getFieldPolicy(typename, fieldName, false)
	local var119
	if any_getFieldPolicy_result1_3 then
		var119 = any_getFieldPolicy_result1_3.keyFn
	else
		var119 = nil
	end
	local var120
	-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 15. Error Block 57 start (CF ANALYSIS FAILED)
	if typename then
		local tbl_5 = {
			typename = typename;
			fieldName = fieldName;
		}
		var120 = arg2.field or nil
		tbl_5.field = var120
		var120 = arg2.variables
		tbl_5.variables = var120
		if arg2.args ~= nil then
			var120 = arg2.args
		elseif arg2.field then
			var120 = argumentsObjectFromField_upvr(arg2.field, arg2.variables)
		else
			var120 = nil
		end
		if var119 then
			if type(var119(var120, tbl_5)) == "table" then
				-- KONSTANTWARNING: GOTO [51] #36
			end
			-- KONSTANTWARNING: GOTO [68] #51
		end
		-- KONSTANTWARNING: GOTO [71] #54
	end
	-- KONSTANTERROR: [18] 15. Error Block 57 end (CF ANALYSIS FAILED)
end
local cacheSlot_upvr = require(script.Parent.reactiveVars).cacheSlot
local function readField(arg1, arg2, arg3) -- Line 930
	--[[ Upvalues[3]:
		[1]: fieldNameFromStoreName_upvr (readonly)
		[2]: makeFieldFunctionOptions_upvw (read and write)
		[3]: cacheSlot_upvr (readonly)
	]]
	local from_2 = arg2.from
	local var134
	if not from_2 then return end
	local field_3 = arg2.field
	if not field_3 then
		field_3 = arg2.fieldName
	end
	if not field_3 then return end
	if arg2.typename == nil then
		local any_getFieldValue_result1_3 = arg3.store:getFieldValue(from_2, "__typename")
		if any_getFieldValue_result1_3 then
			arg2.typename = any_getFieldValue_result1_3
		end
	end
	local any_getStoreFieldName_result1_2 = arg1:getStoreFieldName(arg2)
	local any_getFieldValue_result1_4 = arg3.store:getFieldValue(from_2, any_getStoreFieldName_result1_2)
	local any_getFieldPolicy_result1_2 = arg1:getFieldPolicy(arg2.typename, fieldNameFromStoreName_upvr(any_getStoreFieldName_result1_2), false)
	local var140
	if any_getFieldPolicy_result1_2 then
		var140 = any_getFieldPolicy_result1_2.read
	else
		var140 = nil
	end
	if var140 then
		if from_2.__ref then
			var134 = from_2.__ref
		else
			var134 = from_2
		end
		local module_3 = {}
		var134 = makeFieldFunctionOptions_upvw(arg1, from_2, arg2, arg3, arg3.store:getStorage(var134, any_getStoreFieldName_result1_2))
		module_3[1] = any_getFieldValue_result1_4
		module_3[2] = var134
		return cacheSlot_upvr:withValue(arg1.cache, var140, module_3)
	end
	return any_getFieldValue_result1_4
end
tbl_4_upvr.readField = readField
function tbl_4_upvr.getMergeFunction(arg1, arg2, arg3, arg4) -- Line 990
	local any_getFieldPolicy_result1_4 = arg1:getFieldPolicy(arg2, arg3, false)
	local var143
	if any_getFieldPolicy_result1_4 then
		var143 = any_getFieldPolicy_result1_4.merge
	else
		var143 = any_getFieldPolicy_result1_4
	end
	if not var143 and arg4 then
		local any_getTypePolicy_result1_4 = arg1:getTypePolicy(arg4)
		if any_getTypePolicy_result1_4 then
			var143 = any_getTypePolicy_result1_4.merge
			return var143
		end
		var143 = any_getTypePolicy_result1_4
	end
	return var143
end
function tbl_4_upvr.runMergeFunction(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1021
	--[[ Upvalues[4]:
		[1]: mergeTrueFn_upvw (read and write)
		[2]: makeMergeObjectsFunction_upvw (read and write)
		[3]: mergeFalseFn_upvw (read and write)
		[4]: makeFieldFunctionOptions_upvw (read and write)
	]]
	local field_2 = arg4.field
	local merge_3 = arg4.merge
	local var147
	if merge_3 == mergeTrueFn_upvw then
		return makeMergeObjectsFunction_upvw(arg5.store)(arg4, var147, arg3)
	end
	if merge_3 == mergeFalseFn_upvw then
		return arg3
	end
	if arg5.overwrite then
		var147 = nil
	end
	local var149 = arg6
	if not var149 then
		var149 = {}
	end
	return merge_3(arg4, var147, arg3, makeFieldFunctionOptions_upvw(arg1, nil, {
		typename = arg4.typename;
		fieldName = field_2.name.value;
		field = field_2;
		variables = arg5.variables;
	}, arg5, var149))
end
module.Policies = tbl_4_upvr
local stringifyForDisplay_upvr = utilities.stringifyForDisplay
function makeFieldFunctionOptions_upvw(arg1, arg2, arg3, arg4, arg5) -- Line 1081, Named "makeFieldFunctionOptions"
	--[[ Upvalues[9]:
		[1]: fieldNameFromStoreName_upvr (readonly)
		[2]: argumentsObjectFromField_upvr (readonly)
		[3]: isReference_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: hasOwnProperty_upvr (readonly)
		[6]: invariant_upvr (readonly)
		[7]: stringifyForDisplay_upvr (readonly)
		[8]: Array_upvr (readonly)
		[9]: makeMergeObjectsFunction_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getStoreFieldName_result1 = arg1:getStoreFieldName(arg3)
	local readField
	if not arg3.variables then
		local variables_upvr = arg4.variables
	end
	local module_4 = {}
	if arg3.args ~= nil then
		readField = arg3.args
	elseif arg3.field then
		readField = argumentsObjectFromField_upvr(arg3.field, arg3.variables)
	else
		readField = nil
	end
	module_4.args = readField
	readField = arg3.field or nil
	module_4.field = readField
	module_4.fieldName = fieldNameFromStoreName_upvr(any_getStoreFieldName_result1)
	module_4.storeFieldName = any_getStoreFieldName_result1
	module_4.variables = variables_upvr
	function readField(arg1_15, ...) -- Line 1101, Named "isReference"
		--[[ Upvalues[1]:
			[1]: isReference_upvr (copied, readonly)
		]]
		return isReference_upvr(...)
	end
	module_4.isReference = readField
	readField = arg4.store.toReference
	module_4.toReference = readField
	module_4.storage = arg5
	readField = arg1.cache
	module_4.cache = readField
	readField = arg4.store.canRead
	module_4.canRead = readField
	function readField(arg1_16, arg2_3, ...) -- Line 1108
		--[[ Upvalues[9]:
			[1]: Object_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: hasOwnProperty_upvr (copied, readonly)
			[4]: invariant_upvr (copied, readonly)
			[5]: stringifyForDisplay_upvr (copied, readonly)
			[6]: Array_upvr (copied, readonly)
			[7]: variables_upvr (readonly)
			[8]: arg1 (readonly)
			[9]: arg4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local type_result1_2 = type(arg2_3)
		local tbl_3 = {}
		local var157
		if type_result1_2 == "table" then
			var157 = Object_upvr.assign
			local var158 = arg2_3
			if arg2_3.from == Object_upvr.None then
				var158 = {}
				var158.from = "<Object.None>"
			else
				var158 = nil
			end
			var157 = var157(table.clone(var158), var158)
		else
			var157 = arg2_3
		end
		local var159
		if 1 <= select('#', ...) then
		else
		end
		tbl_3[1] = var157
		tbl_3[2] = nil
		var157 = nil
		if type_result1_2 == "string" then
			local tbl_8 = {}
			tbl_8.fieldName = arg2_3
			if 1 <= select('#', ...) then
			else
			end
			tbl_8.from = arg2
			var157 = tbl_8
		elseif type_result1_2 == "table" then
			var157 = Object_upvr.assign({}, arg2_3)
			if not hasOwnProperty_upvr(arg2_3, "from") then
				var157.from = arg2
				-- KONSTANTWARNING: GOTO [104] #81
			end
		else
			invariant_upvr.warn("Unexpected readField arguments: %s":format(stringifyForDisplay_upvr(Array_upvr.from(tbl_3))))
			return
		end
		if _G.__DEV__ and var157.from == nil then
			invariant_upvr.warn("Undefined 'from' passed to readField with arguments %s":format(stringifyForDisplay_upvr(Array_upvr.from(tbl_3))))
		end
		if var157.variables == nil then
			var157.variables = variables_upvr
		end
		return arg1:readField(var157, arg4)
	end
	module_4.readField = readField
	readField = makeMergeObjectsFunction_upvw(arg4.store)
	module_4.mergeObjects = readField
	return module_4
end
local InvariantError_upvr = invariant.InvariantError
local isNonNullObject_upvr = utilities.isNonNullObject
local storeValueIsStoreObject_upvr = helpers.storeValueIsStoreObject
function makeMergeObjectsFunction_upvw(arg1) -- Line 1175, Named "makeMergeObjectsFunction"
	--[[ Upvalues[6]:
		[1]: Array_upvr (readonly)
		[2]: InvariantError_upvr (readonly)
		[3]: isNonNullObject_upvr (readonly)
		[4]: isReference_upvr (readonly)
		[5]: storeValueIsStoreObject_upvr (readonly)
		[6]: Object_upvr (readonly)
	]]
	return function(arg1_17, arg2, arg3) -- Line 1176
		--[[ Upvalues[7]:
			[1]: Array_upvr (copied, readonly)
			[2]: InvariantError_upvr (copied, readonly)
			[3]: isNonNullObject_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: isReference_upvr (copied, readonly)
			[6]: storeValueIsStoreObject_upvr (copied, readonly)
			[7]: Object_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 6. Error Block 37 start (CF ANALYSIS FAILED)
		if Array_upvr.isArray(arg3) then
			-- KONSTANTERROR: [12] 11. Error Block 30 start (CF ANALYSIS FAILED)
			error(InvariantError_upvr.new("Cannot automatically merge arrays"))
			-- KONSTANTERROR: [12] 11. Error Block 30 end (CF ANALYSIS FAILED)
		end
		if isNonNullObject_upvr(arg2) and isNonNullObject_upvr(arg3) then
			local any_getFieldValue_result1_2 = arg1:getFieldValue(arg2, "__typename")
			local any_getFieldValue_result1_7 = arg1:getFieldValue(arg3, "__typename")
			local var170 = false
			if any_getFieldValue_result1_2 ~= nil then
				var170 = false
				if any_getFieldValue_result1_7 ~= nil then
					if any_getFieldValue_result1_2 == any_getFieldValue_result1_7 then
						var170 = false
					else
						var170 = true
					end
				end
			end
			if var170 then
				return arg3
			end
			if isReference_upvr(arg2) and storeValueIsStoreObject_upvr(arg3) then
				arg1:merge(arg2.__ref, arg3)
				return arg2
			end
			if storeValueIsStoreObject_upvr(arg2) and isReference_upvr(arg3) then
				arg1:merge(arg2, arg3.__ref)
				return arg3
			end
			if storeValueIsStoreObject_upvr(arg2) and storeValueIsStoreObject_upvr(arg3) then
				return Object_upvr.assign({}, arg2, arg3)
			end
		end
		do
			return arg3
		end
		-- KONSTANTERROR: [6] 6. Error Block 37 end (CF ANALYSIS FAILED)
	end
end
local function keyObjEncode_upvr(arg1, arg2) -- Line 1226, Named "keyObjEncode"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: keyObjEncode_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local var171
	if typeof(arg2) ~= "table" then
		var171 = false
	else
		var171 = true
	end
	assert(var171, "specifier must be an array")
	var171 = arg2
	if not next(var171) then
		return "[]"
	end
	var171 = '{'
	return var171..Array_upvr.join(Array_upvr.filter(Array_upvr.map(arg2, function(arg1_18, arg2_4) -- Line 1236
		--[[ Upvalues[5]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: keyObjEncode_upvr (copied, readonly)
			[5]: HttpService_upvr (copied, readonly)
		]]
		if Array_upvr.isArray(arg1_18) then
			return ""
		end
		if not arg1[arg1_18] then
			return ""
		end
		local var173
		if arg2_4 < #arg2 then
			if Array_upvr.isArray(arg2[arg2_4 + 1]) then
				var173 = keyObjEncode_upvr(arg1[arg1_18], arg2[arg2_4 + 1])
			else
				var173 = HttpService_upvr:JSONEncode(arg1[arg1_18])
			end
			return HttpService_upvr:JSONEncode(arg1_18)..':'..var173
		end
		return HttpService_upvr:JSONEncode(arg1_18)..':'..HttpService_upvr:JSONEncode(arg1[arg1_18])
	end), function(arg1_19) -- Line 1259
		if arg1_19 == "" then
		else
		end
		return true
	end), ',')..'}'
end
function keyArgsFnFromSpecifier_upvw(arg1) -- Line 1268, Named "keyArgsFnFromSpecifier"
	--[[ Upvalues[2]:
		[1]: keyObjEncode_upvr (readonly)
		[2]: computeKeyObject_upvw (read and write)
	]]
	return function(arg1_20, arg2) -- Line 1269
		--[[ Upvalues[3]:
			[1]: keyObjEncode_upvr (copied, readonly)
			[2]: computeKeyObject_upvw (copied, read and write)
			[3]: arg1 (readonly)
		]]
		if arg1_20 then
			return "%s:%s":format(arg2.fieldName, keyObjEncode_upvr(computeKeyObject_upvw(arg1_20, arg1, false), arg1))
		end
		return arg2.fieldName
	end
end
local Trie_upvr = require(Parent_2.wry.trie).Trie
local canUseWeakMap_upvr = utilities.canUseWeakMap
local makeAliasMap_upvw
function keyFieldsFnFromSpecifier_upvw(arg1) -- Line 1281, Named "keyFieldsFnFromSpecifier"
	--[[ Upvalues[5]:
		[1]: Trie_upvr (readonly)
		[2]: canUseWeakMap_upvr (readonly)
		[3]: makeAliasMap_upvw (read and write)
		[4]: computeKeyObject_upvw (read and write)
		[5]: keyObjEncode_upvr (readonly)
	]]
	local any_new_result1_upvr_2 = Trie_upvr.new(canUseWeakMap_upvr)
	return function(arg1_21, arg2, arg3) -- Line 1283
		--[[ Upvalues[5]:
			[1]: any_new_result1_upvr_2 (readonly)
			[2]: makeAliasMap_upvw (copied, read and write)
			[3]: computeKeyObject_upvw (copied, read and write)
			[4]: arg1 (readonly)
			[5]: keyObjEncode_upvr (copied, readonly)
		]]
		local var181
		if arg3.selectionSet and arg3.fragmentMap then
			local any_lookupArray_result1 = any_new_result1_upvr_2:lookupArray({arg3.selectionSet, arg3.fragmentMap})
			if any_lookupArray_result1.aliasMap then
				var181 = any_lookupArray_result1.aliasMap
			else
				any_lookupArray_result1.aliasMap = makeAliasMap_upvw(arg3.selectionSet, arg3.fragmentMap)
				var181 = any_lookupArray_result1.aliasMap
			end
		end
		arg3.keyObject = computeKeyObject_upvw(arg2, arg1, true, var181)
		return "%s:%s":format(arg3.typename or "null", keyObjEncode_upvr(arg3.keyObject, arg1))
	end
end
local isField_upvr = utilities.isField
local getFragmentFromSelection_upvr = utilities.getFragmentFromSelection
function makeAliasMap_upvw(arg1, arg2) -- Line 1311, Named "makeAliasMap"
	--[[ Upvalues[5]:
		[1]: Set_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: isField_upvr (readonly)
		[4]: makeAliasMap_upvw (read and write)
		[5]: getFragmentFromSelection_upvr (readonly)
	]]
	local module_upvr = {}
	local tbl = {}
	tbl[1] = arg1
	local any_new_result1_upvr = Set_upvr.new(tbl)
	for _, v_2 in any_new_result1_upvr do
		Array_upvr.forEach(v_2.selections, function(arg1_22) -- Line 1316
			--[[ Upvalues[6]:
				[1]: isField_upvr (copied, readonly)
				[2]: module_upvr (readonly)
				[3]: makeAliasMap_upvw (copied, read and write)
				[4]: arg2 (readonly)
				[5]: getFragmentFromSelection_upvr (copied, readonly)
				[6]: any_new_result1_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 27. Error Block 24 start (CF ANALYSIS FAILED)
			local var194
			if module_upvr.subsets then
				var194 = module_upvr.subsets
			else
				module_upvr.subsets = {}
				var194 = module_upvr.subsets
			end
			var194[arg1_22.name.value] = makeAliasMap_upvw(arg1_22.selectionSet, arg2)
			do
				return
			end
			-- KONSTANTERROR: [38] 27. Error Block 24 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [66] 47. Error Block 18 start (CF ANALYSIS FAILED)
			local var185_result1 = getFragmentFromSelection_upvr(arg1_22, arg2)
			if var185_result1 then
				any_new_result1_upvr:add(var185_result1.selectionSet)
			end
			-- KONSTANTERROR: [66] 47. Error Block 18 end (CF ANALYSIS FAILED)
		end)
	end
	return module_upvr
end
function computeKeyObject_upvw(arg1, arg2, arg3, arg4) -- Line 1361, Named "computeKeyObject"
	--[[ Upvalues[3]:
		[1]: computeKeyObject_upvw (read and write)
		[2]: hasOwnProperty_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 64. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [71] 64. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 7. Error Block 44 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [71.11]
	if nil == "table" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil == "string" then
			if arg4 then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			else
			end
			-- KONSTANTWARNING: GOTO [71] #64
		end
		-- KONSTANTWARNING: GOTO [71] #64
	end
	-- KONSTANTERROR: [7] 7. Error Block 44 end (CF ANALYSIS FAILED)
end
module.None = Object_upvr.None
return module