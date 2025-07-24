-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:23
-- Luau version 6, Types version 3
-- Time taken: 0.001697 seconds

local Parent = script.Parent.Parent.Parent
local isNillish = require(Parent.luaUtils.isNillish)
local module = {}
local isNillish_2_upvr = isNillish.isNillish
local isNotNillish_upvr = isNillish.isNotNillish
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.LoneSchemaDefinitionRule(arg1) -- Line 24
	--[[ Upvalues[3]:
		[1]: isNillish_2_upvr (readonly)
		[2]: isNotNillish_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
	]]
	local any_getSchema_result1 = arg1:getSchema()
	local var9
	if any_getSchema_result1 then
		var9 = any_getSchema_result1.astNode
		if isNillish_2_upvr(var9) then
			var9 = any_getSchema_result1:getQueryType()
		end
		if isNillish_2_upvr(var9) then
		end
		if isNillish_2_upvr(any_getSchema_result1:getMutationType()) then
		end
	end
	local module_2 = {}
	local any_getSubscriptionType_result1_upvw = any_getSchema_result1:getSubscriptionType()
	local var12_upvw = 0
	function module_2.SchemaDefinition(arg1_2, arg2) -- Line 42
		--[[ Upvalues[5]:
			[1]: isNotNillish_upvr (copied, readonly)
			[2]: any_getSubscriptionType_result1_upvw (read and write)
			[3]: arg1 (readonly)
			[4]: GraphQLError_upvr (copied, readonly)
			[5]: var12_upvw (read and write)
		]]
		if isNotNillish_upvr(any_getSubscriptionType_result1_upvw) then
			arg1:reportError(GraphQLError_upvr.new("Cannot define a new schema within a schema extension.", arg2))
		else
			if 0 < var12_upvw then
				arg1:reportError(GraphQLError_upvr.new("Must provide only one schema definition.", arg2))
			end
			var12_upvw += 1
		end
	end
	return module_2
end
return module