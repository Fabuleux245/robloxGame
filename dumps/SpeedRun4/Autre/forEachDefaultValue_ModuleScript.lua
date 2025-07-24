-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:22
-- Luau version 6, Types version 3
-- Time taken: 0.002208 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local GraphQL = require(Parent.GraphQL)
local String_upvr = LuauPolyfill.String
local getNamedType_upvr = GraphQL.getNamedType
local Boolean_upvr = LuauPolyfill.Boolean
local isObjectType_upvr = GraphQL.isObjectType
local isInputObjectType_upvr = GraphQL.isInputObjectType
function module.forEachDefaultValue(arg1, arg2) -- Line 26
	--[[ Upvalues[5]:
		[1]: String_upvr (readonly)
		[2]: getNamedType_upvr (readonly)
		[3]: Boolean_upvr (readonly)
		[4]: isObjectType_upvr (readonly)
		[5]: isInputObjectType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getTypeMap_result1 = arg1:getTypeMap()
	for _, v in any_getTypeMap_result1 do
		local any_get_result1 = any_getTypeMap_result1:get(v[1])
		if not String_upvr.startsWith(getNamedType_upvr(any_get_result1).name, "__") then
			if Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1)) then
				local any_getFields_result1_2 = any_get_result1:getFields()
				for _, v_2 in any_getFields_result1_2 do
					for _, v_3 in any_getFields_result1_2:get(v_2[1]).args do
						v_3.defaultValue = arg2(v_3.type, v_3.defaultValue)
					end
				end
			elseif Boolean_upvr.toJSBoolean(isInputObjectType_upvr(any_get_result1)) then
				local any_getFields_result1 = any_get_result1:getFields()
				for _, v_4 in any_getFields_result1 do
					local any_get_result1_2 = any_getFields_result1:get(v_4[1])
					any_get_result1_2.defaultValue = arg2(any_get_result1_2.type, any_get_result1_2.defaultValue)
					local _
				end
			end
		end
	end
end
return module