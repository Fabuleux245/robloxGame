-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:42
-- Luau version 6, Types version 3
-- Time taken: 0.011438 seconds

local Array_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Array
local join_upvw
local block_upvw
local wrap_upvw
local indent_upvw
local hasMultilineItems_upvw
local visit_upvr = require(script.Parent.visitor).visit
local var8_upvw
local function addDescription(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	return function(arg1_2, arg2) -- Line 85
		--[[ Upvalues[2]:
			[1]: join_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		return join_upvw({arg2.description, arg1(arg2)}, '\n')
	end
end
local tbl = {
	Name = function(arg1, arg2) -- Line 92, Named "Name"
		return arg2.value
	end;
	Variable = function(arg1, arg2) -- Line 96, Named "Variable"
		return '$'..tostring(arg2.name)
	end;
	Document = function(arg1, arg2) -- Line 102, Named "Document"
		--[[ Upvalues[1]:
			[1]: join_upvw (read and write)
		]]
		return join_upvw(arg2.definitions, "\n\n")..'\n'
	end;
	OperationDefinition = function(arg1, arg2) -- Line 106, Named "OperationDefinition"
		--[[ Upvalues[2]:
			[1]: wrap_upvw (read and write)
			[2]: join_upvw (read and write)
		]]
		local operation = arg2.operation
		local name = arg2.name
		local wrap_upvw_result1 = wrap_upvw('(', join_upvw(arg2.variableDefinitions, ", "), ')')
		local join_upvw_result1 = join_upvw(arg2.directives, ' ')
		local selectionSet = arg2.selectionSet
		if not name and (not join_upvw_result1 or join_upvw_result1 == "") or not wrap_upvw_result1 or wrap_upvw_result1 == "" or operation == "query" then
			return selectionSet
		end
		return join_upvw({operation, join_upvw({name, wrap_upvw_result1}), join_upvw_result1, selectionSet}, ' ')
	end;
	VariableDefinition = function(arg1, arg2) -- Line 131, Named "VariableDefinition"
		--[[ Upvalues[2]:
			[1]: wrap_upvw (read and write)
			[2]: join_upvw (read and write)
		]]
		return tostring(arg2.variable)..": "..tostring(arg2.type)..wrap_upvw(" = ", arg2.defaultValue)..wrap_upvw(' ', join_upvw(arg2.directives, ' '))
	end;
	SelectionSet = function(arg1, arg2) -- Line 143, Named "SelectionSet"
		--[[ Upvalues[1]:
			[1]: block_upvw (read and write)
		]]
		return block_upvw(arg2.selections)
	end;
	Field = function(arg1, arg2) -- Line 147, Named "Field"
		--[[ Upvalues[3]:
			[1]: wrap_upvw (read and write)
			[2]: join_upvw (read and write)
			[3]: indent_upvw (read and write)
		]]
		local arguments_3 = arg2.arguments
		local var21 = wrap_upvw("", arg2.alias, ": ")..tostring(arg2.name)
		local var22 = '('
		local utf8_len_result1 = utf8.len(var21..wrap_upvw(var22, join_upvw(arguments_3, ", "), ')'))
		local var24
		if utf8_len_result1 == nil then
			var22 = false
		else
			var22 = true
		end
		assert(var22, "invalid utf8 string")
		if 80 < utf8_len_result1 then
			var24 = var21..wrap_upvw("(\n", indent_upvw(join_upvw(arguments_3, '\n')), "\n)")
		end
		return join_upvw({var24, join_upvw(arg2.directives, ' '), arg2.selectionSet}, ' ')
	end;
	Argument = function(arg1, arg2) -- Line 168, Named "Argument"
		return tostring(arg2.name)..": "..tostring(arg2.value)
	end;
	FragmentSpread = function(arg1, arg2) -- Line 176, Named "FragmentSpread"
		--[[ Upvalues[2]:
			[1]: wrap_upvw (read and write)
			[2]: join_upvw (read and write)
		]]
		return "..."..tostring(arg2.name)..wrap_upvw(' ', join_upvw(arg2.directives, ' '))
	end;
	InlineFragment = function(arg1, arg2) -- Line 182, Named "InlineFragment"
		--[[ Upvalues[2]:
			[1]: join_upvw (read and write)
			[2]: wrap_upvw (read and write)
		]]
		return join_upvw({"...", wrap_upvw("on ", arg2.typeCondition), join_upvw(arg2.directives, ' '), arg2.selectionSet}, ' ')
	end;
	FragmentDefinition = function(arg1, arg2) -- Line 193, Named "FragmentDefinition"
		--[[ Upvalues[2]:
			[1]: wrap_upvw (read and write)
			[2]: join_upvw (read and write)
		]]
		return "fragment "..tostring(arg2.name)..wrap_upvw('(', join_upvw(arg2.variableDefinitions, ", "), ')')..' '.."on "..tostring(arg2.typeCondition)..' '..wrap_upvw("", join_upvw(arg2.directives, ' '), ' ')..tostring(arg2.selectionSet)
	end;
	IntValue = function(arg1, arg2) -- Line 216, Named "IntValue"
		return arg2.value
	end;
	FloatValue = function(arg1, arg2) -- Line 220, Named "FloatValue"
		return arg2.value
	end;
}
local printBlockString_upvr = require(script.Parent.blockString).printBlockString
local HttpService_upvr = game:GetService("HttpService")
function tbl.StringValue(arg1, arg2, arg3) -- Line 224
	--[[ Upvalues[2]:
		[1]: printBlockString_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local value = arg2.value
	local var30
	if arg2.block then
		if arg3 == "description" then
			var30 = ""
		else
			var30 = "  "
		end
		return printBlockString_upvr(value, var30)
	end
	return HttpService_upvr:JSONEncode(value)
end
function tbl.BooleanValue(arg1, arg2) -- Line 231
	if arg2.value then
		return "true"
	end
	return "false"
end
function tbl.NullValue(arg1, arg2) -- Line 239
	return "null"
end
function tbl.EnumValue(arg1, arg2) -- Line 242
	return arg2.value
end
function tbl.ListValue(arg1, arg2) -- Line 246
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	return '['..join_upvw(arg2.values, ", ")..']'
end
function tbl.ObjectValue(arg1, arg2) -- Line 250
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	return '{'..join_upvw(arg2.fields, ", ")..'}'
end
function tbl.ObjectField(arg1, arg2) -- Line 254
	return arg2.name..": "..arg2.value
end
function tbl.Directive(arg1, arg2) -- Line 262
	--[[ Upvalues[2]:
		[1]: wrap_upvw (read and write)
		[2]: join_upvw (read and write)
	]]
	return '@'..tostring(arg2.name)..wrap_upvw('(', join_upvw(arg2.arguments, ", "), ')')
end
function tbl.NamedType(arg1, arg2) -- Line 270
	return arg2.name
end
function tbl.ListType(arg1, arg2) -- Line 274
	return '['..tostring(arg2.type)..']'
end
function tbl.NonNullType(arg1, arg2) -- Line 278
	return tostring(arg2.type)..'!'
end
tbl.SchemaDefinition = addDescription(function(arg1) -- Line 286
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: block_upvw (read and write)
	]]
	return join_upvw({"schema", join_upvw(arg1.directives, ' '), block_upvw(arg1.operationTypes)}, ' ')
end)
function tbl.OperationTypeDefinition(arg1, arg2) -- Line 293
	return tostring(arg2.operation)..": "..tostring(arg2.type)
end
tbl.ScalarTypeDefinition = addDescription(function(arg1) -- Line 299
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	return join_upvw({"scalar", arg1.name, join_upvw(arg1.directives, ' ')}, ' ')
end)
tbl.ObjectTypeDefinition = addDescription(function(arg1) -- Line 306
	--[[ Upvalues[3]:
		[1]: join_upvw (read and write)
		[2]: wrap_upvw (read and write)
		[3]: block_upvw (read and write)
	]]
	return join_upvw({"type", arg1.name, wrap_upvw("implements ", join_upvw(arg1.interfaces, " & ")), join_upvw(arg1.directives, ' '), block_upvw(arg1.fields)}, ' ')
end)
tbl.FieldDefinition = addDescription(function(arg1) -- Line 320
	--[[ Upvalues[4]:
		[1]: hasMultilineItems_upvw (read and write)
		[2]: wrap_upvw (read and write)
		[3]: indent_upvw (read and write)
		[4]: join_upvw (read and write)
	]]
	local arguments_2 = arg1.arguments
	local var39
	if hasMultilineItems_upvw(arguments_2) then
		var39 = wrap_upvw("(\n", indent_upvw(join_upvw(arguments_2, '\n')), "\n)")
	else
		var39 = wrap_upvw('(', join_upvw(arguments_2, ", "), ')')
	end
	return tostring(arg1.name)..var39..": "..tostring(arg1.type)..wrap_upvw(' ', join_upvw(arg1.directives, ' '))
end)
tbl.InputValueDefinition = addDescription(function(arg1) -- Line 334
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: wrap_upvw (read and write)
	]]
	return join_upvw({tostring(arg1.name)..": "..tostring(arg1.type), wrap_upvw("= ", arg1.defaultValue), join_upvw(arg1.directives, ' ')}, ' ')
end)
tbl.InterfaceTypeDefinition = addDescription(function(arg1) -- Line 346
	--[[ Upvalues[3]:
		[1]: join_upvw (read and write)
		[2]: wrap_upvw (read and write)
		[3]: block_upvw (read and write)
	]]
	return join_upvw({"interface", arg1.name, wrap_upvw("implements ", join_upvw(arg1.interfaces, " & ")), join_upvw(arg1.directives, ' '), block_upvw(arg1.fields)}, ' ')
end)
tbl.UnionTypeDefinition = addDescription(function(arg1) -- Line 361
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	local types_2 = arg1.types
	local module_2 = {}
	local var47
	if types_2 and #types_2 ~= 0 then
		var47 = "= "..join_upvw(types_2, " | ")
	else
		var47 = ""
	end
	module_2[1] = "union"
	module_2[2] = arg1.name
	module_2[3] = join_upvw(arg1.directives, ' ')
	module_2[4] = var47
	return join_upvw(module_2, ' ')
end)
tbl.EnumTypeDefinition = addDescription(function(arg1) -- Line 374
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: block_upvw (read and write)
	]]
	return join_upvw({"enum", arg1.name, join_upvw(arg1.directives, ' '), block_upvw(arg1.values)}, ' ')
