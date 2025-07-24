-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:05
-- Luau version 6, Types version 3
-- Time taken: 0.003531 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_upvr = {
	localUserId = 0;
}
local Cryo_upvr = require(Parent.Cryo)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useEffect_upvr = require(Parent.React).useEffect
local NetworkingPresence_upvr = require(AppChat.Http.NetworkingPresence)
local SetUserPresences_upvr = require(Parent.UserLib).Thunks.SetUserPresences
local any_new_result1_upvr = require(AppChat.Logger):new("AppChat.RealtimeExternal")
local ChatFriendshipDestroyed_upvr = require(AppChat.App.Thunks.ChatFriendshipDestroyed)
local ChatFriendshipCreated_upvr = require(AppChat.App.Thunks.ChatFriendshipCreated)
function ChatExternalEventReceiver(arg1) -- Line 31
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: useEffect_upvr (readonly)
		[5]: NetworkingPresence_upvr (readonly)
		[6]: SetUserPresences_upvr (readonly)
		[7]: any_new_result1_upvr (readonly)
		[8]: ChatFriendshipDestroyed_upvr (readonly)
		[9]: ChatFriendshipCreated_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var5_result1_upvr = useDispatch_upvr()
	useEffect_upvr(function() -- Line 36
		--[[ Upvalues[6]:
			[1]: any_join_result1_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: NetworkingPresence_upvr (copied, readonly)
			[5]: SetUserPresences_upvr (copied, readonly)
			[6]: any_new_result1_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr_2 = any_join_result1_upvr.robloxEventReceiver:observeEvent("PresenceBulkNotifications", function(arg1_2) -- Line 37
			--[[ Upvalues[5]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: var5_result1_upvr (copied, readonly)
				[3]: NetworkingPresence_upvr (copied, readonly)
				[4]: SetUserPresences_upvr (copied, readonly)
				[5]: any_new_result1_upvr (copied, readonly)
			]]
			var5_result1_upvr(NetworkingPresence_upvr.GetPresencesFromUserIds.API(Cryo_upvr.List.map(arg1_2, function(arg1_3) -- Line 38
				return tostring(arg1_3.UserId)
			end))):andThen(function(arg1_4) -- Line 43
				--[[ Upvalues[2]:
					[1]: var5_result1_upvr (copied, readonly)
					[2]: SetUserPresences_upvr (copied, readonly)
				]]
				var5_result1_upvr(SetUserPresences_upvr(arg1_4.responseBody.userPresences))
			end):catch(function(arg1_5) -- Line 46
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:warning("NetworkingPresence failure in ChatExternalEventReceiver->PresenceBulkNotifications, Status: "..tostring(arg1_5))
			end)
		end)
		return function() -- Line 54
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr_2 (readonly)
			]]
			if any_observeEvent_result1_upvr_2 and any_observeEvent_result1_upvr_2.disconnect then
				any_observeEvent_result1_upvr_2:disconnect()
			end
		end
	end, {var5_result1_upvr, any_join_result1_upvr.robloxEventReceiver})
	useEffect_upvr(function() -- Line 62
		--[[ Upvalues[4]:
			[1]: any_join_result1_upvr (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: ChatFriendshipDestroyed_upvr (copied, readonly)
			[4]: ChatFriendshipCreated_upvr (copied, readonly)
		]]
		local any_observeEvent_result1_upvr = any_join_result1_upvr.robloxEventReceiver:observeEvent("FriendshipNotifications", function(arg1_6) -- Line 63
			--[[ Upvalues[4]:
				[1]: any_join_result1_upvr (copied, readonly)
				[2]: var5_result1_upvr (copied, readonly)
				[3]: ChatFriendshipDestroyed_upvr (copied, readonly)
				[4]: ChatFriendshipCreated_upvr (copied, readonly)
			]]
			local var24
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var24 = tostring(arg1_6.EventArgs.UserId2)
				return var24
			end
			if tostring(any_join_result1_upvr.localUserId) ~= tostring(arg1_6.EventArgs.UserId1) or not INLINED() then
				var24 = tostring(arg1_6.EventArgs.UserId1)
			end
			if arg1_6.Type == "FriendshipDestroyed" then
				var5_result1_upvr(ChatFriendshipDestroyed_upvr(var24))
			elseif arg1_6.Type == "FriendshipCreated" then
				var5_result1_upvr(ChatFriendshipCreated_upvr(var24))
			end
		end)
		return function() -- Line 75
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr (readonly)
			]]
			if any_observeEvent_result1_upvr and any_observeEvent_result1_upvr.disconnect then
				any_observeEvent_result1_upvr:disconnect()
			end
		end
	end, {var5_result1_upvr, any_join_result1_upvr.robloxEventReceiver, any_join_result1_upvr.localUserId})
	return nil
end
return ChatExternalEventReceiver