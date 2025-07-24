-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:17
-- Luau version 6, Types version 3
-- Time taken: 0.001083 seconds

local SocialCommon = script:FindFirstAncestor("SocialCommon")
local RecommendationContextType_upvr = require(SocialCommon.Enums.RecommendationContextType)
local ContextualInfoTypes_upvr = require(SocialCommon.Enums.ContextualInfoTypes)
return function(arg1) -- Line 11, Named "getRecommendationContextualInfoType"
	--[[ Upvalues[2]:
		[1]: RecommendationContextType_upvr (readonly)
		[2]: ContextualInfoTypes_upvr (readonly)
	]]
	local contextType = arg1.contextType
	if contextType then
		contextType = arg1.contextType.rawValue()
	end
	if contextType == RecommendationContextType_upvr.MutualFriends.rawValue() then
		return ContextualInfoTypes_upvr.MutualFriends
	end
	if contextType == RecommendationContextType_upvr.Frequents.rawValue() then
		return ContextualInfoTypes_upvr.Frequents
	end
	if contextType == RecommendationContextType_upvr.Contacts.rawValue() then
		return ContextualInfoTypes_upvr.Contacts
	end
	return nil
end