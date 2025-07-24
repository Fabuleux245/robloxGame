-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:58
-- Luau version 6, Types version 3
-- Time taken: 0.008626 seconds

local module = {}
local RunService_upvr = game:GetService("RunService")
local pcall_result1, pcall_result2_5 = pcall(function() -- Line 16
	return UserSettings():IsUserFeatureEnabled("UserRemoveMessageOnTextFilterFailures")
end)
local var6_upvw = pcall_result1 and pcall_result2_5
local _, _ = pcall(function() -- Line 24
	return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)
local function _(arg1) -- Line 32, Named "ShallowCopy"
	local module_2 = {}
	for i, v in pairs(arg1) do
		module_2[i] = v
	end
	return module_2
end
local tbl_upvr = {}
local tbl_upvr_2 = {
	eDestroyed = true;
	eSaidMessage = true;
	eReceivedMessage = true;
	eReceivedUnfilteredMessage = true;
	eMessageDoneFiltering = true;
	eReceivedSystemMessage = true;
	eChannelJoined = true;
	eChannelLeft = true;
	eMuted = true;
	eUnmuted = true;
	eExtraDataUpdated = true;
	eMainChannelSet = true;
	eChannelNameColorUpdated = true;
}
local tbl_3_upvr = {
	Destroyed = "eDestroyed";
	SaidMessage = "eSaidMessage";
	ReceivedMessage = "eReceivedMessage";
	ReceivedUnfilteredMessage = "eReceivedUnfilteredMessage";
	RecievedUnfilteredMessage = "eReceivedUnfilteredMessage";
	MessageDoneFiltering = "eMessageDoneFiltering";
	ReceivedSystemMessage = "eReceivedSystemMessage";
	ChannelJoined = "eChannelJoined";
	ChannelLeft = "eChannelLeft";
	Muted = "eMuted";
	Unmuted = "eUnmuted";
	ExtraDataUpdated = "eExtraDataUpdated";
	MainChannelSet = "eMainChannelSet";
	ChannelNameColorUpdated = "eChannelNameColorUpdated";
}
function tbl_upvr.__index(arg1, arg2) -- Line 76
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local rawget_result1 = rawget(tbl_upvr, arg2)
	if rawget_result1 then
		return rawget_result1
	end
	if tbl_upvr_2[arg2] and not rawget(arg1, arg2) then
		rawset(arg1, arg2, Instance.new("BindableEvent"))
	end
	local var23 = tbl_3_upvr[arg2]
	if var23 and not rawget(arg1, arg2) then
		if not rawget(arg1, var23) then
			rawset(arg1, var23, Instance.new("BindableEvent"))
		end
		rawset(arg1, arg2, rawget(arg1, var23).Event)
	end
	return rawget(arg1, arg2)
end
function tbl_upvr.LazyFire(arg1, arg2, ...) -- Line 93
	local rawget_result1_2 = rawget(arg1, arg2)
	if rawget_result1_2 then
		rawget_result1_2:Fire(...)
	end
end
function tbl_upvr.SayMessage(arg1, arg2, arg3, arg4) -- Line 100
	if arg1.ChatService:InternalDoProcessCommands(arg1.Name, arg2, arg3) then return end
	if not arg3 then return end
	local var25 = arg1.Channels[arg3:lower()]
	if not var25 then return end
	local any_InternalPostMessage_result1_upvr = var25:InternalPostMessage(arg1, arg2, arg4)
	if any_InternalPostMessage_result1_upvr then
		pcall(function() -- Line 115
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: any_InternalPostMessage_result1_upvr (readonly)
				[3]: arg3 (readonly)
			]]
			arg1:LazyFire("eSaidMessage", any_InternalPostMessage_result1_upvr, arg3)
		end)
	end
	return any_InternalPostMessage_result1_upvr
