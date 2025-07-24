-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:57
-- Luau version 6, Types version 3
-- Time taken: 0.000359 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
local useDebounce_upvr = require(script.Parent.useDebounce)
return function(arg1, arg2) -- Line 9, Named "useDebouncedState"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: useDebounce_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2 = React_upvr.useState(arg1)
	return useDebounce_upvr(any_useState_result1, arg2), any_useState_result2
end