end)
tbl.EnumValueDefinition = addDescription(function(arg1) -- Line 387
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	return join_upvw({arg1.name, join_upvw(arg1.directives, ' ')}, ' ')
end)
tbl.InputObjectTypeDefinition = addDescription(function(arg1) -- Line 397
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: block_upvw (read and write)
	]]
	return join_upvw({"input", arg1.name, join_upvw(arg1.directives, ' '), block_upvw(arg1.fields)}, ' ')
end)
tbl.DirectiveDefinition = addDescription(function(arg1) -- Line 410
	--[[ Upvalues[4]:
		[1]: hasMultilineItems_upvw (read and write)
		[2]: wrap_upvw (read and write)
		[3]: indent_upvw (read and write)
		[4]: join_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local arguments = arg1.arguments
	local var56
	if hasMultilineItems_upvw(arguments) then
		var56 = wrap_upvw("(\n", indent_upvw(join_upvw(arguments, '\n')), "\n)")
	else
		var56 = wrap_upvw('(', join_upvw(arguments, ", "), ')')
	end
	if arg1.repeatable then
	else
	end
	return "directive @"..tostring(arg1.name)..var56.."".." on "..join_upvw(arg1.locations, " | ")
end)
function tbl.SchemaExtension(arg1, arg2) -- Line 425
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: block_upvw (read and write)
	]]
	return join_upvw({"extend schema", join_upvw(arg2.directives, ' '), block_upvw(arg2.operationTypes)}, ' ')
