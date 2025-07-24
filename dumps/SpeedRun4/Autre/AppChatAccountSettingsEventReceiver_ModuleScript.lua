-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:56
-- Luau version 6, Types version 3
-- Time taken: 0.003705 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useIsAppLoaded_upvr = require(AppChat.Hooks.useIsAppLoaded)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local LoginStatus_upvr = require(Parent.RobloxAppEnums).LoginStatus
local getFFlagDebugAppChat_upvr = require(AppChat.Flags.getFFlagDebugAppChat)
local useKeybind_upvr = require(AppChat.App.Hooks.useKeybind)
local any_new_result1_upvr = require(AppChat.Logger):new(script.Name)
local React_upvr = require(Parent.React)
local fetchChatMetadata_upvr = require(AppChat.Conversations.Thunks.fetchChatMetadata)
local FFlagAppChatHandleDownAging_upvr = require(AppChat.Flags.FFlagAppChatHandleDownAging)
local useIsChatEnabled_upvr = require(AppChat.Hooks.useIsChatEnabled)
local getDeepValue2_upvr = require(AppChat.Utils.getDeepValue2)
local usePrevious_upvr = require(Parent.RoactUtils).Hooks.usePrevious
local reloadAllMessages_upvr = require(AppChat.Conversations.Thunks.reloadAllMessages)
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
return function(arg1) -- Line 26, Named "AppChatAccountSettingsEventReceiver"
	--[[ Upvalues[15]:
		[1]: useDispatch_upvr (readonly)
		[2]: useIsAppLoaded_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: LoginStatus_upvr (readonly)
		[5]: getFFlagDebugAppChat_upvr (readonly)
		[6]: useKeybind_upvr (readonly)
		[7]: any_new_result1_upvr (readonly)
		[8]: React_upvr (readonly)
		[9]: fetchChatMetadata_upvr (readonly)
		[10]: FFlagAppChatHandleDownAging_upvr (readonly)
		[11]: useIsChatEnabled_upvr (readonly)
		[12]: getDeepValue2_upvr (readonly)
		[13]: usePrevious_upvr (readonly)
		[14]: reloadAllMessages_upvr (readonly)
		[15]: RealtimeDelivery_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local useIsAppLoaded_upvr_result1_upvr = useIsAppLoaded_upvr()
	local var5_result1_upvr = useSelector_upvr(function(arg1_2) -- Line 29
		--[[ Upvalues[1]:
			[1]: LoginStatus_upvr (copied, readonly)
		]]
		local AuthenticationStatus = arg1_2.AuthenticationStatus
		if AuthenticationStatus then
			if arg1_2.AuthenticationStatus.status ~= LoginStatus_upvr.LOGGED_IN then
				AuthenticationStatus = false
			else
				AuthenticationStatus = true
			end
		end
		return AuthenticationStatus
	end)
	if getFFlagDebugAppChat_upvr() then
		useKeybind_upvr({
			keyCode = Enum.KeyCode.G;
			modifierKey = Enum.ModifierKey.Ctrl;
		}, function() -- Line 34
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: useDispatch_upvr_result1_upvr (readonly)
			]]
			any_new_result1_upvr:debug("Ctrl + G pressed, toggling group chat enabled")
			useDispatch_upvr_result1_upvr({
				type = "Debug_GroupChatEnabledToggled";
			})
		end, {useDispatch_upvr_result1_upvr})
	end
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 42
		--[[ Upvalues[3]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: fetchChatMetadata_upvr (copied, readonly)
			[3]: any_new_result1_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(fetchChatMetadata_upvr()):andThen(function(arg1_3) -- Line 43
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (copied, readonly)
			]]
			any_new_result1_upvr:info("Finished fetching chat metadata. Determined isChatEnabled as {}", arg1_3)
		end)
	end, {useDispatch_upvr_result1_upvr})
	React_upvr.useEffect(function() -- Line 48
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: var5_result1_upvr (readonly)
			[3]: useIsAppLoaded_upvr_result1_upvr (readonly)
			[4]: any_new_result1_upvr (copied, readonly)
			[5]: any_useCallback_result1_upvr (readonly)
		]]
		local var32
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var32 = var5_result1_upvr
			return var32
		end
		if arg1.isInExperience or INLINED() then
			var32 = not useIsAppLoaded_upvr_result1_upvr
		end
		if var32 then
			any_new_result1_upvr:info("App is not loaded, fetching chat metadata")
			any_useCallback_result1_upvr()
		end
	end, {any_useCallback_result1_upvr, useIsAppLoaded_upvr_result1_upvr, arg1.isInExperience, var5_result1_upvr})
	if FFlagAppChatHandleDownAging_upvr then
		local var13_result1_upvr = useIsChatEnabled_upvr()
		local var5_result1_upvr_2 = useSelector_upvr(function(arg1_4) -- Line 58
			--[[ Upvalues[1]:
				[1]: getDeepValue2_upvr (copied, readonly)
			]]
			return getDeepValue2_upvr(arg1_4, "ChatAppReducer.ChatSettings.chatUserMessagesEnabled")
		end)
		local usePrevious_upvr_result1_upvr = usePrevious_upvr(var5_result1_upvr_2)
		React_upvr.useEffect(function() -- Line 63
			--[[ Upvalues[6]:
				[1]: var13_result1_upvr (readonly)
				[2]: usePrevious_upvr_result1_upvr (readonly)
				[3]: var5_result1_upvr_2 (readonly)
				[4]: any_new_result1_upvr (copied, readonly)
				[5]: useDispatch_upvr_result1_upvr (readonly)
				[6]: reloadAllMessages_upvr (copied, readonly)
			]]
			if var13_result1_upvr and usePrevious_upvr_result1_upvr == true and var5_result1_upvr_2 == false then
				any_new_result1_upvr:info("Chat messages are no longer enabled, reloading all messages")
				useDispatch_upvr_result1_upvr(reloadAllMessages_upvr()):catch(function(arg1_5) -- Line 66
					--[[ Upvalues[1]:
						[1]: any_new_result1_upvr (copied, readonly)
					]]
					any_new_result1_upvr:warn("Failed to reload all messages after chat user messages disabled", arg1_5)
				end)
			end
		end, {useDispatch_upvr_result1_upvr, var13_result1_upvr, usePrevious_upvr_result1_upvr, var5_result1_upvr_2})
	end
	var5_result1_upvr_2 = RealtimeDelivery_upvr
	var13_result1_upvr = var5_result1_upvr_2.useRealtimeNamespace
	var5_result1_upvr_2 = "UserSettingsChanged"
	function usePrevious_upvr_result1_upvr(arg1_6) -- Line 73
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		if arg1_6.SettingsChanged then
			local table_find_result1 = table.find(arg1_6.SettingsChanged, "WhoCanChatWithMeInApp")
			if not table_find_result1 then
				table_find_result1 = table.find(arg1_6.SettingsChanged, "WhoCanGroupChatWithMeInApp")
				if not table_find_result1 then
					table_find_result1 = table.find(arg1_6.SettingsChanged, "WhoCanOneOnOnePartyWithMe")
					if not table_find_result1 then
						table_find_result1 = table.find(arg1_6.SettingsChanged, "WhoCanGroupPartyWithMe")
					end
				end
			end
			if table_find_result1 then
				any_new_result1_upvr:info("Received privacy setting notification, fetching chat metadata")
				any_useCallback_result1_upvr()
			end
		end
	end
	var13_result1_upvr(var5_result1_upvr_2, usePrevious_upvr_result1_upvr, {any_useCallback_result1_upvr})
	var5_result1_upvr_2 = RealtimeDelivery_upvr
	var13_result1_upvr = var5_result1_upvr_2.useRealtimeConnectionStateChanged
	var5_result1_upvr_2 = "UserSettingsChanged"
	function usePrevious_upvr_result1_upvr(arg1_7, arg2) -- Line 86
		--[[ Upvalues[2]:
			[1]: any_new_result1_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		if arg1_7 == Enum.ConnectionState.Connected and arg2 then
			any_new_result1_upvr:info("Reconnected to UserSettingsChanged, fetching chat metadata")
			any_useCallback_result1_upvr()
		end
	end
	var13_result1_upvr(var5_result1_upvr_2, usePrevious_upvr_result1_upvr, {any_useCallback_result1_upvr})
	var13_result1_upvr = nil
	return var13_result1_upvr
end