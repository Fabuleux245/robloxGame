-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:30:25
-- Luau version 6, Types version 3
-- Time taken: 0.001429 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").dependencies)
local t_upvr = dependencies.t
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local llama_upvr = dependencies.llama
local getRbxthumbWithTypeSizeAndOptions_upvr = dependencies.getRbxthumbWithTypeSizeAndOptions
local UserLibConstants_upvr = dependencies.UserLibConstants
local RoduxPresence_upvr = dependencies.RoduxPresence
return function(arg1) -- Line 11
	--[[ Upvalues[6]:
		[1]: t_upvr (readonly)
		[2]: getDeepValue_upvr (readonly)
		[3]: llama_upvr (readonly)
		[4]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[5]: UserLibConstants_upvr (readonly)
		[6]: RoduxPresence_upvr (readonly)
	]]
	return function(arg1_2) -- Line 12
		--[[ Upvalues[7]:
			[1]: t_upvr (copied, readonly)
			[2]: getDeepValue_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: llama_upvr (copied, readonly)
			[5]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
			[6]: UserLibConstants_upvr (copied, readonly)
			[7]: RoduxPresence_upvr (copied, readonly)
		]]
		assert(t_upvr.string(arg1_2))
		local getDeepValue_upvr_result1 = getDeepValue_upvr(arg1, string.format("FriendsLanding.Friends.byUserId.%s", arg1_2))
		if not getDeepValue_upvr_result1 then
			getDeepValue_upvr_result1 = {}
		end
		local var12_upvr = arg1.FriendsLanding.DeletedUsers or nil
		local VerifiedUsers_upvr = arg1.FriendsLanding.VerifiedUsers
		return llama_upvr.Dictionary.map(getDeepValue_upvr_result1, function(arg1_3) -- Line 18
			--[[ Upvalues[8]:
				[1]: arg1 (copied, readonly)
				[2]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
				[3]: UserLibConstants_upvr (copied, readonly)
				[4]: llama_upvr (copied, readonly)
				[5]: getDeepValue_upvr (copied, readonly)
				[6]: RoduxPresence_upvr (copied, readonly)
				[7]: var12_upvr (readonly)
				[8]: VerifiedUsers_upvr (readonly)
			]]
			local var14
			if arg1.isTest then
				var14 = ""
			else
				var14 = getRbxthumbWithTypeSizeAndOptions_upvr(arg1_3, UserLibConstants_upvr.RbxthumbTypes.Avatar, 352)
			end
			local module_2 = {}
			local var17 = var12_upvr
			if var17 then
				var17 = var12_upvr[arg1_3]
			end
			module_2.isDeleted = var17
			local module = {}
			local var19 = VerifiedUsers_upvr
			if var19 then
				var19 = VerifiedUsers_upvr[arg1_3]
			end
			module.hasVerifiedBadge = var19
			return llama_upvr.Dictionary.join(getDeepValue_upvr(arg1, string.format("FriendsLanding.Users.byUserId.%s", arg1_3)), RoduxPresence_upvr.Selectors.getUserPresenceByUserId(arg1, arg1_3), {
				thumbnail = var14;
			}, module_2, module, {
				isInactiveFriend = getDeepValue_upvr(arg1, `FriendsLanding.InactiveFriends.{arg1_3}`);
			}, {
				friendRank = getDeepValue_upvr(arg1, `FriendsLanding.Friends.friendsRankByUserId.{arg1.LocalUserId}.{arg1_3}`);
			})
		end)
	end
end