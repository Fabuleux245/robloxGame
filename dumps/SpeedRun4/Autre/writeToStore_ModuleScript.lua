-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:10
-- Luau version 6, Types version 3
-- Time taken: 0.024183 seconds

local __DEV___upvr = _G.__DEV__
local module_2 = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local Map_upvr = LuauPolyfill.Map
local Set_upvr = LuauPolyfill.Set
local Array_upvr = LuauPolyfill.Array
local HttpService_upvr = game:GetService("HttpService")
local invariant = require(Parent.jsutils.invariant)
local invariant_upvr = invariant.invariant
local utilities = require(Parent.utilities)
local makeReference_upvr = utilities.makeReference
local isField_upvr = utilities.isField
local isReference_upvr = utilities.isReference
local helpers = require(script.Parent.helpers)
local fieldNameFromStoreName_upvr = helpers.fieldNameFromStoreName
local getChildMergeTree_upvw
local maybeRecycleChildMergeTree_upvw
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.new(arg1, arg2) -- Line 138
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.cache = arg1
	setmetatable_result1.reader = arg2
	return setmetatable_result1
end
local getOperationDefinition_upvr = utilities.getOperationDefinition
local makeProcessedFieldsMerger_upvr = helpers.makeProcessedFieldsMerger
local getDefaultValues_upvr = utilities.getDefaultValues
local canonicalStringify_upvr = require(script.Parent["object-canon"]).canonicalStringify
local createFragmentMap_upvr = utilities.createFragmentMap
local getFragmentDefinitions_upvr = utilities.getFragmentDefinitions
local InvariantError_upvr = invariant.InvariantError
local objectKeysForEach_upvr = require(Parent.luaUtils.objectKeysForEach)
local warnAboutDataLoss_upvw
function tbl_upvr.writeToStore(arg1, arg2, arg3) -- Line 145
	--[[ Upvalues[18]:
		[1]: getOperationDefinition_upvr (readonly)
		[2]: makeProcessedFieldsMerger_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: getDefaultValues_upvr (readonly)
		[5]: canonicalStringify_upvr (readonly)
		[6]: createFragmentMap_upvr (readonly)
		[7]: getFragmentDefinitions_upvr (readonly)
		[8]: Map_upvr (readonly)
		[9]: isReference_upvr (readonly)
		[10]: InvariantError_upvr (readonly)
		[11]: HttpService_upvr (readonly)
		[12]: makeReference_upvr (readonly)
		[13]: __DEV___upvr (readonly)
		[14]: fieldNameFromStoreName_upvr (readonly)
		[15]: Set_upvr (readonly)
		[16]: isField_upvr (readonly)
		[17]: objectKeysForEach_upvr (readonly)
		[18]: warnAboutDataLoss_upvw (read and write)
	]]
	local query = arg3.query
	local result_2 = arg3.result
	local var24_result1 = getOperationDefinition_upvr(query)
	local any_assign_result1 = Object_upvr.assign(getDefaultValues_upvr(var24_result1), arg3.variables)
	local tbl_3_upvr = {}
	tbl_3_upvr.store = arg2
	tbl_3_upvr.written = {}
	local makeProcessedFieldsMerger_upvr_result1_upvr = makeProcessedFieldsMerger_upvr()
	function tbl_3_upvr.merge(arg1_2, arg2_2) -- Line 159
		--[[ Upvalues[1]:
			[1]: makeProcessedFieldsMerger_upvr_result1_upvr (readonly)
		]]
		return makeProcessedFieldsMerger_upvr_result1_upvr:merge(arg1_2, arg2_2)
	end
	tbl_3_upvr.variables = any_assign_result1
	tbl_3_upvr.varString = canonicalStringify_upvr(any_assign_result1)
	tbl_3_upvr.fragmentMap = createFragmentMap_upvr(getFragmentDefinitions_upvr(query))
	tbl_3_upvr.overwrite = arg3.overwrite or false
	tbl_3_upvr.incomingById = Map_upvr.new(nil)
	tbl_3_upvr.clientOnly = false
	local tbl_9 = {}
	local var41 = result_2
	if not var41 then
		var41 = {}
	end
	tbl_9.result = var41
	tbl_9.dataId = arg3.dataId
	tbl_9.selectionSet = var24_result1.selectionSet
	tbl_9.mergeTree = {
		map = Map_upvr.new(nil);
	}
	tbl_9.context = tbl_3_upvr
	local any_processSelectionSet_result1 = arg1:processSelectionSet(tbl_9)
	if not isReference_upvr(any_processSelectionSet_result1) then
		error(InvariantError_upvr.new("Could not identify object %s":format(HttpService_upvr:JSONEncode(result_2))))
	end
	tbl_3_upvr.incomingById:forEach(function(arg1_3, arg2_3) -- Line 192
		--[[ Upvalues[11]:
			[1]: makeReference_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_3_upvr (readonly)
			[4]: isReference_upvr (copied, readonly)
			[5]: __DEV___upvr (copied, readonly)
			[6]: fieldNameFromStoreName_upvr (copied, readonly)
			[7]: Set_upvr (copied, readonly)
			[8]: isField_upvr (copied, readonly)
			[9]: objectKeysForEach_upvr (copied, readonly)
			[10]: warnAboutDataLoss_upvw (copied, read and write)
			[11]: arg2 (readonly)
		]]
		local mergeTree_2_upvr = arg1_3.mergeTree
		local var46_upvw
		if 0 < mergeTree_2_upvr.map.size then
			local any_applyMerges_result1_3 = arg1:applyMerges(mergeTree_2_upvr, makeReference_upvr(arg2_3), var46_upvw, tbl_3_upvr)
			if isReference_upvr(any_applyMerges_result1_3) then return end
			var46_upvw = any_applyMerges_result1_3
		end
		if __DEV___upvr and not tbl_3_upvr.overwrite then
			local var48_upvw
			local function _(arg1_4) -- Line 215, Named "hasSelectionSet"
				--[[ Upvalues[2]:
					[1]: var48_upvw (read and write)
					[2]: fieldNameFromStoreName_upvr (copied, readonly)
				]]
				return var48_upvw:has(fieldNameFromStoreName_upvr(arg1_4))
			end
			var48_upvw = Set_upvr.new()
			local var49_upvw = var48_upvw
			arg1_3.selections:forEach(function(arg1_5) -- Line 219
				--[[ Upvalues[2]:
					[1]: isField_upvr (copied, readonly)
					[2]: var49_upvw (read and write)
				]]
				if isField_upvr(arg1_5) and arg1_5.selectionSet then
					var49_upvw:add(arg1_5.name.value)
				end
			end)
			local function _(arg1_6) -- Line 227, Named "hasMergeFunction"
				--[[ Upvalues[1]:
					[1]: mergeTree_2_upvr (readonly)
				]]
				local any_get_result1_5 = mergeTree_2_upvr.map:get(arg1_6)
				local var54 = false
				if any_get_result1_5 ~= nil then
					var54 = false
					if any_get_result1_5.info ~= nil then
						if any_get_result1_5.info.merge == nil then
							var54 = false
						else
							var54 = true
						end
					end
				end
				return var54
			end
			local var15_result1_2_upvr = makeReference_upvr(arg2_3)
			objectKeysForEach_upvr(var46_upvw, function(arg1_7) -- Line 233
				--[[ Upvalues[7]:
					[1]: var49_upvw (read and write)
					[2]: fieldNameFromStoreName_upvr (copied, readonly)
					[3]: mergeTree_2_upvr (readonly)
					[4]: warnAboutDataLoss_upvw (copied, read and write)
					[5]: var15_result1_2_upvr (readonly)
					[6]: var46_upvw (read and write)
					[7]: tbl_3_upvr (copied, readonly)
				]]
				if var49_upvw:has(fieldNameFromStoreName_upvr(arg1_7)) then
					local any_get_result1_3 = mergeTree_2_upvr.map:get(arg1_7)
					local var60 = false
					if any_get_result1_3 ~= nil then
						var60 = false
						if any_get_result1_3.info ~= nil then
							if any_get_result1_3.info.merge == nil then
								var60 = false
							else
								var60 = true
							end
						end
					end
					if not var60 then
						warnAboutDataLoss_upvw(var15_result1_2_upvr, var46_upvw, arg1_7, tbl_3_upvr.store)
					end
				end
			end)
		end
		arg2:merge(arg2_3, var46_upvw)
	end)
	arg2:retain(any_processSelectionSet_result1.__ref)
	return any_processSelectionSet_result1
