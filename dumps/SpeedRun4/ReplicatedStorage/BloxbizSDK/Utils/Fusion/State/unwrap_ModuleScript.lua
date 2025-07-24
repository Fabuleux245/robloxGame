-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:30
-- Luau version 6, Types version 3
-- Time taken: 0.000534 seconds

local xtypeof_upvr = require(script.Parent.Parent.Utility.xtypeof)
return function(arg1, arg2) -- Line 11, Named "unwrap"
	--[[ Upvalues[1]:
		[1]: xtypeof_upvr (readonly)
	]]
	if xtypeof_upvr(arg1) == "State" then
		return arg1:get(arg2)
	end
	return arg1
end