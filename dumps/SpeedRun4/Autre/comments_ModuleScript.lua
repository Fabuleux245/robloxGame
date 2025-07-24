-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:17
-- Luau version 6, Types version 3
-- Time taken: 0.031692 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Boolean_upvr = LuauPolyfill.Boolean
local Object_upvr = LuauPolyfill.Object
local module_17 = {}
local GraphQL = require(Parent.GraphQL)
local getComment_upvw
local String_upvr = LuauPolyfill.String
local tbl_25_upvw = {}
function module_17.resetComments() -- Line 62
	--[[ Upvalues[1]:
		[1]: tbl_25_upvw (read and write)
	]]
	tbl_25_upvw = {}
end
local pushComment_upvw
local isFieldDefinitionNode_upvw
function module_17.collectComment(arg1) -- Line 66
	--[[ Upvalues[3]:
		[1]: pushComment_upvw (read and write)
		[2]: Boolean_upvr (readonly)
		[3]: isFieldDefinitionNode_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local var13
	if typeof(arg1.name) == "table" then
		var13 = arg1.name.value
	else
		var13 = nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 11. Error Block 5 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [16] 11. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 12. Error Block 6 start (CF ANALYSIS FAILED)
	pushComment_upvw(arg1, var13)
	-- KONSTANTERROR: [17] 12. Error Block 6 end (CF ANALYSIS FAILED)
end
function pushComment_upvw(arg1, arg2, arg3, arg4) -- Line 123, Named "pushComment"
	--[[ Upvalues[4]:
		[1]: getComment_upvw (read and write)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: tbl_25_upvw (read and write)
	]]
	local getComment_result1 = getComment_upvw(arg1)
	if typeof(getComment_result1) ~= "string" or #getComment_result1 == 0 then
	else
		local tbl_2 = {}
		tbl_2[1] = arg2
		if Boolean_upvr.toJSBoolean(arg3) then
			table.insert(tbl_2, arg3)
			if Boolean_upvr.toJSBoolean(arg4) then
				table.insert(tbl_2, arg4)
			end
		end
		local any_join_result1_4 = Array_upvr.join(tbl_2, '.')
		if not Boolean_upvr.toJSBoolean(tbl_25_upvw[tostring(any_join_result1_4)]) then
			tbl_25_upvw[tostring(any_join_result1_4)] = {}
		end
		table.insert(tbl_25_upvw[any_join_result1_4], getComment_result1)
	end
end
module_17.pushComment = pushComment_upvw
local function printComment_upvr(arg1) -- Line 155, Named "printComment"
	return "\n# "..arg1:gsub('\n', "\n# ")
end
module_17.printComment = printComment_upvr
local function join_upvr(arg1, arg2) -- Line 183, Named "join"
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	local var20
	if Boolean_upvr.toJSBoolean(arg1) then
		var20 = Array_upvr
		var20 = arg1
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = arg2
			return var20
		end
		if not Boolean_upvr.toJSBoolean(arg2) or not INLINED() then
			var20 = ""
		end
		return Array_upvr.join(var20.filter(var20, function(arg1_2) -- Line 195
			--[[ Upvalues[1]:
				[1]: Boolean_upvr (copied, readonly)
			]]
			return Boolean_upvr.toJSBoolean(arg1_2)
		end), var20)
	end
	return ""
end
local function _(arg1) -- Line 205, Named "hasMultilineItems"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: String_upvr (readonly)
	]]
	local var22
	if typeof(arg1) == "table" then
		var22 = Array_upvr.some
		var22 = var22(arg1, function(arg1_3) -- Line 212
			--[[ Upvalues[1]:
				[1]: String_upvr (copied, readonly)
			]]
			return String_upvr.includes(arg1_3, '\n')
		end)
	else
		var22 = nil
	end
	if var22 ~= nil then
		return var22
	end
	return false
