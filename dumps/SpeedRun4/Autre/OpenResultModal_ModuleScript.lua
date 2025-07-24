-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:27
-- Luau version 6, Types version 3
-- Time taken: 0.000503 seconds

local OpenResultModal_upvr = require(script.Parent.Parent.Actions.OpenResultModal)
return function(arg1) -- Line 11
	--[[ Upvalues[1]:
		[1]: OpenResultModal_upvr (readonly)
	]]
	return function(arg1_2) -- Line 12
		--[[ Upvalues[2]:
			[1]: OpenResultModal_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		arg1_2:dispatch(OpenResultModal_upvr(arg1))
	end
end