-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:57
-- Luau version 6, Types version 3
-- Time taken: 0.001518 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
local getContainsChatSetting_upvr = require(AppChat.Utils.getContainsChatSetting)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local React_upvr = require(Parent.React)
local partyChatTimeoutReceivedSignal_upvr = require(Parent.InterventionShared).Signals.partyChatTimeoutReceivedSignal
return function(arg1) -- Line 15, Named "AppChatInterventionEventReceiver"
	--[[ Upvalues[7]:
		[1]: useDispatch_upvr (readonly)
		[2]: RealtimeDelivery_upvr (readonly)
		[3]: getContainsChatSetting_upvr (readonly)
		[4]: AppChatNetworking_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: partyChatTimeoutReceivedSignal_upvr (readonly)
	]]
	local var3_result1_upvr = useDispatch_upvr()
	RealtimeDelivery_upvr.useRealtimeNamespace("UserSettingsChanged", function(arg1_2) -- Line 17
		--[[ Upvalues[4]:
			[1]: getContainsChatSetting_upvr (copied, readonly)
			[2]: var3_result1_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
		]]
		if arg1_2.SettingsChanged and getContainsChatSetting_upvr(arg1_2.SettingsChanged) then
			var3_result1_upvr(AppChatNetworking_upvr.rodux.GetChatModerationStatuses.API()):catch(function(arg1_3) -- Line 20
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:warning("NetworkingChat failure in UserSettingsChanged->GetChatModerationStatuses, Status: "..tostring(arg1_3))
			end)
		end
	end, {var3_result1_upvr})
	React_upvr.useEffect(function() -- Line 29
		--[[ Upvalues[4]:
			[1]: partyChatTimeoutReceivedSignal_upvr (copied, readonly)
			[2]: var3_result1_upvr (readonly)
			[3]: AppChatNetworking_upvr (copied, readonly)
			[4]: any_new_result1_upvr (copied, readonly)
		]]
		local any_connect_result1_upvr = partyChatTimeoutReceivedSignal_upvr:connect(function(arg1_4) -- Line 30
			--[[ Upvalues[3]:
				[1]: var3_result1_upvr (copied, readonly)
				[2]: AppChatNetworking_upvr (copied, readonly)
				[3]: any_new_result1_upvr (copied, readonly)
			]]
			local GetChatModerationStatuses = AppChatNetworking_upvr.rodux.GetChatModerationStatuses
			if arg1_4 then
				GetChatModerationStatuses = {}
				GetChatModerationStatuses[1] = arg1_4
			else
				GetChatModerationStatuses = {}
			end
			var3_result1_upvr(GetChatModerationStatuses.API(GetChatModerationStatuses)):catch(function(arg1_5) -- Line 33
				--[[ Upvalues[1]:
					[1]: any_new_result1_upvr (copied, readonly)
				]]
				any_new_result1_upvr:warning("NetworkingChat failure in partyChatTimeoutReceivedSignal->GetChatModerationStatuses, Status: "..tostring(arg1_5))
			end)
		end)
		return function() -- Line 40
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			if any_connect_result1_upvr then
				any_connect_result1_upvr:disconnect()
			end
		end
	end, {var3_result1_upvr})
	return nil
end