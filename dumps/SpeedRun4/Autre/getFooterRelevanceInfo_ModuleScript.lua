-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:30
-- Luau version 6, Types version 3
-- Time taken: 0.006583 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Parent = FriendsLanding.Parent
local dependencies = require(FriendsLanding.AddFriends.dependencies)
local t = dependencies.t
local SocialCommon = require(Parent.SocialCommon)
local function _(arg1) -- Line 45
	local var8 = false
	if arg1 ~= nil then
		if 0 >= #arg1 then
			var8 = false
		else
			var8 = true
		end
	end
	return var8
end
local any_strictInterface_result1_upvr = t.strictInterface({
	mutualFriends = t.optional(t.table);
	amIFollowingUser = t.optional(t.boolean);
	isUserFollowingMe = t.optional(t.boolean);
	sentFromExperienceName = t.optional(t.string);
	isFriendRequest = t.boolean;
	isRecommendation = t.optional(t.boolean);
	userPresenceType = t.optional(t.userdata);
	friendStatus = t.optional(t.enum(Enum.FriendStatus));
	lastLocation = t.optional(t.string);
	originSourceType = t.optional(t.string);
	contextType = t.optional(t.userdata);
	mutualFriendsCount = t.optional(t.number);
	hasIncomingFriendRequest = t.optional(t.boolean);
})
local ContactImporterConstants_upvr = dependencies.ContactImporterConstants
local FriendshipOriginSourceType_upvr = dependencies.NetworkingFriendsEnums.FriendshipOriginSourceType
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local getMutualFriendsText_upvr = SocialCommon.Utils.getMutualFriendsText
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local Images_upvr = dependencies.UIBlox.App.ImageSet.Images
local ContextualInfoTypes_upvr = SocialCommon.Enums.ContextualInfoTypes
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local getRecommendationContextualInfoDisplay_upvr = SocialCommon.Utils.getRecommendationContextualInfoDisplay
local getRecommendationContextualInfoType_upvr = SocialCommon.Utils.getRecommendationContextualInfoType
return function(arg1, arg2, arg3, arg4) -- Line 49
	--[[ Upvalues[11]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: ContactImporterConstants_upvr (readonly)
		[3]: FriendshipOriginSourceType_upvr (readonly)
		[4]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[5]: getMutualFriendsText_upvr (readonly)
		[6]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: ContextualInfoTypes_upvr (readonly)
		[9]: PresenceType_upvr (readonly)
		[10]: getRecommendationContextualInfoDisplay_upvr (readonly)
		[11]: getRecommendationContextualInfoType_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	assert(any_strictInterface_result1_upvr(arg1))
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 167 start (CF ANALYSIS FAILED)
	if arg3.contactNameText then
		return {
			text = arg3.contactNameText;
			fontStyle = arg2.Font.CaptionBody;
		}, "HaveContact"
	end
	if arg1.originSourceType == ContactImporterConstants_upvr.PHONE_CONTACT_IMPORTER then
		return {
			text = arg3.fromContactsText;
			fontStyle = arg2.Font.CaptionBody;
		}, "FromCI"
	end
	if arg1.originSourceType == FriendshipOriginSourceType_upvr.QrCode.rawValue() then
		local tbl_2 = {
			text = arg3.foundThroughQRCode;
			fontStyle = arg2.Font.CaptionBody;
		}
		return tbl_2, "FRomQR"
	end
	local mutualFriends = arg1.mutualFriends
	tbl_2 = false
	local var25 = tbl_2
	if mutualFriends ~= nil then
		if 0 >= #mutualFriends then
			var25 = false
		else
			var25 = true
			local var26
		end
	end
	if var25 then
		local module_3 = {}
		local var28
		if FFlagFriendsRenameSocgraph_upvr then
			var26 = getMutualFriendsText_upvr
			local tbl = {}
			if not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
				var28 = arg4
			else
				var28 = nil
			end
			tbl.friendsRename = var28
			var28 = #arg1.mutualFriends
			tbl.mutualFriendsCount = var28
			var28 = {}
			if arg4 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			end
			var28.mutualConnections = arg3.mutualConnections
			if arg4 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
			end
			var28.singularMutualConnection = arg3.singularMutualConnection
			local var30 = arg4
			if not var30 then
				var30 = FFlagFriendsRenameSocgraphEnabledForAll_upvr
			end
			if not var30 then
			end
			var28.mutualFriends = arg3.mutualFriends
			var30 = arg4
			local var31 = var30
			if not var31 then
				var31 = FFlagFriendsRenameSocgraphEnabledForAll_upvr
			end
			if not var31 then
			end
			var28.singularMutualFriend = arg3.singularMutualFriend
			tbl.localized = var28
			var26 = var26(tbl)
		else
			var26 = "%d %s"
			var28 = #arg1.mutualFriends
			var26 = var26:format(var28, string.lower(arg3.mutualFriendsText))
		end
		module_3.text = var26
		var26 = arg2.Font.CaptionBody
		module_3.fontStyle = var26
		var26 = Images_upvr["icons/status/player/friend"]
		module_3.icon = var26
		var26 = ContextualInfoTypes_upvr.MutualFriends
		return module_3, var26
	end
	if arg1.sentFromExperienceName ~= nil then
		local module_4 = {}
		var26 = arg3.sentFromWithContextText
		module_4.text = var26
		var26 = arg2.Font.CaptionBody
		module_4.fontStyle = var26
		var26 = "FromExperience"
		return module_4, var26
	end
	if arg1.amIFollowingUser then
		local module = {}
		var26 = arg3.youAreFollowingText
		module.text = var26
		var26 = arg2.Font.CaptionBody
		module.fontStyle = var26
		var26 = Images_upvr["icons/status/player/following"]
		module.icon = var26
		var26 = "FollowingUser"
		return module, var26
	end
	if arg1.isUserFollowingMe then
		local module_2 = {}
		var26 = arg3.followsYouText
		module_2.text = var26
		var26 = arg2.Font.CaptionBody
		module_2.fontStyle = var26
		var26 = Images_upvr["icons/status/player/following"]
		module_2.icon = var26
		var26 = "FollowingMe"
		return module_2, var26
	end
	do
		return nil
	end
	-- KONSTANTERROR: [10] 9. Error Block 167 end (CF ANALYSIS FAILED)
end