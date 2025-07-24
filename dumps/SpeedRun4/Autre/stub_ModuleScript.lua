-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:43
-- Luau version 6, Types version 3
-- Time taken: 0.002037 seconds

local module = {}
local GraphQL = require(script.Parent.Parent.GraphQL)
local GraphQLString_upvr = GraphQL.GraphQLString
local GraphQLObjectType_upvr = GraphQL.GraphQLObjectType
local GraphQLInterfaceType_upvr = GraphQL.GraphQLInterfaceType
local GraphQLInputObjectType_upvr = GraphQL.GraphQLInputObjectType
local function createNamedStub_upvr(arg1, arg2) -- Line 68, Named "createNamedStub"
	--[[ Upvalues[4]:
		[1]: GraphQLObjectType_upvr (readonly)
		[2]: GraphQLInterfaceType_upvr (readonly)
		[3]: GraphQLInputObjectType_upvr (readonly)
		[4]: GraphQLString_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 10 start (CF ANALYSIS FAILED)
	local var8
	if arg2 == "object" then
		var8 = GraphQLObjectType_upvr
		-- KONSTANTWARNING: GOTO [10] #9
	end
	-- KONSTANTERROR: [0] 1. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 11 start (CF ANALYSIS FAILED)
	if arg2 == "interface" then
		var8 = GraphQLInterfaceType_upvr
	else
		var8 = GraphQLInputObjectType_upvr
	end
	local module_2 = {}
	module_2.name = arg1
	module_2.fields = {
		_fake = {
			type = GraphQLString_upvr;
		};
	}
	do
		return var8.new(module_2)
	end
	-- KONSTANTERROR: [5] 5. Error Block 11 end (CF ANALYSIS FAILED)
end
module.createNamedStub = createNamedStub_upvr
local Kind_upvr = GraphQL.Kind
local GraphQLList_upvr = GraphQL.GraphQLList
local GraphQLNonNull_upvr = GraphQL.GraphQLNonNull
local function createStub_upvr(arg1, arg2) -- Line 96, Named "createStub"
	--[[ Upvalues[5]:
		[1]: Kind_upvr (readonly)
		[2]: GraphQLList_upvr (readonly)
		[3]: createStub_upvr (readonly)
		[4]: GraphQLNonNull_upvr (readonly)
		[5]: createNamedStub_upvr (readonly)
	]]
	local kind = arg1.kind
	if kind == Kind_upvr.LIST_TYPE then
		return GraphQLList_upvr.new(createStub_upvr(arg1.type, arg2))
	end
	if kind == Kind_upvr.NON_NULL_TYPE then
		return GraphQLNonNull_upvr.new(createStub_upvr(arg1.type, arg2))
	end
	if arg2 == "output" then
		return createNamedStub_upvr(arg1.name.value, "object")
	end
	return createNamedStub_upvr(arg1.name.value, "input")
end
module.createStub = createStub_upvr
function module.isNamedStub(arg1) -- Line 125
	if arg1.getFields ~= nil then
		local any_getFields_result1 = arg1:getFields()
		for _, v in any_getFields_result1 do
			local tostring_result1 = tostring(table.unpack(v))
			if any_getFields_result1[tostring_result1].name ~= "_fake" then
				tostring_result1 = false
			else
				tostring_result1 = true
			end
			return tostring_result1
		end
	end
	return false
end
local GraphQLInt_upvr = GraphQL.GraphQLInt
local GraphQLFloat_upvr = GraphQL.GraphQLFloat
local GraphQLBoolean_upvr = GraphQL.GraphQLBoolean
local GraphQLID_upvr = GraphQL.GraphQLID
function module.getBuiltInForStub(arg1) -- Line 149
	--[[ Upvalues[5]:
		[1]: GraphQLInt_upvr (readonly)
		[2]: GraphQLFloat_upvr (readonly)
		[3]: GraphQLString_upvr (readonly)
		[4]: GraphQLBoolean_upvr (readonly)
		[5]: GraphQLID_upvr (readonly)
	]]
	local name = arg1.name
	if name == GraphQLInt_upvr.name then
		return GraphQLInt_upvr
	end
	if name == GraphQLFloat_upvr.name then
		return GraphQLFloat_upvr
	end
	if name == GraphQLString_upvr.name then
		return GraphQLString_upvr
	end
	if name == GraphQLBoolean_upvr.name then
		return GraphQLBoolean_upvr
	end
	if name == GraphQLID_upvr.name then
		return GraphQLID_upvr
	end
	return arg1
end
return module