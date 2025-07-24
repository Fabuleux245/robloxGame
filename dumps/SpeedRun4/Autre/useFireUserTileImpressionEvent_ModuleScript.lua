-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:15
-- Luau version 6, Types version 3
-- Time taken: 0.003424 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local useFireAnalyticsEvent_upvr = require(script.Parent.useFireAnalyticsEvent)
local React_upvr = require(Parent.React)
local RecommendationContextType_upvr = require(FriendsLanding.AddFriends.Redux.RoduxFriends).Enums.RecommendationContextType
local getRecommendationContextualInfoType_upvr = require(Parent.SocialCommon).Utils.getRecommendationContextualInfoType
local EntityTypes_upvr = require(Parent.SocialLuaAnalytics).Analytics.Enums.EntityTypes
local EventNames_upvr = require(script.Parent.EventNames)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function(arg1, arg2, arg3) -- Line 19
	--[[ Upvalues[7]:
		[1]: useFireAnalyticsEvent_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: RecommendationContextType_upvr (readonly)
		[4]: getRecommendationContextualInfoType_upvr (readonly)
		[5]: EntityTypes_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
	]]
	local var4_result1_upvr = useFireAnalyticsEvent_upvr()
	return React_upvr.useCallback(function(arg1_2) -- Line 22
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: RecommendationContextType_upvr (copied, readonly)
			[3]: getRecommendationContextualInfoType_upvr (copied, readonly)
			[4]: EntityTypes_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: var4_result1_upvr (readonly)
			[7]: EventNames_upvr (copied, readonly)
			[8]: arg3 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var41
		for _, v in ipairs(arg1_2) do
			local var42 = arg1[v]
			if var42 then
				local contextType_2 = var42.contextType
				if contextType_2 then
					if var42.contextType ~= RecommendationContextType_upvr.Contacts then
						contextType_2 = false
					else
						contextType_2 = true
					end
				end
				local id = var42.id
				if not id then
					if not var42.entityId then
					end
				end
				var41 = var41..""..','
				local var45 = getRecommendationContextualInfoType_upvr(var42) or ""
				if contextType_2 then
					var45 = EntityTypes_upvr.Contact
				else
					var45 = ""
				end
			end
		end
		local tbl_2 = {}
		tbl_2.namespace = arg3
		tbl_2.targetUserId = var41
		tbl_2.absolutePosition = ""..v..','
		tbl_2.rank = ""..(var42.rank or "")..','
		tbl_2.contextType = ""..var45..','
		tbl_2.entityType = ""..var45..','
		tbl_2.rowInSort = ""..(math.floor((v - 1) / arg2) + 1)..','
		var4_result1_upvr(EventNames_upvr.UserTileImpression, tbl_2)
	end, dependencyArray_upvr(var4_result1_upvr, arg1, arg2, arg3))
end