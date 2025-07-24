-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:16
-- Luau version 6, Types version 3
-- Time taken: 0.003861 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local module = {
	schemaDefSymbol = "SCHEMA_DEF_SYMBOL";
	isNamedDefinitionNode = function(arg1) -- Line 71, Named "isNamedDefinitionNode"
		--[[ Upvalues[2]:
			[1]: Array_upvr (readonly)
			[2]: Object_upvr (readonly)
		]]
		local var6
		if Array_upvr.indexOf(Object_upvr.keys(arg1), "name") == -1 then
			var6 = false
		else
			var6 = true
		end
		return var6
	end;
}
local Map_upvr = LuauPolyfill.Map
local Boolean_upvr = LuauPolyfill.Boolean
local collectComment_upvr = require(Parent.Utils).collectComment
local Kind_upvr = require(Parent.GraphQL).Kind
local mergeType_upvr = require(script.Parent.type).mergeType
local mergeEnum_upvr = require(script.Parent.enum).mergeEnum
local mergeUnion_upvr = require(script.Parent.union).mergeUnion
local mergeScalar_upvr = require(script.Parent.scalar).mergeScalar
local mergeInputType_upvr = require(script.Parent["input-type"]).mergeInputType
local mergeInterface_upvr = require(script.Parent.interface).mergeInterface
local mergeDirective_upvr = require(script.Parent.directives).mergeDirective
local mergeSchemaDefs_upvr = require(script.Parent["schema-def"]).mergeSchemaDefs
function module.mergeGraphQLNodes(arg1, arg2) -- Line 77
	--[[ Upvalues[14]:
		[1]: Map_upvr (readonly)
		[2]: Boolean_upvr (readonly)
		[3]: Array_upvr (readonly)
		[4]: Object_upvr (readonly)
		[5]: collectComment_upvr (readonly)
		[6]: Kind_upvr (readonly)
		[7]: mergeType_upvr (readonly)
		[8]: mergeEnum_upvr (readonly)
		[9]: mergeUnion_upvr (readonly)
		[10]: mergeScalar_upvr (readonly)
		[11]: mergeInputType_upvr (readonly)
		[12]: mergeInterface_upvr (readonly)
		[13]: mergeDirective_upvr (readonly)
		[14]: mergeSchemaDefs_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [278] 206. Error Block 60 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [278] 206. Error Block 60 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 8. Error Block 90 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [278.10]
	if nil == -1 then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [278.8]
	-- KONSTANTERROR: [8] 8. Error Block 90 end (CF ANALYSIS FAILED)
end
return module