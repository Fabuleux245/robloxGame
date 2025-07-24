-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:47
-- Luau version 6, Types version 3
-- Time taken: 0.039673 seconds

local pcall_result1_6, pcall_result2_10 = pcall(function() -- Line 8
	return UserSettings():IsUserFeatureEnabled("UserShouldMuteUnfilteredMessage")
end)
local pcall_result1_14, pcall_result2_19 = pcall(function() -- Line 13
	return UserSettings():IsUserFeatureEnabled("UserRemoveMessageOnTextFilterFailures")
end)
local pcall_result1_7, pcall_result2_9 = pcall(function() -- Line 21
	return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)
local module_4 = {}
local Chat_upvr = game:GetService("Chat")
local RunService_upvr = game:GetService("RunService")
local ClientChatModules = Chat_upvr:WaitForChild("ClientChatModules")
local module_5_upvr = require(ClientChatModules:WaitForChild("ChatConstants"))
local var15_upvw
pcall(function() -- Line 42
	--[[ Upvalues[1]:
		[1]: var15_upvw (read and write)
	]]
	var15_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
local var17 = var15_upvw
if not var17 then
	var17 = {}
end
var15_upvw = var17
local var18_upvw = var15_upvw
if not var18_upvw.FormatMessageToSend or not var18_upvw.LocalizeFormattedMessage then
	function var18_upvw.FormatMessageToSend(arg1, arg2, arg3) -- Line 46
		return arg3
	end
end
local tbl_upvr = {}
tbl_upvr.__index = tbl_upvr
function tbl_upvr.SendSystemMessage(arg1, arg2, arg3) -- Line 55
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_InternalCreateMessageObject_result1_upvr = arg1:InternalCreateMessageObject(arg2, nil, true, arg3)
	local pcall_result1_10, pcall_result2_4 = pcall(function() -- Line 58
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_InternalCreateMessageObject_result1_upvr (readonly)
		]]
		arg1.eMessagePosted:Fire(any_InternalCreateMessageObject_result1_upvr)
	end)
	if not pcall_result1_10 and pcall_result2_4 then
		print("Error posting message: "..pcall_result2_4)
	end
	arg1:InternalAddMessageToHistoryLog(any_InternalCreateMessageObject_result1_upvr)
	for _, v in pairs(arg1.Speakers) do
		v:InternalSendSystemMessage(any_InternalCreateMessageObject_result1_upvr, arg1.Name)
	end
	return any_InternalCreateMessageObject_result1_upvr
end
function tbl_upvr.SendSystemMessageToSpeaker(arg1, arg2, arg3, arg4) -- Line 72
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var35 = arg1.Speakers[arg3]
	if var35 then
		var35:InternalSendSystemMessage(arg1:InternalCreateMessageObject(arg2, nil, true, arg4), arg1.Name)
	elseif RunService_upvr:IsStudio() then
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot be sent a system message", arg3, arg1.Name))
	end
end
function tbl_upvr.SendMessageObjToFilters(arg1, arg2, arg3, arg4) -- Line 82
	arg3.Message = arg2
	arg1:InternalDoMessageFilter(arg4.Name, arg3, arg1.Name)
	arg1.ChatService:InternalDoMessageFilter(arg4.Name, arg3, arg1.Name)
	arg3.Message = arg3.Message
	return arg3.Message
