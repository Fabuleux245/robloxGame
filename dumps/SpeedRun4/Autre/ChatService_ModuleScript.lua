-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:48
-- Luau version 6, Types version 3
-- Time taken: 0.015829 seconds

local tbl_upvr = {0.05, 0.1, 0.2}
local module = {}
local RunService_upvr = game:GetService("RunService")
local Chat_upvr = game:GetService("Chat")
local Parent = script.Parent
local ClientChatModules = Chat_upvr:WaitForChild("ClientChatModules")
local ErrorMessageTextColor = require(ClientChatModules:WaitForChild("ChatSettings")).ErrorMessageTextColor
if not ErrorMessageTextColor then
	ErrorMessageTextColor = Color3.fromRGB(245, 50, 50)
end
local tbl_upvr_2 = {
	ChatColor = ErrorMessageTextColor;
}
local module_upvr_2 = require(Parent:WaitForChild("Speaker"))
local var10_upvw
pcall(function() -- Line 38
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw = require(game:GetService("Chat").ClientChatModules.ChatLocalization)
end)
local var12 = var10_upvw
if not var12 then
	var12 = {}
end
var10_upvw = var12
local var13_upvw = var10_upvw
if not var13_upvw.FormatMessageToSend or not var13_upvw.LocalizeFormattedMessage then
	function var13_upvw.FormatMessageToSend(arg1, arg2, arg3) -- Line 42
		return arg3
	end
end
local function _(arg1) -- Line 45, Named "allSpaces"
	local var14 = arg1
	if string.len(string.gsub(var14, ' ', "")) ~= 0 then
		var14 = false
	else
		var14 = true
	end
	return var14
end
local tbl_upvr_4 = {}
tbl_upvr_4.__index = tbl_upvr_4
local module_upvr = require(Parent:WaitForChild("ChatChannel"))
local module_upvr_3 = require(ClientChatModules:WaitForChild("ChatConstants"))
function tbl_upvr_4.AddChannel(arg1, arg2, arg3) -- Line 55
	--[[ Upvalues[3]:
		[1]: var13_upvw (read and write)
		[2]: module_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	if arg1.ChatChannels[arg2:lower()] then
		error(string.format("Channel %q alrady exists.", arg2))
	end
	local any_new_result1_2 = module_upvr.new(arg1, arg2)
	arg1.ChatChannels[arg2:lower()] = any_new_result1_2
	any_new_result1_2:RegisterProcessCommandsFunction("default_commands", function(arg1_3, arg2_3) -- Line 60, Named "DefaultChannelCommands"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: var13_upvw (copied, read and write)
		]]
		if arg2_3:lower() == "/leave" then
			local any_GetChannel_result1 = arg1:GetChannel(arg2)
			local any_GetSpeaker_result1_6 = arg1:GetSpeaker(arg1_3)
			if any_GetChannel_result1 and any_GetSpeaker_result1_6 then
				if any_GetChannel_result1.Leavable then
					any_GetSpeaker_result1_6:LeaveChannel(arg2)
					any_GetSpeaker_result1_6:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatService_YouHaveLeftChannel", string.format("You have left channel '%s'", arg2), "RBX_NAME", arg2), "System")
				else
					any_GetSpeaker_result1_6:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatService_CannotLeaveChannel", "You cannot leave this channel."), arg2)
				end
			end
			return true
		end
		return false
	end, module_upvr_3.HighPriority)
	local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 89
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1.eChannelAdded:Fire(arg2)
	end)
	if not pcall_result1_3 and pcall_result2_4 then
		print("Error addding channel: "..pcall_result2_4)
	end
	if arg3 ~= nil then
		any_new_result1_2.AutoJoin = arg3
		if arg3 then
			for _, v in pairs(arg1.Speakers) do
				v:JoinChannel(arg2)
			end
		end
	end
	return any_new_result1_2
end
function tbl_upvr_4.RemoveChannel(arg1, arg2) -- Line 106
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_lower_result1_2 = arg2:lower()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 29. Error Block 4 start (CF ANALYSIS FAILED)
	print("Error removing channel: "..any_lower_result1_2)
	do
		return
	end
	-- KONSTANTERROR: [39] 29. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 35. Error Block 5 start (CF ANALYSIS FAILED)
	warn(string.format("Channel %q does not exist.", arg2))
	-- KONSTANTERROR: [46] 35. Error Block 5 end (CF ANALYSIS FAILED)