end
function tbl_upvr.JoinChannel(arg1, arg2) -- Line 123
	if arg1.Channels[arg2:lower()] then
		warn("Speaker is already in channel \""..arg2..'"')
	else
		local any_GetChannel_result1_upvr = arg1.ChatService:GetChannel(arg2)
		if not any_GetChannel_result1_upvr then
			error("Channel \""..arg2.."\" does not exist!")
		end
		arg1.Channels[arg2:lower()] = any_GetChannel_result1_upvr
		any_GetChannel_result1_upvr:InternalAddSpeaker(arg1)
		local pcall_result1_7, pcall_result2_4 = pcall(function() -- Line 136
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_GetChannel_result1_upvr (readonly)
			]]
			arg1.eChannelJoined:Fire(any_GetChannel_result1_upvr.Name, any_GetChannel_result1_upvr:GetWelcomeMessageForSpeaker(arg1))
		end)
		if not pcall_result1_7 and pcall_result2_4 then
			print("Error joining channel: "..pcall_result2_4)
		end
	end
end
function tbl_upvr.LeaveChannel(arg1, arg2) -- Line 144
	if not arg1.Channels[arg2:lower()] then
		warn("Speaker is not in channel \""..arg2..'"')
	else
		local var32_upvr = arg1.Channels[arg2:lower()]
		arg1.Channels[arg2:lower()] = nil
		var32_upvr:InternalRemoveSpeaker(arg1)
		local pcall_result1_3, pcall_result2 = pcall(function() -- Line 154
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var32_upvr (readonly)
			]]
			arg1:LazyFire("eChannelLeft", var32_upvr.Name)
			if arg1.PlayerObj then
				arg1.EventFolder.OnChannelLeft:FireClient(arg1.PlayerObj, var32_upvr.Name)
			end
		end)
		if not pcall_result1_3 and pcall_result2 then
			print("Error leaving channel: "..pcall_result2)
		end
	end
end
function tbl_upvr.IsInChannel(arg1, arg2) -- Line 165
	local var36
	if arg1.Channels[arg2:lower()] == nil then
		var36 = false
	else
		var36 = true
	end
	return var36
end
function tbl_upvr.GetChannelList(arg1) -- Line 169
	local module_3 = {}
	for _, v_2 in pairs(arg1.Channels) do
		table.insert(module_3, v_2.Name)
	end
	return module_3
end
function tbl_upvr.SendMessage(arg1, arg2, arg3, arg4, arg5) -- Line 177
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var45 = arg1.Channels[arg3:lower()]
	if var45 then
		var45:SendMessageToSpeaker(arg2, arg1.Name, arg4, arg5)
	elseif RunService_upvr:IsStudio() then
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot receive a message in it.", arg1.Name, arg3))
	end
end
function tbl_upvr.SendSystemMessage(arg1, arg2, arg3, arg4) -- Line 188
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local var46 = arg1.Channels[arg3:lower()]
	if var46 then
		var46:SendSystemMessageToSpeaker(arg2, arg1.Name, arg4)
	elseif RunService_upvr:IsStudio() then
		warn(string.format("Speaker '%s' is not in channel '%s' and cannot receive a system message in it.", arg1.Name, arg3))
	end
end
function tbl_upvr.GetPlayer(arg1) -- Line 199
	return arg1.PlayerObj
