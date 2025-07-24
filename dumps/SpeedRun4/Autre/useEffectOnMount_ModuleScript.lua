-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:39
-- Luau version 6, Types version 3
-- Time taken: 0.000345 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
return function(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	React_upvr.useEffect(function() -- Line 11
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1()
	end, {})
end