end
local getTypenameFromResult_upvr = utilities.getTypenameFromResult
local shouldInclude_upvr = utilities.shouldInclude
local resultKeyNameFromField_upvr = utilities.resultKeyNameFromField
local addTypenameToDocument_upvr = utilities.addTypenameToDocument
local getFragmentFromSelection_upvr = utilities.getFragmentFromSelection
local mergeMergeTrees_upvw
function tbl_upvr.processSelectionSet(arg1, arg2) -- Line 258
	--[[ Upvalues[15]:
		[1]: makeReference_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: getTypenameFromResult_upvr (readonly)
		[4]: Set_upvr (readonly)
		[5]: shouldInclude_upvr (readonly)
		[6]: isField_upvr (readonly)
		[7]: resultKeyNameFromField_upvr (readonly)
		[8]: getChildMergeTree_upvw (read and write)
		[9]: isReference_upvr (readonly)
		[10]: maybeRecycleChildMergeTree_upvw (read and write)
		[11]: addTypenameToDocument_upvr (readonly)
		[12]: invariant_upvr (readonly)
		[13]: HttpService_upvr (readonly)
		[14]: getFragmentFromSelection_upvr (readonly)
		[15]: mergeMergeTrees_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local result = arg2.result
	local selectionSet = arg2.selectionSet
	local context_2 = arg2.context
	local mergeTree = arg2.mergeTree
	local policies = arg1.cache.policies
	local unpacked_value_1, unpacked_value_2_2 = table.unpack(policies:identify(result, selectionSet, context_2.fragmentMap), 1, 2)
	local var114 = arg2.dataId or unpacked_value_1
	local var115
	if var115 == "string" then
		var115 = nil
		if context_2.written[var114] ~= nil then
			var115 = context_2.written[var114]
		else
			var115 = {}
			context_2.written[var114] = var115
		end
		local var15_result1 = makeReference_upvr(var114)
		if 1 <= Array_upvr.indexOf(var115, selectionSet) then
			return var15_result1
		end
		table.insert(var115, selectionSet)
		if arg1.reader ~= nil and arg1.reader:isFresh(result, var15_result1, selectionSet, context_2) then
			return var15_result1
		end
	end
	if unpacked_value_2_2 ~= nil then
	end
	if var114 then
	else
	end
	if not var114 then
		if not getTypenameFromResult_upvr(result, selectionSet, context_2.fragmentMap) then
			if var114 then
				local _ = context_2.store:get(var114, "__typename")
			else
			end
		end
	end
	if type(var114) == "string" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		context_2.merge({}, unpacked_value_2_2).__typename = var114
	end
	local any_new_result1 = Set_upvr.new(selectionSet.selections)
	for i, v in any_new_result1 do
		if shouldInclude_upvr(v, context_2.variables) then
			if isField_upvr(v) then
				local var119 = result[resultKeyNameFromField_upvr(v)]
				local clientOnly_2 = context_2.clientOnly
				local var121 = clientOnly_2
				if not var121 then
					var121 = v.directives
					if var121 then
						var121 = Array_upvr.some
						var121 = var121(v.directives, function(arg1_9) -- Line 351
							local var123
							if arg1_9.name.value ~= "client" then
								var123 = false
							else
								var123 = true
							end
							return var123
						end)
					end
				end
				context_2.clientOnly = var121
				if var119 ~= nil then
					local tbl = {}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					tbl.typename = var114
					tbl.fieldName = v.name.value
					tbl.field = v
					tbl.variables = context_2.variables
					local any_getStoreFieldName_result1 = policies:getStoreFieldName(tbl)
					local getChildMergeTree_result1 = getChildMergeTree_upvw(mergeTree, any_getStoreFieldName_result1)
					local any_processFieldValue_result1 = arg1:processFieldValue(var119, v, context_2, getChildMergeTree_result1)
					local var128
					if v.selectionSet ~= nil then
						var128 = context_2.store:getFieldValue(any_processFieldValue_result1, "__typename")
						if not var128 and isReference_upvr(any_processFieldValue_result1) then
							local any_get_result1_4 = context_2.incomingById:get(any_processFieldValue_result1.__ref)
							if any_get_result1_4 ~= nil then
								var128 = any_get_result1_4.fields.__typename
							else
								var128 = nil
							end
						end
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local any_getMergeFunction_result1_2 = policies:getMergeFunction(var114, v.name.value, var128)
					if any_getMergeFunction_result1_2 ~= nil then
						local tbl_8 = {
							field = v;
						}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_8.typename = var114
						tbl_8.merge = any_getMergeFunction_result1_2
						getChildMergeTree_result1.info = tbl_8
					else
						maybeRecycleChildMergeTree_upvw(mergeTree, any_getStoreFieldName_result1)
					end
					local module_4 = {
						[any_getStoreFieldName_result1] = any_processFieldValue_result1;
					}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				elseif not context_2.clientOnly and not addTypenameToDocument_upvr:added(v) then
					invariant_upvr.error(string.sub("Missing field '%s' while writing result %s":format(resultKeyNameFromField_upvr(v), HttpService_upvr:JSONEncode(result)), 1, 1000))
				end
				context_2.clientOnly = clientOnly_2
			else
				local getFragmentFromSelection_upvr_result1 = getFragmentFromSelection_upvr(v, context_2.fragmentMap)
				if getFragmentFromSelection_upvr_result1 then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if policies:fragmentMatches(getFragmentFromSelection_upvr_result1, var114, result, context_2.variables) then
						Array_upvr.forEach(getFragmentFromSelection_upvr_result1.selectionSet.selections, any_new_result1.add, any_new_result1)
					end
				end
			end
		end
	end
	if type(var114) == "string" then
		local any_get_result1_6 = context_2.incomingById:get(var114)
		if any_get_result1_6 then
			i = context_2.merge(context_2.merge({}, unpacked_value_2_2), module_4)
			any_get_result1_6.fields = context_2.merge(any_get_result1_6.fields, i)
			i = mergeTree
			any_get_result1_6.mergeTree = mergeMergeTrees_upvw(any_get_result1_6.mergeTree, i)
			i = any_new_result1.add
			v = any_new_result1
			any_get_result1_6.selections:forEach(i, v)
			any_get_result1_6.selections = any_new_result1
		else
			i = var114
			v = {}
			v.fields = context_2.merge(context_2.merge({}, unpacked_value_2_2), module_4)
			v.mergeTree = mergeTree
			v.selections = any_new_result1
			context_2.incomingById:set(i, v)
		end
		return makeReference_upvr(var114)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return context_2.merge(context_2.merge({}, unpacked_value_2_2), module_4)
end
local NULL_upvr = require(Parent.utilities).NULL
local cloneDeep_upvr = utilities.cloneDeep
function tbl_upvr.processFieldValue(arg1, arg2, arg3, arg4, arg5) -- Line 497
	--[[ Upvalues[6]:
		[1]: NULL_upvr (readonly)
		[2]: __DEV___upvr (readonly)
		[3]: cloneDeep_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: getChildMergeTree_upvw (read and write)
		[6]: maybeRecycleChildMergeTree_upvw (read and write)
	]]
	if not arg3.selectionSet or arg2 == NULL_upvr then
		if __DEV___upvr then
			return cloneDeep_upvr(arg2)
		end
		return arg2
	end
	if Array_upvr.isArray(arg2) then
		return Array_upvr.map(arg2, function(arg1_10, arg2_4) -- Line 517
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: arg3 (readonly)
				[3]: arg4 (readonly)
				[4]: getChildMergeTree_upvw (copied, read and write)
				[5]: arg5 (readonly)
				[6]: maybeRecycleChildMergeTree_upvw (copied, read and write)
			]]
			maybeRecycleChildMergeTree_upvw(arg5, arg2_4)
			return arg1:processFieldValue(arg1_10, arg3, arg4, getChildMergeTree_upvw(arg5, arg2_4))
		end)
	end
	local module = {}
	module.result = arg2
	module.selectionSet = arg3.selectionSet
	module.context = arg4
	module.mergeTree = arg5
	return arg1:processSelectionSet(module)