end
local module_upvr = require(game:GetService("Chat"):WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
function tbl_upvr.GetNameForDisplay(arg1) -- Line 203
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.PlayerDisplayNamesEnabled then
		local any_GetPlayer_result1 = arg1:GetPlayer()
		if any_GetPlayer_result1 then
			return any_GetPlayer_result1.DisplayName
		end
		return arg1.Name
	end
	return arg1.Name
end
function tbl_upvr.SetExtraData(arg1, arg2, arg3) -- Line 217
	arg1.ExtraData[arg2] = arg3
	arg1:LazyFire("eExtraDataUpdated", arg2, arg3)
end
function tbl_upvr.GetExtraData(arg1, arg2) -- Line 222
	return arg1.ExtraData[arg2]
end
function tbl_upvr.SetMainChannel(arg1, arg2) -- Line 226
	local pcall_result1_4, pcall_result2_2 = pcall(function() -- Line 227
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1:LazyFire("eMainChannelSet", arg2)
		if arg1.PlayerObj then
			arg1.EventFolder.OnMainChannelSet:FireClient(arg1.PlayerObj, arg2)
		end
	end)
	if not pcall_result1_4 and pcall_result2_2 then
		print("Error setting main channel: "..pcall_result2_2)
	end
end
function tbl_upvr.AddMutedSpeaker(arg1, arg2) -- Line 239
	arg1.MutedSpeakers[arg2:lower()] = true
end
function tbl_upvr.RemoveMutedSpeaker(arg1, arg2) -- Line 243
	arg1.MutedSpeakers[arg2:lower()] = false
end
function tbl_upvr.IsSpeakerMuted(arg1, arg2) -- Line 247
	return arg1.MutedSpeakers[arg2:lower()]
end
function tbl_upvr.InternalDestroy(arg1) -- Line 253
	for _, v_3 in pairs(arg1.Channels) do
		v_3:InternalRemoveSpeaker(arg1)
	end
	arg1.eDestroyed:Fire()
	arg1.EventFolder = nil
	arg1.eDestroyed:Destroy()
	arg1.eSaidMessage:Destroy()
	arg1.eReceivedMessage:Destroy()
	arg1.eReceivedUnfilteredMessage:Destroy()
	arg1.eMessageDoneFiltering:Destroy()
	arg1.eReceivedSystemMessage:Destroy()
	arg1.eChannelJoined:Destroy()
	arg1.eChannelLeft:Destroy()
	arg1.eMuted:Destroy()
	arg1.eUnmuted:Destroy()
	arg1.eExtraDataUpdated:Destroy()
	arg1.eMainChannelSet:Destroy()
	arg1.eChannelNameColorUpdated:Destroy()
end
function tbl_upvr.InternalAssignPlayerObject(arg1, arg2) -- Line 276
	arg1.PlayerObj = arg2
end
function tbl_upvr.InternalAssignEventFolder(arg1, arg2) -- Line 280
	arg1.EventFolder = arg2
end
function tbl_upvr.InternalSendMessage(arg1, arg2, arg3) -- Line 284
	local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 285
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		arg1:LazyFire("eReceivedUnfilteredMessage", arg2, arg3)
		if arg1.PlayerObj then
			arg1.EventFolder.OnNewMessage:FireClient(arg1.PlayerObj, arg2, arg3)
		end
	end)
	if not pcall_result1_2 and pcall_result2_3 then
		print("Error sending internal message: "..pcall_result2_3)
	end
end
function tbl_upvr.InternalSendFilteredMessage(arg1, arg2, arg3) -- Line 296
	local pcall_result1_6, pcall_result2_6 = pcall(function() -- Line 297
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		arg1:LazyFire("eReceivedMessage", arg2, arg3)
		arg1:LazyFire("eMessageDoneFiltering", arg2, arg3)
		if arg1.PlayerObj then
			arg1.EventFolder.OnMessageDoneFiltering:FireClient(arg1.PlayerObj, arg2, arg3)
		end
	end)
	if not pcall_result1_6 and pcall_result2_6 then
		print("Error sending internal filtered message: "..pcall_result2_6)
	end
