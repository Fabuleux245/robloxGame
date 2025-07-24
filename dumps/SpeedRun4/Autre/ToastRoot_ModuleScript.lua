-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:38
-- Luau version 6, Types version 3
-- Time taken: 0.004623 seconds

local SocialContextToasts = script:FindFirstAncestor("SocialContextToasts")
local Parent = SocialContextToasts.Parent
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local GetFFlagSocialContextToastEventStream_upvr = require(Parent.SharedFlags).GetFFlagSocialContextToastEventStream
local Cryo_upvr = require(Parent.Cryo)
local ToastTypes_upvr = require(SocialContextToasts.Enums.ToastTypes)
local React_upvr = require(Parent.React)
local ToastWrapper_upvr = require(SocialContextToasts.ToastWrapper)
local ButtonType_upvr = require(Parent.UIBlox).App.Button.Enum.ButtonType
local GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr = require(Parent.SharedFlags).GetFFlagEnableReferredPlayerJoinRemoteEvent
return function(arg1) -- Line 44, Named "ToastRoot"
	--[[ Upvalues[8]:
		[1]: useSelector_upvr (readonly)
		[2]: GetFFlagSocialContextToastEventStream_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: ToastTypes_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: ToastWrapper_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
		[8]: GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 45
		return arg1_2.ToastContent
	end)
	local var21
	if GetFFlagSocialContextToastEventStream_upvr() then
		var21 = Cryo_upvr.Dictionary.join
		var21 = var21(arg1.analyticsProps, {
			toastType = useSelector_upvr_result1.toastType;
		})
	else
		var21 = nil
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.None then
		return nil
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.YouJoinedFriends then
		local var23
		local userList = useSelector_upvr_result1.userList
		if #userList == 1 then
			var23 = {
				label = {
					FRIEND_NAME = userList[1].name;
					"Feature.SocialContextToast.Message.YouJoinedOneFriend"
				};
			}
		elseif #userList == 2 then
			var23 = {
				label = {
					FRIEND_NAME_ONE = userList[1].name;
					FRIEND_NAME_TWO = userList[2].name;
					"Feature.SocialContextToast.Message.YouJoinedTwoFriends"
				};
			}
		elseif 2 < #userList then
			var23 = {
				label = {
					FRIEND_NAME = userList[1].name;
					FRIEND_COUNT = #userList - 1;
					"Feature.SocialContextToast.Message.YouJoinedManyFriends"
				};
			}
		end
		local tbl = {}
		for i, _ in userList do
			table.insert(tbl, userList[i].userId)
			local _
		end
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = var23;
			userIdList = tbl;
			analyticsProps = var21;
		})
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.FriendJoinedYou then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = {
					FRIEND_NAME = useSelector_upvr_result1.joinerName;
					"Feature.SocialContextToast.Message.FriendJoinedYou"
				};
			};
			userIdList = {useSelector_upvr_result1.joinerUserId};
			analyticsProps = var21;
		})
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.FriendInNonRootPlace then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = {
					FRIEND_NAME = useSelector_upvr_result1.joinerName;
					"Feature.SocialContextToast.Message.FriendInNonRootPlace"
				};
			};
			userIdList = {useSelector_upvr_result1.joinerUserId};
			analyticsProps = var21;
		})
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.FollowYourFriend then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = {
					FRIEND_NAME = useSelector_upvr_result1.joinerName;
					EXPERIENCE_NAME = useSelector_upvr_result1.experienceName;
					"Feature.SocialContextToast.Message.FollowedFriendInOtherUniverse"
				};
				button = "Feature.SocialContextToast.Action.JoinFriend";
			};
			userIdList = {useSelector_upvr_result1.joinerUserId};
			onActivated = useSelector_upvr_result1.onActivated;
			buttonType = ButtonType_upvr.PrimaryContextual;
			analyticsProps = var21;
		})
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.InviteBack then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = {
					FRIEND_NAME = useSelector_upvr_result1.joinerName;
					"Feature.SocialContextToast.Message.FollowedFriendNotInGame"
				};
				button = "Feature.SocialContextToast.Action.InviteBack";
			};
			userIdList = {useSelector_upvr_result1.joinerUserId};
			onActivated = useSelector_upvr_result1.onActivated;
			areUsersActive = false;
			analyticsProps = var21;
		})
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.InviteSuccess then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = "Feature.SocialContextToast.Message.InvitationConfirmation";
			};
			analyticsProps = var21;
		})
	end
	if useSelector_upvr_result1.toastType == ToastTypes_upvr.InviteFailure then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = "Feature.SocialContextToast.Message.InvitationFailure";
			};
			analyticsProps = var21;
		})
	end
	if GetFFlagEnableReferredPlayerJoinRemoteEvent_upvr() and useSelector_upvr_result1.toastType == ToastTypes_upvr.InviteeJoinedYou then
		return React_upvr.createElement(ToastWrapper_upvr, {
			toastStrings = {
				label = {
					INVITEE_NAME = useSelector_upvr_result1.joinerName;
					"Feature.SocialContextToast.Message.InviteeJoinedYou"
				};
			};
			userIdList = {useSelector_upvr_result1.joinerUserId};
			analyticsProps = var21;
		})
	end
	return nil
end