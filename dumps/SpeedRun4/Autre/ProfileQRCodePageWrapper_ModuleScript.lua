-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:46
-- Luau version 6, Types version 3
-- Time taken: 0.000612 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local Roact_upvr = dependencies.Roact
local ProfileQRCode_upvr = dependencies.ProfileQRCode
local llama_upvr = dependencies.llama
local Contexts_upvr = dependencies.SocialLuaAnalytics.Analytics.Enums.Contexts
return function(arg1) -- Line 10
	--[[ Upvalues[5]:
		[1]: FriendsLandingContext_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ProfileQRCode_upvr (readonly)
		[4]: llama_upvr (readonly)
		[5]: Contexts_upvr (readonly)
	]]
	return Roact_upvr.createElement(ProfileQRCode_upvr.ProfileQRCodeEntryPoint, llama_upvr.Dictionary.join(arg1, {
		onClose = function() -- Line 16, Named "onClose"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.navigation.goBack()
		end;
		source = Contexts_upvr.AddFriends;
		robloxEventReceiver = FriendsLandingContext_upvr.useContext().robloxEventReceiver;
	}))
end