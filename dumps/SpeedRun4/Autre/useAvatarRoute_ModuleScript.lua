-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:16
-- Luau version 6, Types version 3
-- Time taken: 0.000627 seconds

local AvatarExperienceNavigation = script:FindFirstAncestor("AvatarExperienceNavigation")
local Parent = AvatarExperienceNavigation.Parent
local React_upvr = require(Parent.React)
local AvatarRouteContext_upvr = require(AvatarExperienceNavigation.AvatarRoute.Context.AvatarRouteContext)
local ArgCheck_upvr = require(Parent.ArgCheck)
return function() -- Line 16, Named "useAvatarRoute"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: AvatarRouteContext_upvr (readonly)
		[3]: ArgCheck_upvr (readonly)
	]]
	return ArgCheck_upvr.isNotNil(React_upvr.useContext(AvatarRouteContext_upvr), "AvatarRouteContext")
end