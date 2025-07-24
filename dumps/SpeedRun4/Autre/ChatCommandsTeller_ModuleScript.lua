-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:52
-- Luau version 6, Types version 3
-- Time taken: 0.004254 seconds

local ClientChatModules = game:GetService("Chat"):WaitForChild("ClientChatModules")
local var2_upvw
pcall(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var2_upvw == nil then
	var2_upvw = {}
end
if not var2_upvw.FormatMessageToSend or not var2_upvw.LocalizeFormattedMessage then
	function var2_upvw.FormatMessageToSend(arg1, arg2, arg3) -- Line 17
		return arg3
	end
end
local module_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local module_upvr_2 = require(ClientChatModules:WaitForChild("ChatConstants"))
return function(arg1) -- Line 20, Named "Run"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: var2_upvw (read and write)
		[3]: module_upvr_2 (readonly)
	]]
	local function _() -- Line 22, Named "ShowJoinAndLeaveCommands"
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		if module_upvr.ShowJoinAndLeaveHelpText ~= nil then
			return module_upvr.ShowJoinAndLeaveHelpText
		end
		return false
	end
	arg1:RegisterProcessCommandsFunction("chat_commands_inquiry", function(arg1_3, arg2, arg3) -- Line 29, Named "ProcessCommandsFunction"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var2_upvw (copied, read and write)
			[3]: module_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var10
		if arg2:lower() == "/?" or arg2:lower() == "/help" then
			local any_GetSpeaker_result1_2 = arg1:GetSpeaker(arg1_3)
			var10 = any_GetSpeaker_result1_2:SendSystemMessage
			var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_Desc", "These are the basic chat commands."), arg3)
			var10 = module_upvr.AllowMeCommand
			if var10 then
				var10 = any_GetSpeaker_result1_2:SendSystemMessage
				var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_MeCommand", "/me <text> : roleplaying command for doing actions."), arg3)
			end
			var10 = any_GetSpeaker_result1_2:SendSystemMessage
			var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_SwitchChannelCommand", "/c <channel> : switch channel menu tabs."), arg3)
			if module_upvr.ShowJoinAndLeaveHelpText ~= nil then
				var10 = module_upvr.ShowJoinAndLeaveHelpText
			else
				var10 = false
			end
			if var10 then
				var10 = any_GetSpeaker_result1_2:SendSystemMessage
				var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_JoinChannelCommand", "/join <channel> or /j <channel> : join channel."), arg3)
				var10 = any_GetSpeaker_result1_2:SendSystemMessage
				var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_LeaveChannelCommand", "/leave <channel> or /l <channel> : leave channel. (leaves current if none specified)"), arg3)
			end
			var10 = any_GetSpeaker_result1_2:SendSystemMessage
			var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_WhisperCommand", "/whisper <speaker> or /w <speaker> : open private message channel with speaker."), arg3)
			var10 = any_GetSpeaker_result1_2:SendSystemMessage
			var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_MuteCommand", "/mute <speaker> : mute a speaker."), arg3)
			var10 = any_GetSpeaker_result1_2:SendSystemMessage
			var10(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_UnMuteCommand", "/unmute <speaker> : unmute a speaker."), arg3)
			var10 = any_GetSpeaker_result1_2:GetPlayer()
			local var12 = var10
			if var12 and var12.Team then
				any_GetSpeaker_result1_2:SendSystemMessage(var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_TeamCommand", "/team <message> or /t <message> : send a team chat to players on your team."), arg3)
			end
			return true
		end
		return false
	end, module_upvr_2.StandardPriority)
	if module_upvr.GeneralChannelName then
		local any_GetChannel_result1 = arg1:GetChannel(module_upvr.GeneralChannelName)
		if any_GetChannel_result1 then
			any_GetChannel_result1.WelcomeMessage = var2_upvw:FormatMessageToSend("GameChat_ChatCommandsTeller_AllChannelWelcomeMessage", "Chat '/?' or '/help' for a list of chat commands.")
		end
	end
end