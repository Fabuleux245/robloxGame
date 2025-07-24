-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:22
-- Luau version 6, Types version 3
-- Time taken: 0.001154 seconds

local Parent = script.Parent.Parent
local module = {}
local GraphQL = require(Parent.GraphQL)
local String_upvr = require(Parent.LuauPolyfill).String
local getNamedType_upvr = GraphQL.getNamedType
local isObjectType_upvr = GraphQL.isObjectType
function module.forEachField(arg1, arg2) -- Line 25
	--[[ Upvalues[3]:
		[1]: String_upvr (readonly)
		[2]: getNamedType_upvr (readonly)
		[3]: isObjectType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_getTypeMap_result1 = arg1:getTypeMap()
	for _, v in any_getTypeMap_result1 do
		local _1 = v[1]
		local any_get_result1 = any_getTypeMap_result1:get(_1)
		if not String_upvr.startsWith(getNamedType_upvr(any_get_result1).name, "__") and isObjectType_upvr(any_get_result1) then
			local any_getFields_result1 = any_get_result1:getFields()
			for _, v_2 in any_getFields_result1 do
				local _1_2 = v_2[1]
				arg2(any_getFields_result1:get(_1_2), _1, _1_2)
				local _
			end
		end
	end
end
return module