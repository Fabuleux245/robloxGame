-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:52
-- Luau version 6, Types version 3
-- Time taken: 0.005019 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local FriendsMenu = require(Parent.FriendsMenu)
local RoactUtils = require(Parent.RoactUtils)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr = require(Parent.SharedFlags).GetFFlagFriendsMenuDummyLoadingFriendsFix
local InviteStatus_upvr = FriendsMenu.InviteStatus
local ReceivedUserInviteStatus_upvr = require(Parent_2.State.Actions.ReceivedUserInviteStatus)
local GameInviteAnalyticsManager_upvr = require(Parent_2.analytics.GameInviteAnalyticsManager)
local PostSendExperienceInvite_upvr = require(Parent_2.Requests.PostSendExperienceInvite)
local networkImpl_upvr = require(Parent_2.GameInviteDependencies).networkImpl
local Players_upvr = game:GetService("Players")
local Throttle_upvr = require(Parent.NotificationsCommon).Throttle
local InviteFriendContext_upvr = FriendsMenu.InviteFriendContext
return function(arg1) -- Line 41
	--[[ Upvalues[12]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr (readonly)
		[5]: InviteStatus_upvr (readonly)
		[6]: ReceivedUserInviteStatus_upvr (readonly)
		[7]: GameInviteAnalyticsManager_upvr (readonly)
		[8]: PostSendExperienceInvite_upvr (readonly)
		[9]: networkImpl_upvr (readonly)
		[10]: Players_upvr (readonly)
		[11]: Throttle_upvr (readonly)
		[12]: InviteFriendContext_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(0)
	local var8_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 46
		return arg1_2.GameInvitesStatus
	end)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	return React_upvr.createElement(InviteFriendContext_upvr.Provider, {
		value = {
			inviteSingleFriend = Throttle_upvr(function(arg1_3, arg2) -- Line 54
				--[[ Upvalues[11]:
					[1]: any_useRef_result1_upvr (readonly)
					[2]: GetFFlagFriendsMenuDummyLoadingFriendsFix_upvr (copied, readonly)
					[3]: var8_result1_upvr (readonly)
					[4]: InviteStatus_upvr (copied, readonly)
					[5]: arg1 (readonly)
					[6]: useDispatch_upvr_result1_upvr (readonly)
					[7]: ReceivedUserInviteStatus_upvr (copied, readonly)
					[8]: GameInviteAnalyticsManager_upvr (copied, readonly)
					[9]: PostSendExperienceInvite_upvr (copied, readonly)
					[10]: networkImpl_upvr (copied, readonly)
					[11]: Players_upvr (copied, readonly)
				]]
				any_useRef_result1_upvr.current = math.max(arg2, any_useRef_result1_upvr.current)
				local var24
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var24 = tonumber(arg1_3)
					return var24
				end
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var24 = tonumber(arg1_3)
					return var24 == 0
				end
				if var24 and (not arg1_3 or arg1_3 == "" or not INLINED() or INLINED_2()) then
				else
					var24 = var8_result1_upvr[arg1_3]
					local function INLINED_3() -- Internal function, doesn't exist in bytecode
						var24 = var8_result1_upvr[arg1_3]
						return var24 ~= InviteStatus_upvr.Failed
					end
					local function INLINED_4() -- Internal function, doesn't exist in bytecode
						var24 = var8_result1_upvr[arg1_3]
						return var24 == InviteStatus_upvr.Pending
					end
					if var24 and (INLINED_3() or INLINED_4()) then return end
					var24 = nil
					if arg1.isCoreScript then
						var24 = tostring(game.PlaceId)
					else
						local rootPlaceId = arg1.rootPlaceId
						if not rootPlaceId then
							rootPlaceId = tostring(game.PlaceId)
						end
						var24 = rootPlaceId
					end
					if var24 == '0' then
						warn("Game Invite failed to send. Cannot send invite to unpublished Place.")
						useDispatch_upvr_result1_upvr(ReceivedUserInviteStatus_upvr(arg1_3, InviteStatus_upvr.Failed))
						return
					end
					local var26_upvr = false
					if arg1.launchData ~= nil then
						if arg1.launchData == "" then
							var26_upvr = false
						else
							var26_upvr = true
						end
					end
					local var27_upvr = false
					if arg1.promptMessage ~= nil then
						if arg1.promptMessage == "" then
							var27_upvr = false
						else
							var27_upvr = true
						end
					end
					local var28_upvr = false
					if arg1.inviteMessageId ~= nil then
						if arg1.inviteMessageId == "" then
							var28_upvr = false
						else
							var28_upvr = true
						end
					end
					local tbl = {
						action_type = GameInviteAnalyticsManager_upvr.ActionType.InviteTriggered;
						is_launch_data_provided = var26_upvr;
						is_prompt_customized = var27_upvr;
						is_invite_message_id_provided = var28_upvr;
					}
					tbl.recipient_user_id = arg1_3
					tbl.recipient_row_number = arg2
					GameInviteAnalyticsManager_upvr:sendGameInviteModalEvent(arg1.trigger, tbl)
					useDispatch_upvr_result1_upvr(ReceivedUserInviteStatus_upvr(arg1_3, InviteStatus_upvr.Pending))
					PostSendExperienceInvite_upvr(networkImpl_upvr, arg1_3, var24, arg1.trigger, arg1.inviteMessageId, arg1.launchData):andThen(function(arg1_4) -- Line 101
						--[[ Upvalues[7]:
							[1]: Players_upvr (copied, readonly)
							[2]: arg1_3 (readonly)
							[3]: GameInviteAnalyticsManager_upvr (copied, readonly)
							[4]: arg1 (copied, readonly)
							[5]: useDispatch_upvr_result1_upvr (copied, readonly)
							[6]: ReceivedUserInviteStatus_upvr (copied, readonly)
							[7]: InviteStatus_upvr (copied, readonly)
						]]
						local tbl_3 = {}
						tbl_3[1] = arg1_3
						GameInviteAnalyticsManager_upvr:onActivatedInviteSent(Players_upvr.LocalPlayer.UserId, arg1_4.conversationId, tbl_3, arg1.rootPlaceId, arg1.universeId)
						useDispatch_upvr_result1_upvr(ReceivedUserInviteStatus_upvr(arg1_3, InviteStatus_upvr.Success))
					end, function() -- Line 113
						--[[ Upvalues[10]:
							[1]: GameInviteAnalyticsManager_upvr (copied, readonly)
							[2]: arg1 (copied, readonly)
							[3]: var26_upvr (readonly)
							[4]: var27_upvr (readonly)
							[5]: var28_upvr (readonly)
							[6]: arg1_3 (readonly)
							[7]: arg2 (readonly)
							[8]: useDispatch_upvr_result1_upvr (copied, readonly)
							[9]: ReceivedUserInviteStatus_upvr (copied, readonly)
							[10]: InviteStatus_upvr (copied, readonly)
						]]
						local tbl_2 = {
							action_type = GameInviteAnalyticsManager_upvr.ActionType.InviteFailure;
							is_launch_data_provided = var26_upvr;
							is_prompt_customized = var27_upvr;
							is_invite_message_id_provided = var28_upvr;
						}
						tbl_2.recipient_user_id = arg1_3
						tbl_2.recipient_row_number = arg2
						GameInviteAnalyticsManager_upvr:sendGameInviteModalEvent(arg1.trigger, tbl_2)
						useDispatch_upvr_result1_upvr(ReceivedUserInviteStatus_upvr(arg1_3, InviteStatus_upvr.Failed))
					end)
				end
			end);
			getMaxRecipientRowNum = function() -- Line 50
				--[[ Upvalues[1]:
					[1]: any_useRef_result1_upvr (readonly)
				]]
				return any_useRef_result1_upvr.current
			end;
		};
	}, arg1.children)
end