end
function tbl_upvr.CanCommunicateByUserId(arg1, arg2, arg3) -- Line 92
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: Chat_upvr (readonly)
	]]
	if RunService_upvr:IsStudio() then
		return true
	end
	if arg2 == 0 or arg3 == 0 then
		return true
	end
	local pcall_result1_5, pcall_result2_11 = pcall(function() -- Line 100
		--[[ Upvalues[3]:
			[1]: Chat_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		return Chat_upvr:CanUsersChatAsync(arg2, arg3)
	end)
	return pcall_result1_5 and pcall_result2_11
end
function tbl_upvr.CanCommunicate(arg1, arg2, arg3) -- Line 106
	local any_GetPlayer_result1_4 = arg2:GetPlayer()
	local any_GetPlayer_result1_8 = arg3:GetPlayer()
	if any_GetPlayer_result1_4 and any_GetPlayer_result1_8 then
		return arg1:CanCommunicateByUserId(any_GetPlayer_result1_4.UserId, any_GetPlayer_result1_8.UserId)
	end
	return true
end
function tbl_upvr.SendMessageToSpeaker(arg1, arg2, arg3, arg4, arg5) -- Line 115
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var41 = arg1.Speakers[arg3]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 8. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 51. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [66.13]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [66.9]
	nil.FilterResult = nil
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [68.12]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.IsFilterResult = nil
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	nil.IsFiltered = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var41:InternalSendFilteredMessageWithFilterResult(nil, arg1.Name)
	do
		return
	end
	-- KONSTANTERROR: [66] 51. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [80] 60. Error Block 20 start (CF ANALYSIS FAILED)
	if RunService_upvr:IsStudio() then
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot be sent a message", arg3, arg1.Name))
	end
	-- KONSTANTERROR: [80] 60. Error Block 20 end (CF ANALYSIS FAILED)
end
function tbl_upvr.KickSpeaker(arg1, arg2, arg3) -- Line 151
	local any_GetSpeaker_result1 = arg1.ChatService:GetSpeaker(arg2)
	if not any_GetSpeaker_result1 then
		error("Speaker \""..arg2.."\" does not exist!")
	end
	local var43 = ""
	local var44 = ""
	if arg3 then
		var43 = string.format("You were kicked from '%s' for the following reason(s): %s", arg1.Name, arg3)
		var44 = string.format("%s was kicked for the following reason(s): %s", any_GetSpeaker_result1:GetNameForDisplay(), arg3)
	else
		var43 = string.format("You were kicked from '%s'", arg1.Name)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var44 = string.format("%s was kicked", any_GetSpeaker_result1:GetNameForDisplay())
	end
	arg1:SendSystemMessageToSpeaker(var43, arg2)
	any_GetSpeaker_result1:LeaveChannel(arg1.Name)
	arg1:SendSystemMessage(var44)
end
function tbl_upvr.MuteSpeaker(arg1, arg2, arg3, arg4) -- Line 174
	local any_GetSpeaker_result1_4 = arg1.ChatService:GetSpeaker(arg2)
	local var54_upvr
	if not any_GetSpeaker_result1_4 then
		var54_upvr = "Speaker \""
		error(var54_upvr..arg2.."\" does not exist!")
	end
	if arg4 == 0 or arg4 == nil then
		var54_upvr = 0
	else
		var54_upvr = os.time() + arg4
	end
	arg1.Mutes[arg2:lower()] = var54_upvr
	if arg3 then
		arg1:SendSystemMessage(string.format("%s was muted for the following reason(s): %s", any_GetSpeaker_result1_4:GetNameForDisplay(), arg3))
	end
	local pcall_result1_17, pcall_result2_12 = pcall(function() -- Line 188
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
		]]
		arg1.eSpeakerMuted:Fire(arg2, arg3, arg4)
	end)
	if not pcall_result1_17 and pcall_result2_12 then
		var54_upvr = print
		var54_upvr("Error mutting speaker: "..pcall_result2_12)
	end
	var54_upvr = arg1.ChatService:GetSpeaker(arg2)
	if var54_upvr then
		local pcall_result1_18, pcall_result2_16 = pcall(function() -- Line 195
			--[[ Upvalues[4]:
				[1]: var54_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
			]]
			var54_upvr.eMuted:Fire(arg1.Name, arg3, arg4)
		end)
		if not pcall_result1_18 and pcall_result2_16 then
			print("Error mutting speaker: "..pcall_result2_16)
		end
	end
