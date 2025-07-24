-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:00
-- Luau version 6, Types version 3
-- Time taken: 0.000619 seconds

local module = {}
local Parent = script.Parent.Parent.Parent
local useBaseQuery_upvr = require(script.Parent.utils.useBaseQuery).useBaseQuery
function module.useQuery(arg1, arg2) -- Line 27
	--[[ Upvalues[1]:
		[1]: useBaseQuery_upvr (readonly)
	]]
	return useBaseQuery_upvr(arg1, arg2, false)
end
return module