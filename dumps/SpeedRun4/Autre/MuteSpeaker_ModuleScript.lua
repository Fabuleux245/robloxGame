-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:55
-- Luau version 6, Types version 3
-- Time taken: 0.004292 seconds

local Chat = game:GetService("Chat")
local ClientChatModules = Chat:WaitForChild("ClientChatModules")
local module_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local var4_upvw
pcall(function() -- Line 15
	--[[ Upvalues[1]:
		[1]: var4_upvw (read and write)
	]]
	var4_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var4_upvw == nil then
	var4_upvw = {}
end
if not var4_upvw.FormatMessageToSend or not var4_upvw.LocalizeFormattedMessage then
	local function FormatMessageToSend(arg1, arg2, arg3) -- Line 18
		return arg3
	end
	var4_upvw.FormatMessageToSend = FormatMessageToSend
end
FormatMessageToSend = module_upvr.ErrorMessageTextColor
local var6 = FormatMessageToSend
if not var6 then
	var6 = Color3.fromRGB(245, 50, 50)
end
local tbl_upvr = {
	ChatColor = var6;
}
local DisplayNameHelpers_upvr = require(Chat:WaitForChild("ChatModules").Utility.DisplayNameHelpers)
local module_upvr_2 = require(ClientChatModules:WaitForChild("ChatConstants"))
return function(arg1) -- Line 24, Named "Run"
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: DisplayNameHelpers_upvr (readonly)
		[3]: var4_upvw (read and write)
		[4]: tbl_upvr (readonly)
		[5]: module_upvr_2 (readonly)
	]]
	local function GetSpeakerNameFromMessage_upvr(arg1_2) -- Line 26, Named "GetSpeakerNameFromMessage"
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local string_sub_result1 = string.sub(arg1_2, 1, 1)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 15. Error Block 3 start (CF ANALYSIS FAILED)
		do
			return string.sub(arg1_2, 2, string_sub_result1 - 1)
		end
		-- KONSTANTERROR: [18] 15. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [28] 23. Error Block 7 start (CF ANALYSIS FAILED)
		if string.match(arg1_2, "^[^%s]+") then
		end
		-- KONSTANTERROR: [28] 23. Error Block 7 end (CF ANALYSIS FAILED)
	end
	local function DoMuteCommand_upvr(arg1_3, arg2, arg3) -- Line 42, Named "DoMuteCommand"
		--[[ Upvalues[6]:
			[1]: GetSpeakerNameFromMessage_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: DisplayNameHelpers_upvr (copied, readonly)
			[5]: var4_upvw (copied, read and write)
			[6]: tbl_upvr (copied, readonly)
		]]
		local GetSpeakerNameFromMessage_result1 = GetSpeakerNameFromMessage_upvr(arg2)
		local any_GetSpeaker_result1_3 = arg1:GetSpeaker(arg1_3)
		local var14
		if any_GetSpeaker_result1_3 then
			var14 = nil
			local var15
			if module_upvr.PlayerDisplayNamesEnabled then
				local any_getUserNameFromChattedName_result1, any_getUserNameFromChattedName_result2 = DisplayNameHelpers_upvr.getUserNameFromChattedName(GetSpeakerNameFromMessage_result1, arg1_3, any_GetSpeaker_result1_3:GetNameForDisplay())
				var14 = any_getUserNameFromChattedName_result1
				var15 = any_getUserNameFromChattedName_result2
			else
				local any_getUserNameFromChattedName_result1_3, any_getUserNameFromChattedName_result2_2 = DisplayNameHelpers_upvr.getUserNameFromChattedName(GetSpeakerNameFromMessage_result1, arg1_3, nil)
				var14 = any_getUserNameFromChattedName_result1_3
				var15 = any_getUserNameFromChattedName_result2_2
			end
			local any_GetSpeaker_result1_4 = arg1:GetSpeaker(var14)
			if var15 == DisplayNameHelpers_upvr.CommandErrorCodes.ChattingToSelf then
				any_GetSpeaker_result1_3:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_DoMuteCommand_CannotMuteSelf", "You cannot mute yourself."), arg3, tbl_upvr)
				return
			end
			if var15 == DisplayNameHelpers_upvr.CommandErrorCodes.NoMatches then
				any_GetSpeaker_result1_3:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_MuteSpeaker_SpeakerDoesNotExist", string.format("Speaker '%s' does not exist.", tostring(GetSpeakerNameFromMessage_result1)), "RBX_NAME", tostring(var14)), arg3, tbl_upvr)
				return
			end
			if var15 == DisplayNameHelpers_upvr.CommandErrorCodes.MultipleMatches then
				any_GetSpeaker_result1_3:SendSystemMessage(var4_upvw:FormatMessageToSend("InGame.Chat.Response.DisplayNameMultipleMatches", "Warning: The following users have this display name: "), arg3, tbl_upvr)
				any_GetSpeaker_result1_3:SendSystemMessage(DisplayNameHelpers_upvr.getUsersWithDisplayNameString(GetSpeakerNameFromMessage_result1, arg1_3), arg3, tbl_upvr)
				return
			end
			if any_GetSpeaker_result1_4 then
				any_GetSpeaker_result1_3:AddMutedSpeaker(any_GetSpeaker_result1_4.Name)
				local var21 = var14
				if module_upvr.PlayerDisplayNamesEnabled then
					var21 = any_GetSpeaker_result1_4:GetNameForDisplay()
				end
				any_GetSpeaker_result1_3:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_ChatMain_SpeakerHasBeenMuted", string.format("Speaker '%s' has been muted.", var21), "RBX_NAME", var21), arg3)
			end
		end
	end
	local function DoUnmuteCommand_upvr(arg1_4, arg2, arg3) -- Line 94, Named "DoUnmuteCommand"
		--[[ Upvalues[6]:
			[1]: GetSpeakerNameFromMessage_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: DisplayNameHelpers_upvr (copied, readonly)
			[5]: var4_upvw (copied, read and write)
			[6]: tbl_upvr (copied, readonly)
		]]
		local any_GetSpeaker_result1_2 = arg1:GetSpeaker(arg1_4)
		local var23
		if any_GetSpeaker_result1_2 then
			var23 = nil
			local var24
			if module_upvr.PlayerDisplayNamesEnabled then
				local any_getUserNameFromChattedName_result1_4, any_getUserNameFromChattedName_result2_4 = DisplayNameHelpers_upvr.getUserNameFromChattedName(GetSpeakerNameFromMessage_upvr(arg2), arg1_4, any_GetSpeaker_result1_2:GetNameForDisplay())
				var23 = any_getUserNameFromChattedName_result1_4
				var24 = any_getUserNameFromChattedName_result2_4
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local any_getUserNameFromChattedName_result1_2, any_getUserNameFromChattedName_result2_3 = DisplayNameHelpers_upvr.getUserNameFromChattedName(GetSpeakerNameFromMessage_upvr(arg2), arg1_4, nil)
				var23 = any_getUserNameFromChattedName_result1_2
				var24 = any_getUserNameFromChattedName_result2_3
			end
			local any_GetSpeaker_result1 = arg1:GetSpeaker(var23)
			if var24 == DisplayNameHelpers_upvr.CommandErrorCodes.ChattingToSelf then
				any_GetSpeaker_result1_2:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_DoMuteCommand_CannotMuteSelf", "You cannot mute yourself."), arg3, tbl_upvr)
				return
			end
			if var24 == DisplayNameHelpers_upvr.CommandErrorCodes.NoMatches then
				any_GetSpeaker_result1_2:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_MuteSpeaker_SpeakerDoesNotExist", string.format("Speaker '%s' does not exist.", tostring(var23)), "RBX_NAME", tostring(var23)), arg3, tbl_upvr)
				return
			end
			if var24 == DisplayNameHelpers_upvr.CommandErrorCodes.MultipleMatches then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				any_GetSpeaker_result1_2:SendSystemMessage(var4_upvw:FormatMessageToSend("InGame.Chat.Response.DisplayNameMultipleMatches", "Warning: The following users have this display name: "), arg3, tbl_upvr)
				any_GetSpeaker_result1_2:SendSystemMessage(DisplayNameHelpers_upvr.getUsersWithDisplayNameString(GetSpeakerNameFromMessage_upvr(arg2), arg1_4), arg3, tbl_upvr)
				return
			end
			if any_GetSpeaker_result1 then
				any_GetSpeaker_result1_2:RemoveMutedSpeaker(any_GetSpeaker_result1.Name)
				local var30 = var23
				if module_upvr.PlayerDisplayNamesEnabled then
					var30 = any_GetSpeaker_result1:GetNameForDisplay()
				end
				any_GetSpeaker_result1_2:SendSystemMessage(var4_upvw:FormatMessageToSend("GameChat_ChatMain_SpeakerHasBeenUnMuted", string.format("Speaker '%s' has been unmuted.", var30), "RBX_NAME", var30), arg3)
				return
			end
		end
	end
	arg1:RegisterProcessCommandsFunction("mute_commands", function(arg1_5, arg2, arg3) -- Line 149, Named "MuteCommandsFunction"
		--[[ Upvalues[2]:
			[1]: DoMuteCommand_upvr (readonly)
			[2]: DoUnmuteCommand_upvr (readonly)
		]]
		local var31
		if string.sub(arg2, 1, 6):lower() == "/mute " then
			DoMuteCommand_upvr(arg1_5, string.sub(arg2, 7), arg3)
			var31 = true
			return var31
		end
		if string.sub(arg2, 1, 8):lower() == "/unmute " then
			DoUnmuteCommand_upvr(arg1_5, string.sub(arg2, 9), arg3)
			var31 = true
		end
		return var31
	end, module_upvr_2.StandardPriority)
end