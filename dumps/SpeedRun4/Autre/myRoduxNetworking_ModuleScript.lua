-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:41
-- Luau version 6, Types version 3
-- Time taken: 0.000346 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
return require(Parent.RoduxNetworking).config({
	keyPath = `{require(FriendsLanding.AddFriends.Redux.RODUX_KEY)}.NetworkStatus`;
	networkImpl = require(Parent.GenericChallenges).Middleware.ChallengeRequestWrapper(require(script.Parent.myHttpRequest));
})