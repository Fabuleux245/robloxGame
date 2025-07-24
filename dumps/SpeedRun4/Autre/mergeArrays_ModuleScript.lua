-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:18
-- Luau version 6, Types version 3
-- Time taken: 0.000894 seconds

local Array_upvr = require(script:FindFirstAncestor("ApolloLocalState").Parent.LuauPolyfill).Array
return function(arg1, arg2, arg3) -- Line 6, Named "mergeArrays"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local var2 = arg2
	if not var2 then
		var2 = {}
	end
	local var3 = var2
	var2 = arg3
	local var4 = var2
	if not var4 then
		var4 = {}
	end
	local var5 = var4
	if #var5 == 0 then
		return var3
	end
	if #var3 == 0 then
		return var5
	end
	return Array_upvr.concat(table.clone(var3), var5)
end