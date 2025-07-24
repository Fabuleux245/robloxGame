-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:04
-- Luau version 6, Types version 3
-- Time taken: 0.020402 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local instanceof_upvr = LuauPolyfill.instanceof
local Object_upvr = LuauPolyfill.Object
local Set_upvr = LuauPolyfill.Set
local objectKeysForEach_upvr = require(Parent.luaUtils.objectKeysForEach)
local equal_upvr = require(Parent.jsutils.equal)
local Trie_upvr = require(Parent.wry.trie).Trie
local utilities = require(script.Parent.Parent.Parent.utilities)
local isReference_upvr = utilities.isReference
local makeReference_upvr = utilities.makeReference
local DeepMerger_upvr = utilities.DeepMerger
local maybeDeepFreeze_upvr = utilities.maybeDeepFreeze
local canUseWeakMap_upvr = utilities.canUseWeakMap
local helpers = require(script.Parent.helpers)
local hasOwn_upvr = helpers.hasOwn
local fieldNameFromStoreName_upvr = helpers.fieldNameFromStoreName
local tbl_3_upvr = {}
local function delModifier_upvw() -- Line 80, Named "delModifier"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	return tbl_3_upvr
end
local var22_upvw
local makeDepKey_upvw
local tbl_7_upvr = {}
tbl_7_upvr.__index = tbl_7_upvr
local function new(arg1, arg2) -- Line 136
	--[[ Upvalues[4]:
		[1]: tbl_7_upvr (readonly)
		[2]: maybeDeepFreeze_upvr (readonly)
		[3]: isReference_upvr (readonly)
		[4]: makeReference_upvr (readonly)
	]]
	local setmetatable_result1_2_upvr = setmetatable({}, tbl_7_upvr)
	setmetatable_result1_2_upvr.policies = arg1
	setmetatable_result1_2_upvr.group = arg2
	setmetatable_result1_2_upvr.data = {}
	setmetatable_result1_2_upvr.rootIds = {}
	setmetatable_result1_2_upvr.refs = {}
	function setmetatable_result1_2_upvr.getFieldValue(arg1_2, arg2_2, arg3) -- Line 152
		--[[ Upvalues[3]:
			[1]: maybeDeepFreeze_upvr (copied, readonly)
			[2]: isReference_upvr (copied, readonly)
			[3]: setmetatable_result1_2_upvr (readonly)
		]]
		local var27
		if isReference_upvr(arg2_2) then
			var27 = setmetatable_result1_2_upvr:get(arg2_2.__ref, arg3)
		else
			var27 = arg2_2
			if var27 then
				var27 = arg2_2[arg3]
			end
		end
		return maybeDeepFreeze_upvr(var27)
	end
	function setmetatable_result1_2_upvr.canRead(arg1_3, arg2_3) -- Line 169
		--[[ Upvalues[2]:
			[1]: isReference_upvr (copied, readonly)
			[2]: setmetatable_result1_2_upvr (readonly)
		]]
		local var29
		if var29 then
			var29 = setmetatable_result1_2_upvr:has(arg2_3.__ref)
			return var29
		end
		if typeof(arg2_3) ~= "table" then
			var29 = false
		else
			var29 = true
		end
		return var29
	end
	function setmetatable_result1_2_upvr.toReference(arg1_4, arg2_4, arg3) -- Line 181
		--[[ Upvalues[3]:
			[1]: makeReference_upvr (copied, readonly)
			[2]: isReference_upvr (copied, readonly)
			[3]: setmetatable_result1_2_upvr (readonly)
		]]
		if type(arg2_4) == "string" then
			return makeReference_upvr(arg2_4)
		end
		if isReference_upvr(arg2_4) then
			return arg2_4
		end
		local unpacked_value_1 = table.unpack(setmetatable_result1_2_upvr.policies:identify(arg2_4), 1, 1)
		if unpacked_value_1 then
			if arg3 then
				setmetatable_result1_2_upvr:merge(unpacked_value_1, arg2_4)
			end
			return makeReference_upvr(unpacked_value_1)
		end
	end
	return setmetatable_result1_2_upvr
end
tbl_7_upvr.new = new
local function addLayer(arg1, arg2, arg3) -- Line 211
	error("not implemented abstract method")