end
local function _(arg1) -- Line 229, Named "addDescription"
	--[[ Upvalues[7]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: String_upvr (readonly)
		[5]: tbl_25_upvw (read and write)
		[6]: join_upvr (readonly)
		[7]: printComment_upvr (readonly)
	]]
	return function(arg1_4, arg2, arg3, arg4, arg5, arg6) -- Line 230
		--[[ Upvalues[8]:
			[1]: Array_upvr (copied, readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: Boolean_upvr (copied, readonly)
			[4]: String_upvr (copied, readonly)
			[5]: tbl_25_upvw (copied, read and write)
			[6]: join_upvr (copied, readonly)
			[7]: printComment_upvr (copied, readonly)
			[8]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_9_upvr = {}
		local _1 = arg6[1]
		if not _1 then
			_1 = Object_upvr.None
		end
		local any_reduce_result1_2 = Array_upvr.reduce(arg5, function(arg1_5, arg2_2) -- Line 258
			--[[ Upvalues[4]:
				[1]: Object_upvr (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: tbl_9_upvr (readonly)
			]]
			if arg2_2 ~= Object_upvr.None then
				if Array_upvr.includes({"fields", "arguments", "values"}, arg2_2) and Boolean_upvr.toJSBoolean(arg1_5.name) then
					table.insert(tbl_9_upvr, arg1_5.name.value)
				end
			end
			if arg1_5 == Object_upvr.None then
				return arg2_2
			end
			return arg1_5[arg2_2]
		end, _1)
		local tbl_17 = {}
		if typeof(any_reduce_result1_2) == "table" then
		else
		end
		if typeof(nil) == "table" then
			if typeof(any_reduce_result1_2) == "table" then
			else
			end
		else
		end
		tbl_17[1] = nil
		local any_join_result1_3 = Array_upvr.join(Array_upvr.filter(Array_upvr.concat({}, tbl_9_upvr, tbl_17), Boolean_upvr.toJSBoolean), '.')
		local var33
		if String_upvr.includes(arg2.kind, "Definition") and Boolean_upvr.toJSBoolean(tbl_25_upvw[any_join_result1_3]) then
			var33 = Array_upvr.concat(var33, tbl_25_upvw[any_join_result1_3])
		end
		return join_upvr(Array_upvr.concat({}, Array_upvr.map(var33, printComment_upvr), {arg2.description or "", arg1(arg1_4, arg2, arg3, arg4, arg5, arg6)}), '\n')
	end
end
local function indent_upvr(arg1) -- Line 320, Named "indent"
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1) then
		return "  %s":format(arg1:gsub('\n', "\n  "))
	end
	return arg1
end
local function _(arg1) -- Line 344, Named "block"
	--[[ Upvalues[2]:
		[1]: indent_upvr (readonly)
		[2]: join_upvr (readonly)
	]]
	if arg1 and #arg1 ~= 0 then
		return "{\n%s\n}":format(indent_upvr(join_upvr(arg1, '\n')))
	end
	return ""
end
local function _(arg1, arg2, arg3) -- Line 363, Named "wrap"
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local var35
	if Boolean_upvr.toJSBoolean(arg2) then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var35 = arg3
			return var35
		end
		if not Boolean_upvr.toJSBoolean(arg3) or not INLINED_2() then
			var35 = ""
		end
		return arg1..tostring(arg2)..var35
	end
	return ""
end
local function printBlockString_upvr(arg1, arg2) -- Line 377, Named "printBlockString"
	--[[ Upvalues[2]:
		[1]: String_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
	if arg2 ~= nil then
	else
	end
	local any_gsub_result1 = arg1:gsub('"', "\\\"\"\"")
	if arg1:sub(1, 1) == ' ' or arg1:sub(1, 1) == '\t' or String_upvr.indexOf(arg1, '\n') == -1 then
		return "\"\"\"%s\"\"\"":format(any_gsub_result1:gsub("\"$", "\"\n"))
	end
	if Boolean_upvr.toJSBoolean(false) then
		-- KONSTANTWARNING: GOTO [72] #59
	end
	-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 42. Error Block 28 start (CF ANALYSIS FAILED)
	if Boolean_upvr.toJSBoolean(any_gsub_result1) then
	else
	end
	do
		return "\"\"\"\n%s\n\"\"\"":format(any_gsub_result1)
	end
	-- KONSTANTERROR: [52] 42. Error Block 28 end (CF ANALYSIS FAILED)
end
local tbl_31_upvr = {}
local tbl_44 = {}
local function leave(arg1, arg2) -- Line 417
	return arg2.value
end
tbl_44.leave = leave
tbl_31_upvr.Name = tbl_44
local tbl_23 = {}
local function leave(arg1, arg2) -- Line 425
	return '$'..tostring(arg2.name)
end
tbl_23.leave = leave
tbl_31_upvr.Variable = tbl_23
local tbl_45 = {}
local function leave(arg1, arg2) -- Line 434
	--[[ Upvalues[1]:
		[1]: join_upvr (readonly)
	]]
	return join_upvr(arg2.definitions, "\n\n")
end
tbl_45.leave = leave
tbl_31_upvr.Document = tbl_45
local tbl_13 = {}
local function leave(arg1, arg2) -- Line 442
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var43
	if Boolean_upvr.toJSBoolean(join_upvr(arg2.variableDefinitions, ", ")) then
		if Boolean_upvr.toJSBoolean(')') then
			var43 = ')'
		else
			var43 = ""
		end
	else
	end
	return tostring(join_upvr({arg2.operation, join_upvr({arg2.name, ""}), join_upvr(arg2.directives, ' ')}, ' '))..' '..tostring(arg2.selectionSet)
end
tbl_13.leave = leave
tbl_31_upvr.OperationDefinition = tbl_13
local tbl_29 = {}
local function leave(arg1, arg2) -- Line 452
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: join_upvr (readonly)
	]]
	local defaultValue = arg2.defaultValue
	local type = arg2.type
	local var49
	if Boolean_upvr.toJSBoolean(defaultValue) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		type = " = "..tostring(defaultValue)..""
	else
		type = ""
	end
	var49 = tostring(type)
	local join_upvr_result1_7 = join_upvr(arg2.directives, ' ')
	if Boolean_upvr.toJSBoolean(join_upvr_result1_7) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var49 = ' '..tostring(join_upvr_result1_7)..""
	else
		var49 = ""
	end
	return tostring(arg2.variable)..": "..tostring(type)..var49..tostring(var49)
end
tbl_29.leave = leave
tbl_31_upvr.VariableDefinition = tbl_29
local tbl_42 = {}
local function leave(arg1, arg2) -- Line 466
	--[[ Upvalues[2]:
		[1]: indent_upvr (readonly)
		[2]: join_upvr (readonly)
	]]
	local selections = arg2.selections
	if selections and #selections ~= 0 then
		return "{\n%s\n}":format(indent_upvr(join_upvr(selections, '\n')))
	end
	return ""
end
tbl_42.leave = leave
tbl_31_upvr.SelectionSet = tbl_42
local tbl_5 = {}
local function leave(arg1, arg2) -- Line 473
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: join_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arguments_3 = arg2.arguments
	local var56
	if Boolean_upvr.toJSBoolean(arg2.alias) then
		if Boolean_upvr.toJSBoolean(": ") then
			var56 = ": "
		else
			var56 = ""
		end
	else
	end
	local var57
	local var58 = ""..arg2.name
	if Boolean_upvr.toJSBoolean(join_upvr(arguments_3, ", ")) then
		if Boolean_upvr.toJSBoolean(')') then
			var57 = ')'
		else
			var57 = ""
		end
	else
	end
	if 80 < (var58.."").length then
		var57 = '\n'
		local join_upvr_result1_2 = join_upvr(arguments_3, var57)
		var57 = Boolean_upvr
		var57 = join_upvr_result1_2
		if var57.toJSBoolean(var57) then
			local _ = "  %s":format(join_upvr_result1_2:gsub('\n', "\n  "))
		else
		end
		if Boolean_upvr.toJSBoolean(join_upvr_result1_2) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if Boolean_upvr.toJSBoolean("\n)") then
			else
			end
		else
		end
	end
	return join_upvr({var58.."", join_upvr(arg2.directives, ' '), arg2.selectionSet}, ' ')
end
tbl_5.leave = leave
tbl_31_upvr.Field = tbl_5
local tbl_16 = {}
local function leave(arg1, arg2) -- Line 497
	return tostring(arg2.name)..": "..tostring(arg2.value)
end
tbl_16.leave = leave
tbl_31_upvr.Argument = tbl_16
local tbl = {}
local function leave(arg1, arg2) -- Line 507
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local tostring_result1 = tostring(arg2.name)
	local join_upvr_result1_6 = join_upvr(arg2.directives, ' ')
	if Boolean_upvr.toJSBoolean(join_upvr_result1_6) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		tostring_result1 = ' '..tostring(join_upvr_result1_6)..""
	else
		tostring_result1 = ""
	end
	return "..."..tostring_result1..tostring(tostring_result1)
end
tbl.leave = leave
tbl_31_upvr.FragmentSpread = tbl
local tbl_27 = {}
local function leave(arg1, arg2) -- Line 516
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local typeCondition = arg2.typeCondition
	local module_2 = {}
	local var70
	if Boolean_upvr.toJSBoolean(typeCondition) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var70 = "on "..tostring(typeCondition)..""
	else
		var70 = ""
	end
	module_2[1] = "..."
	module_2[2] = var70
	module_2[3] = join_upvr(arg2.directives, ' ')
	module_2[4] = arg2.selectionSet
	return join_upvr(module_2, ' ')
end
tbl_27.leave = leave
tbl_31_upvr.InlineFragment = tbl_27
local tbl_43 = {}
local function leave(arg1, arg2) -- Line 525
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local name = arg2.name
	local join_result1_2 = join_upvr(arg2.variableDefinitions, ", ")
	local var74
	if Boolean_upvr.toJSBoolean(join_result1_2) then
		if Boolean_upvr.toJSBoolean(')') then
			var74 = ')'
		else
			var74 = ""
		end
		name = '('..tostring(join_result1_2)..var74
	else
		name = ""
	end
	local var75
	if Boolean_upvr.toJSBoolean(join_upvr(arg2.directives, ' ')) then
		if Boolean_upvr.toJSBoolean(' ') then
			var75 = ' '
		else
			var75 = ""
		end
	else
	end
	return "fragment %s%s ":format(tostring(name), name).."on %s %s":format(tostring(arg2.typeCondition), tostring(""))..tostring(arg2.selectionSet)
end
tbl_43.leave = leave
tbl_31_upvr.FragmentDefinition = tbl_43
local tbl_34 = {}
local function leave(arg1, arg2) -- Line 545
	return arg2.value
end
tbl_34.leave = leave
tbl_31_upvr.IntValue = tbl_34
local tbl_24 = {}
local function leave(arg1, arg2) -- Line 554
	return arg2.value
end
tbl_24.leave = leave
tbl_31_upvr.FloatValue = tbl_24
local tbl_18 = {}
local function leave(arg1, arg2) -- Line 563
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: printBlockString_upvr (readonly)
	]]
	local value = arg2.value
	if Boolean_upvr.toJSBoolean(arg2.block) then
		return printBlockString_upvr(value)
	end
	return "'"..value:gsub("'", "\\'").."'"
end
tbl_18.leave = leave
tbl_31_upvr.StringValue = tbl_18
local tbl_19 = {}
local function leave(arg1, arg2) -- Line 579
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg2.value) then
		return "true"
	end
	return "false"
