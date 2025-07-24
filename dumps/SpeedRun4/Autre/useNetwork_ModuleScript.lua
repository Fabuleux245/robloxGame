-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:47
-- Luau version 6, Types version 3
-- Time taken: 0.000467 seconds

local VerifiedParentalConsentDialog = script:FindFirstAncestor("VerifiedParentalConsentDialog")
local React_upvr = require(VerifiedParentalConsentDialog.Parent.React)
local NetworkContext_upvr = require(VerifiedParentalConsentDialog.Hooks.NetworkContext)
return function() -- Line 7, Named "useNetwork"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: NetworkContext_upvr (readonly)
	]]
	return React_upvr.useContext(NetworkContext_upvr)
end