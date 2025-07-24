-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:31
-- Luau version 6, Types version 3
-- Time taken: 0.002387 seconds

local Parent = script.Parent.Parent.Parent
local definition = require(Parent.type.definition)
local module = {}
local Map_upvr = require(Parent.Parent.LuauPolyfill).Map
local hasField_upvw
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.UniqueFieldDefinitionNamesRule(arg1) -- Line 32
	--[[ Upvalues[3]:
		[1]: Map_upvr (readonly)
		[2]: hasField_upvw (read and write)
		[3]: GraphQLError_upvr (readonly)
	]]
	local var9_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var9_upvr = arg1:getSchema():getTypeMap()
		return var9_upvr
	end
	if not arg1:getSchema() or not INLINED() then
		var9_upvr = Map_upvr.new()
	end
	local tbl_upvr = {}
	local function checkFieldUniqueness(arg1_2, arg2) -- Line 40
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: hasField_upvw (copied, read and write)
			[3]: var9_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local value = arg2.name.value
		if not tbl_upvr[value] then
			tbl_upvr[value] = {}
		end
		local fields = arg2.fields
		if not fields then
			fields = {}
		end
		local var17 = tbl_upvr[value]
		for _, v in ipairs(fields) do
			local value_2 = v.name.value
			if hasField_upvw(var9_upvr:get(value), value_2) then
				arg1:reportError(GraphQLError_upvr.new("Field \"%s.%s\" already exists in the schema. It cannot also be defined in this type extension.":format(value, value_2), v.name))
			elseif var17[value_2] then
				arg1:reportError(GraphQLError_upvr.new("Field \"%s.%s\" can only be defined once.":format(value, value_2), {var17[value_2], v.name}))
			else
				var17[value_2] = v.name
			end
		end
		return false
	end
	return {
		InputObjectTypeDefinition = checkFieldUniqueness;
		InputObjectTypeExtension = checkFieldUniqueness;
		InterfaceTypeDefinition = checkFieldUniqueness;
		InterfaceTypeExtension = checkFieldUniqueness;
		ObjectTypeDefinition = checkFieldUniqueness;
		ObjectTypeExtension = checkFieldUniqueness;
	}
end
local isObjectType_upvr = definition.isObjectType
local isInterfaceType_upvr = definition.isInterfaceType
local isInputObjectType_upvr = definition.isInputObjectType
local isNotNillish_upvr = require(Parent.luaUtils.isNillish).isNotNillish
function hasField_upvw(arg1, arg2) -- Line 88, Named "hasField"
	--[[ Upvalues[4]:
		[1]: isObjectType_upvr (readonly)
		[2]: isInterfaceType_upvr (readonly)
		[3]: isInputObjectType_upvr (readonly)
		[4]: isNotNillish_upvr (readonly)
	]]
	if isObjectType_upvr(arg1) or isInterfaceType_upvr(arg1) or isInputObjectType_upvr(arg1) then
		return isNotNillish_upvr(arg1:getFields():get(arg2))
	end
	return false
end
return module