end
tbl_19.leave = leave
tbl_31_upvr.BooleanValue = tbl_19
local tbl_10 = {}
local function leave() -- Line 586
	return "null"
end
tbl_10.leave = leave
tbl_31_upvr.NullValue = tbl_10
local tbl_46 = {}
local function leave(arg1, arg2) -- Line 593
	return arg2.value
end
tbl_46.leave = leave
tbl_31_upvr.EnumValue = tbl_46
local tbl_7 = {}
local function leave(arg1, arg2) -- Line 602
	--[[ Upvalues[1]:
		[1]: join_upvr (readonly)
	]]
	return '['..tostring(join_upvr(arg2.values, ", "))..']'
end
tbl_7.leave = leave
tbl_31_upvr.ListValue = tbl_7
local tbl_52 = {}
local function leave(arg1, arg2) -- Line 611
	--[[ Upvalues[1]:
		[1]: join_upvr (readonly)
	]]
	return '{'..tostring(join_upvr(arg2.fields, ", "))..'}'
end
tbl_52.leave = leave
tbl_31_upvr.ObjectValue = tbl_52
local tbl_33 = {}
local function leave(arg1, arg2) -- Line 620
	return tostring(arg2.name)..": "..tostring(arg2.value)
end
tbl_33.leave = leave
tbl_31_upvr.ObjectField = tbl_33
local tbl_32 = {}
local function leave(arg1, arg2) -- Line 630
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local tostring_result1_2 = tostring(arg2.name)
	local join_upvr_result1_8 = join_upvr(arg2.arguments, ", ")
	local var90
	if Boolean_upvr.toJSBoolean(join_upvr_result1_8) then
		if Boolean_upvr.toJSBoolean(')') then
			var90 = ')'
		else
			var90 = ""
		end
		tostring_result1_2 = '('..tostring(join_upvr_result1_8)..var90
	else
		tostring_result1_2 = ""
	end
	return '@'..tostring_result1_2..tostring(tostring_result1_2)
