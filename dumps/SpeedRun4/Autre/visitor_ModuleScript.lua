-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:44
-- Luau version 6, Types version 3
-- Time taken: 0.008839 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local tbl_upvr_2 = {
	Name = {};
	Document = {"definitions"};
	OperationDefinition = {"name", "variableDefinitions", "directives", "selectionSet"};
	VariableDefinition = {"variable", "type", "defaultValue", "directives"};
	Variable = {"name"};
	SelectionSet = {"selections"};
	Field = {"alias", "name", "arguments", "directives", "selectionSet"};
	Argument = {"name", "value"};
	FragmentSpread = {"name", "directives"};
	InlineFragment = {"typeCondition", "directives", "selectionSet"};
	FragmentDefinition = {"name", "variableDefinitions", "typeCondition", "directives", "selectionSet"};
	IntValue = {};
	FloatValue = {};
	StringValue = {};
	BooleanValue = {};
	NullValue = {};
	EnumValue = {};
	ListValue = {"values"};
	ObjectValue = {"fields"};
	ObjectField = {"name", "value"};
	Directive = {"name", "arguments"};
	NamedType = {"name"};
	ListType = {"type"};
	NonNullType = {"type"};
	SchemaDefinition = {"description", "directives", "operationTypes"};
	OperationTypeDefinition = {"type"};
	ScalarTypeDefinition = {"description", "name", "directives"};
	ObjectTypeDefinition = {"description", "name", "interfaces", "directives", "fields"};
	FieldDefinition = {"description", "name", "arguments", "type", "directives"};
	InputValueDefinition = {"description", "name", "type", "defaultValue", "directives"};
	InterfaceTypeDefinition = {"description", "name", "interfaces", "directives", "fields"};
	UnionTypeDefinition = {"description", "name", "directives", "types"};
	EnumTypeDefinition = {"description", "name", "directives", "values"};
	EnumValueDefinition = {"description", "name", "directives"};
	InputObjectTypeDefinition = {"description", "name", "directives", "fields"};
	DirectiveDefinition = {"description", "name", "arguments", "locations"};
	SchemaExtension = {"directives", "operationTypes"};
	ScalarTypeExtension = {"name", "directives"};
	ObjectTypeExtension = {"name", "interfaces", "directives", "fields"};
	InterfaceTypeExtension = {"name", "interfaces", "directives", "fields"};
	UnionTypeExtension = {"name", "directives", "types"};
	EnumTypeExtension = {"name", "directives", "values"};
	InputObjectTypeExtension = {"name", "directives", "fields"};
}
local any_freeze_result1_upvr = LuauPolyfill.Object.freeze({})
local null_upvr = require(Parent.luaUtils.null)
local getVisitFn_upvw
local Array_upvr = LuauPolyfill.Array
local isNode_upvr = require(script.Parent.ast).isNode
local inspect_upvr = require(Parent.jsutils.inspect).inspect
function getVisitFn_upvw(arg1, arg2, arg3) -- Line 465, Named "getVisitFn"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var72
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 11 start (CF ANALYSIS FAILED)
	do
		return var72
	end
	do
		return
	end
	-- KONSTANTERROR: [32] 25. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 27. Error Block 28 start (CF ANALYSIS FAILED)
	var72 = nil
	if arg3 then
		var72 = arg1.leave
	else
		var72 = arg1.enter
	end
	if var72 then
		if type(var72) == "function" then
			return var72
		end
		local var73 = var72[arg2]
		if type(var73) == "function" then
			return var73
		end
	end
	-- KONSTANTERROR: [34] 27. Error Block 28 end (CF ANALYSIS FAILED)
end
return {
	BREAK = any_freeze_result1_upvr;
	REMOVE = null_upvr;
	visit = function(arg1, arg2, arg3) -- Line 249, Named "visit"
		--[[ Upvalues[7]:
			[1]: tbl_upvr_2 (readonly)
			[2]: Array_upvr (readonly)
			[3]: null_upvr (readonly)
			[4]: isNode_upvr (readonly)
			[5]: inspect_upvr (readonly)
			[6]: getVisitFn_upvw (read and write)
			[7]: any_freeze_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 93 start (CF ANALYSIS FAILED)
		local var61
		if not arg3 then
		end
		;({})[1] = arg1
		-- KONSTANTERROR: [0] 1. Error Block 93 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [277] 222. Error Block 130 start (CF ANALYSIS FAILED)
		if nil == nil then
			-- KONSTANTWARNING: GOTO [280] #224
		end
		-- KONSTANTERROR: [277] 222. Error Block 130 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 20. Error Block 124 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [279.528156]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [279.16]
		if 0 ~= nil then
		else
		end
		-- KONSTANTERROR: [25] 20. Error Block 124 end (CF ANALYSIS FAILED)
	end;
	visitInParallel = function(arg1) -- Line 412, Named "visitInParallel"
		--[[ Upvalues[2]:
			[1]: getVisitFn_upvw (read and write)
			[2]: any_freeze_result1_upvr (readonly)
		]]
		local tbl_upvr = {}
		return {
			enter = function(arg1_2, arg2, ...) -- Line 417, Named "enter"
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: tbl_upvr (readonly)
					[3]: getVisitFn_upvw (copied, read and write)
					[4]: any_freeze_result1_upvr (copied, readonly)
				]]
				for i = 1, #arg1 do
					if tbl_upvr[i] == nil then
						local getVisitFn_result1_2 = getVisitFn_upvw(arg1[i], arg2.kind, false)
						if getVisitFn_result1_2 then
							local var69_result1 = getVisitFn_result1_2(arg1[i], arg2, ...)
							if var69_result1 == false then
								tbl_upvr[i] = arg2
							elseif var69_result1 == any_freeze_result1_upvr then
								tbl_upvr[i] = any_freeze_result1_upvr
							elseif var69_result1 ~= nil then
								return var69_result1
							end
						end
					end
				end
			end;
			leave = function(arg1_3, ...) -- Line 439, Named "leave"
				--[[ Upvalues[4]:
					[1]: arg1 (readonly)
					[2]: tbl_upvr (readonly)
					[3]: getVisitFn_upvw (copied, read and write)
					[4]: any_freeze_result1_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				local _ = 1
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [44] 39. Error Block 12 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [44] 39. Error Block 12 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [7] 8. Error Block 19 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if arg1 == nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if arg1 then
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.6]
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.65666]
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [44.7]
						if nil == nil then
						else
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
							if nil ~= nil and nil ~= false then
								-- KONSTANTWARNING: GOTO [44] #39
							end
						end
						-- KONSTANTWARNING: GOTO [44] #39
					end
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
					if arg1 == ... then
					end
				end
				-- KONSTANTERROR: [7] 8. Error Block 19 end (CF ANALYSIS FAILED)
			end;
		}
	end;
	getVisitFn = getVisitFn_upvw;
	QueryDocumentKeys = tbl_upvr_2;
}