end
function tbl_upvr_4.GetChannel(arg1, arg2) -- Line 122
	return arg1.ChatChannels[arg2:lower()]
end
function tbl_upvr_4.AddSpeaker(arg1, arg2) -- Line 127
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg1.Speakers[arg2:lower()] then
		error("Speaker \""..arg2.."\" already exists!")
	end
	local any_new_result1_3 = module_upvr_2.new(arg1, arg2)
	arg1.Speakers[arg2:lower()] = any_new_result1_3
	local pcall_result1_6, pcall_result2_10 = pcall(function() -- Line 135
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1.eSpeakerAdded:Fire(arg2)
	end)
	if not pcall_result1_6 and pcall_result2_10 then
		print("Error adding speaker: "..pcall_result2_10)
	end
	return any_new_result1_3
end
function tbl_upvr_4.InternalUnmuteSpeaker(arg1, arg2) -- Line 143
	for _, v_2 in pairs(arg1.ChatChannels) do
		if v_2:IsSpeakerMuted(arg2) then
			v_2:UnmuteSpeaker(arg2)
		end
	end
end
function tbl_upvr_4.RemoveSpeaker(arg1, arg2) -- Line 151
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_lower_result1 = arg2:lower()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 32. Error Block 4 start (CF ANALYSIS FAILED)
	print("Error removing speaker: "..any_lower_result1)
	do
		return
	end
	-- KONSTANTERROR: [43] 32. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 38. Error Block 5 start (CF ANALYSIS FAILED)
	warn("Speaker \""..arg2.."\" does not exist!")
	-- KONSTANTERROR: [50] 38. Error Block 5 end (CF ANALYSIS FAILED)
end
function tbl_upvr_4.GetSpeaker(arg1, arg2) -- Line 170
	return arg1.Speakers[arg2:lower()]
end
function tbl_upvr_4.GetSpeakerByUserOrDisplayName(arg1, arg2) -- Line 174
	local var53 = arg1.Speakers[arg2:lower()]
	if var53 then
		return var53
	end
	for _, v_3 in pairs(arg1.Speakers) do
		local any_GetPlayer_result1 = v_3:GetPlayer()
		if any_GetPlayer_result1 and any_GetPlayer_result1.DisplayName:lower() == arg2:lower() then
			return v_3
		end
	end
end
function tbl_upvr_4.GetChannelList(arg1) -- Line 190
	for _, v_4 in pairs(arg1.ChatChannels) do
		if not v_4.Private then
			table.insert({}, v_4.Name)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function tbl_upvr_4.GetAutoJoinChannelList(arg1) -- Line 200
	for _, v_5 in pairs(arg1.ChatChannels) do
		if v_5.AutoJoin then
			table.insert({}, v_5)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
function tbl_upvr_4.GetSpeakerList(arg1) -- Line 210
	local module_3 = {}
	for _, v_6 in pairs(arg1.Speakers) do
		table.insert(module_3, v_6.Name)
	end
	return module_3
end
function tbl_upvr_4.SendGlobalSystemMessage(arg1, arg2) -- Line 218
	for _, v_7 in pairs(arg1.Speakers) do
		v_7:SendSystemMessage(arg2, nil)
	end
end
function tbl_upvr_4.RegisterFilterMessageFunction(arg1, arg2, arg3, arg4) -- Line 224
	if arg1.FilterMessageFunctions:HasFunction(arg2) then
		error(string.format("FilterMessageFunction '%s' already exists", arg2))
	end
	arg1.FilterMessageFunctions:AddFunction(arg2, arg3, arg4)
end
function tbl_upvr_4.FilterMessageFunctionExists(arg1, arg2) -- Line 231
	return arg1.FilterMessageFunctions:HasFunction(arg2)
end
function tbl_upvr_4.UnregisterFilterMessageFunction(arg1, arg2) -- Line 235
	if not arg1.FilterMessageFunctions:HasFunction(arg2) then
		error(string.format("FilterMessageFunction '%s' does not exists", arg2))
	end
	arg1.FilterMessageFunctions:RemoveFunction(arg2)
