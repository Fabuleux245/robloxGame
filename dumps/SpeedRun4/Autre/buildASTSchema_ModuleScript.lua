-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:05
-- Luau version 6, Types version 3
-- Time taken: 0.002253 seconds

local parse_upvr = require(script.Parent.Parent.language.parser).parse
local devAssert_upvr = require(script.Parent.Parent.jsutils.devAssert).devAssert
local Kind_upvr = require(script.Parent.Parent.language.kinds).Kind
local assertValidSDL_upvr = require(script.Parent.Parent.validation.validate).assertValidSDL
local extendSchemaImpl_upvr = require(script.Parent.extendSchema).extendSchemaImpl
local specifiedDirectives_upvr = require(script.Parent.Parent.type.directives).specifiedDirectives
local Array_upvr = require(script.Parent.Parent.Parent.LuauPolyfill).Array
local GraphQLSchema_upvr = require(script.Parent.Parent.type.schema).GraphQLSchema
local function var2_upvr(arg1, arg2) -- Line 44
	--[[ Upvalues[7]:
		[1]: devAssert_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: assertValidSDL_upvr (readonly)
		[4]: extendSchemaImpl_upvr (readonly)
		[5]: specifiedDirectives_upvr (readonly)
		[6]: Array_upvr (readonly)
		[7]: GraphQLSchema_upvr (readonly)
	]]
	local var18 = false
	if arg1 ~= nil then
		if arg1.kind ~= Kind_upvr.DOCUMENT then
			var18 = false
		else
			var18 = true
		end
	end
	devAssert_upvr(var18, "Must provide valid Document AST.")
	if arg2 ~= nil and not arg2.assumeValid and not arg2.assumeValidSDL then
		var18 = arg1
		assertValidSDL_upvr(var18)
	end
	local tbl_2 = {}
	var18 = nil
	tbl_2.description = var18
	var18 = {}
	tbl_2.types = var18
	var18 = {}
	tbl_2.directives = var18
	var18 = nil
	tbl_2.extensions = var18
	var18 = {}
	tbl_2.extensionASTNodes = var18
	var18 = false
	tbl_2.assumeValid = var18
	var18 = extendSchemaImpl_upvr(tbl_2, arg1, arg2)
	if var18.astNode == nil then
		for _, v in ipairs(var18.types) do
			if v.name == "Query" then
				var18.query = v
			elseif v.name == "Mutation" then
				var18.mutation = v
			elseif v.name == "Subscription" then
				var18.subscription = v
			end
		end
	end
	local directives = var18.directives
	for _, v_2_upvr in ipairs(specifiedDirectives_upvr) do
		if Array_upvr.every(directives, function(arg1_2) -- Line 86
			--[[ Upvalues[1]:
				[1]: v_2_upvr (readonly)
			]]
			local var28
			if arg1_2.name == v_2_upvr.name then
				var28 = false
			else
				var28 = true
			end
			return var28
		end) then
			table.insert(directives, v_2_upvr)
		end
	end
	return GraphQLSchema_upvr.new(var18)
end
return {
	buildASTSchema = var2_upvr;
	buildSchema = function(arg1, arg2) -- Line 97, Named "buildSchema"
		--[[ Upvalues[2]:
			[1]: parse_upvr (readonly)
			[2]: var2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local tbl = {}
		local var30
		if arg2 then
			var30 = arg2.noLocation
		else
			var30 = nil
		end
		tbl.noLocation = var30
		if arg2 then
			var30 = arg2.experimentalFragmentVariables
			-- KONSTANTWARNING: GOTO [15] #13
		end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 12. Error Block 29 start (CF ANALYSIS FAILED)
		var30 = nil
		tbl.experimentalFragmentVariables = var30
		var30 = {}
		if arg2 then
			-- KONSTANTWARNING: GOTO [26] #22
		end
		-- KONSTANTERROR: [14] 12. Error Block 29 end (CF ANALYSIS FAILED)
	end;
	parse = parse_upvr;
}