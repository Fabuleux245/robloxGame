-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:17
-- Luau version 6, Types version 3
-- Time taken: 0.001229 seconds

local CorePackages = game:GetService("CorePackages")
local ShareGame = game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame
local ReducerDependencies = require(CorePackages.Workspace.Packages.NotificationsCommon).ReducerDependencies
local ConversationsSearch_upvr = require(ShareGame.Reducers.ConversationsSearch)
local DeviceInfo_upvr = require(ShareGame.Reducers.DeviceInfo)
local Invites_upvr = require(ShareGame.Reducers.Invites)
local Page_upvr = require(ShareGame.Reducers.Page)
local PlaceInfosReducer_upvr = require(CorePackages.Workspace.Packages.PlaceInfoRodux).Reducers.PlaceInfosReducer
local Toasts_upvr = require(ShareGame.Reducers.Toasts)
local UserReducer_upvr = require(CorePackages.Workspace.Packages.UserLib).Reducers.UserReducer
local Friends_upvr = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Reducers.Friends
local FriendCount_upvr = require(CorePackages.Workspace.Packages.LegacyFriendsRodux).Reducers.FriendCount
local any_installReducer_result1_upvr_2 = ReducerDependencies.ShareLinksRodux.installReducer()
local GameInfo_upvr = require(ShareGame.Reducers.GameInfo)
local any_installReducer_result1_upvr = ReducerDependencies.RoduxNetworking.installReducer()
return function(arg1, arg2) -- Line 25
	--[[ Upvalues[12]:
		[1]: ConversationsSearch_upvr (readonly)
		[2]: DeviceInfo_upvr (readonly)
		[3]: Invites_upvr (readonly)
		[4]: Page_upvr (readonly)
		[5]: PlaceInfosReducer_upvr (readonly)
		[6]: Toasts_upvr (readonly)
		[7]: UserReducer_upvr (readonly)
		[8]: Friends_upvr (readonly)
		[9]: FriendCount_upvr (readonly)
		[10]: any_installReducer_result1_upvr_2 (readonly)
		[11]: GameInfo_upvr (readonly)
		[12]: any_installReducer_result1_upvr (readonly)
	]]
	local var17 = arg1
	if not var17 then
		var17 = {}
	end
	local var18 = var17
	return {
		ConversationsSearch = ConversationsSearch_upvr(var18.ConversationsSearch, arg2);
		DeviceInfo = DeviceInfo_upvr(var18.DeviceInfo, arg2);
		Invites = Invites_upvr(var18.Invites, arg2);
		Page = Page_upvr(var18.Page, arg2);
		PlaceInfos = PlaceInfosReducer_upvr(var18.PlaceInfos, arg2);
		Toasts = Toasts_upvr(var18.Toasts, arg2);
		Users = UserReducer_upvr(var18.Users, arg2);
		Friends = Friends_upvr(var18.Friends, arg2);
		FriendCount = FriendCount_upvr(var18.FriendCount, arg2);
		ShareLinks = any_installReducer_result1_upvr_2(var18.ShareLinks, arg2);
		GameInfo = GameInfo_upvr(var18.GameInfo, arg2);
		NetworkStatus = any_installReducer_result1_upvr(var18.NetworkStatus, arg2);
	}
end