end
function tbl_upvr_4.RegisterProcessCommandsFunction(arg1, arg2, arg3, arg4) -- Line 242
	if arg1.ProcessCommandsFunctions:HasFunction(arg2) then
		error(string.format("ProcessCommandsFunction '%s' already exists", arg2))
	end
	arg1.ProcessCommandsFunctions:AddFunction(arg2, arg3, arg4)
end
function tbl_upvr_4.ProcessCommandsFunctionExists(arg1, arg2) -- Line 249
	return arg1.ProcessCommandsFunctions:HasFunction(arg2)
end
function tbl_upvr_4.UnregisterProcessCommandsFunction(arg1, arg2) -- Line 253
	if not arg1.ProcessCommandsFunctions:HasFunction(arg2) then
		error(string.format("ProcessCommandsFunction '%s' does not exist", arg2))
	end
	arg1.ProcessCommandsFunctions:RemoveFunction(arg2)
end
local var81_upvw = 0
local var82_upvw = 0
local var83_upvw = 0
function tbl_upvr_4.InternalNotifyFilterIssue(arg1) -- Line 263
	--[[ Upvalues[5]:
		[1]: var81_upvw (read and write)
		[2]: var82_upvw (read and write)
		[3]: var83_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: tbl_upvr_2 (readonly)
	]]
	if 60 < tick() - var81_upvw then
		var82_upvw = 0
	end
	var82_upvw += 1
	var81_upvw = tick()
	if 3 <= var82_upvw then
		if 60 < tick() - var83_upvw then
			var83_upvw = tick()
			local any_GetChannel_result1_2 = arg1:GetChannel("System")
			if any_GetChannel_result1_2 then
				any_GetChannel_result1_2:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatService_ChatFilterIssues", "The chat filter is currently experiencing issues and messages may be slow to appear."), tbl_upvr_2)
			end
		end
	end
