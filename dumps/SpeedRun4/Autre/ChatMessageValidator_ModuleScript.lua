-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:53
-- Luau version 6, Types version 3
-- Time taken: 0.003630 seconds

local Chat_upvr = game:GetService("Chat")
local RunService_upvr = game:GetService("RunService")
local ClientChatModules = Chat_upvr:WaitForChild("ClientChatModules")
local module_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
local var5_upvw
pcall(function() -- Line 14
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
if var5_upvw == nil then
	var5_upvw = {}
end
if not var5_upvw.FormatMessageToSend or not var5_upvw.LocalizeFormattedMessage then
	local function FormatMessageToSend(arg1, arg2, arg3) -- Line 17
		return arg3
	end
	var5_upvw.FormatMessageToSend = FormatMessageToSend
end
FormatMessageToSend = {}
local var7_upvw = FormatMessageToSend
var7_upvw[1] = '\n'
var7_upvw[2] = '\r'
var7_upvw[3] = '\t'
var7_upvw[4] = '\v'
var7_upvw[5] = '\f'
if module_upvr.DisallowedWhiteSpace then
	var7_upvw = module_upvr.DisallowedWhiteSpace
end
local function isMessageValidServer_upvr(arg1) -- Line 27, Named "isMessageValidServer"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.MaximumMessageLength * 6 < arg1:len() then
		return false
	end
	if utf8.len(arg1) == nil then
		return false
	end
	if module_upvr.MaximumMessageLength < utf8.len(utf8.nfcnormalize(arg1)) then
		return false
	end
	return true
end
local function _(arg1) -- Line 47, Named "CanUserChat"
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: Chat_upvr (readonly)
	]]
	if RunService_upvr:IsStudio() then
		return true
	end
	local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: Chat_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return Chat_upvr:CanUserChatAsync(arg1.UserId)
	end)
	return pcall_result1_2 and pcall_result2_3
end
local module_upvr_2 = require(ClientChatModules:WaitForChild("ChatConstants"))
return function(arg1) -- Line 57, Named "Run"
	--[[ Upvalues[6]:
		[1]: RunService_upvr (readonly)
		[2]: Chat_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: isMessageValidServer_upvr (readonly)
		[5]: var7_upvw (read and write)
		[6]: module_upvr_2 (readonly)
	]]
	arg1:RegisterProcessCommandsFunction("message_validation", function(arg1_2, arg2, arg3) -- Line 58, Named "ValidateChatFunction"
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: RunService_upvr (copied, readonly)
			[3]: Chat_upvr (copied, readonly)
			[4]: var5_upvw (copied, read and write)
			[5]: isMessageValidServer_upvr (copied, readonly)
			[6]: var7_upvw (copied, read and write)
		]]
		local any_GetSpeaker_result1 = arg1:GetSpeaker(arg1_2)
		local any_GetPlayer_result1_upvr_2 = any_GetSpeaker_result1:GetPlayer()
		local var31
		if not any_GetSpeaker_result1 then
			var31 = false
			return var31
		end
		if not any_GetPlayer_result1_upvr_2 then
			var31 = false
			return var31
		end
		var31 = RunService_upvr:IsStudio()
		if not var31 then
			var31 = any_GetPlayer_result1_upvr_2.UserId
			if var31 < 1 then
				var31 = true
				return var31
			end
		end
		if RunService_upvr:IsStudio() then
			var31 = true
		else
			local pcall_result1, pcall_result2 = pcall(function() -- Line 51
				--[[ Upvalues[2]:
					[1]: Chat_upvr (copied, readonly)
					[2]: any_GetPlayer_result1_upvr_2 (readonly)
				]]
				return Chat_upvr:CanUserChatAsync(any_GetPlayer_result1_upvr_2.UserId)
			end)
			var31 = pcall_result1 and pcall_result2
		end
		if not var31 then
			var31 = any_GetSpeaker_result1:SendSystemMessage
			var31(var5_upvw:FormatMessageToSend("GameChat_ChatMessageValidator_SettingsError", "Your chat settings prevent you from sending messages."), arg3)
			var31 = true
			return var31
		end
		var31 = isMessageValidServer_upvr(arg2)
		if not var31 then
			var31 = var5_upvw:FormatMessageToSend("GameChat_ChatMessageValidator_MaxLengthError", "Your message exceeds the maximum message length.")
			any_GetSpeaker_result1:SendSystemMessage(var31, arg3)
			return true
		end
		var31 = pairs(var7_upvw)
		local pairs_result1, pairs_result2, pairs_result3 = pairs(var7_upvw)
		for _, v in pairs_result1, pairs_result2, pairs_result3 do
			if arg2:find(v) then
				any_GetSpeaker_result1:SendSystemMessage(var5_upvw:FormatMessageToSend("GameChat_ChatMessageValidator_WhitespaceError", "Your message contains whitespace that is not allowed."), arg3)
				return true
			end
		end
		pairs_result1 = false
		return pairs_result1
	end, module_upvr_2.VeryHighPriority)
end