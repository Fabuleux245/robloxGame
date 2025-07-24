-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:23
-- Luau version 6, Types version 3
-- Time taken: 0.003751 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local Responsive_upvr = require(Parent.Responsive)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useEffect_upvr = React_upvr.useEffect
local NetworkingFriends_upvr = require(AppChat.Http.NetworkingFriends)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local useIsInExperience_upvr = require(AppChat.Hooks.useIsInExperience)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatDisablePCMExperienceCTAs", false)
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("AppChatDisablePCMExperienceCTAsInExp", false)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local Component_upvr = require(Parent.PlayerContextualMenu).Component
local convertUserPresenceTypeToString_upvr = require(Parent.SocialCommon).Utils.convertUserPresenceTypeToString
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local Images_upvr = UIBlox.App.ImageSet.Images
local game_DefineFastFlag_result1_upvr_3 = game:DefineFastFlag("UseBreakpointForPCM", false)
function PlayerContextualMenuWrapper(arg1) -- Line 41
	--[[ Upvalues[16]:
		[1]: useDispatch_upvr (readonly)
		[2]: Responsive_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: useEffect_upvr (readonly)
		[5]: NetworkingFriends_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: useIsInExperience_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr (readonly)
		[9]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[10]: React_upvr (readonly)
		[11]: Interactable_upvr (readonly)
		[12]: Component_upvr (readonly)
		[13]: convertUserPresenceTypeToString_upvr (readonly)
		[14]: any_new_result1_upvr (readonly)
		[15]: Images_upvr (readonly)
		[16]: game_DefineFastFlag_result1_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	local var21 = useSelector_upvr(function(arg1_2) -- Line 45
		return arg1_2.ChatAppReducer.Presence.byUserId
	end)[arg1.participantId]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	useEffect_upvr(function() -- Line 55
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: NetworkingFriends_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		useDispatch_upvr_result1_upvr(NetworkingFriends_upvr.GetExtendedFriendshipStatus.API({
			targetUserId = arg1.participantId;
		}))
	end, dependencyArray_upvr(arg1.participantId))
	local var26
	if game_DefineFastFlag_result1_upvr then
		var26 = false
		-- KONSTANTWARNING: GOTO [47] #42
	end
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 34. Error Block 50 start (CF ANALYSIS FAILED)
	if game_DefineFastFlag_result1_upvr_2 then
		if useIsInExperience_upvr() then
			var26 = false
		else
			var26 = true
		end
	else
		var26 = true
	end
	local module = {}
	local tbl = {
		enableExperienceCTAs = var26;
	}
	if var21 then
		local tbl_3 = {
			locationString = var21.lastLocation;
			locationPlaceId = var21.placeId;
			locationRootPlaceId = var21.rootPlaceId;
			locationUniverseId = var21.universeId;
			status = convertUserPresenceTypeToString_upvr(var21.userPresenceType);
		}
	else
	end
	tbl.subjectPresence = nil
	tbl.subjectUserId = arg1.participantId
	tbl.robloxFriendshipStatus = useSelector_upvr(function(arg1_3) -- Line 50
		return arg1_3.ChatAppReducer.Friends.friendshipStatus
	end)[arg1.participantId]
	function tbl.closeCentralOverlayThunk() -- Line 86
	end
	if arg1.openReportUser then
	end
	function tbl.onReportActivated() -- Line 87
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		any_new_result1_upvr:info("User activated reportUser | userId: {}, conversationId: {}", arg1.participantId, arg1.conversationId)
		arg1.openReportUser(arg1.participantId, arg1.conversationId)
	end
	local onActivated
	if arg1.showRemoveUserButton then
		local tbl_2 = {}
		onActivated = Images_upvr["icons/actions/leave"]
		tbl_2.icon = onActivated
		onActivated = arg1.removeFromGroupText
		tbl_2.text = onActivated
		function onActivated() -- Line 100
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.openRemoveUserDialog(arg1.participantId, arg1.conversationId)
		end
		tbl_2.onActivated = onActivated
		;({})[1] = tbl_2
	else
	end
	tbl.additionalButtons = nil
	if game_DefineFastFlag_result1_upvr_3 then
		if Responsive_upvr.useBreakpointXOrSmaller(Responsive_upvr.Keys.Small) then
			onActivated = 300
		else
			onActivated = 400
		end
	else
	end
	tbl.width = nil
	module.PCM = React_upvr.createElement(Component_upvr, tbl)
	do
		return React_upvr.createElement(Interactable_upvr, {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			onStateChanged = function() -- Line 70, Named "onStateChanged"
			end;
			[React_upvr.Event.Activated] = arg1.onDismiss;
		}, module)
	end
	-- KONSTANTERROR: [39] 34. Error Block 50 end (CF ANALYSIS FAILED)
end
return React_upvr.memo(PlayerContextualMenuWrapper)