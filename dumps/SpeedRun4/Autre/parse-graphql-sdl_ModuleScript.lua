-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:38
-- Luau version 6, Types version 3
-- Time taken: 0.003580 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local module_4 = {}
local GraphQL = require(Parent.GraphQL)
local Kind_upvr = GraphQL.Kind
local parse_upvr = GraphQL.parse
local comments = require(script.Parent.comments)
local String_upvr = LuauPolyfill.String
local function _(arg1) -- Line 51, Named "removeCommentsAndTrim"
	--[[ Upvalues[1]:
		[1]: String_upvr (readonly)
	]]
	return String_upvr.trim(string.gsub(arg1, "(#[^*]*)", ""))
end
local transformCommentsToDescriptions_upvw
local print_upvr = GraphQL.print
local Source_upvr = GraphQL.Source
function module_4.parseGraphQLSDL(arg1, arg2, arg3) -- Line 56
	--[[ Upvalues[7]:
		[1]: Boolean_upvr (readonly)
		[2]: String_upvr (readonly)
		[3]: transformCommentsToDescriptions_upvw (read and write)
		[4]: parse_upvr (readonly)
		[5]: print_upvr (readonly)
		[6]: Source_upvr (readonly)
		[7]: Kind_upvr (readonly)
	]]
	if arg3 ~= nil then
	else
	end
	local tbl_upvr = {}
	local var15_upvw
	local pcall_result1, pcall_result2 = pcall(function() -- Line 62
		--[[ Upvalues[10]:
			[1]: Boolean_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: String_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: var15_upvw (read and write)
			[6]: transformCommentsToDescriptions_upvw (copied, read and write)
			[7]: parse_upvr (copied, readonly)
			[8]: print_upvr (copied, readonly)
			[9]: Source_upvr (copied, readonly)
			[10]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 24. Error Block 4 start (CF ANALYSIS FAILED)
		var15_upvw = parse_upvr(print_upvr(var15_upvw), tbl_upvr)
		do
			return
		end
		-- KONSTANTERROR: [28] 24. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 32. Error Block 5 start (CF ANALYSIS FAILED)
		var15_upvw = parse_upvr(Source_upvr.new(arg2, arg1), tbl_upvr)
		-- KONSTANTERROR: [36] 32. Error Block 5 end (CF ANALYSIS FAILED)
	end)
	if not pcall_result1 then
		if String_upvr.includes(pcall_result2.message, "EOF") and String_upvr.trim(string.gsub(arg2, "(#[^*]*)", "")) == "" then
			var15_upvw = {
				kind = Kind_upvr.DOCUMENT;
				definitions = {};
			}
		else
			error(pcall_result2)
		end
	end
	local module_2 = {}
	module_2.location = arg1
	module_2.document = var15_upvw
	return module_2
end
local Object_upvr = LuauPolyfill.Object
local visit_upvr = GraphQL.visit
local isDescribable_upvw
local getLeadingCommentBlock_upvr = comments.getLeadingCommentBlock
local dedentBlockStringValue_upvr = comments.dedentBlockStringValue
function transformCommentsToDescriptions_upvw(arg1, arg2) -- Line 122, Named "transformCommentsToDescriptions"
	--[[ Upvalues[9]:
		[1]: parse_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: visit_upvr (readonly)
		[4]: Boolean_upvr (readonly)
		[5]: isDescribable_upvw (read and write)
		[6]: getLeadingCommentBlock_upvr (readonly)
		[7]: dedentBlockStringValue_upvr (readonly)
		[8]: String_upvr (readonly)
		[9]: Kind_upvr (readonly)
	]]
	if arg2 ~= nil then
	else
	end
	return visit_upvr(parse_upvr(arg1, Object_upvr.assign({}, {}, {
		noLocation = false;
	})), {
		leave = function(arg1_2, arg2_2) -- Line 129, Named "leave"
			--[[ Upvalues[7]:
				[1]: Boolean_upvr (copied, readonly)
				[2]: isDescribable_upvw (copied, read and write)
				[3]: getLeadingCommentBlock_upvr (copied, readonly)
				[4]: dedentBlockStringValue_upvr (copied, readonly)
				[5]: String_upvr (copied, readonly)
				[6]: Object_upvr (copied, readonly)
				[7]: Kind_upvr (copied, readonly)
			]]
			if Boolean_upvr.toJSBoolean(isDescribable_upvw(arg2_2)) then
				local var23_result1 = getLeadingCommentBlock_upvr(arg2_2)
				if var23_result1 ~= nil then
					local var24_result1 = dedentBlockStringValue_upvr('\n'..tostring(var23_result1))
					if not Boolean_upvr.toJSBoolean(arg2_2.description) then
						return Object_upvr.assign({}, arg2_2, {
							description = {
								kind = Kind_upvr.STRING;
								value = var24_result1;
								block = String_upvr.includes(var24_result1, '\n');
							};
						})
					end
					return Object_upvr.assign({}, arg2_2, {
						description = Object_upvr.assign({}, arg2_2.description, {
							value = arg2_2.description.value..'\n'..var24_result1;
							block = true;
						});
					})
				end
			end
		end;
	})
end
module_4.transformCommentsToDescriptions = transformCommentsToDescriptions_upvw
local isTypeSystemDefinitionNode_upvr = GraphQL.isTypeSystemDefinitionNode
function isDescribable_upvw(arg1) -- Line 176, Named "isDescribable"
	--[[ Upvalues[2]:
		[1]: isTypeSystemDefinitionNode_upvr (readonly)
		[2]: Kind_upvr (readonly)
	]]
	local var39_result1 = isTypeSystemDefinitionNode_upvr(arg1)
	if not var39_result1 then
		var39_result1 = true
		if arg1.kind ~= Kind_upvr.FIELD_DEFINITION then
			var39_result1 = true
			if arg1.kind ~= Kind_upvr.INPUT_VALUE_DEFINITION then
				if arg1.kind ~= Kind_upvr.ENUM_VALUE_DEFINITION then
					var39_result1 = false
				else
					var39_result1 = true
				end
			end
		end
	end
	return var39_result1
end
module_4.isDescribable = isDescribable_upvw
return module_4