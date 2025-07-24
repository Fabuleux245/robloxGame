-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:08
-- Luau version 6, Types version 3
-- Time taken: 0.000496 seconds

local ProfileShareLinks = script:FindFirstAncestor("ProfileShareLinks")
local useSelector_upvr = require(ProfileShareLinks.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue_upvr = require(ProfileShareLinks.Common.getDeepValue)
local Constants_upvr = require(ProfileShareLinks.Common.Constants)
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1) -- Line 10
		--[[ Upvalues[2]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
		]]
		return getDeepValue_upvr(arg1, `{Constants_upvr.RODUX_KEY}.ProfileShareLinks.shortUrl`)
	end)
end