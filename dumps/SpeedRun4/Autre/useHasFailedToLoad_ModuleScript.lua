-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:28
-- Luau version 6, Types version 3
-- Time taken: 0.000449 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useEffectOnce_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.useEffectOnce
local EventNames_upvr = require(ProfileQRCode.Analytics.EventNames)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: useEffectOnce_upvr (readonly)
		[2]: EventNames_upvr (readonly)
	]]
	useEffectOnce_upvr(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		arg1.fireEvent(EventNames_upvr.QRPageLoadFailed)
	end, arg2)
end