end
local tbl_upvr_3 = {}
function tbl_upvr_4.InternalApplyRobloxFilter(arg1, arg2, arg3, arg4) -- Line 292
	--[[ Upvalues[4]:
		[1]: RunService_upvr (readonly)
		[2]: Chat_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_upvr_3 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 51 start (CF ANALYSIS FAILED)
	if RunService_upvr:IsServer() then
		local var96
		if not RunService_upvr:IsStudio() then
			local any_GetSpeaker_result1_5 = arg1:GetSpeaker(arg2)
			var96 = arg4
			if var96 then
				var96 = arg1:GetSpeaker(arg4)
			end
			if any_GetSpeaker_result1_5 == nil then
				return nil
			end
			local any_GetPlayer_result1_upvr = any_GetSpeaker_result1_5:GetPlayer()
			if var96 then
			end
			if any_GetPlayer_result1_upvr == nil then
				return arg3
			end
			if string.len(string.gsub(arg3, ' ', "")) ~= 0 then
			else
			end
			if true then
				return arg3
			end
			while true do
				local any_GetPlayer_result1_upvr_2 = var96:GetPlayer()
				local pcall_result1_7, pcall_result2_8 = pcall(function() -- Line 315
					--[[ Upvalues[4]:
						[1]: any_GetPlayer_result1_upvr_2 (readonly)
						[2]: Chat_upvr (copied, readonly)
						[3]: arg3 (readonly)
						[4]: any_GetPlayer_result1_upvr (readonly)
					]]
					if any_GetPlayer_result1_upvr_2 then
						return Chat_upvr:FilterStringAsync(arg3, any_GetPlayer_result1_upvr, any_GetPlayer_result1_upvr_2)
					end
					return Chat_upvr:FilterStringForBroadcast(arg3, any_GetPlayer_result1_upvr)
				end)
				if pcall_result1_7 then
					return pcall_result2_8
				end
				warn("Error filtering message:", pcall_result2_8)
				local var103 = 0 + 1
				if 3 < var103 or 60 < tick() - tick() then
					arg1:InternalNotifyFilterIssue()
					return nil
				end
				local var104 = tbl_upvr[math.min(#tbl_upvr, var103)]
				wait(var104 + (math.random() * 2 - 1) * var104)
			end
			-- KONSTANTWARNING: GOTO [120] #98
		end
	end
	if not tbl_upvr_3[arg3] then
		tbl_upvr_3[arg3] = true
		wait()
	end
	do
		return arg3
	end
	-- KONSTANTERROR: [0] 1. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [120] 98. Error Block 29 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [120] 98. Error Block 29 end (CF ANALYSIS FAILED)
end
function tbl_upvr_4.InternalApplyRobloxFilterAndTranslate(arg1, arg2, arg3, arg4, arg5) -- Line 351
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local any_IsServer_result1_2 = RunService_upvr:IsServer()
	if any_IsServer_result1_2 then
		any_IsServer_result1_2 = not RunService_upvr:IsStudio()
		local var106
	end
	if any_IsServer_result1_2 then
		var106 = arg2
		local any_GetSpeaker_result1_2 = arg1:GetSpeaker(var106)
		if any_GetSpeaker_result1_2 == nil then
			var106 = nil
			return false, var106, nil
		end
		local any_GetPlayer_result1_upvr_6 = any_GetSpeaker_result1_2:GetPlayer()
		if any_GetPlayer_result1_upvr_6 == nil then
			var106 = true
			return var106, false, arg4
		end
		if string.len(string.gsub(arg4, ' ', "")) ~= 0 then
			var106 = false
		else
			var106 = true
		end
		if var106 then
			var106 = true
			return var106, false, arg4
		end
		var106 = pcall
		local function var109() -- Line 369
			--[[ Upvalues[4]:
				[1]: arg4 (readonly)
				[2]: any_GetPlayer_result1_upvr_6 (readonly)
				[3]: arg3 (readonly)
				[4]: arg5 (readonly)
			]]
			return game:GetService("TextService"):FilterAndTranslateStringAsync(arg4, any_GetPlayer_result1_upvr_6.UserId, arg3, arg5)
		end
		var106 = var106(var109)
		local var106_result1, var106_result2 = var106(var109)
		if var106_result1 then
			return true, true, var106_result2
		end
		warn("Error filtering and translating message", arg4, var106_result2)
		arg1:InternalNotifyFilterIssue()
		return false, nil, nil
	end
	wait()
	any_GetPlayer_result1_upvr_6 = false
	return true, any_GetPlayer_result1_upvr_6, arg4
end
function tbl_upvr_4.InternalApplyRobloxFilterNewAPI(arg1, arg2, arg3, arg4) -- Line 388
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local any_IsServer_result1 = RunService_upvr:IsServer()
	if any_IsServer_result1 then
		any_IsServer_result1 = not RunService_upvr:IsStudio()
		local var113
	end
	if any_IsServer_result1 then
		var113 = arg2
		local any_GetSpeaker_result1 = arg1:GetSpeaker(var113)
		if any_GetSpeaker_result1 == nil then
			var113 = nil
			return false, var113, nil
		end
		local any_GetPlayer_result1_upvr_5 = any_GetSpeaker_result1:GetPlayer()
		if any_GetPlayer_result1_upvr_5 == nil then
			var113 = true
			return var113, false, arg3
		end
		if string.len(string.gsub(arg3, ' ', "")) ~= 0 then
			var113 = false
		else
			var113 = true
		end
		if var113 then
			var113 = true
			return var113, false, arg3
		end
		var113 = pcall
		local function var116() -- Line 407
			--[[ Upvalues[3]:
				[1]: arg3 (readonly)
				[2]: any_GetPlayer_result1_upvr_5 (readonly)
				[3]: arg4 (readonly)
			]]
			return game:GetService("TextService"):FilterStringAsync(arg3, any_GetPlayer_result1_upvr_5.UserId, arg4)
		end
		var113 = var113(var116)
		local var113_result1, var113_result2 = var113(var116)
		if var113_result1 then
			return true, true, var113_result2
		end
		warn("Error filtering message:", arg3, var113_result2)
		arg1:InternalNotifyFilterIssue()
		return false, nil, nil
	end
	wait()
	any_GetPlayer_result1_upvr_5 = false
	return true, any_GetPlayer_result1_upvr_5, arg3
end
function tbl_upvr_4.InternalDoMessageFilter(arg1, arg2, arg3, arg4) -- Line 426
	for i_8, v1_upvr, _ in arg1.FilterMessageFunctions:GetIterator(), nil do
		local pcall_result1, pcall_result2 = pcall(function() -- Line 430
			--[[ Upvalues[4]:
				[1]: v1_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
			]]
			v1_upvr(arg2, arg3, arg4)
		end)
		if not pcall_result1 then
			warn(string.format("DoMessageFilter Function '%s' failed for reason: %s", i_8, pcall_result2))
		end
	end
end
function tbl_upvr_4.InternalDoProcessCommands(arg1, arg2, arg3, arg4) -- Line 440
	for i_9, v1_2_upvr, _ in arg1.ProcessCommandsFunctions:GetIterator(), nil do
		local pcall_result1_9, pcall_result2_7 = pcall(function() -- Line 444
			--[[ Upvalues[4]:
				[1]: v1_2_upvr (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
				[4]: arg4 (readonly)
			]]
			local v1_2_result1 = v1_2_upvr(arg2, arg3, arg4)
			if type(v1_2_result1) ~= "boolean" then
				error("Process command functions must return a bool")
			end
			return v1_2_result1
		end)
		if not pcall_result1_9 then
			warn(string.format("DoProcessCommands Function '%s' failed for reason: %s", i_9, pcall_result2_7))
		elseif pcall_result2_7 then
			return true
		end
	end
	return false
end
function tbl_upvr_4.InternalGetUniqueMessageId(arg1) -- Line 462
	local MessageIdCounter = arg1.MessageIdCounter
	arg1.MessageIdCounter = MessageIdCounter + 1
	return MessageIdCounter
end
function tbl_upvr_4.InternalAddSpeakerWithPlayerObject(arg1, arg2, arg3, arg4) -- Line 468
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg1.Speakers[arg2:lower()] then
		error("Speaker \""..arg2.."\" already exists!")
	end
	local any_new_result1_4 = module_upvr_2.new(arg1, arg2)
	any_new_result1_4:InternalAssignPlayerObject(arg3)
	arg1.Speakers[arg2:lower()] = any_new_result1_4
	if arg4 then
		local pcall_result1_4, pcall_result2_2 = pcall(function() -- Line 478
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.eSpeakerAdded:Fire(arg2)
		end)
		if not pcall_result1_4 and pcall_result2_2 then
			print("Error adding speaker: "..pcall_result2_2)
		end
	end
	return any_new_result1_4
end
function tbl_upvr_4.InternalFireSpeakerAdded(arg1, arg2) -- Line 487
	local pcall_result1_8, pcall_result2_5 = pcall(function() -- Line 488
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		arg1.eSpeakerAdded:Fire(arg2)
	end)
	if not pcall_result1_8 and pcall_result2_5 then
		print("Error firing speaker added: "..pcall_result2_5)
	end
end
local module_2_upvr = require(Parent:WaitForChild("Util"))
function module.new() -- Line 497
	--[[ Upvalues[2]:
		[1]: tbl_upvr_4 (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, tbl_upvr_4)
	setmetatable_result1.MessageIdCounter = 0
	setmetatable_result1.ChatChannels = {}
	setmetatable_result1.Speakers = {}
	setmetatable_result1.FilterMessageFunctions = module_2_upvr:NewSortedFunctionContainer()
	setmetatable_result1.ProcessCommandsFunctions = module_2_upvr:NewSortedFunctionContainer()
	setmetatable_result1.eChannelAdded = Instance.new("BindableEvent")
	setmetatable_result1.eChannelRemoved = Instance.new("BindableEvent")
	setmetatable_result1.eSpeakerAdded = Instance.new("BindableEvent")
	setmetatable_result1.eSpeakerRemoved = Instance.new("BindableEvent")
	setmetatable_result1.ChannelAdded = setmetatable_result1.eChannelAdded.Event
	setmetatable_result1.ChannelRemoved = setmetatable_result1.eChannelRemoved.Event
	setmetatable_result1.SpeakerAdded = setmetatable_result1.eSpeakerAdded.Event
	setmetatable_result1.SpeakerRemoved = setmetatable_result1.eSpeakerRemoved.Event
	setmetatable_result1.ChatServiceMajorVersion = 0
	setmetatable_result1.ChatServiceMinorVersion = 5
	return setmetatable_result1
end
return module.new()