end
tbl_32.leave = leave
tbl_31_upvr.Directive = tbl_32
local tbl_35 = {}
local function leave(arg1, arg2) -- Line 640
	return arg2.name
end
tbl_35.leave = leave
tbl_31_upvr.NamedType = tbl_35
local tbl_11 = {}
local function leave(arg1, arg2) -- Line 649
	return '['..tostring(arg2.type)..']'
end
tbl_11.leave = leave
tbl_31_upvr.ListType = tbl_11
local tbl_36 = {}
local function leave(arg1, arg2) -- Line 658
	return tostring(arg2.type)..'!'
end
tbl_36.leave = leave
tbl_31_upvr.NonNullType = tbl_36
local tbl_4 = {}
local function leave(arg1, arg2) -- Line 668
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: indent_upvr (readonly)
	]]
	local operationTypes_2 = arg2.operationTypes
	local module_14 = {}
	local var97
	if operationTypes_2 and #operationTypes_2 ~= 0 then
		var97 = "{\n%s\n}":format(indent_upvr(join_upvr(operationTypes_2, '\n')))
	else
		var97 = ""
	end
	module_14[1] = "schema"
	module_14[2] = join_upvr(arg2.directives, ' ')
	module_14[3] = var97
	return join_upvr(module_14, ' ')
end
tbl_4.leave = leave
tbl_31_upvr.SchemaDefinition = tbl_4
local tbl_38 = {}
local function leave(arg1, arg2) -- Line 677
	return tostring(arg2.operation)..": "..tostring(arg2.type)
end
tbl_38.leave = leave
tbl_31_upvr.OperationTypeDefinition = tbl_38
local tbl_51 = {}
local function leave(arg1, arg2) -- Line 686
	--[[ Upvalues[1]:
		[1]: join_upvr (readonly)
	]]
	return join_upvr({"scalar", arg2.name, join_upvr(arg2.directives, ' ')}, ' ')
end
tbl_51.leave = leave
tbl_31_upvr.ScalarTypeDefinition = tbl_51
local tbl_28 = {}
local function leave(arg1, arg2) -- Line 695
	--[[ Upvalues[3]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: indent_upvr (readonly)
	]]
	local fields_4 = arg2.fields
	local module_11 = {}
	local join_upvr_result1 = join_upvr(arg2.interfaces, " & ")
	local var105
	if Boolean_upvr.toJSBoolean(join_upvr_result1) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var105 = "implements "..tostring(join_upvr_result1)..""
	else
		var105 = ""
	end
	local var106
	var106 = arg2.directives
	if fields_4 and #fields_4 ~= 0 then
		var106 = "{\n%s\n}":format(indent_upvr(join_upvr(fields_4, '\n')))
	else
		var106 = ""
	end
	module_11[1] = "type"
	module_11[2] = arg2.name
	module_11[3] = var105
	module_11[4] = join_upvr(var106, ' ')
	module_11[5] = var106
	return join_upvr(module_11, ' ')