end
tbl_7_upvr.addLayer = addLayer
local function removeLayer(arg1, arg2) -- Line 215
	error("not implemented abstract method")
end
tbl_7_upvr.removeLayer = removeLayer
local function toObject(arg1) -- Line 223
	return table.clone(arg1.data)
end
tbl_7_upvr.toObject = toObject
function tbl_7_upvr.has(arg1, arg2) -- Line 229
	local var32
	if arg1:lookup(arg2, true) == nil then
		var32 = false
	else
		var32 = true
	end
	return var32
end
function tbl_7_upvr.get(arg1, arg2, arg3) -- Line 233
	--[[ Upvalues[4]:
		[1]: hasOwn_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: instanceof_upvr (readonly)
		[4]: var22_upvw (read and write)
	]]
	arg1.group:depend(arg2, arg3)
	if hasOwn_upvr(arg1.data, arg2) then
		local var34 = arg1.data[arg2]
		if Boolean_upvr.toJSBoolean(var34) and hasOwn_upvr(var34, arg3) then
			return var34[arg3]
		end
	end
	if arg3 == "__typename" then
		if hasOwn_upvr(arg1.policies.rootTypenamesById, arg2) then
			return arg1.policies.rootTypenamesById[arg2]
		end
	end
	if instanceof_upvr(arg1, var22_upvw) then
		return arg1.parent:get(arg2, arg3)
	end
	return nil
end
function tbl_7_upvr.lookup(arg1, arg2, arg3) -- Line 252
	--[[ Upvalues[3]:
		[1]: hasOwn_upvr (readonly)
		[2]: instanceof_upvr (readonly)
		[3]: var22_upvw (read and write)
	]]
	if arg3 then
		arg1.group:depend(arg2, "__exists")
	end
	if hasOwn_upvr(arg1.data, arg2) then
		return arg1.data[arg2]
	end
	if instanceof_upvr(arg1, var22_upvw) then
		return arg1.parent:lookup(arg2, arg3)
	end
	if arg1.policies.rootTypenamesById[arg2] then
		return {}
	end
	return nil
end
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local storeObjectReconciler_upvw
local function merge(arg1, arg2, arg3) -- Line 281
	--[[ Upvalues[8]:
		[1]: isReference_upvr (readonly)
		[2]: invariant_upvr (readonly)
		[3]: DeepMerger_upvr (readonly)
		[4]: storeObjectReconciler_upvw (read and write)
		[5]: objectKeysForEach_upvr (readonly)
		[6]: fieldNameFromStoreName_upvr (readonly)
		[7]: instanceof_upvr (readonly)
		[8]: var22_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var47
	if isReference_upvr(arg2) then
		var47 = var47.__ref
	end
	if isReference_upvr(arg3) then
		local __ref = arg3.__ref
	end
	local var49_upvw
	if type(var47) == "string" then
		var49_upvw = arg1:lookup(var47)
	else
		var49_upvw = var47
	end
	if type(__ref) == "string" then
		local var50_upvw = __ref
		-- KONSTANTWARNING: GOTO [45] #38
	end
	local var51 = __ref
	if not var51 then
	else
		if typeof(var50_upvw) ~= "string" then
		else
		end
		invariant_upvr(true, "store.merge expects a string ID")
		local any_merge_result1_upvr_2 = DeepMerger_upvr.new(storeObjectReconciler_upvw):merge(var49_upvw, var51)
		arg1.data[var50_upvw] = any_merge_result1_upvr_2
		if any_merge_result1_upvr_2 ~= var49_upvw then
			arg1.refs[var50_upvw] = nil
			if arg1.group.caching then
				local tbl_upvr = {}
				if not var49_upvw then
					tbl_upvr.__exists = 1
				end
				objectKeysForEach_upvr(var51, function(arg1_7) -- Line 350
					--[[ Upvalues[7]:
						[1]: var49_upvw (read and write)
						[2]: any_merge_result1_upvr_2 (readonly)
						[3]: tbl_upvr (readonly)
						[4]: fieldNameFromStoreName_upvr (copied, readonly)
						[5]: arg1 (readonly)
						[6]: instanceof_upvr (copied, readonly)
						[7]: var22_upvw (copied, read and write)
					]]
					if not var49_upvw or var49_upvw[arg1_7] ~= any_merge_result1_upvr_2[arg1_7] then
						tbl_upvr[arg1_7] = 1
						local fieldNameFromStoreName_upvr_result1 = fieldNameFromStoreName_upvr(arg1_7)
						if fieldNameFromStoreName_upvr_result1 ~= arg1_7 and not arg1.policies:hasKeyArgs(any_merge_result1_upvr_2.__typename, fieldNameFromStoreName_upvr_result1) then
							tbl_upvr[fieldNameFromStoreName_upvr_result1] = 1
						end
						if any_merge_result1_upvr_2[arg1_7] == nil and not instanceof_upvr(arg1, var22_upvw) then
							any_merge_result1_upvr_2[arg1_7] = nil
						end
					end
				end)
				if tbl_upvr.__typename and (not var49_upvw or not var49_upvw.__typename) then
					if arg1.policies.rootTypenamesById[var50_upvw] == any_merge_result1_upvr_2.__typename then
						tbl_upvr.__typename = nil
					end
				end
				objectKeysForEach_upvr(tbl_upvr, function(arg1_8) -- Line 397
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: var50_upvw (read and write)
					]]
					return arg1.group:dirty(var50_upvw, arg1_8)
				end)
			end
		end
	end
