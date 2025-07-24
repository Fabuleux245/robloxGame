-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:45
-- Luau version 6, Types version 3
-- Time taken: 0.003253 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local module = {}
local GraphQL = require(Parent.GraphQL)
local createDefaultRules_upvw
local Promise_upvr = require(Parent.Promise)
local Map_upvr = LuauPolyfill.Map
local Kind_upvr = GraphQL.Kind
local concatAST_upvr = GraphQL.concatAST
local validate_upvr = GraphQL.validate
function module.validateGraphQlDocuments(arg1, arg2, arg3) -- Line 66
	--[[ Upvalues[7]:
		[1]: createDefaultRules_upvw (read and write)
		[2]: Promise_upvr (readonly)
		[3]: Map_upvr (readonly)
		[4]: Kind_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: concatAST_upvr (readonly)
		[7]: validate_upvr (readonly)
	]]
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	local createDefaultRules_result1_upvr = createDefaultRules_upvw()
	return Promise_upvr.resolve():andThen(function() -- Line 74
		--[[ Upvalues[9]:
			[1]: Map_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: Kind_upvr (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: concatAST_upvr (copied, readonly)
			[7]: validate_upvr (copied, readonly)
			[8]: arg1 (readonly)
			[9]: createDefaultRules_result1_upvr (readonly)
		]]
		for _, v in arg2 do
			if v.document then
				for _, v_2 in v.document.definitions do
					if v_2.kind == Kind_upvr.FRAGMENT_DEFINITION then
						Map_upvr.new():set(v_2.name.value, v_2)
					else
						table.insert({}, v_2)
					end
				end
				local tbl_3 = {
					location = v.location;
				}
				local tbl = {
					kind = Kind_upvr.DOCUMENT;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl.definitions = {}
				tbl_3.document = tbl
				table.insert({}, tbl_3)
			end
		end
		local module_2_upvr = {}
		local tbl_2_upvr = {
			kind = Kind_upvr.DOCUMENT;
			definitions = Array_upvr.concat({}, Map_upvr.new():values());
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Promise_upvr.all(Array_upvr.map({}, function(arg1_2) -- Line 104
			--[[ Upvalues[7]:
				[1]: Promise_upvr (copied, readonly)
				[2]: concatAST_upvr (copied, readonly)
				[3]: tbl_2_upvr (readonly)
				[4]: validate_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: createDefaultRules_result1_upvr (copied, readonly)
				[7]: module_2_upvr (readonly)
			]]
			return Promise_upvr.resolve():andThen(function() -- Line 105
				--[[ Upvalues[7]:
					[1]: concatAST_upvr (copied, readonly)
					[2]: tbl_2_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
					[4]: validate_upvr (copied, readonly)
					[5]: arg1 (copied, readonly)
					[6]: createDefaultRules_result1_upvr (copied, readonly)
					[7]: module_2_upvr (copied, readonly)
				]]
				local validate_upvr_result1 = validate_upvr(arg1, concatAST_upvr({tbl_2_upvr, arg1_2.document}), createDefaultRules_result1_upvr)
				if 0 < #validate_upvr_result1 then
					table.insert(module_2_upvr, {
						filePath = arg1_2.location;
						errors = validate_upvr_result1;
					})
				end
			end)
		end)):expect()
		return module_2_upvr
	end)
end
local Error_upvr = LuauPolyfill.Error
local AggregateError_upvr = require(script.Parent.AggregateError).AggregateError
function module.checkValidationErrors(arg1) -- Line 123
	--[[ Upvalues[3]:
		[1]: Error_upvr (readonly)
		[2]: AggregateError_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	if 0 < #arg1 then
		local tbl_4 = {}
		for _, v_3 in arg1 do
			for _, v_4 in v_3.errors do
				local any_new_result1 = Error_upvr.new()
				any_new_result1.name = "GraphQLDocumentError"
				any_new_result1.message = "%s: %s":format(tostring(any_new_result1.name), tostring(v_4.message))
				any_new_result1.stack = any_new_result1.message
				if v_4.locations then
					for _, v_5 in v_4.locations do
						any_new_result1.stack = tostring(any_new_result1.stack).."\n    at %s:%s:%s":format(tostring(v_3.filePath), tostring(v_5.line), tostring(v_5.column))
					end
				end
				table.insert(tbl_4, any_new_result1)
			end
		end
		error(AggregateError_upvr.new(tbl_4, "GraphQL Document Validation failed with %s errors;\n  %s":format(tostring(#tbl_4), tostring(Array_upvr.join(Array_upvr.map(tbl_4, function(arg1_3, arg2) -- Line 170
			return "Error %s: %s":format(tostring(arg2), tostring(arg1_3.stack))
		end), "\n\n")))))
	end
end
local versionInfo_upvr = GraphQL.versionInfo
local specifiedRules_upvr = GraphQL.specifiedRules
function createDefaultRules_upvw() -- Line 185, Named "createDefaultRules"
	--[[ Upvalues[3]:
		[1]: versionInfo_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: specifiedRules_upvr (readonly)
	]]
	local module_upvw = {"NoUnusedFragmentsRule", "NoUnusedVariablesRule", "KnownDirectivesRule"}
	if versionInfo_upvr.major < 15 then
		module_upvw = Array_upvr.map(module_upvw, function(arg1) -- Line 192
			return arg1:gsub("Rule$", "", 1)
		end)
	end
	return Array_upvr.filter(specifiedRules_upvr, function(arg1) -- Line 200
		--[[ Upvalues[2]:
			[1]: Array_upvr (copied, readonly)
			[2]: module_upvw (read and write)
		]]
		return not Array_upvr.includes(module_upvw, debug.info(arg1, 'n'))
	end)
end
module.createDefaultRules = createDefaultRules_upvw
return module