end
tbl_28.leave = leave
tbl_31_upvr.ObjectTypeDefinition = tbl_28
local tbl_15 = {}
local function leave(arg1, arg2) -- Line 710
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: join_upvr (readonly)
		[4]: Boolean_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arguments = arg2.arguments
	local name_2 = arg2.name
	if typeof(arguments) == "table" then
		name_2 = Array_upvr.some
		name_2 = name_2(arguments, function(arg1_6) -- Line 212
			--[[ Upvalues[1]:
				[1]: String_upvr (copied, readonly)
			]]
			return String_upvr.includes(arg1_6, '\n')
		end)
	else
		name_2 = nil
	end
	if name_2 ~= nil then
	else
	end
	if false then
		name_2 = join_upvr(arguments, '\n')
		local var111
		if Boolean_upvr.toJSBoolean(name_2) then
			var111 = "  %s":format(name_2:gsub('\n', "\n  "))
			local _ = var111
		else
		end
		name_2 = Boolean_upvr.toJSBoolean(name_2)
		if name_2 then
			name_2 = "(\n"
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if Boolean_upvr.toJSBoolean("\n)") then
				var111 = "\n)"
			else
				var111 = ""
			end
		else
		end
	else
		local var113
		name_2 = arguments
		name_2 = Boolean_upvr.toJSBoolean(join_upvr(name_2, ", "))
		if name_2 then
			name_2 = '('
			if Boolean_upvr.toJSBoolean(')') then
				var113 = ')'
			else
				var113 = ""
			end
		else
		end
	end
	name_2 = arg2.type
	name_2 = arg2.directives
	name_2 = Boolean_upvr.toJSBoolean(join_upvr(name_2, ' '))
	if name_2 then
		name_2 = ' '
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var113 = ""
	else
	end
	return tostring(name_2)..""..": "..tostring(name_2)..""
end
tbl_15.leave = leave
tbl_31_upvr.FieldDefinition = tbl_15
local tbl_30 = {}
local function leave(arg1, arg2) -- Line 735
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local defaultValue_2 = arg2.defaultValue
	local module_13 = {}
	local tostring_result1_3 = tostring(arg2.name)
	if Boolean_upvr.toJSBoolean(defaultValue_2) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		tostring_result1_3 = "= "..tostring(defaultValue_2)..""
	else
		tostring_result1_3 = ""
	end
	module_13[1] = tostring_result1_3..": "..tostring(arg2.type)
	module_13[2] = tostring_result1_3
	module_13[3] = join_upvr(arg2.directives, ' ')
	return join_upvr(module_13, ' ')
end
tbl_30.leave = leave
tbl_31_upvr.InputValueDefinition = tbl_30
local tbl_26 = {}
local function leave(arg1, arg2) -- Line 748
	--[[ Upvalues[3]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: indent_upvr (readonly)
	]]
	local fields_5 = arg2.fields
	local module_10 = {}
	local join_upvr_result1_3 = join_upvr(arg2.interfaces, " & ")
	local var124
	if Boolean_upvr.toJSBoolean(join_upvr_result1_3) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var124 = "implements "..tostring(join_upvr_result1_3)..""
	else
		var124 = ""
	end
	local var125
	var125 = arg2.directives
	if fields_5 and #fields_5 ~= 0 then
		var125 = "{\n%s\n}":format(indent_upvr(join_upvr(fields_5, '\n')))
	else
		var125 = ""
	end
	module_10[1] = "interface"
	module_10[2] = arg2.name
	module_10[3] = var124
	module_10[4] = join_upvr(var125, ' ')
	module_10[5] = var125
	return join_upvr(module_10, ' ')
end
tbl_26.leave = leave
tbl_31_upvr.InterfaceTypeDefinition = tbl_26
local tbl_14 = {}
local function leave(arg1, arg2) -- Line 763
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local module_6 = {}
	local directives_2 = arg2.directives
	local join_result1 = join_upvr(arg2.types, " | ")
	if Boolean_upvr.toJSBoolean(join_result1) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		directives_2 = "= "..tostring(join_result1)..""
	else
		directives_2 = ""
	end
	module_6[1] = "union"
	module_6[2] = arg2.name
	module_6[3] = join_upvr(directives_2, ' ')
	module_6[4] = directives_2
	return join_upvr(module_6, ' ')
end
tbl_14.leave = leave
tbl_31_upvr.UnionTypeDefinition = tbl_14
local tbl_22 = {}
local function leave(arg1, arg2) -- Line 772
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: indent_upvr (readonly)
	]]
	local values_2 = arg2.values
	local module_5 = {}
	local var133
	if values_2 and #values_2 ~= 0 then
		var133 = "{\n%s\n}":format(indent_upvr(join_upvr(values_2, '\n')))
	else
		var133 = ""
	end
	module_5[1] = "enum"
	module_5[2] = arg2.name
	module_5[3] = join_upvr(arg2.directives, ' ')
	module_5[4] = var133
	return join_upvr(module_5, ' ')
end
tbl_22.leave = leave
tbl_31_upvr.EnumTypeDefinition = tbl_22
local tbl_8 = {}
local function leave(arg1, arg2) -- Line 781
	--[[ Upvalues[1]:
		[1]: join_upvr (readonly)
	]]
	return join_upvr({arg2.name, join_upvr(arg2.directives, ' ')}, ' ')
end
tbl_8.leave = leave
tbl_31_upvr.EnumValueDefinition = tbl_8
local tbl_40 = {}
local function leave(arg1, arg2) -- Line 790
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: indent_upvr (readonly)
	]]
	local fields = arg2.fields
	local module = {}
	local var139
	if fields and #fields ~= 0 then
		var139 = "{\n%s\n}":format(indent_upvr(join_upvr(fields, '\n')))
	else
		var139 = ""
	end
	module[1] = "input"
	module[2] = arg2.name
	module[3] = join_upvr(arg2.directives, ' ')
	module[4] = var139
	return join_upvr(module, ' ')
