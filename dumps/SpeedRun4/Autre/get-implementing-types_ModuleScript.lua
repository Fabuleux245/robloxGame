-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:25
-- Luau version 6, Types version 3
-- Time taken: 0.001926 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local Boolean_upvr = LuauPolyfill.Boolean
local isObjectType_upvr = require(Parent.GraphQL).isObjectType
local Array_upvr = LuauPolyfill.Array
function module.getImplementingTypes(arg1, arg2) -- Line 17
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local any_getTypeMap_result1_2 = arg2:getTypeMap()
	for _, v in any_getTypeMap_result1_2 do
		local any_get_result1_2 = any_getTypeMap_result1_2:get(table.unpack(v))
		if Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1_2)) then
			if Boolean_upvr.toJSBoolean(Array_upvr.find(any_get_result1_2:getInterfaces(), function(arg1_3) -- Line 36
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var18
				if arg1_3.name ~= arg1 then
					var18 = false
				else
					var18 = true
				end
				return var18
			end)) then
				table.insert({}, any_get_result1_2.name)
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return module