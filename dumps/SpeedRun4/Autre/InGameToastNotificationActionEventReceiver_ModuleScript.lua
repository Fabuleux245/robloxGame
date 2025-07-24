-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:39
-- Luau version 6, Types version 3
-- Time taken: 0.001620 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local useProperty_upvr = require(Parent.GuiObjectUtils).useProperty
local Players_upvr = game:GetService("Players")
local React_upvr = require(Parent.React)
local LifecycleEvents_upvr = require(script.Parent.utils.LifecycleEvents)
local NotificationTypeEnum_upvr = require(Parent_2.type).NotificationTypeEnum
local HttpService_upvr = game:GetService("HttpService")
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
return function() -- Line 19, Named "InGameToastNotificationActionEventReceiver"
	--[[ Upvalues[7]:
		[1]: useProperty_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: LifecycleEvents_upvr (readonly)
		[5]: NotificationTypeEnum_upvr (readonly)
		[6]: HttpService_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
	]]
	local var3_result1_upvr = useProperty_upvr(Players_upvr, "LocalPlayer")
	React_upvr.useEffect(function() -- Line 22
		--[[ Upvalues[5]:
			[1]: LifecycleEvents_upvr (copied, readonly)
			[2]: NotificationTypeEnum_upvr (copied, readonly)
			[3]: HttpService_upvr (copied, readonly)
			[4]: var3_result1_upvr (readonly)
			[5]: Players_upvr (copied, readonly)
		]]
		local any_RegisterCallback_result1_upvr = LifecycleEvents_upvr:RegisterCallback(LifecycleEvents_upvr.ToastEvents.UserAction, NotificationTypeEnum_upvr.FriendRequestReceived, function(arg1) -- Line 26
			--[[ Upvalues[3]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: var3_result1_upvr (copied, readonly)
				[3]: Players_upvr (copied, readonly)
			]]
			if arg1 and arg1.userActionType == "click" and arg1.notificationData then
				if arg1.visualItem then
					local senderUserId = HttpService_upvr:JSONDecode(arg1.visualItem.actionEventParams).senderUserId
					if senderUserId and var3_result1_upvr then
						local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(tonumber(senderUserId))
						if arg1.visualItem.eventName == "AcceptFriend" then
							var3_result1_upvr:RequestFriendship(any_GetPlayerByUserId_result1)
							return
						end
						if arg1.visualItem.eventName == "IgnoreFriend" then
							var3_result1_upvr:RevokeFriendship(any_GetPlayerByUserId_result1)
						end
					end
				end
			end
		end)
		return function() -- Line 46
			--[[ Upvalues[1]:
				[1]: any_RegisterCallback_result1_upvr (readonly)
			]]
			any_RegisterCallback_result1_upvr()
		end
	end, dependencyArray_upvr(var3_result1_upvr))
end