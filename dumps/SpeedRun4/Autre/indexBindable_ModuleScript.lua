-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:35
-- Luau version 6, Types version 3
-- Time taken: 0.000710 seconds

local ReactIs_upvr = require(script:FindFirstAncestor("Foundation").Parent.ReactIs)
return function(arg1, arg2) -- Line 10, Named "indexBindable"
	--[[ Upvalues[1]:
		[1]: ReactIs_upvr (readonly)
	]]
	if ReactIs_upvr.isBinding(arg1) then
		return arg1:map(function(arg1_2) -- Line 13
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			return arg1_2[arg2]
		end)
	end
	return arg1[arg2]
end