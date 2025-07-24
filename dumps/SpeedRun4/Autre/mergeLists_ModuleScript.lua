-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:19
-- Luau version 6, Types version 3
-- Time taken: 0.000893 seconds

local Array_upvr = require(script:FindFirstAncestor("ApolloLocalState").Parent.LuauPolyfill).Array
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	local var4 = var3
	var3 = arg2
	local var5 = var3
	if not var5 then
		var5 = {}
	end
	local var6 = var5
	if #var6 == 0 then
		return var4
	end
	if #var4 == 0 then
		return var6
	end
	return Array_upvr.concat(table.clone(var4), var6)
end