end
tbl_7_upvr.merge = merge
local tbl_6_upvr = {}
local isCallable_upvr = require(Parent.luaUtils.isCallable)
function tbl_7_upvr.modify(arg1, arg2, arg3) -- Line 405
	--[[ Upvalues[13]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
		[3]: isReference_upvr (readonly)
		[4]: makeReference_upvr (readonly)
		[5]: objectKeysForEach_upvr (readonly)
		[6]: fieldNameFromStoreName_upvr (readonly)
		[7]: isCallable_upvr (readonly)
		[8]: delModifier_upvw (read and write)
		[9]: maybeDeepFreeze_upvr (readonly)
		[10]: Object_upvr (readonly)
		[11]: DeepMerger_upvr (readonly)
		[12]: instanceof_upvr (readonly)
		[13]: var22_upvw (read and write)
	]]
	local any_lookup_result1_upvr = arg1:lookup(arg2)
	if any_lookup_result1_upvr then
		local module_upvr = {}
		local var61_upvw = false
		local var62_upvw = true
		local tbl_2_upvr = {
			DELETE = tbl_3_upvr;
			INVALIDATE = tbl_6_upvr;
			isReference = function(arg1_9, ...) -- Line 418, Named "isReference"
				--[[ Upvalues[1]:
					[1]: isReference_upvr (copied, readonly)
				]]
				return isReference_upvr(...)
			end;
			toReference = arg1.toReference;
			canRead = arg1.canRead;
			readField = function(arg1_10, arg2_5, arg3_2) -- Line 423, Named "readField"
				--[[ Upvalues[3]:
					[1]: arg1 (readonly)
					[2]: makeReference_upvr (copied, readonly)
					[3]: arg2 (readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				local var64
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [10] 8. Error Block 10 start (CF ANALYSIS FAILED)
				var64 = {}
				var64.fieldName = arg2_5
				local var65 = arg3_2
				if not var65 then
					var65 = makeReference_upvr(arg2)
				end
				var64.from = var65
				if not var64 then
					-- KONSTANTERROR: [21] 17. Error Block 5 start (CF ANALYSIS FAILED)
					var64 = arg2_5
					-- KONSTANTERROR: [21] 17. Error Block 5 end (CF ANALYSIS FAILED)
				end
				local module_3 = {}
				module_3.store = arg1
				do
					return arg1.policies:readField(var64, module_3)
				end
				-- KONSTANTERROR: [10] 8. Error Block 10 end (CF ANALYSIS FAILED)
			end;
		}
		objectKeysForEach_upvr(any_lookup_result1_upvr, function(arg1_11) -- Line 440
			--[[ Upvalues[16]:
				[1]: fieldNameFromStoreName_upvr (copied, readonly)
				[2]: any_lookup_result1_upvr (readonly)
				[3]: isCallable_upvr (copied, readonly)
				[4]: arg3 (readonly)
				[5]: delModifier_upvw (copied, read and write)
				[6]: tbl_3_upvr (copied, readonly)
				[7]: maybeDeepFreeze_upvr (copied, readonly)
				[8]: Object_upvr (copied, readonly)
				[9]: tbl_2_upvr (readonly)
				[10]: arg1 (readonly)
				[11]: arg2 (readonly)
				[12]: tbl_6_upvr (copied, readonly)
				[13]: DeepMerger_upvr (copied, readonly)
				[14]: module_upvr (readonly)
				[15]: var61_upvw (read and write)
				[16]: var62_upvw (read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var68 = any_lookup_result1_upvr[arg1_11]
			local var69
			if var68 == nil then
			else
				var69 = nil
				if isCallable_upvr(arg3) then
					var69 = arg3
				else
					local var70 = arg3
					local var71 = var70[arg1_11]
					if not var71 then
						var71 = var70[fieldNameFromStoreName_upvr(arg1_11)]
					end
					var69 = var71
				end
				if var69 then
					var70 = nil
					local var72 = var70
					local var73
					if var69 == delModifier_upvw then
						var72 = tbl_3_upvr
					else
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var73 = arg3
							return var73
						end
						if isCallable_upvr(arg3) or not INLINED_3() then
							var73 = nil
						end
						local tbl_4 = {}
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						tbl_4.fieldName = fieldNameFromStoreName_upvr(arg1_11)
						tbl_4.storeFieldName = arg1_11
						tbl_4.storage = arg1:getStorage(arg2, arg1_11)
						var72 = var69(var73, maybeDeepFreeze_upvr(var68), Object_upvr.assign(table.clone(tbl_2_upvr), tbl_4))
					end
					if var72 == tbl_6_upvr then
						var73 = arg1
						var73.group:dirty(arg2, arg1_11)
					else
						if var72 == tbl_3_upvr then
							var72 = DeepMerger_upvr.None
						end
						if var72 ~= var68 then
							module_upvr[arg1_11] = var72
							var61_upvw = true
							local var75 = var72
						end
					end
				end
				if var75 ~= nil and var75 ~= DeepMerger_upvr.None then
					var62_upvw = false
				end
			end
		end)
		if var61_upvw then
			arg1:merge(arg2, module_upvr)
			if var62_upvw then
				if instanceof_upvr(arg1, var22_upvw) then
					arg1.data[arg2] = nil
				else
					arg1.data[arg2] = nil
				end
				arg1.group:dirty(arg2, "__exists")
			end
			return true
		end
	end
	module_upvr = false
	return module_upvr
end
function tbl_7_upvr.delete(arg1, arg2, arg3, arg4) -- Line 520
	--[[ Upvalues[1]:
		[1]: delModifier_upvw (read and write)
	]]
	local any_lookup_result1 = arg1:lookup(arg2)
	local var77
	if any_lookup_result1 then
		if arg3 then
			if arg4 then
				local tbl_8 = {
					typename = arg1:getFieldValue(any_lookup_result1, "__typename");
				}
				tbl_8.fieldName = arg3
				tbl_8.args = arg4
				-- KONSTANTWARNING: GOTO [28] #22
			end
		end
		local var79 = arg3
		if var79 then
			var77 = {}
			var77[var79] = delModifier_upvw
		else
			var77 = delModifier_upvw
		end
		return arg1:modify(arg2, var77)
	end
	return false
end
function tbl_7_upvr.evict(arg1, arg2) -- Line 547
	--[[ Upvalues[3]:
		[1]: hasOwn_upvr (readonly)
		[2]: instanceof_upvr (readonly)
		[3]: var22_upvw (read and write)
	]]
	local var80 = false
	if arg2.id then
		if hasOwn_upvr(arg1.data, arg2.id) then
			var80 = arg1:delete(arg2.id, arg2.fieldName, arg2.args)
		end
		if instanceof_upvr(arg1, var22_upvw) then
			var80 = arg1.parent:evict(arg2) or var80
		end
		if arg2.fieldName or var80 then
			arg1.group:dirty(arg2.id, arg2.fieldName or "__exists")
		end
	end
	return var80
end
function tbl_7_upvr.clear(arg1) -- Line 575
	arg1:replace(nil)
end
function tbl_7_upvr.extract(arg1) -- Line 579
	--[[ Upvalues[2]:
		[1]: hasOwn_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	local any_toObject_result1 = arg1:toObject()
	local tbl_upvr_2 = {}
	arg1:getRootIdSet():forEach(function(arg1_12) -- Line 582
		--[[ Upvalues[3]:
			[1]: hasOwn_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: tbl_upvr_2 (readonly)
		]]
		if not hasOwn_upvr(arg1.policies.rootTypenamesById, arg1_12) then
			table.insert(tbl_upvr_2, arg1_12)
		end
	end)
	if 0 < #tbl_upvr_2 then
		any_toObject_result1.__META = {
			extraRootIds = Array_upvr.sort(tbl_upvr_2);
		}
	end
	return any_toObject_result1
end
function tbl_7_upvr.replace(arg1, arg2) -- Line 595
	--[[ Upvalues[4]:
		[1]: objectKeysForEach_upvr (readonly)
		[2]: hasOwn_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Array_upvr (readonly)
	]]
	objectKeysForEach_upvr(arg1.data, function(arg1_15) -- Line 597
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: hasOwn_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if not arg2 or not hasOwn_upvr(arg2, arg1_15) then
			arg1:delete(arg1_15)
		end
	end)
	if arg2 ~= nil then
		local __META_2 = arg2.__META
		local any_assign_result1_upvr_2 = Object_upvr.assign(table.clone(arg2), {
			__META = Object_upvr.None;
		})
		objectKeysForEach_upvr(any_assign_result1_upvr_2, function(arg1_16) -- Line 613
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_assign_result1_upvr_2 (readonly)
			]]
			arg1:merge(arg1_16, any_assign_result1_upvr_2[arg1_16])
		end)
		if __META_2 ~= nil then
			Array_upvr.forEach(__META_2.extraRootIds, arg1.retain, arg1)
		end
	end
end
local function getStorage(arg1, arg2, ...) -- Line 626
	error("not implemented abstract method")
end
tbl_7_upvr.getStorage = getStorage
function tbl_7_upvr.retain(arg1, arg2) -- Line 630
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var95
	if Boolean_upvr.toJSBoolean(arg1.rootIds[arg2]) then
		var95 = arg1.rootIds[arg2]
	else
		var95 = 0
	end
	arg1.rootIds[arg2] = var95 + 1
	return arg1.rootIds[arg2]
end
function tbl_7_upvr.release(arg1, arg2) -- Line 637
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if 0 < arg1.rootIds[arg2] then
		local rootIds = arg1.rootIds
		rootIds[arg2] -= 1
		local var97 = arg1.rootIds[arg2]
		if not Boolean_upvr.toJSBoolean(var97) then
			arg1.rootIds[arg2] = nil
		end
		return var97
	end
	return 0
end
function tbl_7_upvr.getRootIdSet(arg1, arg2) -- Line 654
	--[[ Upvalues[5]:
		[1]: Set_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: instanceof_upvr (readonly)
		[5]: var22_upvw (read and write)
	]]
	local var98 = arg2
	if arg2 == nil then
		var98 = Set_upvr.new()
	end
	Array_upvr.forEach(Object_upvr.keys(arg1.rootIds), var98.add, var98)
	if instanceof_upvr(arg1, var22_upvw) then
		arg1.parent:getRootIdSet(var98)
		return var98
	end
	Array_upvr.forEach(Object_upvr.keys(arg1.policies.rootTypenamesById), var98.add, var98)
	return var98
end
function tbl_7_upvr.gc(arg1) -- Line 675
	--[[ Upvalues[6]:
		[1]: hasOwn_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: instanceof_upvr (readonly)
		[6]: var22_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getRootIdSet_result1 = arg1:getRootIdSet()
	local any_toObject_result1_2 = arg1:toObject()
	local var109
	for i, var112 in any_getRootIdSet_result1, var109 do
		if hasOwn_upvr(any_toObject_result1_2, var112) then
			Array_upvr.forEach(Object_upvr.keys(arg1:findChildRefIds(var112)), any_getRootIdSet_result1.add, any_getRootIdSet_result1)
			any_toObject_result1_2[var112] = nil
		end
	end
	var109 = Object_upvr
	var109 = any_toObject_result1_2
	local any_keys_result1 = var109.keys(var109)
	var109 = Boolean_upvr.toJSBoolean(#any_keys_result1)
	if var109 then
		var109 = arg1
		local var111_upvw = var109
		while true do
			i = var111_upvw
			var112 = var22_upvw
			if not instanceof_upvr(i, var112) then break end
			var111_upvw = var111_upvw.parent
		end
		i = Array_upvr
		i = any_keys_result1
		function var112(arg1_17) -- Line 700
			--[[ Upvalues[1]:
				[1]: var111_upvw (read and write)
			]]
			return var111_upvw:delete(arg1_17)
		end
		i.forEach(i, var112)
	end
	return any_keys_result1
end
local isNonNullObject_upvr = utilities.isNonNullObject
local function findChildRefIds(arg1, arg2) -- Line 707
	--[[ Upvalues[5]:
		[1]: hasOwn_upvr (readonly)
		[2]: Set_upvr (readonly)
		[3]: isReference_upvr (readonly)
		[4]: isNonNullObject_upvr (readonly)
		[5]: objectKeysForEach_upvr (readonly)
	]]
	if not hasOwn_upvr(arg1.refs, arg2) then
		arg1.refs[arg2] = {}
		local var116 = arg1.refs[arg2]
		local var117 = arg1.data[arg2]
		if not var117 then
			return var116
		end
		local any_new_result1_upvr = Set_upvr.new({var117})
		for _, v_2_upvr in any_new_result1_upvr do
			if isReference_upvr(v_2_upvr) then
				var116[v_2_upvr.__ref] = true
			end
			if isNonNullObject_upvr(v_2_upvr) then
				objectKeysForEach_upvr(v_2_upvr, function(arg1_18) -- Line 736
					--[[ Upvalues[3]:
						[1]: v_2_upvr (readonly)
						[2]: isNonNullObject_upvr (copied, readonly)
						[3]: any_new_result1_upvr (readonly)
					]]
					local var121 = v_2_upvr[arg1_18]
					if isNonNullObject_upvr(var121) then
						any_new_result1_upvr:add(var121)
					end
				end)
			end
		end
	end
	return arg1.refs[arg2]
end
tbl_7_upvr.findChildRefIds = findChildRefIds
function tbl_7_upvr.makeCacheKey(arg1, ...) -- Line 753
	return arg1.group.keyMaker:lookupArray({...})
end
module.EntityStore = tbl_7_upvr
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
local function new(arg1, arg2) -- Line 784
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_2_upvr)
	setmetatable_result1.caching = arg1
	setmetatable_result1.parent = arg2
	setmetatable_result1.d = nil
	setmetatable_result1:resetCaching()
	return setmetatable_result1
end
module_2_upvr.new = new
local dep_upvr = require(Parent.optimism).dep
function module_2_upvr.resetCaching(arg1) -- Line 793
	--[[ Upvalues[3]:
		[1]: dep_upvr (readonly)
		[2]: Trie_upvr (readonly)
		[3]: canUseWeakMap_upvr (readonly)
	]]
	local var126
	if arg1.caching then
		var126 = dep_upvr()
	else
		var126 = nil
	end
	arg1.d = var126
	var126 = Trie_upvr.new(canUseWeakMap_upvr)
	arg1.keyMaker = var126
end
function module_2_upvr.depend(arg1, arg2, arg3) -- Line 800
	--[[ Upvalues[2]:
		[1]: makeDepKey_upvw (read and write)
		[2]: fieldNameFromStoreName_upvr (readonly)
	]]
	if arg1.d then
		arg1.d(makeDepKey_upvw(arg2, arg3))
		local var20_result1 = fieldNameFromStoreName_upvr(arg3)
		if var20_result1 ~= arg3 then
			arg1.d(makeDepKey_upvw(arg2, var20_result1))
		end
		if arg1.parent then
			arg1.parent:depend(arg2, arg3)
		end
	end
end
function module_2_upvr.dirty(arg1, arg2, arg3) -- Line 822
	--[[ Upvalues[1]:
		[1]: makeDepKey_upvw (read and write)
	]]
	if arg1.d then
		local var128 = arg2
		if arg3 == "__exists" then
			var128 = "forget"
		else
			var128 = "setDirty"
		end
		arg1.d:dirty(makeDepKey_upvw(var128, arg3), var128)
	end
end
function makeDepKey_upvw(arg1, arg2) -- Line 840, Named "makeDepKey"
	return arg2..'#'..arg1
end
local supportsResultCaching_upvw
function module.maybeDependOnExistenceOfEntity(arg1, arg2) -- Line 847
	--[[ Upvalues[1]:
		[1]: supportsResultCaching_upvw (read and write)
	]]
	if supportsResultCaching_upvw(arg1) then
		arg1.group:depend(arg2, "__exists")
	end
end
local setmetatable_result1_5_upvr = setmetatable({}, {
	__index = tbl_7_upvr;
})
setmetatable_result1_5_upvr.__index = setmetatable_result1_5_upvr
local var132_upvw
local function new(arg1) -- Line 872
	--[[ Upvalues[6]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: setmetatable_result1_5_upvr (readonly)
		[4]: var132_upvw (read and write)
		[5]: Trie_upvr (readonly)
		[6]: canUseWeakMap_upvr (readonly)
	]]
	local resultCaching = arg1.resultCaching
	local seed = arg1.seed
	if arg1.resultCaching == nil then
		resultCaching = true
	end
	local setmetatable_result1_4 = setmetatable(tbl_7_upvr.new(arg1.policies, module_2_upvr.new(resultCaching)), setmetatable_result1_5_upvr)
	setmetatable_result1_4.stump = var132_upvw.new(setmetatable_result1_4)
	setmetatable_result1_4.storageTrie = Trie_upvr.new(canUseWeakMap_upvr)
	if seed then
		setmetatable_result1_4:replace(seed)
	end
	return setmetatable_result1_4
end
setmetatable_result1_5_upvr.new = new
local function addLayer(arg1, arg2, arg3) -- Line 896
	return arg1.stump:addLayer(arg2, arg3)
end
setmetatable_result1_5_upvr.addLayer = addLayer
local function removeLayer(arg1) -- Line 903
	return arg1
end
setmetatable_result1_5_upvr.removeLayer = removeLayer
local function getStorage(arg1, ...) -- Line 908
	return arg1.storageTrie:lookupArray({...})
end
setmetatable_result1_5_upvr.getStorage = getStorage
module.EntityStore_Root = setmetatable_result1_5_upvr
var22_upvw = setmetatable({}, {
	__index = tbl_7_upvr;
})
local var138_upvw = var22_upvw
var138_upvw.__index = var138_upvw
local function new(arg1, arg2, arg3, arg4) -- Line 930
	--[[ Upvalues[2]:
		[1]: tbl_7_upvr (readonly)
		[2]: var138_upvw (read and write)
	]]
	local setmetatable_result1_3 = setmetatable(tbl_7_upvr.new(arg2.policies, arg4), var138_upvw)
	setmetatable_result1_3.id = arg1
	setmetatable_result1_3.parent = arg2
	setmetatable_result1_3.replay = arg3
	setmetatable_result1_3.group = arg4
	arg3(setmetatable_result1_3, setmetatable_result1_3)
	return setmetatable_result1_3
end
var138_upvw.new = new
function var138_upvw.addLayer(arg1, arg2, arg3) -- Line 945
	--[[ Upvalues[1]:
		[1]: var138_upvw (read and write)
	]]
	return var138_upvw.new(arg2, arg1, arg3, arg1.group)
end
local function removeLayer(arg1, arg2) -- Line 949
	--[[ Upvalues[2]:
		[1]: objectKeysForEach_upvr (readonly)
		[2]: equal_upvr (readonly)
	]]
	local any_removeLayer_result1_upvr = arg1.parent:removeLayer(arg2)
	if arg2 == arg1.id then
		if arg1.group.caching then
			objectKeysForEach_upvr(arg1.data, function(arg1_19) -- Line 960
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: any_removeLayer_result1_upvr (readonly)
					[3]: objectKeysForEach_upvr (copied, readonly)
					[4]: equal_upvr (copied, readonly)
				]]
				local var142_upvr = arg1.data[arg1_19]
				local any_lookup_result1_2_upvr = any_removeLayer_result1_upvr.lookup(any_removeLayer_result1_upvr, arg1_19)
				if not any_lookup_result1_2_upvr then
					arg1:delete(arg1_19)
				else
					if not var142_upvr then
						arg1.group:dirty(arg1_19, "__exists")
						objectKeysForEach_upvr(any_lookup_result1_2_upvr, function(arg1_20) -- Line 982
							--[[ Upvalues[2]:
								[1]: arg1 (copied, readonly)
								[2]: arg1_19 (readonly)
							]]
							arg1.group:dirty(arg1_19, arg1_20)
						end)
						return
					end
					if var142_upvr ~= any_lookup_result1_2_upvr then
						objectKeysForEach_upvr(var142_upvr, function(arg1_21) -- Line 991
							--[[ Upvalues[5]:
								[1]: equal_upvr (copied, readonly)
								[2]: var142_upvr (readonly)
								[3]: any_lookup_result1_2_upvr (readonly)
								[4]: arg1 (copied, readonly)
								[5]: arg1_19 (readonly)
							]]
							if not equal_upvr(var142_upvr[arg1_21], any_lookup_result1_2_upvr[arg1_21]) then
								arg1.group:dirty(arg1_19, arg1_21)
							end
						end)
					end
				end
			end)
		end
		return any_removeLayer_result1_upvr
	end
	if any_removeLayer_result1_upvr == arg1.parent then
		return arg1
	end
	return any_removeLayer_result1_upvr:addLayer(arg1.id, arg1.replay)
end
var138_upvw.removeLayer = removeLayer
function var138_upvw.toObject(arg1) -- Line 1012
	--[[ Upvalues[1]:
		[1]: Object_upvr (readonly)
	]]
	return Object_upvr.assign({}, arg1.parent:toObject(), arg1.data)
end
function var138_upvw.findChildRefIds(arg1, arg2) -- Line 1016
	--[[ Upvalues[2]:
		[1]: hasOwn_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local any_findChildRefIds_result1 = arg1.parent:findChildRefIds(arg2)
	local var147
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var147 = Object_upvr.assign({}, any_findChildRefIds_result1, getmetatable(getmetatable(arg1)).__index.findChildRefIds(arg1, arg2))
		return var147
	end
	if not hasOwn_upvr(arg1.data, arg2) or not INLINED_4() then
		var147 = any_findChildRefIds_result1
	end
	return var147
end
function var138_upvw.getStorage(arg1, ...) -- Line 1025
	local var148
	while var148.parent do
		var148 = var148.parent
	end
	return var148:getStorage(...)
end
var132_upvw = setmetatable({}, {
	__index = var138_upvw;
})
local var150_upvw = var132_upvw
var150_upvw.__index = var150_upvw
function var150_upvw.new(arg1) -- Line 1041
	--[[ Upvalues[3]:
		[1]: var138_upvw (read and write)
		[2]: module_2_upvr (readonly)
		[3]: var150_upvw (read and write)
	]]
	return setmetatable(var138_upvw.new("EntityStore.Stump", arg1, function() -- Line 1042
	end, module_2_upvr.new(arg1.group.caching, arg1.group)), var150_upvw)
end
function var150_upvw.removeLayer(arg1) -- Line 1047
	return arg1
end
function var150_upvw.merge(arg1, ...) -- Line 1052
	return arg1.parent:merge(...)
end
function storeObjectReconciler_upvw(arg1, arg2, arg3, arg4) -- Line 1061, Named "storeObjectReconciler"
	--[[ Upvalues[1]:
		[1]: equal_upvr (readonly)
	]]
	local var152 = arg2[arg4]
	local var153 = arg3[arg4]
	if equal_upvr(var152, var153) then
		return var152
	end
	return var153
end
function supportsResultCaching_upvw(arg1) -- Line 1081, Named "supportsResultCaching"
	local var155 = false
	if type(arg1) == "table" then
		var155 = false
		if type(arg1.group) == "table" then
			if arg1.group.caching ~= true then
				var155 = false
			else
				var155 = true
			end
		end
	end
	return var155
end
module.supportsResultCaching = supportsResultCaching_upvw
return module