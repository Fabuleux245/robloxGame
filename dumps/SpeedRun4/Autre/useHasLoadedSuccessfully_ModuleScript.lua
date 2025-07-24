-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:28
-- Luau version 6, Types version 3
-- Time taken: 0.000509 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local useShareLinkId_upvr = require(ProfileQRCode.Rodux.useShareLinkId)
local EventNames_upvr = require(ProfileQRCode.Analytics.EventNames)
local useEffectOnce_upvr = require(ProfileQRCode.Parent.RoactUtils).Hooks.useEffectOnce
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[3]:
		[1]: useShareLinkId_upvr (readonly)
		[2]: EventNames_upvr (readonly)
		[3]: useEffectOnce_upvr (readonly)
	]]
	local useShareLinkId_upvr_result1_upvr = useShareLinkId_upvr()
	useEffectOnce_upvr(function() -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: useShareLinkId_upvr_result1_upvr (readonly)
		]]
		arg1.fireEvent(EventNames_upvr.QRPageLoad, {
			shareLinkId = useShareLinkId_upvr_result1_upvr;
		})
	end, arg2)
end