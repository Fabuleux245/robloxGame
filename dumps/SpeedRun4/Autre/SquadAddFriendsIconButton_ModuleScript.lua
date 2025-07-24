-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:25
-- Luau version 6, Types version 3
-- Time taken: 0.002099 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SquadsCore = require(Parent.SquadsCore)
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useCurrentSquadParentChannelId_upvr = SquadsCore.Hooks.useCurrentSquadParentChannelId
local useGetConversationFromId_upvr = require(AppChat.Hooks.useGetConversationFromId)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useIsFriendRenameActive_upvr = require(AppChat.Hooks.useIsFriendRenameActive)
local Constants_upvr = require(AppChat.Constants)
local EnumScreens_upvr = require(AppChat.EnumScreens)
local EventNames_upvr = SquadsCore.Analytics.EventNames
local SquadInvitePageNavSourceEnum_upvr = require(Parent.Squads).Enums.SquadInvitePageNavSourceEnum
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
return function(arg1) -- Line 30
	--[[ Upvalues[13]:
		[1]: React_upvr (readonly)
		[2]: SquadExternalContractContext_upvr (readonly)
		[3]: useCurrentSquadParentChannelId_upvr (readonly)
		[4]: useGetConversationFromId_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: useIsFriendRenameActive_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: EnumScreens_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: SquadInvitePageNavSourceEnum_upvr (readonly)
		[11]: IconButton_upvr (readonly)
		[12]: Images_upvr (readonly)
		[13]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19_upvr = useCurrentSquadParentChannelId_upvr() or ""
	local var9_result1 = useGetConversationFromId_upvr(var19_upvr)
	local var21
	if not var9_result1 or not var9_result1.participants then
		local tbl_upvr = {}
	end
	local tbl = {}
	local tbl_2 = {}
	if useIsFriendRenameActive_upvr() then
		var21 = "Feature.Chat.Message.AddConnectionsPartyLimit"
	else
		var21 = "Feature.Chat.Message.PartyGroupLimitToastText"
	end
	tbl_2[1] = var21
	tbl_2.friendNum = Constants_upvr.MAX_PARTICIPANT_COUNT
	tbl_2.connectionsNum = Constants_upvr.MAX_PARTICIPANT_COUNT
	tbl.tooManyPeopleText = tbl_2
	local var10_result1_upvr = useLocalization_upvr(tbl)
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	var21 = {}
	var21[1] = var19_upvr
	var21[2] = arg1.navigation
	var21[3] = tbl_upvr
	var21 = React_upvr
	var21 = IconButton_upvr
	return var21.createElement(var21, {
		size = UDim2.fromOffset(0, 0);
		icon = Images_upvr["icons/actions/friends/friendAdd"];
		iconSize = IconSize_upvr.Medium;
		layoutOrder = 0;
		onActivated = React_upvr.useCallback(function() -- Line 47
			--[[ Upvalues[9]:
				[1]: tbl_upvr (readonly)
				[2]: Constants_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: EnumScreens_upvr (copied, readonly)
				[5]: var10_result1_upvr (readonly)
				[6]: any_useContext_result1_upvr (readonly)
				[7]: EventNames_upvr (copied, readonly)
				[8]: SquadInvitePageNavSourceEnum_upvr (copied, readonly)
				[9]: var19_upvr (readonly)
			]]
			if Constants_upvr.MAX_PARTICIPANT_COUNT < #tbl_upvr then
				arg1.navigation.navigate(EnumScreens_upvr.RoactChatToast, {
					toastProps = {
						toastContent = {
							toastTitle = var10_result1_upvr.tooManyPeopleText;
						};
					};
				})
			else
				any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadInvitePageNavSource, {
					inviteNavSource = SquadInvitePageNavSourceEnum_upvr.SquadLobbyAddFriendsIconButtonClicked;
					parentChannelId = var19_upvr;
				})
				arg1.navigation.navigate(EnumScreens_upvr.SquadInviteFriends, {
					conversationId = var19_upvr;
				})
			end
		end, var21);
	})
end