-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:18
-- Luau version 6, Types version 3
-- Time taken: 0.021097 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local Boolean_upvr = LuauPolyfill.Boolean
local module_7 = {}
local GraphQL = require(Parent_2.GraphQL)
local visit_upvr = GraphQL.visit
local REMOVE_upvr = GraphQL.REMOVE
local getFromAST = require(script.Parent.getFromAST)
local checkDocument_upvr = getFromAST.checkDocument
local getOperationDefinition_upvr = getFromAST.getOperationDefinition
local getFragmentDefinition_upvr = getFromAST.getFragmentDefinition
local getFragmentDefinitions_upvr = getFromAST.getFragmentDefinitions
local storeUtils = require(script.Parent.storeUtils)
local isField_upvr = storeUtils.isField
local function _(arg1) -- Line 58, Named "createFragmentMap"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local module_6_upvr = {}
	Array_upvr.forEach(arg1, function(arg1_2) -- Line 60
		--[[ Upvalues[1]:
			[1]: module_6_upvr (readonly)
		]]
		module_6_upvr[arg1_2.name.value] = arg1_2
	end)
	return module_6_upvr
end
local tbl_17_upvr = {
	kind = "Field";
	name = {
		kind = "Name";
		value = "__typename";
	};
}
local function isEmpty_upvr(arg1, arg2) -- Line 90, Named "isEmpty"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: isEmpty_upvr (readonly)
	]]
	return Array_upvr.every(arg1.selectionSet.selections, function(arg1_3) -- Line 91
		--[[ Upvalues[2]:
			[1]: isEmpty_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		local var23 = false
		if arg1_3.kind == "FragmentSpread" then
			var23 = isEmpty_upvr(arg2[arg1_3.name.value], arg2)
		end
		return var23
	end, nil)
end
local function _(arg1) -- Line 97, Named "nullIfDocIsEmpty"
	--[[ Upvalues[5]:
		[1]: getOperationDefinition_upvr (readonly)
		[2]: getFragmentDefinition_upvr (readonly)
		[3]: getFragmentDefinitions_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: isEmpty_upvr (readonly)
	]]
	local getOperationDefinition_upvr_result1 = getOperationDefinition_upvr(arg1)
	if not getOperationDefinition_upvr_result1 then
		getOperationDefinition_upvr_result1 = getFragmentDefinition_upvr(arg1)
	end
	local tbl_7_upvr = {}
	Array_upvr.forEach(getFragmentDefinitions_upvr(arg1), function(arg1_4) -- Line 60
		--[[ Upvalues[1]:
			[1]: tbl_7_upvr (readonly)
		]]
		tbl_7_upvr[arg1_4.name.value] = arg1_4
	end)
	tbl_7_upvr = Array_upvr
	tbl_7_upvr = getOperationDefinition_upvr_result1.selectionSet.selections
	if tbl_7_upvr.every(tbl_7_upvr, function(arg1_5) -- Line 91
		--[[ Upvalues[2]:
			[1]: isEmpty_upvr (copied, readonly)
			[2]: tbl_7_upvr (readonly)
		]]
		local var28 = false
		if arg1_5.kind == "FragmentSpread" then
			var28 = isEmpty_upvr(tbl_7_upvr[arg1_5.name.value], tbl_7_upvr)
		end
		return var28
	end, nil) then
		return nil
	end
	return arg1
end
local function _(arg1) -- Line 110, Named "getDirectiveMatcher"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	return function(arg1_6) -- Line 111
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Boolean_upvr (copied, readonly)
		]]
		return Array_upvr.some(arg1, function(arg1_7) -- Line 112
			--[[ Upvalues[2]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: arg1_6 (readonly)
			]]
			local var31
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var31 = true
				return arg1_7.name ~= arg1_6.name.value
			end
			if not Boolean_upvr.toJSBoolean(arg1_7.name) or INLINED() then
				var31 = Boolean_upvr.toJSBoolean(arg1_7.test)
				if var31 then
					var31 = arg1_7:test(arg1_6)
				end
			end
			return var31
		end)
	end
