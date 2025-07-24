-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:49
-- Luau version 6, Types version 3
-- Time taken: 0.014797 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local Chat_upvr = game:GetService("Chat")
local module_2_upvr = require(script:WaitForChild("ChatService"))
local module = require(Chat_upvr:WaitForChild("ClientChatModules"):WaitForChild("ChatSettings"))
local var10_upvw
pcall(function() -- Line 20
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: Chat_upvr (readonly)
	]]
	var10_upvw = require(Chat_upvr.ClientChatModules.ChatLocalization)
end)
local var12 = var10_upvw
if not var12 then
	var12 = {}
end
var10_upvw = var12
local var13_upvw = var10_upvw
if not var13_upvw.FormatMessageToSend or not var13_upvw.LocalizeFormattedMessage then
	function var13_upvw.FormatMessageToSend(arg1, arg2, arg3) -- Line 28
		return arg3
	end
end
local tbl_3_upvr = {}
if not ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents") then
	local Folder = Instance.new("Folder")
	Folder.Name = "DefaultChatSystemChatEvents"
	Folder.Archivable = false
	Folder.Parent = ReplicatedStorage
end
local MaximumMessageLength_upvr = module.MaximumMessageLength
local function validateMessageLength_upvr(arg1) -- Line 43, Named "validateMessageLength"
	--[[ Upvalues[1]:
		[1]: MaximumMessageLength_upvr (readonly)
	]]
	if MaximumMessageLength_upvr * 6 < arg1:len() then
		return false
	end
	if utf8.len(arg1) == nil then
		return false
	end
	if MaximumMessageLength_upvr < utf8.len(utf8.nfcnormalize(arg1)) then
		return false
	end
	return true
end
local var17_upvr = module.MaxChannelNameCheckLength or 50
local function validateChannelNameLength_upvr(arg1) -- Line 59, Named "validateChannelNameLength"
	--[[ Upvalues[1]:
		[1]: var17_upvr (readonly)
	]]
	if var17_upvr * 6 < arg1:len() then
		return false
	end
	if utf8.len(arg1) == nil then
		return false
	end
	if var17_upvr < utf8.len(utf8.nfcnormalize(arg1)) then
		return false
	end
	return true
end
local function emptyFunction_upvr() -- Line 77, Named "emptyFunction"
end
local function GetObjectWithNameAndType_upvr(arg1, arg2, arg3) -- Line 81, Named "GetObjectWithNameAndType"
	for _, v in pairs(arg1:GetChildren()) do
		if v:IsA(arg3) and v.Name == arg2 then
			return v
		end
	end
	return nil
