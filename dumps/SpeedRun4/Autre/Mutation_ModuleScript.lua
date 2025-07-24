-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:51
-- Luau version 6, Types version 3
-- Time taken: 0.000873 seconds

local module = {}
local useMutation_upvr = require(script.Parent.Parent.hooks).useMutation
local Boolean_upvr = require(script.Parent.Parent.Parent.Parent.LuauPolyfill).Boolean
function module.Mutation(arg1) -- Line 31
	--[[ Upvalues[2]:
		[1]: useMutation_upvr (readonly)
		[2]: Boolean_upvr (readonly)
	]]
	local unpacked_value_1, unpacked_value_2 = table.unpack(useMutation_upvr(arg1.mutation, arg1), 1, 2)
	if Boolean_upvr.toJSBoolean(arg1.children) then
		return arg1.children(unpacked_value_1, unpacked_value_2)
	end
	return nil
end
return module