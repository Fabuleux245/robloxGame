-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:56
-- Luau version 6, Types version 3
-- Time taken: 0.011448 seconds

local Chat_upvr = game:GetService("Chat")
local ClientChatModules = Chat_upvr:WaitForChild("ClientChatModules")
local module_upvr_2 = require(ClientChatModules:WaitForChild("ChatConstants"))
local module_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local var5_upvw
pcall(function() -- Line 17
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var5_upvw == nil then
	var5_upvw = {}
end
if not var5_upvw.FormatMessageToSend or not var5_upvw.LocalizeFormattedMessage then
	local function FormatMessageToSend(arg1, arg2, arg3) -- Line 20
		return arg3
	end
	var5_upvw.FormatMessageToSend = FormatMessageToSend
end
FormatMessageToSend = module_upvr.ErrorMessageTextColor
local var7 = FormatMessageToSend
if not var7 then
	var7 = Color3.fromRGB(245, 50, 50)
end
local tbl_upvr = {
	ChatColor = var7;
}
local var9_upvw = false
local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 27
	return UserSettings():IsUserFeatureEnabled("UserUseNewDirectChatAPI")
end)
if pcall_result1_2 then
	var9_upvw = pcall_result2_3
end
local function _() -- Line 35, Named "GetWhisperChannelPrefix"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if module_upvr_2.WhisperChannelPrefix then
		return module_upvr_2.WhisperChannelPrefix
	end
	return "To "
end
local function _(arg1) -- Line 42, Named "GetWhisperChannelId"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var13
	if module_upvr_2.WhisperChannelPrefix then
		var13 = module_upvr_2.WhisperChannelPrefix
	else
		var13 = "To "
	end
	return var13..arg1
