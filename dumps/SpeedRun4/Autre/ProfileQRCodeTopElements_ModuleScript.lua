-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:23
-- Luau version 6, Types version 3
-- Time taken: 0.001794 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Parent = ProfileQRCode.Parent
local UIBlox = require(Parent.UIBlox)
local getFStringProfileQRCodeFriendRequestAlertsLayer_upvr = require(ProfileQRCode.Flags.getFStringProfileQRCodeFriendRequestAlertsLayer)
local FFlagFriendsRenameSocgraph_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraph
local FFlagFriendsRenameSocgraphEnabledForAll_upvr = require(Parent.SharedFlags).FFlagFriendsRenameSocgraphEnabledForAll
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local TextKeys_upvr = require(ProfileQRCode.Common.TextKeys)
local useAnalytics_upvr = require(ProfileQRCode.Analytics.useAnalytics)
local React_upvr = require(Parent.React)
local IXPService_upvr = game:GetService("IXPService")
local Cryo_upvr = require(Parent.Cryo)
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useGetUsersInfoUrl_upvr = require(ProfileQRCode.Networking.useGetUsersInfoUrl)
local useAcceptFriendUrl_upvr = require(ProfileQRCode.Networking.useAcceptFriendUrl)
local SignalREvents_upvr = require(ProfileQRCode.Common.SignalREvents)
local FriendsNetworking_upvr = require(Parent.FriendsNetworking)
local ProfileQRCodeTopBar_upvr = require(ProfileQRCode.Components.ProfileQRCodeTopBar)
local Toast_upvr = UIBlox.App.Dialog.Toast
local icons_actions_friends_friendAdd_upvr = UIBlox.App.ImageSet.Images["icons/actions/friends/friendAdd"]
local QRCodeFriendRequestNotification_upvr = require(ProfileQRCode.Components.QRCodeFriendRequestNotification)
local EventNames_upvr = require(ProfileQRCode.Analytics.EventNames)
local getFStringProfileQRCodeFriendRequestAlertsExperimentKey_upvr = require(ProfileQRCode.Flags.getFStringProfileQRCodeFriendRequestAlertsExperimentKey)
return require(Parent.RoactAppExperiment).connectUserLayer({getFStringProfileQRCodeFriendRequestAlertsLayer_upvr()}, function(arg1, arg2) -- Line 204
	--[[ Upvalues[2]:
		[1]: getFStringProfileQRCodeFriendRequestAlertsLayer_upvr (readonly)
		[2]: getFStringProfileQRCodeFriendRequestAlertsExperimentKey_upvr (readonly)
	]]
	local var30 = arg1[getFStringProfileQRCodeFriendRequestAlertsLayer_upvr()]
	if not var30 then
		var30 = {}
	end
	return {
		profileQRCodeFriendRequestAlertsEnabled = var30[getFStringProfileQRCodeFriendRequestAlertsExperimentKey_upvr()];
	}
end, false)(function(arg1) -- Line 53
	--[[ Upvalues[20]:
		[1]: FFlagFriendsRenameSocgraph_upvr (readonly)
		[2]: FFlagFriendsRenameSocgraphEnabledForAll_upvr (readonly)
		[3]: useAppPolicy_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: TextKeys_upvr (readonly)
		[6]: useAnalytics_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: IXPService_upvr (readonly)
		[9]: getFStringProfileQRCodeFriendRequestAlertsLayer_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: useLocalUserId_upvr (readonly)
		[12]: useGetUsersInfoUrl_upvr (readonly)
		[13]: useAcceptFriendUrl_upvr (readonly)
		[14]: SignalREvents_upvr (readonly)
		[15]: FriendsNetworking_upvr (readonly)
		[16]: ProfileQRCodeTopBar_upvr (readonly)
		[17]: Toast_upvr (readonly)
		[18]: icons_actions_friends_friendAdd_upvr (readonly)
		[19]: QRCodeFriendRequestNotification_upvr (readonly)
		[20]: EventNames_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local var25
	if FFlagFriendsRenameSocgraph_upvr and not FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		var25 = useAppPolicy_upvr
		var25 = var25(function(arg1_2) -- Line 55
			return arg1_2.getRenameFriendsToConnections()
		end)
	else
		var25 = nil
	end
	if FFlagFriendsRenameSocgraph_upvr then
		-- KONSTANTWARNING: GOTO [18] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 16. Error Block 35 start (CF ANALYSIS FAILED)
	;({}).description = TextKeys_upvr.Description
	if FFlagFriendsRenameSocgraph_upvr and var25 or FFlagFriendsRenameSocgraphEnabledForAll_upvr then
		-- KONSTANTWARNING: GOTO [32] #29
	end
	-- KONSTANTERROR: [15] 16. Error Block 35 end (CF ANALYSIS FAILED)
end)