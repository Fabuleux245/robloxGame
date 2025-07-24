-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:30
-- Luau version 6, Types version 3
-- Time taken: 0.001840 seconds

local Parent = script.Parent.Parent.Parent
local language = Parent.language
local predicates = require(language.predicates)
local module = {}
local specifiedDirectives_upvr = require(Parent.type.directives).specifiedDirectives
local Kind_upvr = require(language.kinds).Kind
local isTypeDefinitionNode_upvr = predicates.isTypeDefinitionNode
local isTypeExtensionNode_upvr = predicates.isTypeExtensionNode
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.UniqueDirectivesPerLocationRule(arg1) -- Line 27
	--[[ Upvalues[5]:
		[1]: specifiedDirectives_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: isTypeDefinitionNode_upvr (readonly)
		[4]: isTypeExtensionNode_upvr (readonly)
		[5]: GraphQLError_upvr (readonly)
	]]
	local tbl_upvr_2 = {}
	local var21
	if arg1:getSchema() then
		var21 = arg1:getSchema():getDirectives()
	else
		var21 = specifiedDirectives_upvr
	end
	for _, v in ipairs(var21) do
		tbl_upvr_2[v.name] = not v.isRepeatable
	end
	for _, v_2 in ipairs(arg1:getDocument().definitions) do
		if v_2.kind == Kind_upvr.DIRECTIVE_DEFINITION then
			tbl_upvr_2[v_2.name.value] = not v_2.repeatable
		end
	end
	local module_2 = {}
	local tbl_upvr = {}
	local tbl_upvr_3 = {}
	function module_2.enter(arg1_2, arg2) -- Line 50
		--[[ Upvalues[8]:
			[1]: Kind_upvr (copied, readonly)
			[2]: tbl_upvr (readonly)
			[3]: isTypeDefinitionNode_upvr (copied, readonly)
			[4]: isTypeExtensionNode_upvr (copied, readonly)
			[5]: tbl_upvr_3 (readonly)
			[6]: tbl_upvr_2 (readonly)
			[7]: arg1 (readonly)
			[8]: GraphQLError_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
		local var35
		if var35 == nil then
		else
			var35 = nil
			if arg2.kind == Kind_upvr.SCHEMA_DEFINITION or arg2.kind == Kind_upvr.SCHEMA_EXTENSION then
				var35 = tbl_upvr
				-- KONSTANTWARNING: GOTO [45] #33
			end
			-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 15. Error Block 32 start (CF ANALYSIS FAILED)
			if isTypeDefinitionNode_upvr(arg2) or isTypeExtensionNode_upvr(arg2) then
				local value = arg2.name.value
				var35 = tbl_upvr_3[value]
				if var35 == nil then
					var35 = {}
					tbl_upvr_3[value] = var35
					-- KONSTANTWARNING: GOTO [45] #33
				end
			else
				var35 = {}
			end
			for _, v_3 in ipairs(arg2.directives) do
				local value_2 = v_3.name.value
				if tbl_upvr_2[value_2] then
					if var35[value_2] then
						arg1:reportError(GraphQLError_upvr.new("The directive \"@%s\" can only be used once at this location.":format(value_2), {var35[value_2], v_3}))
					else
						var35[value_2] = v_3
					end
				end
			end
			-- KONSTANTERROR: [22] 15. Error Block 32 end (CF ANALYSIS FAILED)
		end
	end
	return module_2
end
return module