end
tbl_40.leave = leave
tbl_31_upvr.InputObjectTypeDefinition = tbl_40
local tbl_3 = {}
local function leave(arg1, arg2) -- Line 799
	--[[ Upvalues[4]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: String_upvr (readonly)
		[4]: join_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arguments_2 = arg2.arguments
	local name_3 = arg2.name
	local var143
	if typeof(arguments_2) == "table" then
		var143 = Array_upvr.some
		var143 = var143(arguments_2, function(arg1_7) -- Line 212
			--[[ Upvalues[1]:
				[1]: String_upvr (copied, readonly)
			]]
			return String_upvr.includes(arg1_7, '\n')
		end)
	else
		var143 = nil
	end
	if var143 ~= nil then
	else
	end
	if Boolean_upvr.toJSBoolean(false) then
		var143 = arguments_2
		local join_upvr_result1_9 = join_upvr(var143, '\n')
		var143 = Boolean_upvr.toJSBoolean(join_upvr_result1_9)
		local var146
		if var143 then
			var143 = join_upvr_result1_9:gsub('\n', "\n  ")
			var146 = "  %s":format(var143)
			local _ = var146
		else
		end
		var143 = Boolean_upvr
		var143 = join_upvr_result1_9
		if var143.toJSBoolean(var143) then
			var143 = tostring(join_upvr_result1_9)
			if Boolean_upvr.toJSBoolean("\n)") then
				var146 = "\n)"
			else
				var146 = ""
			end
			name_3 = "(\n"..var143..var146
		else
			name_3 = ""
		end
	else
		local var148
		var143 = ", "
		local join_result1_4 = join_upvr(arguments_2, var143)
		var143 = Boolean_upvr
		var143 = join_result1_4
		if var143.toJSBoolean(var143) then
			var143 = tostring(join_result1_4)
			if Boolean_upvr.toJSBoolean(')') then
				var148 = ')'
			else
				var148 = ""
			end
			name_3 = '('..var143..var148
		else
			name_3 = ""
		end
	end
	if Boolean_upvr.toJSBoolean(arg2.repeatable) then
	else
	end
	return "directive @"..tostring(name_3)..tostring(name_3).."".." on "..tostring(join_upvr(arg2.locations, " | "))
end
tbl_3.leave = leave
tbl_31_upvr.DirectiveDefinition = tbl_3
local tbl_6 = {}
local function leave(arg1, arg2) -- Line 817
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: indent_upvr (readonly)
	]]
	local operationTypes = arg2.operationTypes
	local module_4 = {}
	local var153
	if operationTypes and #operationTypes ~= 0 then
		var153 = "{\n%s\n}":format(indent_upvr(join_upvr(operationTypes, '\n')))
	else
		var153 = ""
	end
	module_4[1] = "extend schema"
	module_4[2] = join_upvr(arg2.directives, ' ')
	module_4[3] = var153
	return join_upvr(module_4, ' ')
end
tbl_6.leave = leave
tbl_31_upvr.SchemaExtension = tbl_6
local tbl_47 = {}
local function leave(arg1, arg2) -- Line 826
	--[[ Upvalues[1]:
		[1]: join_upvr (readonly)
	]]
	return join_upvr({"extend scalar", arg2.name, join_upvr(arg2.directives, ' ')}, ' ')
end
tbl_47.leave = leave
tbl_31_upvr.ScalarTypeExtension = tbl_47
local tbl_39 = {}
local function leave(arg1, arg2) -- Line 835
	--[[ Upvalues[3]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: indent_upvr (readonly)
	]]
	local fields_2 = arg2.fields
	local module_16 = {}
	local join_upvr_result1_4 = join_upvr(arg2.interfaces, " & ")
	local var160
	if Boolean_upvr.toJSBoolean(join_upvr_result1_4) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var160 = "implements "..tostring(join_upvr_result1_4)..""
	else
		var160 = ""
	end
	local var161
	var161 = arg2.directives
	if fields_2 and #fields_2 ~= 0 then
		var161 = "{\n%s\n}":format(indent_upvr(join_upvr(fields_2, '\n')))
	else
		var161 = ""
	end
	module_16[1] = "extend type"
	module_16[2] = arg2.name
	module_16[3] = var160
	module_16[4] = join_upvr(var161, ' ')
	module_16[5] = var161
	return join_upvr(module_16, ' ')
end
tbl_39.leave = leave
tbl_31_upvr.ObjectTypeExtension = tbl_39
local tbl_50 = {}
local function leave(arg1, arg2) -- Line 850
	--[[ Upvalues[3]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: indent_upvr (readonly)
	]]
	local fields_6 = arg2.fields
	local module_3 = {}
	local join_upvr_result1_5 = join_upvr(arg2.interfaces, " & ")
	local var166
	if Boolean_upvr.toJSBoolean(join_upvr_result1_5) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		var166 = "implements "..tostring(join_upvr_result1_5)..""
	else
		var166 = ""
	end
	local var167
	var167 = arg2.directives
	if fields_6 and #fields_6 ~= 0 then
		var167 = "{\n%s\n}":format(indent_upvr(join_upvr(fields_6, '\n')))
	else
		var167 = ""
	end
	module_3[1] = "extend interface"
	module_3[2] = arg2.name
	module_3[3] = var166
	module_3[4] = join_upvr(var167, ' ')
	module_3[5] = var167
	return join_upvr(module_3, ' ')
