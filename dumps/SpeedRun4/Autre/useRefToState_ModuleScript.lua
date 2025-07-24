-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:05
-- Luau version 6, Types version 3
-- Time taken: 0.000433 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1) -- Line 31, Named "useRefToState"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(arg1)
	any_useRef_result1.current = arg1
	return any_useRef_result1
end