end
local getAllFragmentSpreadsFromSelectionSet_upvw
local filterInPlace_upvr = require(script.Parent.Parent.common.filterInPlace).filterInPlace
local removeArgumentsFromDocument_upvw
local removeFragmentSpreadFromDocument_upvw
local function removeDirectivesFromDocument_upvr(arg1, arg2) -- Line 119, Named "removeDirectivesFromDocument"
	--[[ Upvalues[12]:
		[1]: visit_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: getAllFragmentSpreadsFromSelectionSet_upvw (read and write)
		[5]: REMOVE_upvr (readonly)
		[6]: getOperationDefinition_upvr (readonly)
		[7]: getFragmentDefinition_upvr (readonly)
		[8]: getFragmentDefinitions_upvr (readonly)
		[9]: isEmpty_upvr (readonly)
		[10]: filterInPlace_upvr (readonly)
		[11]: removeArgumentsFromDocument_upvw (read and write)
		[12]: removeFragmentSpreadFromDocument_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_22_upvr = {}
	local tbl_21_upvr = {}
	local tbl_34_upvr = {}
	local module_8_upvr = {}
	local tbl_26 = {}
	local tbl_24 = {}
	local function enter(arg1_28, arg2_6, arg3, arg4) -- Line 131
		--[[ Upvalues[1]:
			[1]: tbl_22_upvr (readonly)
		]]
		if arg4.kind ~= "VariableDefinition" then
			tbl_22_upvr[arg2_6.name.value] = true
		end
		return nil
	end
	tbl_24.enter = enter
	tbl_26.Variable = tbl_24
	local tbl_9 = {}
	local function enter(arg1_29, arg2_7) -- Line 144
		--[[ Upvalues[7]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: tbl_21_upvr (readonly)
			[5]: getAllFragmentSpreadsFromSelectionSet_upvw (copied, read and write)
			[6]: module_8_upvr (readonly)
			[7]: REMOVE_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean(arg1) and Boolean_upvr.toJSBoolean(arg2_7.directives) then
			if Array_upvr.some(arg1, function(arg1_30) -- Line 148
				return arg1_30.remove
			end) and arg2_7.directives then
				if Array_upvr.some(arg2_7.directives, function(arg1_31) -- Line 111
					--[[ Upvalues[3]:
						[1]: Array_upvr (copied, readonly)
						[2]: arg1 (readonly)
						[3]: Boolean_upvr (copied, readonly)
					]]
					return Array_upvr.some(arg1, function(arg1_32) -- Line 112
						--[[ Upvalues[2]:
							[1]: Boolean_upvr (copied, readonly)
							[2]: arg1_31 (readonly)
						]]
						local var86
						local function INLINED_5() -- Internal function, doesn't exist in bytecode
							var86 = true
							return arg1_32.name ~= arg1_31.name.value
						end
						if not Boolean_upvr.toJSBoolean(arg1_32.name) or INLINED_5() then
							var86 = Boolean_upvr.toJSBoolean(arg1_32.test)
							if var86 then
								var86 = arg1_32:test(arg1_31)
							end
						end
						return var86
					end)
				end) then
					if arg2_7.arguments then
						Array_upvr.forEach(arg2_7.arguments, function(arg1_33) -- Line 160
							--[[ Upvalues[1]:
								[1]: tbl_21_upvr (copied, readonly)
							]]
							if arg1_33.value.kind == "Variable" then
								table.insert(tbl_21_upvr, {
									name = arg1_33.value.name.value;
								})
							end
						end)
					end
					if arg2_7.selectionSet then
						Array_upvr.forEach(getAllFragmentSpreadsFromSelectionSet_upvw(arg2_7.selectionSet), function(arg1_34) -- Line 175
							--[[ Upvalues[1]:
								[1]: module_8_upvr (copied, readonly)
							]]
							table.insert(module_8_upvr, {
								name = arg1_34.name.value;
							})
						end)
					end
					return REMOVE_upvr
				end
			end
		end
		return nil
	end
	tbl_9.enter = enter
	tbl_26.Field = tbl_9
	local tbl_23 = {}
	local function enter(arg1_35, arg2_8) -- Line 190
		--[[ Upvalues[1]:
			[1]: tbl_34_upvr (readonly)
		]]
		tbl_34_upvr[arg2_8.name.value] = true
	end
	tbl_23.enter = enter
	tbl_26.FragmentSpread = tbl_23
	local tbl_14 = {}
	local function enter(arg1_36, arg2_9) -- Line 197
		--[[ Upvalues[4]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: REMOVE_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean((function(arg1_37) -- Line 111
			--[[ Upvalues[3]:
				[1]: Array_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Boolean_upvr (copied, readonly)
			]]
			return Array_upvr.some(arg1, function(arg1_38) -- Line 112
				--[[ Upvalues[2]:
					[1]: Boolean_upvr (copied, readonly)
					[2]: arg1_37 (readonly)
				]]
				local var95
				local function INLINED_6() -- Internal function, doesn't exist in bytecode
					var95 = true
					return arg1_38.name ~= arg1_37.name.value
				end
				if not Boolean_upvr.toJSBoolean(arg1_38.name) or INLINED_6() then
					var95 = Boolean_upvr.toJSBoolean(arg1_38.test)
					if var95 then
						var95 = arg1_38:test(arg1_37)
					end
				end
				return var95
			end)
		end)(arg2_9)) then
			return REMOVE_upvr
		end
		return nil
	end
	tbl_14.enter = enter
	tbl_26.Directive = tbl_14
	local visit_upvr_result1_3 = visit_upvr(arg2, tbl_26)
	local var13_result1_2 = getOperationDefinition_upvr(visit_upvr_result1_3)
	if not var13_result1_2 then
		var13_result1_2 = getFragmentDefinition_upvr(visit_upvr_result1_3)
	end
	local tbl_upvr = {}
	Array_upvr.forEach(getFragmentDefinitions_upvr(visit_upvr_result1_3), function(arg1_39) -- Line 60
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		tbl_upvr[arg1_39.name.value] = arg1_39
	end)
	tbl_upvr = Array_upvr
	tbl_upvr = var13_result1_2.selectionSet.selections
	if tbl_upvr.every(tbl_upvr, function(arg1_40) -- Line 91
		--[[ Upvalues[2]:
			[1]: isEmpty_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
		]]
		local var101 = false
		if arg1_40.kind == "FragmentSpread" then
			var101 = isEmpty_upvr(tbl_upvr[arg1_40.name.value], tbl_upvr)
		end
		return var101
	end, nil) then
		local _
	else
	end
	if Boolean_upvr.toJSBoolean(visit_upvr_result1_3) then
		if Boolean_upvr.toJSBoolean(#filterInPlace_upvr(tbl_21_upvr, function(arg1_41) -- Line 213
			--[[ Upvalues[2]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: tbl_22_upvr (readonly)
			]]
			local var104 = not not Boolean_upvr.toJSBoolean(arg1_41.name)
			if var104 then
				var104 = not tbl_22_upvr[arg1_41.name]
			end
			return var104
		end)) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local removeArgumentsFromDocument_upvw_result1 = removeArgumentsFromDocument_upvw(tbl_21_upvr, visit_upvr_result1_3)
		end
	end
	if Boolean_upvr.toJSBoolean(removeArgumentsFromDocument_upvw_result1) then
		if Boolean_upvr.toJSBoolean(#filterInPlace_upvr(module_8_upvr, function(arg1_42) -- Line 225
			--[[ Upvalues[2]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: tbl_34_upvr (readonly)
			]]
			local var107 = not not Boolean_upvr.toJSBoolean(arg1_42.name)
			if var107 then
				var107 = not tbl_34_upvr[arg1_42.name]
			end
			return var107
		end)) then
		end
	end
	return removeFragmentSpreadFromDocument_upvw(module_8_upvr, removeArgumentsFromDocument_upvw_result1)
end
module_7.removeDirectivesFromDocument = removeDirectivesFromDocument_upvr
local tbl = {}
local String_upvr = LuauPolyfill.String
function tbl.__call(arg1, arg2) -- Line 238
	--[[ Upvalues[8]:
		[1]: visit_upvr (readonly)
		[2]: checkDocument_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: isField_upvr (readonly)
		[6]: String_upvr (readonly)
		[7]: Object_upvr (readonly)
		[8]: tbl_17_upvr (readonly)
	]]
	local module_4 = {}
	local tbl_33 = {}
	local function enter(arg1_43, arg2_10, arg3, arg4) -- Line 241
		--[[ Upvalues[6]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: isField_upvr (copied, readonly)
			[4]: String_upvr (copied, readonly)
			[5]: Object_upvr (copied, readonly)
			[6]: tbl_17_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean(arg4) and arg4.kind == "OperationDefinition" then return end
		local selections = arg2_10.selections
		if not Boolean_upvr.toJSBoolean(selections) then return end
		if Array_upvr.some(selections, function(arg1_46) -- Line 258
			--[[ Upvalues[2]:
				[1]: isField_upvr (copied, readonly)
				[2]: String_upvr (copied, readonly)
			]]
			local isField_upvr_result1 = isField_upvr(arg1_46)
			if isField_upvr_result1 then
				isField_upvr_result1 = true
				if arg1_46.name.value ~= "__typename" then
					if String_upvr.lastIndexOf(arg1_46.name.value, "__", 1) ~= 1 then
						isField_upvr_result1 = false
					else
						isField_upvr_result1 = true
					end
				end
			end
			return isField_upvr_result1
		end) then return end
		if isField_upvr(arg4) and Boolean_upvr.toJSBoolean(arg4.directives) then
			if Boolean_upvr.toJSBoolean(Array_upvr.some(arg4.directives, function(arg1_47) -- Line 275
				local var124
				if arg1_47.name.value ~= "export" then
					var124 = false
				else
					var124 = true
				end
				return var124
			end)) then return end
		end
		return Object_upvr.assign({}, arg2_10, {
			selections = Array_upvr.concat({}, selections, {tbl_17_upvr});
		})
	end
	tbl_33.enter = enter
	module_4.SelectionSet = tbl_33
	return visit_upvr(checkDocument_upvr(arg2), module_4)
end
module_7.addTypenameToDocument = Object_upvr.assign(setmetatable({}, tbl), {
	added = function(arg1, arg2) -- Line 294, Named "added"
		--[[ Upvalues[1]:
			[1]: tbl_17_upvr (readonly)
		]]
		local var128
		if arg2 ~= tbl_17_upvr then
			var128 = false
		else
			var128 = true
		end
		return var128
	end;
})
local tbl_4_upvr = {}
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local function test(arg1, arg2) -- Line 302
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: invariant_upvr (readonly)
	]]
	local var131
	if arg2.name.value ~= "connection" then
		var131 = false
	else
		var131 = true
	end
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		return Array_upvr.some(arg2.arguments, function(arg1_48) -- Line 307
			local var133
			if arg1_48.name.value ~= "key" then
				var133 = false
			else
				var133 = true
			end
			return var133
		end)
	end
	if var131 and (not Boolean_upvr.toJSBoolean(arg2.arguments) or INLINED_7()) then
		invariant_upvr.warn("Removing an @connection directive even though it does not have a key. ".."You may want to use the key parameter to specify a store key.")
	end
	return var131
end
tbl_4_upvr.test = test
function module_7.removeConnectionDirectiveFromDocument(arg1) -- Line 322
	--[[ Upvalues[3]:
		[1]: removeDirectivesFromDocument_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: checkDocument_upvr (readonly)
	]]
	return removeDirectivesFromDocument_upvr({tbl_4_upvr}, checkDocument_upvr(arg1))
end
local hasDirectivesInSelection_upvw
local function _(arg1, arg2, arg3) -- Line 327, Named "hasDirectivesInSelectionSet"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: hasDirectivesInSelection_upvw (read and write)
	]]
	if arg3 == nil then
	end
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		local var137_upvw = true
		return Array_upvr.some(arg2.selections, function(arg1_49) -- Line 338
			--[[ Upvalues[3]:
				[1]: hasDirectivesInSelection_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: var137_upvw (read and write)
			]]
			return hasDirectivesInSelection_upvw(arg1, arg1_49, var137_upvw)
		end)
	end
	if not arg2 or not arg2.selections or not INLINED_8() then
	end
	return false
end
function hasDirectivesInSelection_upvw(arg1, arg2, arg3) -- Line 346, Named "hasDirectivesInSelection"
	--[[ Upvalues[4]:
		[1]: isField_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: hasDirectivesInSelection_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 3 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 375, Named "getArgumentMatcher"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	return function(arg1_50) -- Line 376
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Array_upvr.some(arg1, function(arg1_51) -- Line 377
			--[[ Upvalues[1]:
				[1]: arg1_50 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 26. Error Block 7 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 26. Error Block 7 end (CF ANALYSIS FAILED)
		end)
	end
end
function removeArgumentsFromDocument_upvw(arg1, arg2) -- Line 398, Named "removeArgumentsFromDocument"
	--[[ Upvalues[9]:
		[1]: Array_upvr (readonly)
		[2]: visit_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: REMOVE_upvr (readonly)
		[5]: Boolean_upvr (readonly)
		[6]: getOperationDefinition_upvr (readonly)
		[7]: getFragmentDefinition_upvr (readonly)
		[8]: getFragmentDefinitions_upvr (readonly)
		[9]: isEmpty_upvr (readonly)
	]]
	local function var140_upvr(arg1_52) -- Line 376
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Array_upvr.some(arg1, function(arg1_53) -- Line 377
			--[[ Upvalues[1]:
				[1]: arg1_52 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 26. Error Block 7 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [38] 26. Error Block 7 end (CF ANALYSIS FAILED)
		end)
	end
	local tbl_31 = {}
	local tbl_16 = {}
	local function enter(arg1_54, arg2_11) -- Line 403
		--[[ Upvalues[3]:
			[1]: Object_upvr (copied, readonly)
			[2]: Array_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module = {}
		local var145
		local function INLINED_9() -- Internal function, doesn't exist in bytecode
			var145 = var145(arg2_11.variableDefinitions, function(arg1_55) -- Line 407
				--[[ Upvalues[2]:
					[1]: Array_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				return not Array_upvr.some(arg1, function(arg1_56) -- Line 408
					--[[ Upvalues[1]:
						[1]: arg1_55 (readonly)
					]]
					local var148
					if arg1_56.name ~= arg1_55.variable.name.value then
						var148 = false
					else
						var148 = true
					end
					return var148
				end)
			end)
			var145 = Array_upvr.filter
			return var145
		end
		if not arg2_11.variableDefinitions or not INLINED_9() then
			var145 = {}
		end
		module.variableDefinitions = var145
		return Object_upvr.assign({}, arg2_11, module)
	end
	tbl_16.enter = enter
	tbl_31.OperationDefinition = tbl_16
	local tbl_12 = {}
	local function enter(arg1_57, arg2_12) -- Line 418
		--[[ Upvalues[4]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var140_upvr (readonly)
			[4]: REMOVE_upvr (copied, readonly)
		]]
		if Array_upvr.some(arg1, function(arg1_58) -- Line 421
			return arg1_58.remove
		end) then
			local var151_upvw = 0
			if arg2_12.arguments then
				Array_upvr.forEach(arg2_12.arguments, function(arg1_59) -- Line 428
					--[[ Upvalues[2]:
						[1]: var140_upvr (copied, readonly)
						[2]: var151_upvw (read and write)
					]]
					if var140_upvr(arg1_59) then
						var151_upvw += 1
					end
				end)
			end
			if var151_upvw == 1 then
				return REMOVE_upvr
			end
		end
		return nil
	end
	tbl_12.enter = enter
	tbl_31.Field = tbl_12
	local tbl_6 = {}
	local function enter(arg1_60, arg2_13) -- Line 444
		--[[ Upvalues[3]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: var140_upvr (readonly)
			[3]: REMOVE_upvr (copied, readonly)
		]]
		if Boolean_upvr.toJSBoolean(var140_upvr(arg2_13)) then
			return REMOVE_upvr
		end
		return nil
	end
	tbl_6.enter = enter
	tbl_31.Argument = tbl_6
	local visit_upvr_result1_2 = visit_upvr(arg2, tbl_31)
	local var13_result1 = getOperationDefinition_upvr(visit_upvr_result1_2)
	if not var13_result1 then
		var13_result1 = getFragmentDefinition_upvr(visit_upvr_result1_2)
	end
	local tbl_2_upvr = {}
	Array_upvr.forEach(getFragmentDefinitions_upvr(visit_upvr_result1_2), function(arg1_61) -- Line 60
		--[[ Upvalues[1]:
			[1]: tbl_2_upvr (readonly)
		]]
		tbl_2_upvr[arg1_61.name.value] = arg1_61
	end)
	tbl_2_upvr = Array_upvr
	tbl_2_upvr = var13_result1.selectionSet.selections
	if tbl_2_upvr.every(tbl_2_upvr, function(arg1_62) -- Line 91
		--[[ Upvalues[2]:
			[1]: isEmpty_upvr (copied, readonly)
			[2]: tbl_2_upvr (readonly)
		]]
		local var159 = false
		if arg1_62.kind == "FragmentSpread" then
			var159 = isEmpty_upvr(tbl_2_upvr[arg1_62.name.value], tbl_2_upvr)
		end
		return var159
	end, nil) then
		return nil
	end
	local var160 = visit_upvr_result1_2
	do
		return var160
	end
	return var160
end
module_7.removeArgumentsFromDocument = removeArgumentsFromDocument_upvw
function removeFragmentSpreadFromDocument_upvw(arg1, arg2) -- Line 456, Named "removeFragmentSpreadFromDocument"
	--[[ Upvalues[7]:
		[1]: Array_upvr (readonly)
		[2]: REMOVE_upvr (readonly)
		[3]: visit_upvr (readonly)
		[4]: getOperationDefinition_upvr (readonly)
		[5]: getFragmentDefinition_upvr (readonly)
		[6]: getFragmentDefinitions_upvr (readonly)
		[7]: isEmpty_upvr (readonly)
	]]
	local function enter(arg1_63, arg2_14) -- Line 460
		--[[ Upvalues[3]:
			[1]: Array_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: REMOVE_upvr (copied, readonly)
		]]
		if Array_upvr.some(arg1, function(arg1_64) -- Line 461
			--[[ Upvalues[1]:
				[1]: arg2_14 (readonly)
			]]
			local var162
			if arg1_64.name ~= arg2_14.name.value then
				var162 = false
			else
				var162 = true
			end
			return var162
		end) then
			return REMOVE_upvr
		end
		return nil
	end
	local visit_upvr_result1 = visit_upvr(arg2, {
		FragmentSpread = {
			enter = enter;
		};
		FragmentDefinition = {
			enter = enter;
		};
	})
	local var13_result1_4 = getOperationDefinition_upvr(visit_upvr_result1)
	if not var13_result1_4 then
		var13_result1_4 = getFragmentDefinition_upvr(visit_upvr_result1)
	end
	local tbl_19_upvr = {}
	Array_upvr.forEach(getFragmentDefinitions_upvr(visit_upvr_result1), function(arg1_65) -- Line 60
		--[[ Upvalues[1]:
			[1]: tbl_19_upvr (readonly)
		]]
		tbl_19_upvr[arg1_65.name.value] = arg1_65
	end)
	tbl_19_upvr = Array_upvr
	tbl_19_upvr = var13_result1_4.selectionSet.selections
	if tbl_19_upvr.every(tbl_19_upvr, function(arg1_66) -- Line 91
		--[[ Upvalues[2]:
			[1]: isEmpty_upvr (copied, readonly)
			[2]: tbl_19_upvr (readonly)
		]]
		local var171 = false
		if arg1_66.kind == "FragmentSpread" then
			var171 = isEmpty_upvr(tbl_19_upvr[arg1_66.name.value], tbl_19_upvr)
		end
		return var171
	end, nil) then
		return nil
	end
	local var172 = visit_upvr_result1
	do
		return var172
	end
	return var172
end
module_7.removeFragmentSpreadFromDocument = removeFragmentSpreadFromDocument_upvw
local isInlineFragment_upvr = storeUtils.isInlineFragment
function getAllFragmentSpreadsFromSelectionSet_upvw(arg1) -- Line 473, Named "getAllFragmentSpreadsFromSelectionSet"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: isField_upvr (readonly)
		[3]: isInlineFragment_upvr (readonly)
		[4]: getAllFragmentSpreadsFromSelectionSet_upvw (read and write)
	]]
	local module_2_upvr = {}
	Array_upvr.forEach(arg1.selections, function(arg1_67) -- Line 475
		--[[ Upvalues[5]:
			[1]: isField_upvr (copied, readonly)
			[2]: isInlineFragment_upvr (copied, readonly)
			[3]: Array_upvr (copied, readonly)
			[4]: getAllFragmentSpreadsFromSelectionSet_upvw (copied, read and write)
			[5]: module_2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 14 start (CF ANALYSIS FAILED)
		if isInlineFragment_upvr(arg1_67) then
			-- KONSTANTERROR: [8] 9. Error Block 12 start (CF ANALYSIS FAILED)
			if arg1_67.selectionSet then
				Array_upvr.forEach(getAllFragmentSpreadsFromSelectionSet_upvw(arg1_67.selectionSet), function(arg1_68) -- Line 486
					--[[ Upvalues[1]:
						[1]: module_2_upvr (copied, readonly)
					]]
					table.insert(module_2_upvr, arg1_68)
				end)
				return
			end
			-- KONSTANTERROR: [8] 9. Error Block 12 end (CF ANALYSIS FAILED)
		end
		if arg1_67.kind == "FragmentSpread" then
			table.insert(module_2_upvr, arg1_67)
		end
		-- KONSTANTERROR: [4] 5. Error Block 14 end (CF ANALYSIS FAILED)
	end)
	return module_2_upvr
end
local getMainDefinition_upvr = getFromAST.getMainDefinition
function module_7.buildQueryFromSelectionSet(arg1) -- Line 501
	--[[ Upvalues[3]:
		[1]: getMainDefinition_upvr (readonly)
		[2]: visit_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	if getMainDefinition_upvr(arg1).operation == "query" then
		return arg1
	end
	local module_5 = {}
	local tbl_13 = {}
	local function enter(arg1_69, arg2) -- Line 513
		--[[ Upvalues[1]:
			[1]: Object_upvr (copied, readonly)
		]]
		return Object_upvr.assign({}, arg2, {
			operation = "query";
		})
	end
	tbl_13.enter = enter
	module_5.OperationDefinition = tbl_13
	return visit_upvr(arg1, module_5)
end
function module_7.removeClientSetsFromDocument(arg1) -- Line 523
	--[[ Upvalues[7]:
		[1]: checkDocument_upvr (readonly)
		[2]: removeDirectivesFromDocument_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: visit_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: isField_upvr (readonly)
		[7]: REMOVE_upvr (readonly)
	]]
	checkDocument_upvr(arg1)
	local removeDirectivesFromDocument_result1 = removeDirectivesFromDocument_upvr({{
		test = function(arg1_70, arg2) -- Line 528, Named "test"
			local var183
			if arg2.name.value ~= "client" then
				var183 = false
			else
				var183 = true
			end
			return var183
		end;
		remove = true;
	}}, arg1)
	if Boolean_upvr.toJSBoolean(removeDirectivesFromDocument_result1) then
		removeDirectivesFromDocument_result1 = visit_upvr(removeDirectivesFromDocument_result1, {
			FragmentDefinition = {
				enter = function(arg1_71, arg2) -- Line 542, Named "enter"
					--[[ Upvalues[4]:
						[1]: Array_upvr (copied, readonly)
						[2]: isField_upvr (copied, readonly)
						[3]: Boolean_upvr (copied, readonly)
						[4]: REMOVE_upvr (copied, readonly)
					]]
					if arg2.selectionSet then
						if Boolean_upvr.toJSBoolean(Array_upvr.every(arg2.selectionSet.selections, function(arg1_73) -- Line 544
							--[[ Upvalues[1]:
								[1]: isField_upvr (copied, readonly)
							]]
							local var17_result1_2 = isField_upvr(arg1_73)
							if var17_result1_2 then
								if arg1_73.name.value ~= "__typename" then
									var17_result1_2 = false
								else
									var17_result1_2 = true
								end
							end
							return var17_result1_2
						end)) then
							return REMOVE_upvr
						end
					end
					return nil
				end;
			};
		})
	end
	return removeDirectivesFromDocument_result1
end
return module_7