-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:31
-- Luau version 6, Types version 3
-- Time taken: 0.001730 seconds

local CorePackages = game:GetService("CorePackages")
local UserProfiles_upvr = require(CorePackages.Workspace.Packages.UserProfiles)
local GetFFlagUseUserProfileStore_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagUseUserProfileStore
local UserProfileStore_upvr = UserProfiles_upvr.Stores.UserProfileStore
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local useQuery_upvr = require(CorePackages.Packages.ApolloClient).useQuery
return function(arg1, arg2) -- Line 10, Named "usePlayerCombinedName"
	--[[ Upvalues[5]:
		[1]: GetFFlagUseUserProfileStore_upvr (readonly)
		[2]: UserProfileStore_upvr (readonly)
		[3]: SignalsReact_upvr (readonly)
		[4]: useQuery_upvr (readonly)
		[5]: UserProfiles_upvr (readonly)
	]]
	if GetFFlagUseUserProfileStore_upvr() then
		local module = {}
		module[1] = arg1
		return SignalsReact_upvr.useSignalBinding(UserProfileStore_upvr.get().fetchNamesByUserIds(module)(false).data[1].names.getInExperienceCombinedName):map(function(arg1_2) -- Line 14
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			if string.len(arg1_2) == 0 then
				return arg2
			end
			return arg1_2
		end)
	end
	local userProfilesInExperienceNamesByUserIds = UserProfiles_upvr.Queries.userProfilesInExperienceNamesByUserIds
	local tbl = {}
	local tbl_3 = {}
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_3.userIds = tbl_2
	tbl.variables = tbl_3
	local useQuery_upvr_result1 = useQuery_upvr(userProfilesInExperienceNamesByUserIds, tbl)
	if useQuery_upvr_result1.data then
		userProfilesInExperienceNamesByUserIds = UserProfiles_upvr.Selectors.getInExperienceCombinedNameFromId(useQuery_upvr_result1.data, arg1)
	else
		userProfilesInExperienceNamesByUserIds = nil
	end
	return userProfilesInExperienceNamesByUserIds or arg2
end