end
function tbl.ScalarTypeExtension(arg1, arg2) -- Line 436
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	return join_upvw({"extend scalar", arg2.name, join_upvw(arg2.directives, ' ')}, ' ')
end
function tbl.ObjectTypeExtension(arg1, arg2) -- Line 447
	--[[ Upvalues[3]:
		[1]: join_upvw (read and write)
		[2]: wrap_upvw (read and write)
		[3]: block_upvw (read and write)
	]]
	return join_upvw({"extend type", arg2.name, wrap_upvw("implements ", join_upvw(arg2.interfaces, " & ")), join_upvw(arg2.directives, ' '), block_upvw(arg2.fields)}, ' ')
end
function tbl.InterfaceTypeExtension(arg1, arg2) -- Line 462
	--[[ Upvalues[3]:
		[1]: join_upvw (read and write)
		[2]: wrap_upvw (read and write)
		[3]: block_upvw (read and write)
	]]
	return join_upvw({"extend interface", arg2.name, wrap_upvw("implements ", join_upvw(arg2.interfaces, " & ")), join_upvw(arg2.directives, ' '), block_upvw(arg2.fields)}, ' ')
end
function tbl.UnionTypeExtension(arg1, arg2) -- Line 477
	--[[ Upvalues[1]:
		[1]: join_upvw (read and write)
	]]
	local types = arg2.types
	local module = {}
	local var63
	if types and #types ~= 0 then
		var63 = "= "..join_upvw(types, " | ")
	else
		var63 = ""
	end
	module[1] = "extend union"
	module[2] = arg2.name
	module[3] = join_upvw(arg2.directives, ' ')
	module[4] = var63
	return join_upvw(module, ' ')