end
local RunService_upvr = game:GetService("RunService")
local TextChatService_upvr = game:GetService("TextChatService")
local DisplayNameHelpers_upvr = require(Chat_upvr:WaitForChild("ChatModules").Utility.DisplayNameHelpers)
return function(arg1) -- Line 46, Named "Run"
	--[[ Upvalues[9]:
		[1]: RunService_upvr (readonly)
		[2]: var9_upvw (read and write)
		[3]: TextChatService_upvr (readonly)
		[4]: Chat_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: DisplayNameHelpers_upvr (readonly)
		[7]: var5_upvw (read and write)
		[8]: tbl_upvr (readonly)
		[9]: module_upvr_2 (readonly)
	]]
	local function CanCommunicate_upvr(arg1_2, arg2) -- Line 48, Named "CanCommunicate"
		--[[ Upvalues[4]:
			[1]: RunService_upvr (copied, readonly)
			[2]: var9_upvw (copied, read and write)
			[3]: TextChatService_upvr (copied, readonly)
			[4]: Chat_upvr (copied, readonly)
		]]
		if RunService_upvr:IsStudio() then
			return true
		end
		local any_GetPlayer_result1_upvr_2 = arg1_2:GetPlayer()
		local any_GetPlayer_result1_upvr = arg2:GetPlayer()
		if any_GetPlayer_result1_upvr_2 and any_GetPlayer_result1_upvr then
			if var9_upvw then
				local pcall_result1, pcall_result2 = pcall(function() -- Line 56
					--[[ Upvalues[3]:
						[1]: TextChatService_upvr (copied, readonly)
						[2]: any_GetPlayer_result1_upvr_2 (readonly)
						[3]: any_GetPlayer_result1_upvr (readonly)
					]]
					return TextChatService_upvr:CanUsersDirectChatAsync(any_GetPlayer_result1_upvr_2.UserId, {any_GetPlayer_result1_upvr.UserId})
				end)
				local var23 = pcall_result1
				if var23 then
					if 0 >= #pcall_result2 then
						var23 = false
					else
						var23 = true
					end
				end
				return var23
			end
			local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 61
				--[[ Upvalues[3]:
					[1]: Chat_upvr (copied, readonly)
					[2]: any_GetPlayer_result1_upvr_2 (readonly)
					[3]: any_GetPlayer_result1_upvr (readonly)
				]]
				return Chat_upvr:CanUsersChatAsync(any_GetPlayer_result1_upvr_2.UserId, any_GetPlayer_result1_upvr.UserId)
			end)
			return pcall_result1_3 and pcall_result2_2
		end
		return false
	end
	local function DoWhisperCommand_upvr(arg1_3, arg2, arg3) -- Line 70, Named "DoWhisperCommand"
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: DisplayNameHelpers_upvr (copied, readonly)
			[4]: var5_upvw (copied, read and write)
			[5]: tbl_upvr (copied, readonly)
			[6]: module_upvr_2 (copied, readonly)
			[7]: CanCommunicate_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_GetSpeaker_result1_7 = arg1:GetSpeaker(arg1_3)
		local var42 = arg2
		if string.sub(arg2, 1, 1) == '"' then
			local string_find_result1 = string.find(arg2, '"', 2)
			if string_find_result1 then
				var42 = string.sub(arg2, 2, string_find_result1 - 1)
				local _ = string.sub(arg2, string_find_result1 + 2)
				-- KONSTANTWARNING: GOTO [62] #50
			end
		else
			local string_match_result1_2 = string.match(arg2, "^[^%s]+")
			if string_match_result1_2 then
				var42 = string_match_result1_2
			end
		end
		local var46
		if module_upvr.PlayerDisplayNamesEnabled and module_upvr.WhisperByDisplayNameEnabled then
			local any_getUserNameFromChattedName_result1, any_getUserNameFromChattedName_result2_3 = DisplayNameHelpers_upvr.getUserNameFromChattedName(var42, arg1_3, any_GetSpeaker_result1_7:GetNameForDisplay())
			var46 = any_getUserNameFromChattedName_result1
			local _ = any_getUserNameFromChattedName_result2_3
		else
			local any_getUserNameFromChattedName_result1_3, any_getUserNameFromChattedName_result2_2 = DisplayNameHelpers_upvr.getUserNameFromChattedName(var42, arg1_3, nil)
			var46 = any_getUserNameFromChattedName_result1_3
		end
		local any_GetSpeaker_result1_5 = arg1:GetSpeaker(var46)
		if any_getUserNameFromChattedName_result2_2 == DisplayNameHelpers_upvr.CommandErrorCodes.ChattingToSelf then
			any_GetSpeaker_result1_7:SendSystemMessage(var5_upvw:FormatMessageToSend("GameChat_PrivateMessaging_CannotWhisperToSelf", "You cannot whisper to yourself."), arg3, tbl_upvr)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if any_getUserNameFromChattedName_result2_2 == DisplayNameHelpers_upvr.CommandErrorCodes.NoMatches then
				any_GetSpeaker_result1_7:SendSystemMessage(var5_upvw:FormatMessageToSend("GameChat_MuteSpeaker_SpeakerDoesNotExist", string.format("Speaker '%s' does not exist.", tostring(var42)), "RBX_NAME", tostring(var46)), arg3, tbl_upvr)
				return
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if any_getUserNameFromChattedName_result2_2 == DisplayNameHelpers_upvr.CommandErrorCodes.MultipleMatches then
				any_GetSpeaker_result1_7:SendSystemMessage(var5_upvw:FormatMessageToSend("InGame.Chat.Response.DisplayNameMultipleMatches", "Warning: The following users have this display name: "), arg3, tbl_upvr)
				any_GetSpeaker_result1_7:SendSystemMessage(DisplayNameHelpers_upvr.getUsersWithDisplayNameString(var42, arg1_3), arg3, tbl_upvr)
				do
					return
				end
				local var53
			end
			if any_GetSpeaker_result1_5 then
				if module_upvr_2.WhisperChannelPrefix then
					var53 = module_upvr_2.WhisperChannelPrefix
				else
					var53 = "To "
				end
				local any_GetChannel_result1_2 = arg1:GetChannel(var53..var46)
				if any_GetChannel_result1_2 then
					if not CanCommunicate_upvr(any_GetSpeaker_result1_7, any_GetSpeaker_result1_5) then
						var53 = arg3
						any_GetSpeaker_result1_7:SendSystemMessage(var5_upvw:FormatMessageToSend("GameChat_PrivateMessaging_CannotChat", "You are not able to chat with this player."), var53, tbl_upvr)
					else
						if not any_GetSpeaker_result1_7:IsInChannel(any_GetChannel_result1_2.Name) then
							any_GetSpeaker_result1_7:JoinChannel(any_GetChannel_result1_2.Name)
						end
						if string.sub(arg2, string.len(var42) + 2) then
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							if 0 < string.len(string.sub(arg2, string.len(var42) + 2)) then
								var53 = any_GetChannel_result1_2.Name
								-- KONSTANTERROR: Expression was reused, decompilation is incorrect
								any_GetSpeaker_result1_7:SayMessage(string.sub(arg2, string.len(var42) + 2), var53)
							end
						end
						any_GetSpeaker_result1_7:SetMainChannel(any_GetChannel_result1_2.Name)
					end
				end
				var53 = string.format("Speaker '%s' does not exist.", tostring(var42))
				var53 = var5_upvw:FormatMessageToSend("GameChat_MuteSpeaker_SpeakerDoesNotExist", var53, "RBX_NAME", tostring(var46))
				any_GetSpeaker_result1_7:SendSystemMessage(var53, arg3, tbl_upvr)
			end
		end
	end
	local function PrivateMessageReplicationFunction_upvr(arg1_5, arg2, arg3) -- Line 163, Named "PrivateMessageReplicationFunction"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		local any_GetSpeaker_result1_6 = arg1:GetSpeaker(arg1_5)
		local ExtraData = any_GetSpeaker_result1_6.ExtraData
		any_GetSpeaker_result1_6:SendMessage(arg2, arg3, arg1_5, ExtraData)
		local string_sub_result1 = string.sub(arg3, 4)
		local any_GetSpeaker_result1_2 = arg1:GetSpeaker(string_sub_result1)
		if module_upvr_2.WhisperChannelPrefix then
			string_sub_result1 = module_upvr_2.WhisperChannelPrefix
		else
			string_sub_result1 = "To "
		end
		local var60 = string_sub_result1..arg1_5
		if any_GetSpeaker_result1_2 then
			if not any_GetSpeaker_result1_2:IsInChannel(var60) then
				any_GetSpeaker_result1_2:JoinChannel(var60)
			end
			any_GetSpeaker_result1_2:SendMessage(arg2, var60, arg1_5, ExtraData)
		end
		return true
	end
	local function PrivateMessageAddTypeFunction_upvr(arg1_6, arg2, arg3) -- Line 181, Named "PrivateMessageAddTypeFunction"
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (copied, readonly)
		]]
		if module_upvr_2.MessageTypeWhisper then
			arg2.MessageType = module_upvr_2.MessageTypeWhisper
		end
	end
	arg1:RegisterProcessCommandsFunction("whisper_commands", function(arg1_4, arg2, arg3) -- Line 147, Named "WhisperCommandsFunction"
		--[[ Upvalues[1]:
			[1]: DoWhisperCommand_upvr (readonly)
		]]
		local var55
		if string.sub(arg2, 1, 3):lower() == "/w " then
			DoWhisperCommand_upvr(arg1_4, string.sub(arg2, 4), arg3)
			var55 = true
			return var55
		end
		if string.sub(arg2, 1, 9):lower() == "/whisper " then
			DoWhisperCommand_upvr(arg1_4, string.sub(arg2, 10), arg3)
			var55 = true
		end
		return var55
	end, module_upvr_2.StandardPriority)
	local function _() -- Line 189, Named "GetWhisperChanneNameColor"
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		if module_upvr.WhisperChannelNameColor then
			return module_upvr.WhisperChannelNameColor
		end
		return Color3.fromRGB(102, 14, 102)
	end
	arg1.SpeakerAdded:connect(function(arg1_7) -- Line 196
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: module_upvr (copied, readonly)
			[3]: module_upvr_2 (copied, readonly)
			[4]: var5_upvw (copied, read and write)
			[5]: PrivateMessageReplicationFunction_upvr (readonly)
			[6]: PrivateMessageAddTypeFunction_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_GetSpeaker_result1 = arg1:GetSpeaker(arg1_7)
		local var63
		if module_upvr.PlayerDisplayNamesEnabled and any_GetSpeaker_result1:GetPlayer() then
			var63 = "(@"
			local _ = any_GetSpeaker_result1:GetNameForDisplay()..var63..arg1_7..')'
		else
		end
		if module_upvr_2.WhisperChannelPrefix then
			var63 = module_upvr_2.WhisperChannelPrefix
		else
			var63 = "To "
		end
		local var65 = var63..arg1_7
		var63 = arg1:GetChannel(var65)
		if var63 then
			var63 = arg1:RemoveChannel
			var63(var65)
		end
		local any_AddChannel_result1 = arg1:AddChannel(var65)
		any_AddChannel_result1.Joinable = false
		any_AddChannel_result1.Leavable = true
		any_AddChannel_result1.AutoJoin = false
		any_AddChannel_result1.Private = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local any_FormatMessageToSend_result1 = var5_upvw:FormatMessageToSend("GameChat_PrivateMessaging_NowChattingWith", "You are now privately chatting with "..arg1_7..'.', "RBX_NAME", tostring(arg1_7))
		any_AddChannel_result1.WelcomeMessage = any_FormatMessageToSend_result1
		if module_upvr.WhisperChannelNameColor then
			any_FormatMessageToSend_result1 = module_upvr.WhisperChannelNameColor
		else
			any_FormatMessageToSend_result1 = Color3.fromRGB(102, 14, 102)
		end
		any_AddChannel_result1.ChannelNameColor = any_FormatMessageToSend_result1
		any_AddChannel_result1:RegisterProcessCommandsFunction("replication_function", PrivateMessageReplicationFunction_upvr, module_upvr_2.LowPriority)
		any_AddChannel_result1:RegisterFilterMessageFunction("message_type_function", PrivateMessageAddTypeFunction_upvr)
	end)
	arg1.SpeakerRemoved:connect(function(arg1_8) -- Line 228
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var69
		if module_upvr_2.WhisperChannelPrefix then
			var69 = module_upvr_2.WhisperChannelPrefix
		else
			var69 = "To "
		end
		local var70 = var69..arg1_8
		var69 = arg1:GetChannel(var70)
		if var69 then
			var69 = arg1:RemoveChannel
			var69(var70)
		end
	end)
end