-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:18
-- Luau version 6, Types version 3
-- Time taken: 0.004252 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local module_upvr = {
	removeConnection = "CommonUI.Features.Label.RemoveConnection";
	connectionRequest = "InGame.PlayerDropDown.Action.ConnectionRequest";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendDropDownButton")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.integer;
	playerRelationship = t.strictInterface({
		isBlocked = t.boolean;
		friendStatus = t.enum(Enum.FriendStatus);
		isFollowing = t.boolean;
		isFollower = t.boolean;
	});
	selectedPlayer = t.optional(t.instanceIsA("Player"));
	dropDownOpen = t.boolean;
	requestFriendship = t.callback;
	contentVisible = t.boolean;
})
local Images_upvr = require(CorePackages.Packages.UIBlox).App.ImageSet.Images
local FFlagRenameFriendsToConnectionsCoreUI_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagRenameFriendsToConnectionsCoreUI
local UniversalAppPolicy_upvr = require(CorePackages.Workspace.Packages.UniversalAppPolicy)
local Localization_upvr = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local function getFriendTextAndIcon_upvr(arg1) -- Line 45, Named "getFriendTextAndIcon"
	--[[ Upvalues[7]:
		[1]: Images_upvr (readonly)
		[2]: FFlagRenameFriendsToConnectionsCoreUI_upvr (readonly)
		[3]: UniversalAppPolicy_upvr (readonly)
		[4]: Localization_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: RobloxTranslator_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local icons_actions_friends_friendAdd = Images_upvr["icons/actions/friends/friendAdd"]
	local icons_actions_friends_friendRemove = Images_upvr["icons/actions/friends/friendRemove"]
	local var16 = FFlagRenameFriendsToConnectionsCoreUI_upvr
	if var16 then
		var16 = UniversalAppPolicy_upvr.getAppFeaturePolicies().getRenameFriendsToConnections()
	end
	if var16 then
	end
	if arg1 == Enum.FriendStatus.Friend then
		if var16 then
			return Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId):Format(module_upvr.removeConnection), icons_actions_friends_friendRemove
		end
		return RobloxTranslator_upvr:FormatByKey("PlayerDropDown.Unfriend"), icons_actions_friends_friendRemove
	end
	if arg1 == Enum.FriendStatus.Unknown or arg1 == Enum.FriendStatus.NotFriend then
		if var16 then
			return Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId):Format(module_upvr.connectionRequest), icons_actions_friends_friendAdd
		end
		return RobloxTranslator_upvr:FormatByKey("PlayerDropDown.FriendRequest"), icons_actions_friends_friendAdd
	end
	if arg1 == Enum.FriendStatus.FriendRequestSent then
		return RobloxTranslator_upvr:FormatByKey("PlayerDropDown.CancelRequest"), icons_actions_friends_friendAdd
	end
	if arg1 == Enum.FriendStatus.FriendRequestReceived then
		return RobloxTranslator_upvr:FormatByKey("PlayerDropDown.Accept"), icons_actions_friends_friendAdd
	end
	if var16 then
		return Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId):Format(module_upvr.connectionRequest), icons_actions_friends_friendAdd
	end
	return RobloxTranslator_upvr:FormatByKey("PlayerDropDown.Friend Request"), icons_actions_friends_friendAdd
end
function any_extend_result1.init(arg1) -- Line 80
	arg1.state = {
		unfriendConfirm = false;
	}
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local DropDownButtonAnimator_upvr = require(script.Parent.DropDownButtonAnimator)
function any_extend_result1.render(arg1) -- Line 86
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: getFriendTextAndIcon_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: DropDownButtonAnimator_upvr (readonly)
	]]
	local playerRelationship_upvr = arg1.props.playerRelationship
	local selectedPlayer_upvr = arg1.props.selectedPlayer
	local var24
	if playerRelationship_upvr.friendStatus == Enum.FriendStatus.Friend and not arg1.state.unfriendConfirm then
		function var24() -- Line 92
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				unfriendConfirm = true;
			})
		end
	else
		var24 = function() -- Line 98
			--[[ Upvalues[5]:
				[1]: playerRelationship_upvr (readonly)
				[2]: LocalPlayer_upvr (copied, readonly)
				[3]: selectedPlayer_upvr (readonly)
				[4]: arg1 (readonly)
				[5]: RbxAnalyticsService_upvr (copied, readonly)
			]]
			if playerRelationship_upvr.friendStatus == Enum.FriendStatus.Friend then
				LocalPlayer_upvr:RevokeFriendship(selectedPlayer_upvr)
				return
			end
			if playerRelationship_upvr.friendStatus == Enum.FriendStatus.Unknown or playerRelationship_upvr.friendStatus == Enum.FriendStatus.NotFriend then
				arg1.props.requestFriendship(selectedPlayer_upvr, false)
				return
			end
			if playerRelationship_upvr.friendStatus == Enum.FriendStatus.FriendRequestSent then
				RbxAnalyticsService_upvr:ReportCounter("PlayerDropDown-RevokeFriendship")
				RbxAnalyticsService_upvr:TrackEvent("Game", "RevokeFriendship", "PlayerDropDown")
				LocalPlayer_upvr:RevokeFriendship(selectedPlayer_upvr)
				return
			end
			if playerRelationship_upvr.friendStatus == Enum.FriendStatus.FriendRequestReceived then
				RbxAnalyticsService_upvr:ReportCounter("PlayerDropDown-RequestFriendship")
				RbxAnalyticsService_upvr:TrackEvent("Game", "RequestFriendship", "PlayerDropDown")
				arg1.props.requestFriendship(selectedPlayer_upvr, true)
			end
		end
	end
	local var28
	if playerRelationship_upvr.friendStatus == Enum.FriendStatus.FriendRequestReceived then
		function var28() -- Line 120
			--[[ Upvalues[2]:
				[1]: LocalPlayer_upvr (copied, readonly)
				[2]: selectedPlayer_upvr (readonly)
			]]
			LocalPlayer_upvr:RevokeFriendship(selectedPlayer_upvr)
		end
	end
	local var30
	if arg1.state.unfriendConfirm then
		function var30() -- Line 126
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				unfriendConfirm = false;
			})
		end
	end
	local getFriendTextAndIcon_upvr_result1, getFriendTextAndIcon_result2 = getFriendTextAndIcon_upvr(playerRelationship_upvr.friendStatus)
	return Roact_upvr.createElement(DropDownButtonAnimator_upvr, {
		layoutOrder = arg1.props.layoutOrder;
		text = getFriendTextAndIcon_upvr_result1;
		icon = getFriendTextAndIcon_result2;
		lastButton = false;
		onActivated = var24;
		forceShowOptions = arg1.state.unfriendConfirm;
		selectedPlayer = selectedPlayer_upvr;
		onDecline = var28;
		onDismiss = var30;
		contentVisible = arg1.props.contentVisible;
	})
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 148
	if arg2.playerRelationship.friendStatus ~= arg1.props.playerRelationship.friendStatus then
		arg1:setState({
			unfriendConfirm = false;
		})
	end
	if arg2.selectedPlayer ~= arg1.props.selectedPlayer or arg2.dropDownOpen ~= arg1.props.dropDownOpen then
		arg1:setState({
			unfriendConfirm = false;
		})
	end
end
return any_extend_result1