end
function tbl.EnumTypeExtension(arg1, arg2) -- Line 490
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: block_upvw (read and write)
	]]
	return join_upvw({"extend enum", arg2.name, join_upvw(arg2.directives, ' '), block_upvw(arg2.values)}, ' ')
end
function tbl.InputObjectTypeExtension(arg1, arg2) -- Line 503
	--[[ Upvalues[2]:
		[1]: join_upvw (read and write)
		[2]: block_upvw (read and write)
	]]
	return join_upvw({"extend input", arg2.name, join_upvw(arg2.directives, ' '), block_upvw(arg2.fields)}, ' ')
end
var8_upvw = tbl
function join_upvw(arg1, arg2) -- Line 521, Named "join"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	if arg1 then
		return Array_upvr.join(Array_upvr.filter(arg1, function(arg1_3) -- Line 525
			local tostring_result1 = tostring(arg1_3)
			if tostring_result1 then
				if arg1_3 == "" then
					tostring_result1 = false
				else
					tostring_result1 = true
				end
			end
			return tostring_result1
		end), arg2 or "")
	end
	return ""
end
function block_upvw(arg1) -- Line 539, Named "block"
	--[[ Upvalues[3]:
		[1]: wrap_upvw (read and write)
		[2]: indent_upvw (read and write)
		[3]: join_upvw (read and write)
	]]
	return wrap_upvw("{\n", indent_upvw(join_upvw(arg1, '\n')), "\n}")
end
function wrap_upvw(arg1, arg2, arg3) -- Line 546, Named "wrap"
	if arg2 ~= nil and arg2 ~= "" then
		return arg1..tostring(arg2)..tostring(arg3 or "")
	end
	return ""
end
function indent_upvw(arg1) -- Line 556, Named "indent"
	--[[ Upvalues[1]:
		[1]: wrap_upvw (read and write)
	]]
	return wrap_upvw("  ", arg1:gsub('\n', "\n  "))
end
local function isMultiline_upvw(arg1) -- Line 563, Named "isMultiline"
	local var68
	if string.find(tostring(arg1), '\n') == nil then
		var68 = false
	else
		var68 = true
	end
	return var68
end
function hasMultilineItems_upvw(arg1) -- Line 567, Named "hasMultilineItems"
	--[[ Upvalues[2]:
		[1]: Array_upvr (readonly)
		[2]: isMultiline_upvw (read and write)
	]]
	local var69 = false
	if arg1 ~= nil then
		var69 = Array_upvr.some(arg1, isMultiline_upvw)
	end
	return var69
end
return {
	print = function(arg1) -- Line 75, Named "print_"
		--[[ Upvalues[2]:
			[1]: visit_upvr (readonly)
			[2]: var8_upvw (read and write)
		]]
		return visit_upvr(arg1, {
			leave = var8_upvw;
		})
	end;
}