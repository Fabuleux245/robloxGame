-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:31
-- Luau version 6, Types version 3
-- Time taken: 0.001534 seconds

local Parent = script.Parent.Parent.Parent
local module = {}
local Map_upvr = require(Parent.Parent.LuauPolyfill).Map
local isEnumType_upvr = require(Parent.type.definition).isEnumType
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function module.UniqueEnumValueNamesRule(arg1) -- Line 25
	--[[ Upvalues[3]:
		[1]: Map_upvr (readonly)
		[2]: isEnumType_upvr (readonly)
		[3]: GraphQLError_upvr (readonly)
	]]
	local var8_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var8_upvr = arg1:getSchema():getTypeMap()
		return var8_upvr
	end
	if not arg1:getSchema() or not INLINED() then
		var8_upvr = Map_upvr.new()
	end
	local tbl_upvr = {}
	local function checkValueUniqueness(arg1_2, arg2) -- Line 33
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: var8_upvr (readonly)
			[3]: isEnumType_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GraphQLError_upvr (copied, readonly)
		]]
		local value_2 = arg2.name.value
		if not tbl_upvr[value_2] then
			tbl_upvr[value_2] = {}
		end
		local values = arg2.values
		if not values then
			values = {}
		end
		local var16 = tbl_upvr[value_2]
		for _, v in ipairs(values) do
			local value = v.name.value
			local any_get_result1 = var8_upvr:get(value_2)
			if isEnumType_upvr(any_get_result1) and any_get_result1:getValue(value) then
				arg1:reportError(GraphQLError_upvr.new("Enum value \"%s.%s\" already exists in the schema. It cannot also be defined in this type extension.":format(value_2, value), v.name))
			elseif var16[value] then
				arg1:reportError(GraphQLError_upvr.new("Enum value \"%s.%s\" can only be defined once.":format(value_2, value), {var16[value], v.name}))
			else
				var16[value] = v.name
			end
		end
		return false
	end
	return {
		EnumTypeDefinition = checkValueUniqueness;
		EnumTypeExtension = checkValueUniqueness;
	}
end
return module