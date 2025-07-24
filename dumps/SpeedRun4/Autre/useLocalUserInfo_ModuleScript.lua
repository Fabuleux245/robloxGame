-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:43
-- Luau version 6, Types version 3
-- Time taken: 0.000821 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue_upvr = require(Parent.LuaSocialLibrariesDeps).SocialLibraries.config({}).Dictionary.getDeepValue
local Constants_upvr = require(ProfileQRCode.Common.Constants)
return function(arg1) -- Line 9
	--[[ Upvalues[3]:
		[1]: useSelector_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return useSelector_upvr(function(arg1_2) -- Line 10
		--[[ Upvalues[3]:
			[1]: getDeepValue_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return getDeepValue_upvr(arg1_2, Constants_upvr.RODUX_KEY..".Users.byUserId."..arg1)
	end)
end