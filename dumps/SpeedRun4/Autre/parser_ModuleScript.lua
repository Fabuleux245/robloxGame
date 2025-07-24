-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:41
-- Luau version 6, Types version 3
-- Time taken: 0.020747 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local lexer = require(Parent_2.lexer)
local TokenKind_upvr = require(Parent_2.tokenKind).TokenKind
local Kind_upvr = require(Parent_2.kinds).Kind
local syntaxError_upvr = require(script.Parent.Parent.error.syntaxError).syntaxError
local getTokenDesc_upvw
local getTokenKindDesc_upvw
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
local Source_upvr = require(Parent_2.source).Source
local Lexer_upvr = lexer.Lexer
function tbl_upvr.new(arg1, arg2) -- Line 262
	--[[ Upvalues[3]:
		[1]: Source_upvr (readonly)
		[2]: Lexer_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local var14
	if typeof(arg1) == "string" then
		var14 = Source_upvr.new(arg1)
	else
		var14 = arg1
	end
	local module_15 = {
		_lexer = Lexer_upvr.new(var14);
	}
	module_15._options = arg2
	return setmetatable(module_15, tbl_upvr)
end
function tbl_upvr.parseName(arg1) -- Line 280
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local any_expectToken_result1 = arg1:expectToken(TokenKind_upvr.NAME)
	return {
		kind = Kind_upvr.NAME;
		value = any_expectToken_result1.value;
		loc = arg1:loc(any_expectToken_result1);
	}
end
function tbl_upvr.parseDocument(arg1) -- Line 294
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
	]]
	return {
		kind = Kind_upvr.DOCUMENT;
		definitions = arg1:many(TokenKind_upvr.SOF, arg1.parseDefinition, TokenKind_upvr.EOF);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseDefinition(arg1) -- Line 314
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	if arg1:peek(TokenKind_upvr.NAME) then
		local value_6 = arg1._lexer.token.value
		if value_6 == "query" or value_6 == "mutation" or value_6 == "subscription" then
			return arg1:parseOperationDefinition()
		end
		if value_6 == "fragment" then
			return arg1:parseFragmentDefinition()
		end
		if value_6 == "schema" or value_6 == "scalar" or value_6 == "type" or value_6 == "interface" or value_6 == "union" or value_6 == "enum" or value_6 == "input" or value_6 == "directive" then
			return arg1:parseTypeSystemDefinition()
		end
		if value_6 == "extend" then
			do
				return arg1:parseTypeSystemExtension()
			end
			-- KONSTANTWARNING: GOTO [75] #49
		end
	else
		if arg1:peek(TokenKind_upvr.BRACE_L) then
			return arg1:parseOperationDefinition()
		end
		if arg1:peekDescription() then
			return arg1:parseTypeSystemDefinition()
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 49. Error Block 26 start (CF ANALYSIS FAILED)
	error(arg1:unexpected())
	-- KONSTANTERROR: [75] 49. Error Block 26 end (CF ANALYSIS FAILED)
end
function tbl_upvr.parseOperationDefinition(arg1) -- Line 351
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local token_7 = arg1._lexer.token
	if arg1:peek(TokenKind_upvr.BRACE_L) then
		return {
			kind = Kind_upvr.OPERATION_DEFINITION;
			operation = "query";
			name = nil;
			variableDefinitions = {};
			directives = {};
			selectionSet = arg1:parseSelectionSet();
			loc = arg1:loc(token_7);
		}
	end
	local var22
	if arg1:peek(TokenKind_upvr.NAME) then
		var22 = arg1:parseName()
	end
	return {
		kind = Kind_upvr.OPERATION_DEFINITION;
		operation = arg1:parseOperationType();
		name = var22;
		variableDefinitions = arg1:parseVariableDefinitions();
		directives = arg1:parseDirectives(false);
		selectionSet = arg1:parseSelectionSet();
		loc = arg1:loc(token_7);
	}
end
function tbl_upvr.parseOperationType(arg1) -- Line 384
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local any_expectToken_result1_2 = arg1:expectToken(TokenKind_upvr.NAME)
	if any_expectToken_result1_2.value == "query" then
		return "query"
	end
	if any_expectToken_result1_2.value == "mutation" then
		return "mutation"
	end
	if any_expectToken_result1_2.value == "subscription" then
		return "subscription"
	end
	error(arg1:unexpected(any_expectToken_result1_2))
end
function tbl_upvr.parseVariableDefinitions(arg1) -- Line 401
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	return arg1:optionalMany(TokenKind_upvr.PAREN_L, arg1.parseVariableDefinition, TokenKind_upvr.PAREN_R)
end
function tbl_upvr.parseVariableDefinition(arg1) -- Line 408
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	local module_3 = {}
	local VARIABLE_DEFINITION = Kind_upvr.VARIABLE_DEFINITION
	module_3.kind = VARIABLE_DEFINITION
	module_3.variable = arg1:parseVariable()
	module_3.type = arg1:parseTypeReference()
	if arg1:expectOptionalToken(TokenKind_upvr.EQUALS) then
		VARIABLE_DEFINITION = arg1:parseValueLiteral(true)
	else
		VARIABLE_DEFINITION = nil
	end
	module_3.defaultValue = VARIABLE_DEFINITION
	module_3.directives = arg1:parseDirectives(true)
	module_3.loc = arg1:loc(arg1._lexer.token)
	return module_3
end
function tbl_upvr.parseVariable(arg1) -- Line 428
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.DOLLAR)
	return {
		kind = Kind_upvr.VARIABLE;
		name = arg1:parseName();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseSelectionSet(arg1) -- Line 441
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
	]]
	return {
		kind = Kind_upvr.SELECTION_SET;
		selections = arg1:many(TokenKind_upvr.BRACE_L, arg1.parseSelection, TokenKind_upvr.BRACE_R);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseSelection(arg1) -- Line 456
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	if arg1:peek(TokenKind_upvr.SPREAD) then
		return arg1:parseFragment()
	end
	return arg1:parseField()
end
function tbl_upvr.parseField(arg1) -- Line 469
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local var29
	local var30
	local var31
	if arg1:expectOptionalToken(TokenKind_upvr.COLON) then
		var29 = arg1:parseName()
		var30 = arg1:parseName()
	else
		var30 = arg1:parseName()
	end
	local module_17 = {}
	var31 = Kind_upvr.FIELD
	module_17.kind = var31
	module_17.alias = var29
	module_17.name = var30
	var31 = arg1:parseArguments(false)
	module_17.arguments = var31
	var31 = arg1:parseDirectives(false)
	module_17.directives = var31
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var31 = arg1:parseSelectionSet()
		return var31
	end
	if not arg1:peek(TokenKind_upvr.BRACE_L) or not INLINED() then
		var31 = nil
	end
	module_17.selectionSet = var31
	var31 = arg1:loc(arg1._lexer.token)
	module_17.loc = var31
	return module_17
end
function tbl_upvr.parseArguments(arg1, arg2) -- Line 497
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local var33
	if arg2 then
		var33 = arg1.parseConstArgument
	else
		var33 = arg1.parseArgument
	end
	return arg1:optionalMany(TokenKind_upvr.PAREN_L, var33, TokenKind_upvr.PAREN_R)
end
function tbl_upvr.parseArgument(arg1) -- Line 510
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	return {
		kind = Kind_upvr.ARGUMENT;
		name = arg1:parseName();
		value = arg1:parseValueLiteral(false);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseConstArgument(arg1) -- Line 523
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	return {
		kind = Kind_upvr.ARGUMENT;
		name = arg1:parseName();
		value = arg1:parseValueLiteral(true);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseFragment(arg1) -- Line 545
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local token_5 = arg1._lexer.token
	arg1:expectToken(TokenKind_upvr.SPREAD)
	local any_expectOptionalKeyword_result1 = arg1:expectOptionalKeyword("on")
	if not any_expectOptionalKeyword_result1 and arg1:peek(TokenKind_upvr.NAME) then
		return {
			kind = Kind_upvr.FRAGMENT_SPREAD;
			name = arg1:parseFragmentName();
			directives = arg1:parseDirectives(false);
			loc = arg1:loc(token_5);
		}
	end
	local module_16 = {}
	local INLINE_FRAGMENT = Kind_upvr.INLINE_FRAGMENT
	module_16.kind = INLINE_FRAGMENT
	if any_expectOptionalKeyword_result1 then
		INLINE_FRAGMENT = arg1:parseNamedType()
	else
		INLINE_FRAGMENT = nil
	end
	module_16.typeCondition = INLINE_FRAGMENT
	module_16.directives = arg1:parseDirectives(false)
	module_16.selectionSet = arg1:parseSelectionSet()
	module_16.loc = arg1:loc(token_5)
	return module_16
end
function tbl_upvr.parseFragmentDefinition(arg1) -- Line 573
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	local token_6 = arg1._lexer.token
	arg1:expectKeyword("fragment")
	local _options_2 = arg1._options
	if _options_2 then
		_options_2 = arg1._options.experimentalFragmentVariables
	end
	if _options_2 == true then
		arg1:expectKeyword("on")
		return {
			kind = Kind_upvr.FRAGMENT_DEFINITION;
			name = arg1:parseFragmentName();
			variableDefinitions = arg1:parseVariableDefinitions();
			typeCondition = arg1:parseNamedType();
			directives = arg1:parseDirectives(false);
			selectionSet = arg1:parseSelectionSet();
			loc = arg1:loc(token_6);
		}
	end
	arg1:expectKeyword("on")
	return {
		kind = Kind_upvr.FRAGMENT_DEFINITION;
		name = arg1:parseFragmentName();
		typeCondition = arg1:parseNamedType();
		directives = arg1:parseDirectives(false);
		selectionSet = arg1:parseSelectionSet();
		loc = arg1:loc(token_6);
	}
end
function tbl_upvr.parseFragmentName(arg1) -- Line 616
	if arg1._lexer.token.value == "on" then
		error(arg1:unexpected())
	end
	return arg1:parseName()
end
function tbl_upvr.parseValueLiteral(arg1, arg2) -- Line 643
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local token_3 = arg1._lexer.token
	local kind = token_3.kind
	if kind == TokenKind_upvr.BRACKET_L then
		return arg1:parseList(arg2)
	end
	if kind == TokenKind_upvr.BRACE_L then
		return arg1:parseObject(arg2)
	end
	if kind == TokenKind_upvr.INT then
		arg1._lexer:advance()
		return {
			kind = Kind_upvr.INT;
			value = token_3.value;
			loc = arg1:loc(token_3);
		}
	end
	if kind == TokenKind_upvr.FLOAT then
		arg1._lexer:advance()
		return {
			kind = Kind_upvr.FLOAT;
			value = token_3.value;
			loc = arg1:loc(token_3);
		}
	end
	if kind == TokenKind_upvr.STRING or kind == TokenKind_upvr.BLOCK_STRING then
		return arg1:parseStringLiteral()
	end
	if kind == TokenKind_upvr.NAME then
		arg1._lexer:advance()
		local value = token_3.value
		if value == "true" then
			return {
				kind = Kind_upvr.BOOLEAN;
				value = true;
				loc = arg1:loc(token_3);
			}
		end
		if value == "false" then
			return {
				kind = Kind_upvr.BOOLEAN;
				value = false;
				loc = arg1:loc(token_3);
			}
		end
		if value == "null" then
			return {
				kind = Kind_upvr.NULL;
				loc = arg1:loc(token_3);
			}
		end
		return {
			kind = Kind_upvr.ENUM;
			value = value;
			loc = arg1:loc(token_3);
		}
	end
	if kind == TokenKind_upvr.DOLLAR and not arg2 then
		return arg1:parseVariable()
	end
	error(arg1:unexpected())
end
function tbl_upvr.parseStringLiteral(arg1) -- Line 692
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
	]]
	local token = arg1._lexer.token
	arg1._lexer:advance()
	local module_10 = {
		kind = Kind_upvr.STRING;
	}
	local value_4 = token.value
	module_10.value = value_4
	if token.kind ~= TokenKind_upvr.BLOCK_STRING then
		value_4 = false
	else
		value_4 = true
	end
	module_10.block = value_4
	module_10.loc = arg1:loc(token)
	return module_10
end
function tbl_upvr.parseList(arg1, arg2) -- Line 708
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
	]]
	return {
		kind = Kind_upvr.LIST;
		values = arg1:any(TokenKind_upvr.BRACKET_L, function() -- Line 710
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1:parseValueLiteral(arg2)
		end, TokenKind_upvr.BRACKET_R);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseObject(arg1, arg2) -- Line 725
	--[[ Upvalues[2]:
		[1]: Kind_upvr (readonly)
		[2]: TokenKind_upvr (readonly)
	]]
	return {
		kind = Kind_upvr.OBJECT;
		fields = arg1:any(TokenKind_upvr.BRACE_L, function() -- Line 727
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1:parseObjectField(arg2)
		end, TokenKind_upvr.BRACE_R);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseObjectField(arg1, arg2) -- Line 740
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	return {
		kind = Kind_upvr.OBJECT_FIELD;
		name = arg1:parseName();
		value = arg1:parseValueLiteral(arg2);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseDirectives(arg1, arg2) -- Line 753
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local module = {}
	while arg1:peek(TokenKind_upvr.AT) do
		table.insert(module, arg1:parseDirective(arg2))
	end
	return module
end
function tbl_upvr.parseDirective(arg1, arg2) -- Line 764
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.AT)
	return {
		kind = Kind_upvr.DIRECTIVE;
		name = arg1:parseName();
		arguments = arg1:parseArguments(arg2);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseTypeReference(arg1) -- Line 783
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local token_2 = arg1._lexer.token
	local var65
	if arg1:expectOptionalToken(TokenKind_upvr.BRACKET_L) then
		arg1:expectToken(TokenKind_upvr.BRACKET_R)
		var65 = {
			kind = Kind_upvr.LIST_TYPE;
			type = arg1:parseTypeReference();
			loc = arg1:loc(token_2);
		}
	else
		var65 = arg1:parseNamedType()
	end
	if arg1:expectOptionalToken(TokenKind_upvr.BANG) then
		return {
			kind = Kind_upvr.NON_NULL_TYPE;
			type = var65;
			loc = arg1:loc(token_2);
		}
	end
	return var65
end
function tbl_upvr.parseNamedType(arg1) -- Line 816
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	return {
		kind = Kind_upvr.NAMED_TYPE;
		name = arg1:parseName();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseTypeSystemDefinition(arg1) -- Line 839
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local var69
	if arg1:peekDescription() then
		var69 = arg1._lexer:lookahead()
	else
		var69 = arg1._lexer.token
	end
	if var69.kind == TokenKind_upvr.NAME then
		local value_2 = var69.value
		if value_2 == "schema" then
			return arg1:parseSchemaDefinition()
		end
		if value_2 == "scalar" then
			return arg1:parseScalarTypeDefinition()
		end
		if value_2 == "type" then
			return arg1:parseObjectTypeDefinition()
		end
		if value_2 == "interface" then
			return arg1:parseInterfaceTypeDefinition()
		end
		if value_2 == "union" then
			return arg1:parseUnionTypeDefinition()
		end
		if value_2 == "enum" then
			return arg1:parseEnumTypeDefinition()
		end
		if value_2 == "input" then
			return arg1:parseInputObjectTypeDefinition()
		end
		if value_2 == "directive" then
			return arg1:parseDirectiveDefinition()
		end
	end
	error(arg1:unexpected(var69))
end
function tbl_upvr.peekDescription(arg1) -- Line 869
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local any_peek_result1 = arg1:peek(TokenKind_upvr.STRING)
	if not any_peek_result1 then
		any_peek_result1 = arg1:peek(TokenKind_upvr.BLOCK_STRING)
	end
	return any_peek_result1
end
function tbl_upvr.parseDescription(arg1) -- Line 876
	if arg1:peekDescription() then
		return arg1:parseStringLiteral()
	end
end
function tbl_upvr.parseSchemaDefinition(arg1) -- Line 886
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("schema")
	return {
		kind = Kind_upvr.SCHEMA_DEFINITION;
		description = arg1:parseDescription();
		directives = arg1:parseDirectives(true);
		operationTypes = arg1:many(TokenKind_upvr.BRACE_L, arg1.parseOperationTypeDefinition, TokenKind_upvr.BRACE_R);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseOperationTypeDefinition(arg1) -- Line 908
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	return {
		kind = Kind_upvr.OPERATION_TYPE_DEFINITION;
		operation = arg1:parseOperationType();
		type = arg1:parseNamedType();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseScalarTypeDefinition(arg1) -- Line 925
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("scalar")
	return {
		kind = Kind_upvr.SCALAR_TYPE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		directives = arg1:parseDirectives(true);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseObjectTypeDefinition(arg1) -- Line 945
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("type")
	return {
		kind = Kind_upvr.OBJECT_TYPE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		interfaces = arg1:parseImplementsInterfaces();
		directives = arg1:parseDirectives(true);
		fields = arg1:parseFieldsDefinition();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseImplementsInterfaces(arg1) -- Line 969
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	if arg1:expectOptionalKeyword("implements") then
		return arg1:delimitedMany(TokenKind_upvr.AMP, arg1.parseNamedType)
	end
	return {}
end
function tbl_upvr.parseFieldsDefinition(arg1) -- Line 980
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	return arg1:optionalMany(TokenKind_upvr.BRACE_L, arg1.parseFieldDefinition, TokenKind_upvr.BRACE_R)
end
function tbl_upvr.parseFieldDefinition(arg1) -- Line 988
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	return {
		kind = Kind_upvr.FIELD_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		arguments = arg1:parseArgumentDefs();
		type = arg1:parseTypeReference();
		directives = arg1:parseDirectives(true);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseArgumentDefs(arg1) -- Line 1010
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	return arg1:optionalMany(TokenKind_upvr.PAREN_L, arg1.parseInputValueDef, TokenKind_upvr.PAREN_R)
end
function tbl_upvr.parseInputValueDef(arg1) -- Line 1018
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectToken(TokenKind_upvr.COLON)
	local var77
	if arg1:expectOptionalToken(TokenKind_upvr.EQUALS) then
		var77 = arg1:parseValueLiteral(true)
	end
	return {
		kind = Kind_upvr.INPUT_VALUE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		type = arg1:parseTypeReference();
		defaultValue = var77;
		directives = arg1:parseDirectives(true);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseInterfaceTypeDefinition(arg1) -- Line 1044
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("interface")
	return {
		kind = Kind_upvr.INTERFACE_TYPE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		interfaces = arg1:parseImplementsInterfaces();
		directives = arg1:parseDirectives(true);
		fields = arg1:parseFieldsDefinition();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseUnionTypeDefinition(arg1) -- Line 1067
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("union")
	return {
		kind = Kind_upvr.UNION_TYPE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		directives = arg1:parseDirectives(true);
		types = arg1:parseUnionMemberTypes();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseUnionMemberTypes(arg1) -- Line 1089
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	if arg1:expectOptionalToken(TokenKind_upvr.EQUALS) then
		arg1:expectOptionalToken(TokenKind_upvr.PIPE)
		repeat
			table.insert({}, arg1:parseNamedType())
		until not arg1:expectOptionalToken(TokenKind_upvr.PIPE)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function tbl_upvr.parseEnumTypeDefinition(arg1) -- Line 1105
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("enum")
	return {
		kind = Kind_upvr.ENUM_TYPE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		directives = arg1:parseDirectives(true);
		values = arg1:parseEnumValuesDefinition();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseEnumValuesDefinition(arg1) -- Line 1125
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	return arg1:optionalMany(TokenKind_upvr.BRACE_L, arg1.parseEnumValueDefinition, TokenKind_upvr.BRACE_R)
end
function tbl_upvr.parseEnumValueDefinition(arg1) -- Line 1134
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	return {
		kind = Kind_upvr.ENUM_VALUE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		directives = arg1:parseDirectives(true);
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseInputObjectTypeDefinition(arg1) -- Line 1152
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("input")
	return {
		kind = Kind_upvr.INPUT_OBJECT_TYPE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		directives = arg1:parseDirectives(true);
		fields = arg1:parseInputFieldsDefinition();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseInputFieldsDefinition(arg1) -- Line 1172
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	return arg1:optionalMany(TokenKind_upvr.BRACE_L, arg1.parseInputValueDef, TokenKind_upvr.BRACE_R)
end
function tbl_upvr.parseTypeSystemExtension(arg1) -- Line 1189
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local any_lookahead_result1 = arg1._lexer:lookahead()
	if any_lookahead_result1.kind == TokenKind_upvr.NAME then
		local value_5 = any_lookahead_result1.value
		if value_5 == "schema" then
			return arg1:parseSchemaExtension()
		end
		if value_5 == "scalar" then
			return arg1:parseScalarTypeExtension()
		end
		if value_5 == "type" then
			return arg1:parseObjectTypeExtension()
		end
		if value_5 == "interface" then
			return arg1:parseInterfaceTypeExtension()
		end
		if value_5 == "union" then
			return arg1:parseUnionTypeExtension()
		end
		if value_5 == "enum" then
			return arg1:parseEnumTypeExtension()
		end
		if value_5 == "input" then
			return arg1:parseInputObjectTypeExtension()
		end
	end
	error(arg1:unexpected(any_lookahead_result1))
end
function tbl_upvr.parseSchemaExtension(arg1) -- Line 1219
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("schema")
	local any_parseDirectives_result1_3 = arg1:parseDirectives(true)
	if #any_parseDirectives_result1_3 == 0 and #arg1:optionalMany(TokenKind_upvr.BRACE_L, arg1.parseOperationTypeDefinition, TokenKind_upvr.BRACE_R) == 0 then
		error(arg1:unexpected())
	end
	local module_4 = {
		kind = Kind_upvr.SCHEMA_EXTENSION;
		directives = any_parseDirectives_result1_3;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_4.operationTypes = arg1:optionalMany(TokenKind_upvr.BRACE_L, arg1.parseOperationTypeDefinition, TokenKind_upvr.BRACE_R)
	module_4.loc = arg1:loc(arg1._lexer.token)
	return module_4
end
function tbl_upvr.parseScalarTypeExtension(arg1) -- Line 1244
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("scalar")
	local any_parseDirectives_result1_4 = arg1:parseDirectives(true)
	if #any_parseDirectives_result1_4 == 0 then
		error(arg1:unexpected())
	end
	return {
		kind = Kind_upvr.SCALAR_TYPE_EXTENSION;
		name = arg1:parseName();
		directives = any_parseDirectives_result1_4;
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseObjectTypeExtension(arg1) -- Line 1267
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("type")
	local any_parseImplementsInterfaces_result1_2 = arg1:parseImplementsInterfaces()
	if #any_parseImplementsInterfaces_result1_2 == 0 and #arg1:parseDirectives(true) == 0 and #arg1:parseFieldsDefinition() == 0 then
		error(arg1:unexpected())
	end
	local module_5 = {
		kind = Kind_upvr.OBJECT_TYPE_EXTENSION;
		name = arg1:parseName();
		interfaces = any_parseImplementsInterfaces_result1_2;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_5.directives = arg1:parseDirectives(true)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_5.fields = arg1:parseFieldsDefinition()
	module_5.loc = arg1:loc(arg1._lexer.token)
	return module_5
end
function tbl_upvr.parseInterfaceTypeExtension(arg1) -- Line 1294
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("interface")
	local any_parseImplementsInterfaces_result1 = arg1:parseImplementsInterfaces()
	if #any_parseImplementsInterfaces_result1 == 0 and #arg1:parseDirectives(true) == 0 and #arg1:parseFieldsDefinition() == 0 then
		error(arg1:unexpected())
	end
	local module_14 = {
		kind = Kind_upvr.INTERFACE_TYPE_EXTENSION;
		name = arg1:parseName();
		interfaces = any_parseImplementsInterfaces_result1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_14.directives = arg1:parseDirectives(true)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_14.fields = arg1:parseFieldsDefinition()
	module_14.loc = arg1:loc(arg1._lexer.token)
	return module_14
end
function tbl_upvr.parseUnionTypeExtension(arg1) -- Line 1320
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("union")
	local any_parseDirectives_result1_2 = arg1:parseDirectives(true)
	if #any_parseDirectives_result1_2 == 0 and #arg1:parseUnionMemberTypes() == 0 then
		error(arg1:unexpected())
	end
	local module_2 = {
		kind = Kind_upvr.UNION_TYPE_EXTENSION;
		name = arg1:parseName();
		directives = any_parseDirectives_result1_2;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.types = arg1:parseUnionMemberTypes()
	module_2.loc = arg1:loc(arg1._lexer.token)
	return module_2
end
function tbl_upvr.parseEnumTypeExtension(arg1) -- Line 1344
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("enum")
	local any_parseDirectives_result1_5 = arg1:parseDirectives(true)
	if #any_parseDirectives_result1_5 == 0 and #arg1:parseEnumValuesDefinition() == 0 then
		error(arg1:unexpected())
	end
	local module_11 = {
		kind = Kind_upvr.ENUM_TYPE_EXTENSION;
		name = arg1:parseName();
		directives = any_parseDirectives_result1_5;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_11.values = arg1:parseEnumValuesDefinition()
	module_11.loc = arg1:loc(arg1._lexer.token)
	return module_11
end
function tbl_upvr.parseInputObjectTypeExtension(arg1) -- Line 1368
	--[[ Upvalues[1]:
		[1]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("extend")
	arg1:expectKeyword("input")
	local any_parseDirectives_result1 = arg1:parseDirectives(true)
	if #any_parseDirectives_result1 == 0 and #arg1:parseInputFieldsDefinition() == 0 then
		error(arg1:unexpected())
	end
	local module_13 = {
		kind = Kind_upvr.INPUT_OBJECT_TYPE_EXTENSION;
		name = arg1:parseName();
		directives = any_parseDirectives_result1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_13.fields = arg1:parseInputFieldsDefinition()
	module_13.loc = arg1:loc(arg1._lexer.token)
	return module_13
end
function tbl_upvr.parseDirectiveDefinition(arg1) -- Line 1391
	--[[ Upvalues[2]:
		[1]: TokenKind_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	arg1:expectKeyword("directive")
	arg1:expectToken(TokenKind_upvr.AT)
	arg1:expectKeyword("on")
	return {
		kind = Kind_upvr.DIRECTIVE_DEFINITION;
		description = arg1:parseDescription();
		name = arg1:parseName();
		arguments = arg1:parseArgumentDefs();
		repeatable = arg1:expectOptionalKeyword("repeatable");
		locations = arg1:parseDirectiveLocations();
		loc = arg1:loc(arg1._lexer.token);
	}
end
function tbl_upvr.parseDirectiveLocations(arg1) -- Line 1417
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	arg1:expectOptionalToken(TokenKind_upvr.PIPE)
	local module_12 = {}
	repeat
		table.insert(module_12, arg1:parseDirectiveLocation())
	until not arg1:expectOptionalToken(TokenKind_upvr.PIPE)
	return module_12
end
local DirectiveLocation_upvr = require(Parent_2.directiveLocation).DirectiveLocation
function tbl_upvr.parseDirectiveLocation(arg1) -- Line 1454
	--[[ Upvalues[1]:
		[1]: DirectiveLocation_upvr (readonly)
	]]
	local any_parseName_result1 = arg1:parseName()
	if DirectiveLocation_upvr[any_parseName_result1.value] ~= nil then
		return any_parseName_result1
	end
	error(arg1:unexpected(arg1._lexer.token))
end
local Location_upvr = require(Parent_2.ast).Location
function tbl_upvr.loc(arg1, arg2) -- Line 1467
	--[[ Upvalues[1]:
		[1]: Location_upvr (readonly)
	]]
	local _options = arg1._options
	if _options then
		_options = arg1._options.noLocation
	end
	if _options ~= true then
		return Location_upvr.new(arg2, arg1._lexer.lastToken, arg1._lexer.source)
	end
	return nil
end
function tbl_upvr.peek(arg1, arg2) -- Line 1477
	local var106
	if arg1._lexer.token.kind ~= arg2 then
		var106 = false
	else
		var106 = true
	end
	return var106
end
function tbl_upvr.expectToken(arg1, arg2) -- Line 1485
	--[[ Upvalues[3]:
		[1]: syntaxError_upvr (readonly)
		[2]: getTokenKindDesc_upvw (read and write)
		[3]: getTokenDesc_upvw (read and write)
	]]
	local token_8 = arg1._lexer.token
	if token_8.kind == arg2 then
		arg1._lexer:advance()
		return token_8
	end
	error(syntaxError_upvr(arg1._lexer.source, token_8.start, "Expected "..getTokenKindDesc_upvw(arg2)..", found "..getTokenDesc_upvw(token_8)..'.'))
end
function tbl_upvr.expectOptionalToken(arg1, arg2) -- Line 1505
	local token_9 = arg1._lexer.token
	if token_9.kind == arg2 then
		arg1._lexer:advance()
		return token_9
	end
	return nil
end
function tbl_upvr.expectKeyword(arg1, arg2) -- Line 1518
	--[[ Upvalues[3]:
		[1]: TokenKind_upvr (readonly)
		[2]: syntaxError_upvr (readonly)
		[3]: getTokenDesc_upvw (read and write)
	]]
	local token_10 = arg1._lexer.token
	if token_10.kind == TokenKind_upvr.NAME and token_10.value == arg2 then
		arg1._lexer:advance()
	else
		error(syntaxError_upvr(arg1._lexer.source, token_10.start, "Expected \""..arg2.."\", found "..getTokenDesc_upvw(token_10)..'.'))
	end
end
function tbl_upvr.expectOptionalKeyword(arg1, arg2) -- Line 1537
	--[[ Upvalues[1]:
		[1]: TokenKind_upvr (readonly)
	]]
	local token_4 = arg1._lexer.token
	if token_4.kind == TokenKind_upvr.NAME and token_4.value == arg2 then
		arg1._lexer:advance()
		return true
	end
	return false
end
function tbl_upvr.unexpected(arg1, arg2) -- Line 1550
	--[[ Upvalues[2]:
		[1]: syntaxError_upvr (readonly)
		[2]: getTokenDesc_upvw (read and write)
	]]
	if arg2 == nil or not arg2 then
		local token_11 = arg1._lexer.token
	end
	return syntaxError_upvr(arg1._lexer.source, token_11.start, "Unexpected "..getTokenDesc_upvw(token_11)..'.')
end
function tbl_upvr.any(arg1, arg2, arg3, arg4) -- Line 1561
	arg1:expectToken(arg2)
	local module_7 = {}
	while not arg1:expectOptionalToken(arg4) do
		table.insert(module_7, arg3(arg1))
	end
	return module_7
end
function tbl_upvr.optionalMany(arg1, arg2, arg3, arg4) -- Line 1582
	if arg1:expectOptionalToken(arg2) then
		local module_9 = {}
		repeat
			table.insert(module_9, arg3(arg1))
		until arg1:expectOptionalToken(arg4)
		return module_9
	end
	return {}
end
function tbl_upvr.many(arg1, arg2, arg3, arg4) -- Line 1604
	arg1:expectToken(arg2)
	local module_8 = {}
	repeat
		table.insert(module_8, arg3(arg1))
	until arg1:expectOptionalToken(arg4)
	return module_8
end
function tbl_upvr.delimitedMany(arg1, arg2, arg3) -- Line 1623
	arg1:expectOptionalToken(arg2)
	local module_6 = {}
	repeat
		table.insert(module_6, arg3(arg1))
	until not arg1:expectOptionalToken(arg2)
	return module_6
end
function getTokenDesc_upvw(arg1) -- Line 1640, Named "getTokenDesc"
	--[[ Upvalues[1]:
		[1]: getTokenKindDesc_upvw (read and write)
	]]
	local value_3 = arg1.value
	local var117
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var117 = " \""..value_3..'"'
		return var117
	end
	if value_3 == nil or not INLINED_2() then
		var117 = ""
	end
	return getTokenKindDesc_upvw(arg1.kind)..var117
end
local isPunctuatorTokenKind_upvr = lexer.isPunctuatorTokenKind
function getTokenKindDesc_upvw(arg1) -- Line 1648, Named "getTokenKindDesc"
	--[[ Upvalues[1]:
		[1]: isPunctuatorTokenKind_upvr (readonly)
	]]
	local var119
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var119 = '"'..arg1..'"'
		return var119
	end
	if not isPunctuatorTokenKind_upvr(arg1) or not INLINED_3() then
		var119 = arg1
	end
	return var119
end
return {
	Parser = tbl_upvr;
	parse = function(arg1, arg2) -- Line 221, Named "parse"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		return tbl_upvr.new(arg1, arg2):parseDocument()
	end;
	parseValue = function(arg1, arg2) -- Line 236, Named "parseValue"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: TokenKind_upvr (readonly)
		]]
		local any_new_result1 = tbl_upvr.new(arg1, arg2)
		any_new_result1:expectToken(TokenKind_upvr.SOF)
		any_new_result1:expectToken(TokenKind_upvr.EOF)
		return any_new_result1:parseValueLiteral(false)
	end;
	parseType = function(arg1, arg2) -- Line 254, Named "parseType"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: TokenKind_upvr (readonly)
		]]
		local any_new_result1_2 = tbl_upvr.new(arg1, arg2)
		any_new_result1_2:expectToken(TokenKind_upvr.SOF)
		any_new_result1_2:expectToken(TokenKind_upvr.EOF)
		return any_new_result1_2:parseTypeReference()
	end;
}