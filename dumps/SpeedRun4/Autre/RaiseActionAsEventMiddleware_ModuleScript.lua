-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:16
-- Luau version 6, Types version 3
-- Time taken: 0.000334 seconds

local ActionBindableEvent_upvr = require(script.Parent.ActionBindableEvent)
return function(arg1, arg2) -- Line 3
	--[[ Upvalues[1]:
		[1]: ActionBindableEvent_upvr (readonly)
	]]
	return function(arg1_2) -- Line 4
		--[[ Upvalues[2]:
			[1]: ActionBindableEvent_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		ActionBindableEvent_upvr:Fire(arg1_2)
		arg1(arg1_2)
	end
end