end
tbl_50.leave = leave
tbl_31_upvr.InterfaceTypeExtension = tbl_50
local tbl_12 = {}
local function leave(arg1, arg2) -- Line 865
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local module_15 = {}
	local directives = arg2.directives
	local join_result1_3 = join_upvr(arg2.types, " | ")
	if Boolean_upvr.toJSBoolean(join_result1_3) then
		if not Boolean_upvr.toJSBoolean(nil) then
		end
		directives = "= "..tostring(join_result1_3)..""
	else
		directives = ""
	end
	module_15[1] = "extend union"
	module_15[2] = arg2.name
	module_15[3] = join_upvr(directives, ' ')
	module_15[4] = directives
	return join_upvr(module_15, ' ')
end
tbl_12.leave = leave
tbl_31_upvr.UnionTypeExtension = tbl_12
local tbl_48 = {}
local function leave(arg1, arg2) -- Line 874
	--[[ Upvalues[2]:
		[1]: join_upvr (readonly)
		[2]: indent_upvr (readonly)
	]]
	local values = arg2.values
	local module_7 = {}
	local var175
	if values and #values ~= 0 then
		var175 = "{\n%s\n}":format(indent_upvr(join_upvr(values, '\n')))
	else
		var175 = ""
	end
	module_7[1] = "extend enum"
	module_7[2] = arg2.name
	module_7[3] = join_upvr(arg2.directives, ' ')
	module_7[4] = var175
	return join_upvr(module_7, ' ')
end
tbl_48.leave = leave
tbl_31_upvr.EnumTypeExtension = tbl_48
tbl_31_upvr.InputObjectTypeExtension = {
	leave = function(arg1, arg2) -- Line 883, Named "leave"
		--[[ Upvalues[2]:
			[1]: join_upvr (readonly)
			[2]: indent_upvr (readonly)
		]]
		local fields_3 = arg2.fields
		local module_9 = {}
		local var179
		if fields_3 and #fields_3 ~= 0 then
			var179 = "{\n%s\n}":format(indent_upvr(join_upvr(fields_3, '\n')))
		else
			var179 = ""
		end
		module_9[1] = "extend input"
		module_9[2] = arg2.name
		module_9[3] = join_upvr(arg2.directives, ' ')
		module_9[4] = var179
		return join_upvr(module_9, ' ')
	end;
}
local visit_upvr = GraphQL.visit
local any_reduce_result1_upvr = Array_upvr.reduce(Object_upvr.keys(tbl_31_upvr), function(arg1, arg2) -- Line 900
	--[[ Upvalues[8]:
		[1]: Object_upvr (readonly)
		[2]: tbl_31_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: String_upvr (readonly)
		[6]: tbl_25_upvw (read and write)
		[7]: join_upvr (readonly)
		[8]: printComment_upvr (readonly)
	]]
	local module_12 = {}
	local tbl_49 = {}
	local leave_44_upvr = tbl_31_upvr[arg2].leave
	function tbl_49.leave(arg1_8, arg2_3, arg3, arg4, arg5, arg6) -- Line 230
		--[[ Upvalues[8]:
			[1]: Array_upvr (copied, readonly)
			[2]: Object_upvr (copied, readonly)
			[3]: Boolean_upvr (copied, readonly)
			[4]: String_upvr (copied, readonly)
			[5]: tbl_25_upvw (copied, read and write)
			[6]: join_upvr (copied, readonly)
			[7]: printComment_upvr (copied, readonly)
			[8]: leave_44_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl_41_upvr = {}
		local _1_2 = arg6[1]
		if not _1_2 then
			_1_2 = Object_upvr.None
		end
		local any_reduce_result1 = Array_upvr.reduce(arg5, function(arg1_9, arg2_4) -- Line 258
			--[[ Upvalues[4]:
				[1]: Object_upvr (copied, readonly)
				[2]: Array_upvr (copied, readonly)
				[3]: Boolean_upvr (copied, readonly)
				[4]: tbl_41_upvr (readonly)
			]]
			if arg2_4 ~= Object_upvr.None then
				if Array_upvr.includes({"fields", "arguments", "values"}, arg2_4) and Boolean_upvr.toJSBoolean(arg1_9.name) then
					table.insert(tbl_41_upvr, arg1_9.name.value)
				end
			end
			if arg1_9 == Object_upvr.None then
				return arg2_4
			end
			return arg1_9[arg2_4]
		end, _1_2)
		local tbl_37 = {}
		if typeof(any_reduce_result1) == "table" then
		else
		end
		if typeof(nil) == "table" then
			if typeof(any_reduce_result1) == "table" then
			else
			end
		else
		end
		tbl_37[1] = nil
		local any_join_result1_2 = Array_upvr.join(Array_upvr.filter(Array_upvr.concat({}, tbl_41_upvr, tbl_37), Boolean_upvr.toJSBoolean), '.')
		local var192
		if String_upvr.includes(arg2_3.kind, "Definition") and Boolean_upvr.toJSBoolean(tbl_25_upvw[any_join_result1_2]) then
			var192 = Array_upvr.concat(var192, tbl_25_upvw[any_join_result1_2])
		end
		return join_upvr(Array_upvr.concat({}, Array_upvr.map(var192, printComment_upvr), {arg2_3.description or "", leave_44_upvr(arg1_8, arg2_3, arg3, arg4, arg5, arg6)}), '\n')
	end
	module_12[arg2] = tbl_49
	return Object_upvr.assign({}, arg1, module_12)
end, {})
function module_17.printWithComments(arg1) -- Line 914
	--[[ Upvalues[2]:
		[1]: visit_upvr (readonly)
		[2]: any_reduce_result1_upvr (readonly)
	]]
	return visit_upvr(arg1, any_reduce_result1_upvr)
end
function isFieldDefinitionNode_upvw(arg1) -- Line 920, Named "isFieldDefinitionNode"
	local var196
	if arg1.kind ~= "FieldDefinition" then
		var196 = false
	else
		var196 = true
	end
	return var196
end
function module_17.getDescription(arg1, arg2) -- Line 926
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: getComment_upvw (read and write)
	]]
	if arg1.description ~= nil then
		return arg1.description.value
	end
	local var197 = Boolean_upvr
	if typeof(arg2) == "table" then
		var197 = arg2.commentDescriptions
	else
		var197 = nil
	end
	if var197.toJSBoolean(var197) then
		return getComment_upvw(arg1)
	end
	return nil