end
local storeValueIsStoreObject_upvr = helpers.storeValueIsStoreObject
function tbl_upvr.applyMerges(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 532
	--[[ Upvalues[6]:
		[1]: isReference_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: storeValueIsStoreObject_upvr (readonly)
		[4]: Map_upvr (readonly)
		[5]: invariant_upvr (readonly)
		[6]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var155_upvw
	if 0 < arg2.map.size then
		local var156_upvr = var155_upvw
		local isReference_upvr_result1_upvr = isReference_upvr(var156_upvr)
		if not isReference_upvr_result1_upvr then
			if not Array_upvr.isArray(var155_upvw) then
				var156_upvr = isReference_upvr(arg3)
				if not var156_upvr then
					var156_upvr = storeValueIsStoreObject_upvr(arg3)
					-- KONSTANTWARNING: GOTO [27] #24
				end
			else
				var156_upvr = false
			end
			if var156_upvr then
				isReference_upvr_result1_upvr = arg3
			else
				isReference_upvr_result1_upvr = nil
			end
			var156_upvr = var155_upvw
			if isReference_upvr_result1_upvr ~= nil and not arg6 then
				if isReference_upvr(isReference_upvr_result1_upvr) then
					local _ = {isReference_upvr_result1_upvr.__ref}
				else
					local tbl_11_upvw = {isReference_upvr_result1_upvr}
				end
			end
			local var161_upvw
			local function _(arg1_14, arg2_8) -- Line 590, Named "getValue"
				--[[ Upvalues[2]:
					[1]: Array_upvr (copied, readonly)
					[2]: arg5 (readonly)
				]]
				if Array_upvr.isArray(arg1_14) then
					if typeof(arg2_8) == "number" then
						return arg1_14[arg2_8]
					end
					return nil
				end
				return arg5.store:getFieldValue(arg1_14, tostring(arg2_8))
			end
			arg2.map:forEach(function(arg1_15, arg2_9) -- Line 602
				--[[ Upvalues[9]:
					[1]: isReference_upvr_result1_upvr (readonly)
					[2]: Array_upvr (copied, readonly)
					[3]: arg5 (readonly)
					[4]: var156_upvr (readonly)
					[5]: tbl_11_upvw (read and write)
					[6]: arg1 (readonly)
					[7]: var161_upvw (read and write)
					[8]: Map_upvr (copied, readonly)
					[9]: invariant_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var163
				if Array_upvr.isArray(isReference_upvr_result1_upvr) then
					if typeof(arg2_9) == "number" then
					else
					end
				else
				end
				local var164 = var156_upvr
				if Array_upvr.isArray(var164) then
					if typeof(arg2_9) == "number" then
						var163 = var164[arg2_9]
					else
						var163 = nil
					end
				else
					var163 = arg5.store:getFieldValue(var164, tostring(arg2_9))
				end
				if var163 == nil then
				else
					if tbl_11_upvw ~= nil then
						table.insert(tbl_11_upvw, arg2_9)
					end
					local any_applyMerges_result1_2 = arg1:applyMerges(arg1_15, arg5.store:getFieldValue(var163, tostring(arg2_9)), var163, arg5, tbl_11_upvw)
					if any_applyMerges_result1_2 ~= var163 then
						local var166 = var161_upvw
						if not var166 then
							var166 = Map_upvr.new(nil)
						end
						var161_upvw = var166
						var161_upvw:set(arg2_9, any_applyMerges_result1_2)
					end
					local var167
					if tbl_11_upvw ~= nil then
						if table.remove(tbl_11_upvw, #tbl_11_upvw) ~= arg2_9 then
							var167 = false
						else
							var167 = true
						end
						invariant_upvr(var167)
					end
				end
			end)
			if var161_upvw ~= nil then
				var155_upvw = table.clone(var156_upvr)
				var161_upvw:forEach(function(arg1_16, arg2_10) -- Line 631
					--[[ Upvalues[1]:
						[1]: var155_upvw (read and write)
					]]
					var155_upvw[arg2_10] = arg1_16
				end)
			end
		end
	end
	local var169
	if arg2.info then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var169 = var169:getStorage(table.unpack(tbl_11_upvw))
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var169 = arg5.store
			return var169
		end
		if not Boolean_upvr.toJSBoolean(tbl_11_upvw) or not INLINED_2() then
			var169 = nil
		end
		return arg1.cache.policies:runMergeFunction(arg3, var155_upvw, arg2.info, arg5, var169)
	end
	return var155_upvw
end
module_2.StoreWriter = tbl_upvr
local tbl_6_upvr = {}
function getChildMergeTree_upvw(arg1, arg2) -- Line 656, Named "getChildMergeTree"
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: Map_upvr (readonly)
	]]
	local map = arg1.map
	if not map:has(arg2) then
		local popped = table.remove(tbl_6_upvr, #tbl_6_upvr)
		if not popped then
			popped = {}
			popped.map = Map_upvr.new(nil)
		end
		map:set(arg2, popped)
	end
	return map:get(arg2)
end
local mergeTreeIsEmpty_upvw
function mergeMergeTrees_upvw(arg1, arg2) -- Line 666, Named "mergeMergeTrees"
	--[[ Upvalues[5]:
		[1]: mergeTreeIsEmpty_upvw (read and write)
		[2]: Object_upvr (readonly)
		[3]: Map_upvr (readonly)
		[4]: Set_upvr (readonly)
		[5]: mergeMergeTrees_upvw (read and write)
	]]
	if arg1 == arg2 or arg2 == nil or mergeTreeIsEmpty_upvw(arg2) then
		return arg1
	end
	if arg1 == nil or mergeTreeIsEmpty_upvw(arg1) then
		return arg2
	end
	if arg1.info and arg2.info then
	elseif not arg1.info then
	end
	if 0 < arg1.map.size then
		local _ = arg2.map.size
	else
	end
	if 0 < arg1.map.size then
	elseif 0 < arg1.map.size then
	else
	end
	local module_3_upvr = {
		info = arg2.info;
		map = arg2.map;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if 0 < arg1.map.size then
		local any_new_result1_4_upvr = Set_upvr.new(arg2.map:keys())
		arg1.map:forEach(function(arg1_17, arg2_11) -- Line 696
			--[[ Upvalues[4]:
				[1]: module_3_upvr (readonly)
				[2]: mergeMergeTrees_upvw (copied, read and write)
				[3]: arg2 (readonly)
				[4]: any_new_result1_4_upvr (readonly)
			]]
			module_3_upvr.map:set(arg2_11, mergeMergeTrees_upvw(arg1_17, arg2.map:get(arg2_11)))
			any_new_result1_4_upvr:delete(arg2_11)
		end)
		any_new_result1_4_upvr:forEach(function(arg1_18) -- Line 701
			--[[ Upvalues[4]:
				[1]: module_3_upvr (readonly)
				[2]: mergeMergeTrees_upvw (copied, read and write)
				[3]: arg2 (readonly)
				[4]: arg1 (readonly)
			]]
			module_3_upvr.map:set(arg1_18, mergeMergeTrees_upvw(arg2.map:get(arg1_18), arg1.map:get(arg1_18)))
		end)
	end
	return module_3_upvr
end
function mergeTreeIsEmpty_upvw(arg1) -- Line 712, Named "mergeTreeIsEmpty"
	local var179 = not arg1
	if not var179 then
		local info = arg1.info
		if not info then
			if 0 >= arg1.map.size then
				info = false
			else
				info = true
			end
		end
		var179 = not info
	end
	return var179
end
function maybeRecycleChildMergeTree_upvw(arg1, arg2) -- Line 718, Named "maybeRecycleChildMergeTree"
	--[[ Upvalues[2]:
		[1]: mergeTreeIsEmpty_upvw (read and write)
		[2]: tbl_6_upvr (readonly)
	]]
	local map_2 = arg1.map
	local any_get_result1_8 = map_2:get(arg2)
	if any_get_result1_8 ~= nil and mergeTreeIsEmpty_upvw(any_get_result1_8) then
		table.insert(tbl_6_upvr, any_get_result1_8)
		map_2:delete(arg2)
	end
end
local equal_upvr = require(Parent.jsutils.equal)
local any_new_result1_2_upvr = Set_upvr.new()
function warnAboutDataLoss_upvw(arg1, arg2, arg3, arg4) -- Line 733, Named "warnAboutDataLoss"
	--[[ Upvalues[9]:
		[1]: isReference_upvr (readonly)
		[2]: equal_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: Boolean_upvr (readonly)
		[6]: fieldNameFromStoreName_upvr (readonly)
		[7]: any_new_result1_2_upvr (readonly)
		[8]: invariant_upvr (readonly)
		[9]: HttpService_upvr (readonly)
	]]
	local function _(arg1_19) -- Line 740, Named "getChild"
		--[[ Upvalues[2]:
			[1]: arg4 (readonly)
			[2]: arg3 (readonly)
		]]
		local any_getFieldValue_result1_3 = arg4:getFieldValue(arg1_19, arg3)
		local var186 = false
		if typeof(any_getFieldValue_result1_3) == "table" then
			var186 = any_getFieldValue_result1_3
		end
		return var186
	end
	local any_getFieldValue_result1 = arg4:getFieldValue(arg1, arg3)
	local var188 = false
	local var189
	if typeof(any_getFieldValue_result1) == "table" then
		var188 = any_getFieldValue_result1
	end
	if not var188 then
	else
		local any_getFieldValue_result1_4 = arg4:getFieldValue(arg2, arg3)
		any_getFieldValue_result1 = false
		local var191_upvr = any_getFieldValue_result1
		var189 = typeof(any_getFieldValue_result1_4)
		if var189 == "table" then
			var191_upvr = any_getFieldValue_result1_4
		end
		if not var191_upvr then return end
		var189 = var188
		if isReference_upvr(var189) then return end
		var189 = var188
		if equal_upvr(var189, var191_upvr) then return end
		var189 = Array_upvr
		var189 = Object_upvr.keys(var188)
		if var189.every(var189, function(arg1_20) -- Line 771
			--[[ Upvalues[2]:
				[1]: arg4 (readonly)
				[2]: var191_upvr (readonly)
			]]
			local var193
			if arg4:getFieldValue(var191_upvr, arg1_20) == nil then
				var193 = false
			else
				var193 = true
			end
			return var193
		end) then return end
		local any_getFieldValue_result1_5 = arg4:getFieldValue(arg1, "__typename")
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var189 = any_getFieldValue_result1_5
			return var189
		end
		if not Boolean_upvr.toJSBoolean(any_getFieldValue_result1_5) or not INLINED_3() then
			var189 = arg4:getFieldValue(arg2, "__typename")
		end
		local fieldNameFromStoreName_upvr_result1 = fieldNameFromStoreName_upvr(arg3)
		local formatted = "%s.%s":format(var189, fieldNameFromStoreName_upvr_result1)
		if any_new_result1_2_upvr:has(formatted) then return end
		any_new_result1_2_upvr:add(formatted)
		local tbl_7_upvr = {}
		local var198
		if not Array_upvr.isArray(var188) and not Array_upvr.isArray(var191_upvr) then
			Array_upvr.forEach({var188, var191_upvr}, function(arg1_21) -- Line 794
				--[[ Upvalues[3]:
					[1]: arg4 (readonly)
					[2]: Array_upvr (copied, readonly)
					[3]: tbl_7_upvr (readonly)
				]]
				local any_getFieldValue_result1_2 = arg4:getFieldValue(arg1_21, "__typename")
				if typeof(any_getFieldValue_result1_2) == "string" and not Array_upvr.includes(tbl_7_upvr, any_getFieldValue_result1_2) then
					table.insert(tbl_7_upvr, any_getFieldValue_result1_2)
				end
			end)
		end
		if Boolean_upvr.toJSBoolean(#tbl_7_upvr) then
			var198 = "either ensure all objects of type "..Array_upvr.join(tbl_7_upvr, " and ").." have an ID or a custom merge function, or "
		else
			var198 = ""
		end
		invariant_upvr.warn("Cache data may be lost when replacing the %s field of a %s object.\n\n\tTo address this problem (which is not a bug in Apollo Client), %sdefine a custom merge function for the %s field, so InMemoryCache can safely merge these objects:\n\n\t  existing: %s\n\t  incoming: %s\n\n\tFor more information about these options, please refer to the documentation:\n\n\t  * Ensuring entity objects have IDs: https://go.apollo.dev/c/generating-unique-identifiers\n\t  * Defining custom merge functions: https://go.apollo.dev/c/merging-non-normalized-objects\n\t":format(fieldNameFromStoreName_upvr_result1, var189, var198, formatted, string.sub(HttpService_upvr:JSONEncode(var188), 1, 1000), string.sub(HttpService_upvr:JSONEncode(var191_upvr), 1, 1000)))
	end
end
return module_2