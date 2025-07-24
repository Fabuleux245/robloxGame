-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:26
-- Luau version 6, Types version 3
-- Time taken: 0.000610 seconds

local Parent = script.Parent.Parent
local module = {}
local Boolean_upvr = require(Parent.LuauPolyfill).Boolean
local isObjectType_upvr = require(Parent.GraphQL).isObjectType
function module.getObjectTypeFromTypeMap(arg1, arg2) -- Line 26
	--[[ Upvalues[2]:
		[1]: Boolean_upvr (readonly)
		[2]: isObjectType_upvr (readonly)
	]]
	if arg2 then
		local any_get_result1 = arg1:get(arg2.name)
		if Boolean_upvr.toJSBoolean(isObjectType_upvr(any_get_result1)) then
			return any_get_result1
		end
	end
	return nil
end
return module