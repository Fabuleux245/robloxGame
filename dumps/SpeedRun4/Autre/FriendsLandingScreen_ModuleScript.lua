-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:03
-- Luau version 6, Types version 3
-- Time taken: 0.000896 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Roact_upvr = require(FriendsLanding.dependencies).Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendsLandingScreen")
any_extend_result1.defaultProps = {
	friends = {};
}
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local FriendsLandingContainer_upvr = require(FriendsLanding.Components.FriendsLandingContainer)
function any_extend_result1.render(arg1) -- Line 13
	--[[ Upvalues[3]:
		[1]: FriendsLandingContext_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FriendsLandingContainer_upvr (readonly)
	]]
	return FriendsLandingContext_upvr.with(function(arg1_2) -- Line 14
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FriendsLandingContainer_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(FriendsLandingContainer_upvr, {})
	end)
end
return any_extend_result1