-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:21
-- Luau version 6, Types version 3
-- Time taken: 0.001399 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local module = {}
local getDocumentNodeFromSchema_upvr = require(script.Parent["print-schema-with-directives"]).getDocumentNodeFromSchema
local buildASTSchema_upvr = require(Parent.GraphQL).buildASTSchema
local Object_upvr = LuauPolyfill.Object
local function buildFixedSchema_upvr(arg1, arg2) -- Line 24, Named "buildFixedSchema"
	--[[ Upvalues[4]:
		[1]: getDocumentNodeFromSchema_upvr (readonly)
		[2]: buildASTSchema_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: Boolean_upvr (readonly)
	]]
	local var8
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var8 = arg2
		return var8
	end
	if not Boolean_upvr.toJSBoolean(arg2) or not INLINED() then
		var8 = {}
	end
	return buildASTSchema_upvr(getDocumentNodeFromSchema_upvr(arg1), Object_upvr.assign({}, var8))
end
function module.fixSchemaAst(arg1, arg2) -- Line 28
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: buildFixedSchema_upvr (readonly)
	]]
	local var9
	if not Boolean_upvr.toJSBoolean(arg1.astNode) or not Boolean_upvr.toJSBoolean(arg1.extensionASTNodes) then
		var9 = buildFixedSchema_upvr(arg1, arg2)
	end
	if not Boolean_upvr.toJSBoolean(arg1.astNode) and var9 and Boolean_upvr.toJSBoolean(var9.astNode) then
		arg1.astNode = var9.astNode
	end
	if not Boolean_upvr.toJSBoolean(arg1.extensionASTNodes) and var9 and Boolean_upvr.toJSBoolean(var9.astNode) then
		arg1.extensionASTNodes = var9.extensionASTNodes
	end
	return arg1
end
return module