end
function tbl_upvr.UnmuteSpeaker(arg1, arg2) -- Line 203
	if not arg1.ChatService:GetSpeaker(arg2) then
		error("Speaker \""..arg2.."\" does not exist!")
	end
	arg1.Mutes[arg2:lower()] = nil
	local pcall_result1, pcall_result2_7 = pcall(function() -- Line 211
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1.eSpeakerUnmuted:Fire(arg2)
	end)
	if not pcall_result1 and pcall_result2_7 then
		print("Error unmuting speaker: "..pcall_result2_7)
	end
	local any_GetSpeaker_result1_2_upvr = arg1.ChatService:GetSpeaker(arg2)
	if any_GetSpeaker_result1_2_upvr then
		local pcall_result1_12, pcall_result2_14 = pcall(function() -- Line 218
			--[[ Upvalues[2]:
				[1]: any_GetSpeaker_result1_2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			any_GetSpeaker_result1_2_upvr.eUnmuted:Fire(arg1.Name)
		end)
		if not pcall_result1_12 and pcall_result2_14 then
			print("Error unmuting speaker: "..pcall_result2_14)
		end
	end
end
function tbl_upvr.IsSpeakerMuted(arg1, arg2) -- Line 225
	local var75
	if arg1.Mutes[arg2:lower()] == nil then
		var75 = false
	else
		var75 = true
	end
	return var75
end
function tbl_upvr.GetSpeakerList(arg1) -- Line 229
	local module_6 = {}
	for _, v_2 in pairs(arg1.Speakers) do
		table.insert(module_6, v_2.Name)
	end
	return module_6
end
function tbl_upvr.RegisterFilterMessageFunction(arg1, arg2, arg3, arg4) -- Line 237
	if arg1.FilterMessageFunctions:HasFunction(arg2) then
		error(string.format("FilterMessageFunction '%s' already exists", arg2))
	end
	arg1.FilterMessageFunctions:AddFunction(arg2, arg3, arg4)
end
function tbl_upvr.FilterMessageFunctionExists(arg1, arg2) -- Line 244
	return arg1.FilterMessageFunctions:HasFunction(arg2)
end
function tbl_upvr.UnregisterFilterMessageFunction(arg1, arg2) -- Line 248
	if not arg1.FilterMessageFunctions:HasFunction(arg2) then
		error(string.format("FilterMessageFunction '%s' does not exists", arg2))
	end
	arg1.FilterMessageFunctions:RemoveFunction(arg2)
end
function tbl_upvr.RegisterProcessCommandsFunction(arg1, arg2, arg3, arg4) -- Line 255
	if arg1.ProcessCommandsFunctions:HasFunction(arg2) then
		error(string.format("ProcessCommandsFunction '%s' already exists", arg2))
	end
	arg1.ProcessCommandsFunctions:AddFunction(arg2, arg3, arg4)
end
function tbl_upvr.ProcessCommandsFunctionExists(arg1, arg2) -- Line 262
	return arg1.ProcessCommandsFunctions:HasFunction(arg2)
end
function tbl_upvr.UnregisterProcessCommandsFunction(arg1, arg2) -- Line 266
	if not arg1.ProcessCommandsFunctions:HasFunction(arg2) then
		error(string.format("ProcessCommandsFunction '%s' does not exist", arg2))
	end
	arg1.ProcessCommandsFunctions:RemoveFunction(arg2)
end
local function _(arg1) -- Line 273, Named "ShallowCopy"
	local module = {}
	for i_3, v_3 in pairs(arg1) do
		module[i_3] = v_3
	end
	return module
end
function tbl_upvr.GetHistoryLog(arg1) -- Line 281
	local module_3 = {}
	for i_4, v_4 in pairs(arg1.ChatHistory) do
		module_3[i_4] = v_4
	end
	return module_3
end
function tbl_upvr.GetHistoryLogForSpeaker(arg1, arg2) -- Line 285
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
	local var100 = -1
	local any_GetPlayer_result1_3 = arg2:GetPlayer()
	if any_GetPlayer_result1_3 then
		var100 = any_GetPlayer_result1_3.UserId
	end
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 57. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [83] 57. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [83.9]
	-- KONSTANTERROR: [15] 12. Error Block 4 end (CF ANALYSIS FAILED)
end
function tbl_upvr.InternalDestroy(arg1) -- Line 323
	for _, v_5 in pairs(arg1.Speakers) do
		v_5:LeaveChannel(arg1.Name)
	end
	arg1.eDestroyed:Fire()
	arg1.eDestroyed:Destroy()
	arg1.eMessagePosted:Destroy()
	arg1.eSpeakerJoined:Destroy()
	arg1.eSpeakerLeft:Destroy()
	arg1.eSpeakerMuted:Destroy()
	arg1.eSpeakerUnmuted:Destroy()
end
function tbl_upvr.InternalDoMessageFilter(arg1, arg2, arg3, arg4) -- Line 338
	for i_6, v1_upvr, _ in arg1.FilterMessageFunctions:GetIterator(), nil do
		local pcall_result1_15, pcall_result2_8 = pcall(function() -- Line 341
			--[[ Upvalues[4]:
				[1]: v1_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
			]]
			v1_upvr(arg2, arg3, arg4)
		end)
		if not pcall_result1_15 then
			warn(string.format("DoMessageFilter Function '%s' failed for reason: %s", i_6, pcall_result2_8))
		end
	end
end
function tbl_upvr.InternalDoProcessCommands(arg1, arg2, arg3, arg4) -- Line 351
	for i_7, v1_2_upvr, _ in arg1.ProcessCommandsFunctions:GetIterator(), nil do
		local pcall_result1_21, pcall_result2_21 = pcall(function() -- Line 354
			--[[ Upvalues[4]:
				[1]: v1_2_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
			]]
			local v1_2_upvr_result1 = v1_2_upvr(arg2, arg3, arg4)
			if type(v1_2_upvr_result1) ~= "boolean" then
				error("Process command functions must return a bool")
			end
			return v1_2_upvr_result1
		end)
		if not pcall_result1_21 then
			warn(string.format("DoProcessCommands Function '%s' failed for reason: %s", i_7, pcall_result2_21))
		elseif pcall_result2_21 then
			return true
		end
	end
	return false
end
function getLanguageCodeFromLocale(arg1) -- Line 372
	local var121 = string.gmatch(arg1, "[^-]+")()
	if var121 then
		return var121
	end
	return "en"
end
local var122_upvw = pcall_result1_6 and pcall_result2_10
local var123_upvw = pcall_result1_7 and pcall_result2_9
local var124_upvw = pcall_result1_14 and pcall_result2_19
function tbl_upvr.InternalPostMessage(arg1, arg2, arg3, arg4) -- Line 382
	--[[ Upvalues[5]:
		[1]: var18_upvw (read and write)
		[2]: Chat_upvr (readonly)
		[3]: var122_upvw (read and write)
		[4]: var123_upvw (read and write)
		[5]: var124_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 163 start (CF ANALYSIS FAILED)
	local var387_upvw
	if var387_upvw then
		var387_upvw = false
		return var387_upvw
	end
	var387_upvw = arg1.Mutes[arg2.Name:lower()]
	if var387_upvw ~= nil then
		var387_upvw = arg1.Mutes[arg2.Name:lower()]
		if 0 < var387_upvw and var387_upvw < os.time() then
			arg1:UnmuteSpeaker(arg2.Name)
		else
			arg1:SendSystemMessageToSpeaker(var18_upvw:FormatMessageToSend("GameChat_ChatChannel_MutedInChannel", "You are muted and cannot talk in this channel"), arg2.Name)
			return false
		end
	end
	var387_upvw = arg1:InternalCreateMessageObject(arg3, arg2.Name, false, arg4)
	var387_upvw.Message = arg3
	local var388_upvw
	pcall(function() -- Line 400
		--[[ Upvalues[3]:
			[1]: var388_upvw (read and write)
			[2]: Chat_upvr (copied, readonly)
			[3]: var387_upvw (read and write)
		]]
		var388_upvw = Chat_upvr:InvokeChatCallback(Enum.ChatCallbackType.OnServerReceivingMessage, var387_upvw)
	end)
	var387_upvw.Message = nil
	if var388_upvw then
		if var388_upvw.ShouldDeliver == false then
			return false
		end
	end
	for i_8, v_6 in pairs(arg1.Speakers) do
		if not v_6:IsSpeakerMuted(arg2.Name) and arg1:CanCommunicate(arg2, v_6) then
			table.insert({}, v_6.Name)
			if v_6.Name == arg2.Name then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				for i_9, v_7 in pairs(var388_upvw) do
					({})[i_9] = v_7
					local var397
				end
				local var398 = var397
				if var122_upvw then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					local MessageLengthUtf8_3 = var388_upvw.MessageLengthUtf8
					if not MessageLengthUtf8_3 then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						MessageLengthUtf8_3 = var388_upvw.MessageLength
					end
					var398.Message = string.rep('_', MessageLengthUtf8_3)
				else
					var398.Message = arg1:SendMessageObjToFilters(arg3, var388_upvw, arg2)
				end
				var398.IsFiltered = true
				v_6:InternalSendMessage(var398, arg1.Name)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				v_6:InternalSendMessage(var388_upvw, arg1.Name)
			end
		end
	end
	local pcall_result1_11, pcall_result2_2 = pcall(function() -- Line 439
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var388_upvw (read and write)
		]]
		arg1.eMessagePosted:Fire(var388_upvw)
	end)
	if not pcall_result1_11 and pcall_result2_2 then
		v_6 = "Error posting message: "
		i_8 = v_6..pcall_result2_2
		print(i_8)
	end
	i_8 = arg1.Private
	if not i_8 or not Enum.TextFilterContext.PrivateChat then
	end
	i_8 = nil
	v_6 = var123_upvw
	if v_6 then
		v_6 = {}
		for _, v_8 in pairs(arg1.Speakers) do
			local any_GetPlayer_result1_7 = v_8:GetPlayer()
			if any_GetPlayer_result1_7 ~= nil and any_GetPlayer_result1_7.LocaleId ~= nil then
				({})[getLanguageCodeFromLocale(any_GetPlayer_result1_7.LocaleId)] = true
			end
		end
		for i_11, _ in {} do
			table.insert(v_6, i_11)
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		local any_InternalApplyRobloxFilterAndTranslate_result1_3, any_InternalApplyRobloxFilterAndTranslate_result2_4, any_InternalApplyRobloxFilterAndTranslate_result3_3 = arg1.ChatService:InternalApplyRobloxFilterAndTranslate(var388_upvw.FromSpeaker, v_6, arg1:SendMessageObjToFilters(arg3, var388_upvw, arg2), Enum.TextFilterContext.PublicChat)
		if any_InternalApplyRobloxFilterAndTranslate_result1_3 then
			if any_InternalApplyRobloxFilterAndTranslate_result2_4 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var388_upvw.FilterResult = any_InternalApplyRobloxFilterAndTranslate_result3_3.SourceText
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var388_upvw.FilterResult = any_InternalApplyRobloxFilterAndTranslate_result3_3
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.IsFilterResult = any_InternalApplyRobloxFilterAndTranslate_result2_4
			if any_InternalApplyRobloxFilterAndTranslate_result2_4 then
				i_8 = any_InternalApplyRobloxFilterAndTranslate_result3_3
				-- KONSTANTWARNING: GOTO [310] #222
			end
		elseif var124_upvw then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.IsFilterResult = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.FilterResult = ""
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.MessageLength = 0
		else
			return false
		end
	else
		v_6 = arg1.ChatService
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		v_6 = v_6:InternalApplyRobloxFilterNewAPI
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		v_6 = v_6(var388_upvw.FromSpeaker, arg1:SendMessageObjToFilters(arg3, var388_upvw, arg2), Enum.TextFilterContext.PublicChat)
		local v_6_result1, v_6_result2, v_6_result3 = v_6(var388_upvw.FromSpeaker, arg1:SendMessageObjToFilters(arg3, var388_upvw, arg2), Enum.TextFilterContext.PublicChat)
		if v_6_result1 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.FilterResult = v_6_result3
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.IsFilterResult = v_6_result2
		elseif var124_upvw then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.IsFilterResult = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.FilterResult = ""
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var388_upvw.MessageLength = 0
		else
			return false
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var388_upvw.IsFiltered = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1:InternalAddMessageToHistoryLog(var388_upvw)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for _, v_10 in pairs({}) do
		local var416 = arg1.Speakers[v_10]
		if var416 then
			local var417 = var123_upvw
			if var417 then
				var417 = i_8
				if var417 then
					var417 = false
					if arg2:GetPlayer() ~= nil then
						var417 = false
						if var416:GetPlayer() ~= nil then
							if arg2:GetPlayer().LocaleId == var416:GetPlayer().LocaleId then
								var417 = false
							else
								var417 = true
							end
						end
					end
				end
			end
			if var417 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var416:InternalSendFilteredMessageWithTranslatedFilterResult(var388_upvw, arg1.Name, i_8)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var416:InternalSendFilteredMessageWithFilterResult(var388_upvw, arg1.Name)
			end
		end
	end
	local pairs_result1_20, pairs_result2_19, pairs_result3_3 = pairs(arg1.Speakers)
	-- KONSTANTERROR: [0] 1. Error Block 163 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [416] 297. Error Block 87 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [416] 297. Error Block 87 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [381] 272. Error Block 79 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [381] 272. Error Block 79 end (CF ANALYSIS FAILED)
end
function tbl_upvr.InternalAddSpeaker(arg1, arg2) -- Line 551
	if arg1.Speakers[arg2.Name] then
		warn("Speaker \""..arg2.name.."\" is already in the channel!")
	else
		arg1.Speakers[arg2.Name] = arg2
		local pcall_result1_20, pcall_result2_18 = pcall(function() -- Line 558
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.eSpeakerJoined:Fire(arg2.Name)
		end)
		if not pcall_result1_20 and pcall_result2_18 then
			print("Error removing channel: "..pcall_result2_18)
		end
	end
end
function tbl_upvr.InternalRemoveSpeaker(arg1, arg2) -- Line 564
	if not arg1.Speakers[arg2.Name] then
		warn("Speaker \""..arg2.name.."\" is not in the channel!")
	else
		arg1.Speakers[arg2.Name] = nil
		local pcall_result1_19, pcall_result2_17 = pcall(function() -- Line 571
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.eSpeakerLeft:Fire(arg2.Name)
		end)
		if not pcall_result1_19 and pcall_result2_17 then
			print("Error removing speaker: "..pcall_result2_17)
		end
	end
end
function tbl_upvr.InternalRemoveExcessMessagesFromLog(arg1) -- Line 577
	while arg1.MaxHistory < #arg1.ChatHistory do
		table.remove(arg1.ChatHistory, 1)
	end
end
function tbl_upvr.InternalAddMessageToHistoryLog(arg1, arg2) -- Line 584
	table.insert(arg1.ChatHistory, arg2)
	arg1:InternalRemoveExcessMessagesFromLog()
end
function tbl_upvr.GetMessageType(arg1, arg2, arg3) -- Line 590
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	if arg3 == nil then
		return module_5_upvr.MessageTypeSystem
	end
	return module_5_upvr.MessageTypeDefault
end
local module_2_upvr = require(ClientChatModules:WaitForChild("ChatSettings"))
function tbl_upvr.InternalCreateMessageObject(arg1, arg2, arg3, arg4, arg5) -- Line 597
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var472 = -1
	local var473
	local var474
	if arg3 then
		local any_GetSpeaker_result1_5 = arg1.ChatService:GetSpeaker(arg3)
		if any_GetSpeaker_result1_5 then
			local any_GetPlayer_result1_2 = any_GetSpeaker_result1_5:GetPlayer()
			if any_GetPlayer_result1_2 then
				var472 = any_GetPlayer_result1_2.UserId
				var474 = module_2_upvr.PlayerDisplayNamesEnabled
				if var474 then
					var474 = any_GetSpeaker_result1_5:GetNameForDisplay()
					var473 = var474
					-- KONSTANTWARNING: GOTO [33] #27
				end
			else
				var472 = 0
			end
		end
	end
	local tbl = {}
	var474 = arg1.ChatService:InternalGetUniqueMessageId()
	tbl.ID = var474
	tbl.FromSpeaker = arg3
	tbl.SpeakerDisplayName = var473
	tbl.SpeakerUserId = var472
	var474 = arg1.Name
	tbl.OriginalChannel = var474
	var474 = string.len(arg2)
	tbl.MessageLength = var474
	var474 = utf8.len(utf8.nfcnormalize(arg2))
	tbl.MessageLengthUtf8 = var474
	tbl.MessageType = arg1:GetMessageType(arg2, arg3)
	tbl.IsFiltered = arg4
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var474 = arg2
		return var474
	end
	if not arg4 or not INLINED() then
		var474 = nil
	end
	tbl.Message = var474
	var474 = os.time()
	tbl.Time = var474
	var474 = {}
	tbl.ExtraData = var474
	if any_GetSpeaker_result1_5 then
		var474 = pairs(any_GetSpeaker_result1_5.ExtraData)
		local pairs_result1_23, pairs_result2_13, pairs_result3 = pairs(any_GetSpeaker_result1_5.ExtraData)
		for i_13, v_11 in pairs_result1_23, pairs_result2_13, pairs_result3 do
			tbl.ExtraData[i_13] = v_11
			local var481
		end
	end
	if arg5 then
		pairs_result1_23 = pairs(arg5)
		for i_14, v_12 in pairs(arg5) do
			var481.ExtraData[i_14] = v_12
			local var485
		end
	end
	return var485
end
function tbl_upvr.SetChannelNameColor(arg1, arg2) -- Line 657
	arg1.ChannelNameColor = arg2
	for _, v_13 in pairs(arg1.Speakers) do
		v_13:UpdateChannelNameColor(arg1.Name, arg2)
	end
end
function tbl_upvr.GetWelcomeMessageForSpeaker(arg1, arg2) -- Line 664
	if arg1.GetWelcomeMessageFunction then
		local any_GetWelcomeMessageFunction_result1 = arg1.GetWelcomeMessageFunction(arg2)
		if any_GetWelcomeMessageFunction_result1 then
			return any_GetWelcomeMessageFunction_result1
		end
	end
	return arg1.WelcomeMessage
end
function tbl_upvr.RegisterGetWelcomeMessageFunction(arg1, arg2) -- Line 674
	if type(arg2) ~= "function" then
		error("RegisterGetWelcomeMessageFunction must be called with a function.")
	end
	arg1.GetWelcomeMessageFunction = arg2
end
function tbl_upvr.UnRegisterGetWelcomeMessageFunction(arg1) -- Line 681
	arg1.GetWelcomeMessageFunction = nil
end
local module_upvr = require(script.Parent:WaitForChild("Util"))
function module_4.new(arg1, arg2, arg3, arg4) -- Line 688
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.ChatService = arg1
	setmetatable_result1.Name = arg2
	setmetatable_result1.WelcomeMessage = arg3 or ""
	setmetatable_result1.GetWelcomeMessageFunction = nil
	setmetatable_result1.ChannelNameColor = arg4
	setmetatable_result1.Joinable = true
	setmetatable_result1.Leavable = true
	setmetatable_result1.AutoJoin = false
	setmetatable_result1.Private = false
	setmetatable_result1.Speakers = {}
	setmetatable_result1.Mutes = {}
	setmetatable_result1.MaxHistory = 200
	setmetatable_result1.HistoryIndex = 0
	setmetatable_result1.ChatHistory = {}
	setmetatable_result1.FilterMessageFunctions = module_upvr:NewSortedFunctionContainer()
	setmetatable_result1.ProcessCommandsFunctions = module_upvr:NewSortedFunctionContainer()
	setmetatable_result1.eDestroyed = Instance.new("BindableEvent")
	setmetatable_result1.eMessagePosted = Instance.new("BindableEvent")
	setmetatable_result1.eSpeakerJoined = Instance.new("BindableEvent")
	setmetatable_result1.eSpeakerLeft = Instance.new("BindableEvent")
	setmetatable_result1.eSpeakerMuted = Instance.new("BindableEvent")
	setmetatable_result1.eSpeakerUnmuted = Instance.new("BindableEvent")
	setmetatable_result1.MessagePosted = setmetatable_result1.eMessagePosted.Event
	setmetatable_result1.SpeakerJoined = setmetatable_result1.eSpeakerJoined.Event
	setmetatable_result1.SpeakerLeft = setmetatable_result1.eSpeakerLeft.Event
	setmetatable_result1.SpeakerMuted = setmetatable_result1.eSpeakerMuted.Event
	setmetatable_result1.SpeakerUnmuted = setmetatable_result1.eSpeakerUnmuted.Event
	setmetatable_result1.Destroyed = setmetatable_result1.eDestroyed.Event
	return setmetatable_result1
end
return module_4