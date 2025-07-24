-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:36
-- Luau version 6, Types version 3
-- Time taken: 0.000680 seconds

local useStore_upvr = require(script.Parent.useStore)
local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
return function() -- Line 10, Named "useDispatch"
	--[[ Upvalues[2]:
		[1]: useStore_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local useStore_upvr_result1_upvr = useStore_upvr()
	return React_upvr.useCallback(function(...) -- Line 13
		--[[ Upvalues[1]:
			[1]: useStore_upvr_result1_upvr (readonly)
		]]
		return useStore_upvr_result1_upvr:dispatch(...)
	end, {useStore_upvr_result1_upvr})
end