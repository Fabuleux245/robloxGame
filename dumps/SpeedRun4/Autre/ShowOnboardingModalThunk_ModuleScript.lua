-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:44
-- Luau version 6, Types version 3
-- Time taken: 0.000516 seconds

local ShowOnboardingModal_upvr = require(script.Parent.Parent.Actions.ShowOnboardingModal)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: ShowOnboardingModal_upvr (readonly)
	]]
	return function(arg1_2) -- Line 8
		--[[ Upvalues[2]:
			[1]: ShowOnboardingModal_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		arg1_2:dispatch(ShowOnboardingModal_upvr(arg1))
	end
end