end
local getLeadingCommentBlock_upvw
local dedentBlockStringValue_upvw
function getComment_upvw(arg1) -- Line 945, Named "getComment"
	--[[ Upvalues[2]:
		[1]: getLeadingCommentBlock_upvw (read and write)
		[2]: dedentBlockStringValue_upvw (read and write)
	]]
	local getLeadingCommentBlock_result1 = getLeadingCommentBlock_upvw(arg1)
	if getLeadingCommentBlock_result1 ~= nil then
		return dedentBlockStringValue_upvw("\n%s":format(tostring(getLeadingCommentBlock_result1)))
	end
	return nil
end
module_17.getComment = getComment_upvw
local TokenKind_upvr = GraphQL.TokenKind
function getLeadingCommentBlock_upvw(arg1) -- Line 958, Named "getLeadingCommentBlock"
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local loc = arg1.loc
	if not Boolean_upvr.toJSBoolean(loc) then return end
	local module_8 = {}
	local prev = loc.startToken.prev
	while prev ~= nil and prev.kind == TokenKind_upvr.COMMENT and prev.next ~= nil and prev.prev ~= nil and prev.line + 1 == prev.next.line and prev.line ~= prev.prev.line do
		table.insert(module_8, tostring(prev.value))
	end
	if 0 < #module_8 then
		return Array_upvr.join(Array_upvr.reverse(module_8), '\n')
	end
	return nil
end
module_17.getLeadingCommentBlock = getLeadingCommentBlock_upvw
local getBlockStringIndentation_upvw
local isBlank_upvw
function dedentBlockStringValue_upvw(arg1) -- Line 995, Named "dedentBlockStringValue"
	--[[ Upvalues[4]:
		[1]: String_upvr (readonly)
		[2]: getBlockStringIndentation_upvw (read and write)
		[3]: isBlank_upvw (read and write)
		[4]: Array_upvr (readonly)
	]]
	local any_split_result1 = String_upvr.split(arg1, {"\r\n", '\n', '\r'})
	local getBlockStringIndentation_upvw_result1 = getBlockStringIndentation_upvw(any_split_result1)
	if getBlockStringIndentation_upvw_result1 ~= 0 then
		local var210 = 2
		while var210 <= #any_split_result1 do
			any_split_result1[var210] = String_upvr.slice(any_split_result1[var210], getBlockStringIndentation_upvw_result1 + 1)
		end
	end
	while 0 < #any_split_result1 and isBlank_upvw(any_split_result1[1]) do
		table.remove(any_split_result1, 1)
	end
	while 0 < #any_split_result1 and isBlank_upvw(any_split_result1[#any_split_result1]) do
		table.remove(any_split_result1)
	end
	return Array_upvr.join(any_split_result1, '\n')
end
module_17.dedentBlockStringValue = dedentBlockStringValue_upvw
local leadingWhitespace_upvw
function getBlockStringIndentation_upvw(arg1) -- Line 1060, Named "getBlockStringIndentation"
	--[[ Upvalues[1]:
		[1]: leadingWhitespace_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 18. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 18. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [22.196935]
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
end
module_17.getBlockStringIndentation = getBlockStringIndentation_upvw
function leadingWhitespace_upvw(arg1) -- Line 1107, Named "leadingWhitespace"
	local var212
	while var212 < #arg1 and not (arg1:sub(var212 + 1, var212 + 1) == ' ' or arg1:sub(var212 + 1, var212 + 1) ~= '\t') do
		var212 += 1
	end
	return var212
end
function isBlank_upvw(arg1) -- Line 1123, Named "isBlank"
	--[[ Upvalues[1]:
		[1]: leadingWhitespace_upvw (read and write)
	]]
	local var213
	if leadingWhitespace_upvw(arg1) ~= #arg1 then
		var213 = false
	else
		var213 = true
	end
	return var213
end
return module_17