end
function tbl_upvr.InternalSendFilteredMessageWithTranslatedFilterResult(arg1, arg2, arg3, arg4) -- Line 312
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local tbl = {}
	for i_4, v_4 in pairs(arg2) do
		tbl[i_4] = v_4
	end
	local var71_upvr = tbl
	local any_GetPlayer_result1_2_upvr = arg1:GetPlayer()
	if any_GetPlayer_result1_2_upvr ~= nil then
		i_4 = any_GetPlayer_result1_2_upvr.LocaleId
		-- KONSTANTWARNING: GOTO [25] #18
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 17. Error Block 30 start (CF ANALYSIS FAILED)
	local var73_upvw = ""
	local var74_upvw
	local FilterResult_upvr_2 = var71_upvr.FilterResult
	local var77_upvr
	pcall(function() -- Line 322
		--[[ Upvalues[6]:
			[1]: var71_upvr (readonly)
			[2]: any_GetPlayer_result1_2_upvr (readonly)
			[3]: var73_upvw (read and write)
			[4]: FilterResult_upvr_2 (readonly)
			[5]: var77_upvr (readonly)
			[6]: var74_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 27. Error Block 6 start (CF ANALYSIS FAILED)
		var74_upvw = var77_upvr:GetNonChatStringForBroadcastAsync()
		do
			return
		end
		-- KONSTANTERROR: [32] 27. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [38] 32. Error Block 7 start (CF ANALYSIS FAILED)
		var73_upvw = FilterResult_upvr_2
		-- KONSTANTERROR: [38] 32. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	if var6_upvw then
		var71_upvr.Message = var73_upvw
		if var74_upvw then
			var71_upvr.TranslatedMessage = var74_upvw
		end
		var71_upvr.FilterResult = nil
		arg1:InternalSendFilteredMessage(var71_upvr, arg3)
	elseif 0 < #var73_upvw then
		var71_upvr.Message = var73_upvw
		if var74_upvw then
			var71_upvr.TranslatedMessage = var74_upvw
		end
		var71_upvr.FilterResult = nil
		arg1:InternalSendFilteredMessage(var71_upvr, arg3)
	end
	-- KONSTANTERROR: [24] 17. Error Block 30 end (CF ANALYSIS FAILED)
end
function tbl_upvr.InternalSendFilteredMessageWithFilterResult(arg1, arg2, arg3) -- Line 358
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	local tbl_2 = {}
	for i_5, v_5 in pairs(arg2) do
		tbl_2[i_5] = v_5
	end
	local var86_upvr = tbl_2
	local var87_upvw = ""
	local any_GetPlayer_result1_upvr = arg1:GetPlayer()
	local FilterResult_upvr = var86_upvr.FilterResult
	pcall(function() -- Line 365
		--[[ Upvalues[4]:
			[1]: var86_upvr (readonly)
			[2]: any_GetPlayer_result1_upvr (readonly)
			[3]: var87_upvw (read and write)
			[4]: FilterResult_upvr (readonly)
		]]
		if var86_upvr.IsFilterResult then
			if any_GetPlayer_result1_upvr then
				var87_upvw = FilterResult_upvr:GetChatForUserAsync(any_GetPlayer_result1_upvr.UserId)
			else
				var87_upvw = FilterResult_upvr:GetNonChatStringForBroadcastAsync()
			end
		end
		var87_upvw = FilterResult_upvr
	end)
	if var6_upvw then
		var86_upvr.Message = var87_upvw
		var86_upvr.FilterResult = nil
		arg1:InternalSendFilteredMessage(var86_upvr, arg3)
	elseif 0 < #var87_upvw then
		var86_upvr.Message = var87_upvw
		var86_upvr.FilterResult = nil
		arg1:InternalSendFilteredMessage(var86_upvr, arg3)
	end
end
function tbl_upvr.InternalSendSystemMessage(arg1, arg2, arg3) -- Line 394
	local pcall_result1_5, pcall_result2_7 = pcall(function() -- Line 395
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		arg1:LazyFire("eReceivedSystemMessage", arg2, arg3)
		if arg1.PlayerObj then
			arg1.EventFolder.OnNewSystemMessage:FireClient(arg1.PlayerObj, arg2, arg3)
		end
	end)
	if not pcall_result1_5 and pcall_result2_7 then
		print("Error sending internal system message: "..pcall_result2_7)
	end
end
function tbl_upvr.UpdateChannelNameColor(arg1, arg2, arg3) -- Line 406
	arg1:LazyFire("eChannelNameColorUpdated", arg2, arg3)
	if arg1.PlayerObj then
		arg1.EventFolder.ChannelNameColorUpdated:FireClient(arg1.PlayerObj, arg2, arg3)
	end
end
function module.new(arg1, arg2) -- Line 416
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr)
	setmetatable_result1.ChatService = arg1
	setmetatable_result1.PlayerObj = nil
	setmetatable_result1.Name = arg2
	setmetatable_result1.ExtraData = {}
	setmetatable_result1.Channels = {}
	setmetatable_result1.MutedSpeakers = {}
	setmetatable_result1.EventFolder = nil
	return setmetatable_result1
end
return module