end
local function _(arg1, arg2, arg3) -- Line 91, Named "CreateIfDoesntExist"
	--[[ Upvalues[2]:
		[1]: GetObjectWithNameAndType_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	if not GetObjectWithNameAndType_upvr(arg1, arg2, arg3) then
		local any = Instance.new(arg3)
		any.Name = arg2
		any.Parent = arg1
	end
	tbl_3_upvr[arg2] = any
	return any
end
local function _(arg1, arg2) -- Line 104, Named "CreateEventIfItDoesntExist"
	--[[ Upvalues[3]:
		[1]: GetObjectWithNameAndType_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: emptyFunction_upvr (readonly)
	]]
	if not GetObjectWithNameAndType_upvr(arg1, arg2, "RemoteEvent") then
		local RemoteEvent_9 = Instance.new("RemoteEvent")
		RemoteEvent_9.Name = arg2
		RemoteEvent_9.Parent = arg1
	end
	tbl_3_upvr[arg2] = RemoteEvent_9
	local var25 = RemoteEvent_9
	var25.OnServerEvent:Connect(emptyFunction_upvr)
	return var25
end
local var26 = Folder
if not GetObjectWithNameAndType_upvr(var26, "OnNewMessage", "RemoteEvent") then
	local RemoteEvent_11 = Instance.new("RemoteEvent")
	RemoteEvent_11.Name = "OnNewMessage"
	RemoteEvent_11.Parent = var26
end
tbl_3_upvr.OnNewMessage = RemoteEvent_11
RemoteEvent_11.OnServerEvent:Connect(emptyFunction_upvr)
local var28 = Folder
if not GetObjectWithNameAndType_upvr(var28, "OnMessageDoneFiltering", "RemoteEvent") then
	local RemoteEvent_10 = Instance.new("RemoteEvent")
	RemoteEvent_10.Name = "OnMessageDoneFiltering"
	RemoteEvent_10.Parent = var28
end
tbl_3_upvr.OnMessageDoneFiltering = RemoteEvent_10
RemoteEvent_10.OnServerEvent:Connect(emptyFunction_upvr)
local var30 = Folder
if not GetObjectWithNameAndType_upvr(var30, "OnNewSystemMessage", "RemoteEvent") then
	local RemoteEvent_6 = Instance.new("RemoteEvent")
	RemoteEvent_6.Name = "OnNewSystemMessage"
	RemoteEvent_6.Parent = var30
end
tbl_3_upvr.OnNewSystemMessage = RemoteEvent_6
RemoteEvent_6.OnServerEvent:Connect(emptyFunction_upvr)
local var32 = Folder
if not GetObjectWithNameAndType_upvr(var32, "OnChannelJoined", "RemoteEvent") then
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "OnChannelJoined"
	RemoteEvent.Parent = var32
end
tbl_3_upvr.OnChannelJoined = RemoteEvent
RemoteEvent.OnServerEvent:Connect(emptyFunction_upvr)
local var34 = Folder
if not GetObjectWithNameAndType_upvr(var34, "OnChannelLeft", "RemoteEvent") then
	local RemoteEvent_5 = Instance.new("RemoteEvent")
	RemoteEvent_5.Name = "OnChannelLeft"
	RemoteEvent_5.Parent = var34
end
tbl_3_upvr.OnChannelLeft = RemoteEvent_5
RemoteEvent_5.OnServerEvent:Connect(emptyFunction_upvr)
local var36 = Folder
if not GetObjectWithNameAndType_upvr(var36, "OnMuted", "RemoteEvent") then
	local RemoteEvent_2 = Instance.new("RemoteEvent")
	RemoteEvent_2.Name = "OnMuted"
	RemoteEvent_2.Parent = var36
end
tbl_3_upvr.OnMuted = RemoteEvent_2
RemoteEvent_2.OnServerEvent:Connect(emptyFunction_upvr)
local var38 = Folder
if not GetObjectWithNameAndType_upvr(var38, "OnUnmuted", "RemoteEvent") then
	local RemoteEvent_12 = Instance.new("RemoteEvent")
	RemoteEvent_12.Name = "OnUnmuted"
	RemoteEvent_12.Parent = var38
end
tbl_3_upvr.OnUnmuted = RemoteEvent_12
RemoteEvent_12.OnServerEvent:Connect(emptyFunction_upvr)
local var40 = Folder
if not GetObjectWithNameAndType_upvr(var40, "OnMainChannelSet", "RemoteEvent") then
	local RemoteEvent_3 = Instance.new("RemoteEvent")
	RemoteEvent_3.Name = "OnMainChannelSet"
	RemoteEvent_3.Parent = var40
end
tbl_3_upvr.OnMainChannelSet = RemoteEvent_3
RemoteEvent_3.OnServerEvent:Connect(emptyFunction_upvr)
local var42 = Folder
if not GetObjectWithNameAndType_upvr(var42, "ChannelNameColorUpdated", "RemoteEvent") then
	local RemoteEvent_8 = Instance.new("RemoteEvent")
	RemoteEvent_8.Name = "ChannelNameColorUpdated"
	RemoteEvent_8.Parent = var42
end
tbl_3_upvr.ChannelNameColorUpdated = RemoteEvent_8
RemoteEvent_8.OnServerEvent:Connect(emptyFunction_upvr)
local var44 = Folder
if not GetObjectWithNameAndType_upvr(var44, "SayMessageRequest", "RemoteEvent") then
	local RemoteEvent_7 = Instance.new("RemoteEvent")
	RemoteEvent_7.Name = "SayMessageRequest"
	RemoteEvent_7.Parent = var44
end
tbl_3_upvr.SayMessageRequest = RemoteEvent_7
RemoteEvent_7.OnServerEvent:Connect(emptyFunction_upvr)
local var46 = Folder
if not GetObjectWithNameAndType_upvr(var46, "SetBlockedUserIdsRequest", "RemoteEvent") then
	local RemoteEvent_4 = Instance.new("RemoteEvent")
	RemoteEvent_4.Name = "SetBlockedUserIdsRequest"
	RemoteEvent_4.Parent = var46
end
tbl_3_upvr.SetBlockedUserIdsRequest = RemoteEvent_4
RemoteEvent_4.OnServerEvent:Connect(emptyFunction_upvr)
local var48 = Folder
if not GetObjectWithNameAndType_upvr(var48, "GetInitDataRequest", "RemoteFunction") then
	local RemoteFunction = Instance.new("RemoteFunction")
	RemoteFunction.Name = "GetInitDataRequest"
	RemoteFunction.Parent = var48
end
tbl_3_upvr.GetInitDataRequest = RemoteFunction
local var50 = Folder
if not GetObjectWithNameAndType_upvr(var50, "MutePlayerRequest", "RemoteFunction") then
	local RemoteFunction_2 = Instance.new("RemoteFunction")
	RemoteFunction_2.Name = "MutePlayerRequest"
	RemoteFunction_2.Parent = var50
end
tbl_3_upvr.MutePlayerRequest = RemoteFunction_2
local var52 = Folder
if not GetObjectWithNameAndType_upvr(var52, "UnMutePlayerRequest", "RemoteFunction") then
	local RemoteFunction_3 = Instance.new("RemoteFunction")
	RemoteFunction_3.Name = "UnMutePlayerRequest"
	RemoteFunction_3.Parent = var52
end
tbl_3_upvr.UnMutePlayerRequest = RemoteFunction_3
local var54_upvw = tbl_3_upvr
local function CreatePlayerSpeakerObject_upvr(arg1) -- Line 128, Named "CreatePlayerSpeakerObject"
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: var54_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if module_2_upvr:GetSpeaker(arg1.Name) then
		module_2_upvr:RemoveSpeaker(arg1.Name)
	end
	for _, v_2 in pairs(module_2_upvr:GetAutoJoinChannelList()) do
		module_2_upvr:InternalAddSpeakerWithPlayerObject(arg1.Name, arg1, false):JoinChannel(v_2.Name)
		local var67_upvw
	end
	var67_upvw:InternalAssignEventFolder(var54_upvw)
	var67_upvw.ChannelJoined:connect(function(arg1_2, arg2) -- Line 145
		--[[ Upvalues[4]:
			[1]: module_2_upvr (copied, readonly)
			[2]: var67_upvw (read and write)
			[3]: var54_upvw (copied, read and write)
			[4]: arg1 (readonly)
		]]
		local var69
		local var70
		local any_GetChannel_result1_3 = module_2_upvr:GetChannel(arg1_2)
		if any_GetChannel_result1_3 then
			var69 = any_GetChannel_result1_3:GetHistoryLogForSpeaker(var67_upvw)
			var70 = any_GetChannel_result1_3.ChannelNameColor
		end
		var54_upvw.OnChannelJoined:FireClient(arg1, arg1_2, arg2, var69, var70)
	end)
	var67_upvw.Muted:connect(function(arg1_3, arg2, arg3) -- Line 157
		--[[ Upvalues[2]:
			[1]: var54_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		var54_upvw.OnMuted:FireClient(arg1, arg1_3, arg2, arg3)
	end)
	var67_upvw.Unmuted:connect(function(arg1_4) -- Line 161
		--[[ Upvalues[2]:
			[1]: var54_upvw (copied, read and write)
			[2]: arg1 (readonly)
		]]
		var54_upvw.OnUnmuted:FireClient(arg1, arg1_4)
	end)
	module_2_upvr:InternalFireSpeakerAdded(var67_upvw.Name)
end
var54_upvw.SayMessageRequest.OnServerEvent:connect(function(arg1, arg2, arg3) -- Line 168
	--[[ Upvalues[3]:
		[1]: validateMessageLength_upvr (readonly)
		[2]: validateChannelNameLength_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	if type(arg2) ~= "string" then return end
	if not validateMessageLength_upvr(arg2) then return end
	if type(arg3) ~= "string" then return end
	if not validateChannelNameLength_upvr(arg3) then return end
	local any_GetSpeaker_result1_13 = module_2_upvr:GetSpeaker(arg1.Name)
	if any_GetSpeaker_result1_13 then
		return any_GetSpeaker_result1_13:SayMessage(arg2, arg3)
	end
	return nil
end)
var54_upvw.MutePlayerRequest.OnServerInvoke = function(arg1, arg2) -- Line 189
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if type(arg2) ~= "string" then return end
	local any_GetSpeaker_result1_5 = module_2_upvr:GetSpeaker(arg1.Name)
	if any_GetSpeaker_result1_5 then
		local any_GetSpeaker_result1_6 = module_2_upvr:GetSpeaker(arg2)
		if any_GetSpeaker_result1_6 then
			any_GetSpeaker_result1_5:AddMutedSpeaker(any_GetSpeaker_result1_6.Name)
			return true
		end
	end
	return false
end
var54_upvw.UnMutePlayerRequest.OnServerInvoke = function(arg1, arg2) -- Line 205
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if type(arg2) ~= "string" then return end
	local any_GetSpeaker_result1_2 = module_2_upvr:GetSpeaker(arg1.Name)
	if any_GetSpeaker_result1_2 then
		local any_GetSpeaker_result1_8 = module_2_upvr:GetSpeaker(arg2)
		if any_GetSpeaker_result1_8 then
			any_GetSpeaker_result1_2:RemoveMutedSpeaker(any_GetSpeaker_result1_8.Name)
			return true
		end
	end
	return false
end
local tbl_2_upvr = {}
Players_upvr.PlayerAdded:connect(function(arg1) -- Line 224
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	for i_3, v_3 in pairs(tbl_2_upvr) do
		local any_GetSpeaker_result1_3 = module_2_upvr:GetSpeaker(i_3.Name)
		if any_GetSpeaker_result1_3 then
			for i_4 = 1, #v_3 do
				if v_3[i_4] == arg1.UserId then
					any_GetSpeaker_result1_3:AddMutedSpeaker(arg1.Name)
				end
			end
		end
	end
end)
Players_upvr.PlayerRemoving:connect(function(arg1) -- Line 238
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	tbl_2_upvr[arg1] = nil
end)
var54_upvw.SetBlockedUserIdsRequest.OnServerEvent:Connect(function(arg1, arg2) -- Line 242
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	if type(arg2) ~= "table" then
	else
		local any_GetSpeaker_result1_11 = module_2_upvr:GetSpeaker(arg1.Name)
		if any_GetSpeaker_result1_11 then
			for i_8 = 1, math.min(#arg2, 50) do
				if type(arg2[i_8]) == "number" then
					table.insert({}, arg2[i_8])
					local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg2[i_8])
					if any_GetPlayerByUserId_result1 then
						any_GetSpeaker_result1_11:AddMutedSpeaker(any_GetPlayerByUserId_result1.Name)
					end
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_2_upvr[arg1] = {}
		end
	end
end)
var54_upvw.GetInitDataRequest.OnServerInvoke = function(arg1) -- Line 268
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: CreatePlayerSpeakerObject_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_GetSpeaker_result1_9 = module_2_upvr:GetSpeaker(arg1.Name)
	if not any_GetSpeaker_result1_9 or not any_GetSpeaker_result1_9:GetPlayer() then
		CreatePlayerSpeakerObject_upvr(arg1)
	end
	local tbl_4 = {
		Channels = {};
		SpeakerExtraData = {};
	}
	for _, v_4 in pairs(module_2_upvr:GetSpeaker(arg1.Name):GetChannelList()) do
		local any_GetChannel_result1 = module_2_upvr:GetChannel(v_4)
		if any_GetChannel_result1 then
			local tbl = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl[1] = v_4
			tbl[2] = any_GetChannel_result1:GetWelcomeMessageForSpeaker(module_2_upvr:GetSpeaker(arg1.Name))
			tbl[3] = any_GetChannel_result1:GetHistoryLogForSpeaker(module_2_upvr:GetSpeaker(arg1.Name))
			tbl[4] = any_GetChannel_result1.ChannelNameColor
			table.insert(tbl_4.Channels, tbl)
		end
	end
	for _, v_5 in pairs(module_2_upvr:GetSpeakerList()) do
		tbl_4.SpeakerExtraData[v_5] = module_2_upvr:GetSpeaker(v_5).ExtraData
		local var128
	end
	return var128
end
local function DoJoinCommand_upvr(arg1, arg2, arg3) -- Line 302, Named "DoJoinCommand"
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: var13_upvw (read and write)
	]]
	local any_GetSpeaker_result1 = module_2_upvr:GetSpeaker(arg1)
	local any_GetChannel_result1_4 = module_2_upvr:GetChannel(arg2)
	if any_GetSpeaker_result1 then
		if any_GetChannel_result1_4 then
			if any_GetChannel_result1_4.Joinable then
				if not any_GetSpeaker_result1:IsInChannel(any_GetChannel_result1_4.Name) then
					any_GetSpeaker_result1:JoinChannel(any_GetChannel_result1_4.Name)
				else
					any_GetSpeaker_result1:SetMainChannel(any_GetChannel_result1_4.Name)
					any_GetSpeaker_result1:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_SwitchChannel_NowInChannel", string.format("You are now chatting in channel: '%s'", any_GetChannel_result1_4.Name), "RBX_NAME", any_GetChannel_result1_4.Name), any_GetChannel_result1_4.Name)
				end
			end
			any_GetSpeaker_result1:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatServiceRunner_YouCannotJoinChannel", "You cannot join channel '"..arg2.."'.", "RBX_NAME", arg2), arg3)
			return
		end
		any_GetSpeaker_result1:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatServiceRunner_ChannelDoesNotExist", "Channel '"..arg2.."' does not exist.", "RBX_NAME", arg2), arg3)
	end
end
local function DoLeaveCommand_upvr(arg1, arg2, arg3) -- Line 339, Named "DoLeaveCommand"
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: var13_upvw (read and write)
	]]
	local any_GetSpeaker_result1_7 = module_2_upvr:GetSpeaker(arg1)
	local any_GetChannel_result1_2 = module_2_upvr:GetChannel(arg2)
	if any_GetSpeaker_result1_7 then
		if any_GetSpeaker_result1_7:IsInChannel(arg2) then
			if any_GetChannel_result1_2.Leavable then
				any_GetSpeaker_result1_7:LeaveChannel(any_GetChannel_result1_2.Name)
				any_GetSpeaker_result1_7:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatService_YouHaveLeftChannel", string.format("You have left channel '%s'", arg2), "RBX_NAME", any_GetChannel_result1_2.Name), "System")
			else
				any_GetSpeaker_result1_7:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatServiceRunner_YouCannotLeaveChannel", "You cannot leave channel '"..arg2.."'.", "RBX_NAME", arg2), arg3)
			end
		end
		any_GetSpeaker_result1_7:SendSystemMessage(var13_upvw:FormatMessageToSend("GameChat_ChatServiceRunner_YouAreNotInChannel", "You are not in channel '"..arg2.."'.", "RBX_NAME", arg2), arg3)
	end
end
module_2_upvr:RegisterProcessCommandsFunction("default_commands", function(arg1, arg2, arg3) -- Line 372
	--[[ Upvalues[2]:
		[1]: DoJoinCommand_upvr (readonly)
		[2]: DoLeaveCommand_upvr (readonly)
	]]
	if string.sub(arg2, 1, 6):lower() == "/join " then
		DoJoinCommand_upvr(arg1, string.sub(arg2, 7), arg3)
		return true
	end
	if string.sub(arg2, 1, 3):lower() == "/j " then
		DoJoinCommand_upvr(arg1, string.sub(arg2, 4), arg3)
		return true
	end
	if string.sub(arg2, 1, 7):lower() == "/leave " then
		DoLeaveCommand_upvr(arg1, string.sub(arg2, 8), arg3)
		return true
	end
	if string.sub(arg2, 1, 3):lower() == "/l " then
		DoLeaveCommand_upvr(arg1, string.sub(arg2, 4), arg3)
		return true
	end
	return false
end)
if module.GeneralChannelName and module.GeneralChannelName ~= "" then
	local any_AddChannel_result1 = module_2_upvr:AddChannel(module.GeneralChannelName)
	any_AddChannel_result1.Leavable = false
	any_AddChannel_result1.AutoJoin = true
	local RunService_upvr = game:GetService("RunService")
	any_AddChannel_result1:RegisterGetWelcomeMessageFunction(function(arg1) -- Line 396
		--[[ Upvalues[2]:
			[1]: RunService_upvr (readonly)
			[2]: Chat_upvr (readonly)
		]]
		if RunService_upvr:IsStudio() then
			return nil
		end
		local any_GetPlayer_result1_upvr = arg1:GetPlayer()
		if any_GetPlayer_result1_upvr then
			local pcall_result1, pcall_result2_2 = pcall(function() -- Line 402
				--[[ Upvalues[2]:
					[1]: Chat_upvr (copied, readonly)
					[2]: any_GetPlayer_result1_upvr (readonly)
				]]
				return Chat_upvr:CanUserChatAsync(any_GetPlayer_result1_upvr.UserId)
			end)
			if pcall_result1 and not pcall_result2_2 then
				return ""
			end
		end
	end)
end
local any_AddChannel_result1_2_upvr = module_2_upvr:AddChannel("System")
any_AddChannel_result1_2_upvr.Leavable = false
any_AddChannel_result1_2_upvr.AutoJoin = true
any_AddChannel_result1_2_upvr.WelcomeMessage = var13_upvw:FormatMessageToSend("GameChat_ChatServiceRunner_SystemChannelWelcomeMessage", "This channel is for system and game notifications.")
any_AddChannel_result1_2_upvr.SpeakerJoined:connect(function(arg1) -- Line 419
	--[[ Upvalues[1]:
		[1]: any_AddChannel_result1_2_upvr (readonly)
	]]
	any_AddChannel_result1_2_upvr:MuteSpeaker(arg1)
end)
local function TryRunModule_upvr(arg1) -- Line 424, Named "TryRunModule"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if arg1:IsA("ModuleScript") then
		local arg1_5 = require(arg1)
		if type(arg1_5) == "function" then
			arg1_5(module_2_upvr)
		end
	end
end
local ChatModules = Chat_upvr:WaitForChild("ChatModules")
ChatModules.ChildAdded:connect(function(arg1) -- Line 434
	--[[ Upvalues[1]:
		[1]: TryRunModule_upvr (readonly)
	]]
	local pcall_result1_3, pcall_result2_3 = pcall(TryRunModule_upvr, arg1)
	if not pcall_result1_3 and pcall_result2_3 then
		print("Error running module "..arg1.Name..": "..pcall_result2_3)
	end
end)
for _, v_6 in pairs(ChatModules:GetChildren()) do
	local pcall_result1_2, pcall_result2_4 = pcall(TryRunModule_upvr, v_6)
	if not pcall_result1_2 and pcall_result2_4 then
		print("Error running module "..v_6.Name..": "..pcall_result2_4)
	end
end
Players_upvr.PlayerRemoving:connect(function(arg1) -- Line 448
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if module_2_upvr:GetSpeaker(arg1.Name) then
		module_2_upvr:RemoveSpeaker(arg1.Name)
	end
end)