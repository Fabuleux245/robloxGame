-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:14
-- Luau version 6, Types version 3
-- Time taken: 0.001655 seconds

local Parent = script.Parent.Parent
local definition = require(Parent.type.definition)
local Kind_upvr = require(Parent.language.kinds).Kind
local GraphQLList_upvr = definition.GraphQLList
local GraphQLNonNull_upvr = definition.GraphQLNonNull
local invariant_upvr = require(Parent.jsutils.invariant).invariant
local inspect_upvr = require(Parent.jsutils.inspect).inspect
local function typeFromAST_upvr(arg1, arg2) -- Line 33, Named "typeFromAST"
	--[[ Upvalues[6]:
		[1]: Kind_upvr (readonly)
		[2]: typeFromAST_upvr (readonly)
		[3]: GraphQLList_upvr (readonly)
		[4]: GraphQLNonNull_upvr (readonly)
		[5]: invariant_upvr (readonly)
		[6]: inspect_upvr (readonly)
	]]
	if arg2.kind == Kind_upvr.LIST_TYPE then
		local typeFromAST_result1 = typeFromAST_upvr(arg1, arg2.type)
		local var9 = typeFromAST_result1
		if var9 then
			var9 = GraphQLList_upvr.new(typeFromAST_result1)
		end
		return var9
	end
	if arg2.kind == Kind_upvr.NON_NULL_TYPE then
		local typeFromAST_result1_2 = typeFromAST_upvr(arg1, arg2.type)
		local var11 = typeFromAST_result1_2
		if var11 then
			var11 = GraphQLNonNull_upvr.new(typeFromAST_result1_2)
		end
		return var11
	end
	if arg2.kind == Kind_upvr.NAMED_TYPE then
		return arg1:getType(arg2.name.value)
	end
	invariant_upvr(false, "Unexpected type node: "..inspect_upvr(arg2))
	return nil
end
return {
	typeFromAST = typeFromAST_upvr;
}