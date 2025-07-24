-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:12
-- Luau version 6, Types version 3
-- Time taken: 0.001035 seconds

local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Parent = SocialCommon.Parent
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local getMutualFriendsText_upvr = require(SocialCommon.Utils.getMutualFriendsText)
return function(arg1) -- Line 17
	--[[ Upvalues[5]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: getMutualFriendsText_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 64 start (CF ANALYSIS FAILED)
	local var9
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var9 = useAppPolicy_upvr
		var9 = var9(function(arg1_2) -- Line 19
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var9 = nil
	end
	if FFlagFriendsRenameSocgraph_upvr and var9 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [19] #20
	end
	-- KONSTANTERROR: [0] 1. Error Block 64 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 19. Error Block 69 start (CF ANALYSIS FAILED)
	;({}).singularMutualFriend = "Feature.Friends.Label.SingularMutualFriend"
	if FFlagFriendsRenameSocgraph_upvr and var9 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [29] #29
	end
	-- KONSTANTERROR: [18] 19. Error Block 69 end (CF ANALYSIS FAILED)
end