-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:38
-- Luau version 6, Types version 3
-- Time taken: 0.006172 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local language = Parent.language
local Kind_upvr = require(language.kinds).Kind
local TypeInfo = require(Parent.utilities.TypeInfo)
local tbl_4_upvr = {}
local module_3_upvr = {
	__index = tbl_4_upvr;
}
local function new(arg1, arg2) -- Line 100
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module = {}
	module._ast = arg1
	module._fragments = nil
	module._fragmentSpreads = {}
	module._recursivelyReferencedFragments = {}
	module._onError = arg2
	return setmetatable(module, module_3_upvr)
end
tbl_4_upvr.new = new
function tbl_4_upvr.reportError(arg1, arg2) -- Line 115
	arg1._onError(arg2)
end
function tbl_4_upvr.getDocument(arg1) -- Line 119
	return arg1._ast
end
function tbl_4_upvr.getFragment(arg1, arg2) -- Line 123
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var13
	if arg1._fragments then
		var13 = arg1._fragments
	else
		var13 = {}
		for _, v in ipairs(arg1:getDocument().definitions) do
			if v.kind == Kind_upvr.FRAGMENT_DEFINITION then
				var13[v.name.value] = v
			end
		end
		arg1._fragments = var13
	end
	return var13[arg2]
end
function tbl_4_upvr.getFragmentSpreads(arg1, arg2) -- Line 139
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local var21
	if not var21 then
		var21 = {}
	end
	if not arg1._fragmentSpreads[arg2] then
		local tbl_2 = {}
		tbl_2[1] = arg2
		while #tbl_2 ~= 0 do
			for _, v_2 in ipairs(table.remove(tbl_2).selections) do
				if v_2.kind == Kind_upvr.FRAGMENT_SPREAD then
					table.insert(var21, v_2)
				elseif v_2.selectionSet then
					table.insert(tbl_2, v_2.selectionSet)
				end
			end
		end
		arg1._fragmentSpreads[arg2] = var21
	end
	return var21
end
function tbl_4_upvr.getRecursivelyReferencedFragments(arg1, arg2) -- Line 165
	local var42
	if not var42 then
		var42 = {}
	end
	if not arg1._recursivelyReferencedFragments[arg2] then
		local tbl_5 = {}
		local tbl_6 = {arg2.selectionSet}
		while #tbl_6 ~= 0 do
			for _, v_3 in ipairs(arg1:getFragmentSpreads(table.remove(tbl_6))) do
				local value = v_3.name.value
				if tbl_5[value] ~= true then
					tbl_5[value] = true
					local any_getFragment_result1 = arg1:getFragment(value)
					if any_getFragment_result1 then
						table.insert(var42, any_getFragment_result1)
						table.insert(tbl_6, any_getFragment_result1.selectionSet)
					end
				end
			end
		end
		arg1._recursivelyReferencedFragments[arg2] = var42
	end
	return var42
end
local setmetatable_result1 = setmetatable({}, {
	__index = tbl_4_upvr;
})
local module_upvr = {
	__index = setmetatable_result1;
}
local function new(arg1, arg2, arg3) -- Line 208
	--[[ Upvalues[2]:
		[1]: tbl_4_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_new_result1_2 = tbl_4_upvr.new(arg1, arg3)
	any_new_result1_2._schema = arg2
	return setmetatable(any_new_result1_2, module_upvr)
end
setmetatable_result1.new = new
local function getSchema(arg1) -- Line 218
	return arg1._schema
end
setmetatable_result1.getSchema = getSchema
local setmetatable_result1_2 = setmetatable({}, {
	__index = tbl_4_upvr;
})
local module_2_upvr = {
	__index = setmetatable_result1_2;
}
local Map_upvr = LuauPolyfill.Map
function setmetatable_result1_2.new(arg1, arg2, arg3, arg4) -- Line 257
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: Map_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local any_new_result1 = tbl_4_upvr.new(arg2, arg4)
	any_new_result1._schema = arg1
	any_new_result1._typeInfo = arg3
	any_new_result1._variableUsages = Map_upvr.new()
	any_new_result1._recursiveVariableUsages = Map_upvr.new()
	return setmetatable(any_new_result1, module_2_upvr)
end
function setmetatable_result1_2.getSchema(arg1) -- Line 274
	return arg1._schema
end
local TypeInfo_upvr = TypeInfo.TypeInfo
local visit_upvr = require(language.visitor).visit
local visitWithTypeInfo_upvr = TypeInfo.visitWithTypeInfo
function setmetatable_result1_2.getVariableUsages(arg1, arg2) -- Line 278
	--[[ Upvalues[3]:
		[1]: TypeInfo_upvr (readonly)
		[2]: visit_upvr (readonly)
		[3]: visitWithTypeInfo_upvr (readonly)
	]]
	local var62 = arg1._variableUsages[arg2]
	if not var62 then
		local tbl_upvr = {}
		local any_new_result1_3_upvr = TypeInfo_upvr.new(arg1._schema)
		visit_upvr(arg2, visitWithTypeInfo_upvr(any_new_result1_3_upvr, {
			VariableDefinition = function() -- Line 286, Named "VariableDefinition"
				return false
			end;
			Variable = function(arg1_2, arg2_2) -- Line 289, Named "Variable"
				--[[ Upvalues[2]:
					[1]: tbl_upvr (readonly)
					[2]: any_new_result1_3_upvr (readonly)
				]]
				local tbl_3 = {}
				tbl_3.node = arg2_2
				tbl_3.type = any_new_result1_3_upvr:getInputType()
				tbl_3.defaultValue = any_new_result1_3_upvr:getDefaultValue()
				table.insert(tbl_upvr, tbl_3)
			end;
		}))
		var62 = tbl_upvr
		arg1._variableUsages[arg2] = var62
	end
	return var62
end
local Array_upvr = LuauPolyfill.Array
function setmetatable_result1_2.getRecursiveVariableUsages(arg1, arg2) -- Line 305
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local var72
	if not var72 then
		var72 = arg1:getVariableUsages(arg2)
		for _, v_4 in ipairs(arg1:getRecursivelyReferencedFragments(arg2)) do
			var72 = Array_upvr.concat(var72, arg1:getVariableUsages(v_4))
		end
		arg1._recursiveVariableUsages[arg2] = var72
	end
	return var72
end
function setmetatable_result1_2.getType(arg1) -- Line 319
	return arg1._typeInfo:getType()
end
function setmetatable_result1_2.getParentType(arg1) -- Line 323
	return arg1._typeInfo:getParentType()
end
function setmetatable_result1_2.getInputType(arg1) -- Line 327
	return arg1._typeInfo:getInputType()
end
function setmetatable_result1_2.getParentInputType(arg1) -- Line 331
	return arg1._typeInfo:getParentInputType()
end
function setmetatable_result1_2.getFieldDef(arg1) -- Line 335
	return arg1._typeInfo:getFieldDef()
end
function setmetatable_result1_2.getDirective(arg1) -- Line 339
	return arg1._typeInfo:getDirective()
end
function setmetatable_result1_2.getArgument(arg1) -- Line 343
	return arg1._typeInfo:getArgument()
end
function setmetatable_result1_2.getEnumValue(arg1) -- Line 347
	return arg1._typeInfo:getEnumValue()
end
return {
	ASTValidationContext = tbl_4_upvr;
	SDLValidationContext = setmetatable_result1;
	ValidationContext = setmetatable_result1_2;
}