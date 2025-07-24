-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:18
-- Luau version 6, Types version 3
-- Time taken: 0.001045 seconds

local Parent = script.Parent.Parent.Parent
local language = Parent.language
local module = {}
local isExecutableDefinitionNode_upvr = require(language.predicates).isExecutableDefinitionNode
local Kind_upvr = require(language.kinds).Kind
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.ExecutableDefinitionsRule(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: isExecutableDefinitionNode_upvr (readonly)
		[2]: Kind_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
	]]
	return {
		Document = function(arg1_2, arg2) -- Line 25, Named "Document"
			--[[ Upvalues[4]:
				[1]: isExecutableDefinitionNode_upvr (copied, readonly)
				[2]: Kind_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: GraphQLError_upvr (copied, readonly)
			]]
			for _, v in ipairs(arg2.definitions) do
				if not isExecutableDefinitionNode_upvr(v) then
					local var16
					if v.kind == Kind_upvr.SCHEMA_DEFINITION or v.kind == Kind_upvr.SCHEMA_EXTENSION then
						var16 = "schema"
					else
						var16 = '"'..v.name.value..'"'
					end
					arg1:reportError(GraphQLError_upvr.new("The %s definition is not executable.":format(var16), v))
				end
			end
			return false
		end;
	}
end
return module