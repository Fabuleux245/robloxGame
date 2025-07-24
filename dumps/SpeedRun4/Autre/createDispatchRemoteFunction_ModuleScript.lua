-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:02
-- Luau version 6, Types version 3
-- Time taken: 0.005306 seconds

local Chat_upvr = game:GetService("Chat")
local TextChatService_upvr = game:GetService("TextChatService")
local Parent = script:FindFirstAncestor("ExpChatServer").Parent
local ExpChatShared = require(Parent.ExpChatShared)
local any_new_result1_upvr = ExpChatShared.Logger:new("ExpChat/"..script.Name)
local getFFlagExpChatWhisperSetting_upvr = ExpChatShared.Flags.getFFlagExpChatWhisperSetting
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("StopNaivelyCreatingWhisperChannels", false)
local function _(arg1, arg2) -- Line 15, Named "canUsersTalkToEachOther"
	--[[ Upvalues[5]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: getFFlagExpChatWhisperSetting_upvr (readonly)
		[3]: TextChatService_upvr (readonly)
		[4]: Chat_upvr (readonly)
		[5]: any_new_result1_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr and arg1 == arg2 then
		return false
	end
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 20
		--[[ Upvalues[5]:
			[1]: getFFlagExpChatWhisperSetting_upvr (copied, readonly)
			[2]: TextChatService_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: Chat_upvr (copied, readonly)
		]]
		if getFFlagExpChatWhisperSetting_upvr() then
			return TextChatService_upvr:CanUsersWhisperAsync(arg1, arg2)
		end
		local any_CanUsersChatAsync_result1_2 = Chat_upvr:CanUsersChatAsync(arg1, arg2)
		if any_CanUsersChatAsync_result1_2 then
			any_CanUsersChatAsync_result1_2 = Chat_upvr:CanUsersChatAsync(arg2, arg1)
		end
		return any_CanUsersChatAsync_result1_2
	end)
	local var12 = pcall_result1_2 and pcall_result2_2
	any_new_result1_upvr:debug("CanUsersChat: {}", tostring(var12))
	return var12
end
local function _(arg1, arg2) -- Line 34, Named "whisperChannelAlreadyExists"
	--[[ Upvalues[1]:
		[1]: TextChatService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = arg1
		return var13
	end
	if arg1 >= arg2 or not INLINED() then
		var13 = arg2
	end
	if arg2 >= arg1 or not arg1 then
	end
	local TextChannels = TextChatService_upvr:FindFirstChild("TextChannels")
	if not TextChannels then
		TextChannels = TextChatService_upvr
	end
	var13 = TextChannels:FindFirstChild(string.format("RBXWhisper:%d_%d", var13, arg2))
	return var13
end
local List_upvr = require(Parent.llama).List
local function createWhisperChannel_upvr(arg1, arg2) -- Line 41, Named "createWhisperChannel"
	--[[ Upvalues[2]:
		[1]: TextChatService_upvr (readonly)
		[2]: List_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var16_upvr
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var16_upvr = arg1
		return var16_upvr
	end
	if arg1 >= arg2 or not INLINED_2() then
		var16_upvr = arg2
	end
	if arg2 >= arg1 or not arg1 then
	end
	local TextChannels_2 = TextChatService_upvr:FindFirstChild("TextChannels")
	if not TextChannels_2 then
		TextChannels_2 = TextChatService_upvr
	end
	var16_upvr = Instance.new("TextChannel")
	var16_upvr.Name = string.format("RBXWhisper:%d_%d", var16_upvr, arg2)
	var16_upvr.Parent = TextChannels_2
	var16_upvr:AddUserAsync(arg1)
	var16_upvr:AddUserAsync(arg2)
	var16_upvr.ChildRemoved:Connect(function(arg1_2) -- Line 53
		--[[ Upvalues[2]:
			[1]: List_upvr (copied, readonly)
			[2]: var16_upvr (readonly)
		]]
		if List_upvr.count(var16_upvr:GetChildren(), function(arg1_3) -- Line 54
			return arg1_3:IsA("TextSource")
		end) < 2 then
			var16_upvr:Destroy()
		end
	end)
	return var16_upvr
end
local function _(arg1, arg2, arg3) -- Line 66, Named "createInstance"
	local any = Instance.new(arg1)
	any.Name = arg2
	any.Parent = arg3
	return any
end
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
return function() -- Line 73, Named "createDispatchRemoteFunction"
	--[[ Upvalues[7]:
		[1]: RobloxReplicatedStorage_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: TextChatService_upvr (readonly)
		[5]: getFFlagExpChatWhisperSetting_upvr (readonly)
		[6]: Chat_upvr (readonly)
		[7]: createWhisperChannel_upvr (readonly)
	]]
	local ExperienceChat = RobloxReplicatedStorage_upvr:FindFirstChild("ExperienceChat")
	if not ExperienceChat then
		local Folder = Instance.new("Folder")
		Folder.Name = "ExperienceChat"
		Folder.Parent = RobloxReplicatedStorage_upvr
		ExperienceChat = Folder
	end
	local WhisperChat = ExperienceChat:FindFirstChild("WhisperChat")
	if not WhisperChat then
		local RemoteFunction = Instance.new("RemoteFunction")
		RemoteFunction.Name = "WhisperChat"
		RemoteFunction.Parent = ExperienceChat
		WhisperChat = RemoteFunction
	end
	if WhisperChat:IsA("RemoteFunction") then
		function WhisperChat.OnServerInvoke(arg1, arg2) -- Line 82
			--[[ Upvalues[6]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[3]: TextChatService_upvr (copied, readonly)
				[4]: getFFlagExpChatWhisperSetting_upvr (copied, readonly)
				[5]: Chat_upvr (copied, readonly)
				[6]: createWhisperChannel_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 47 start (CF ANALYSIS FAILED)
			any_new_result1_upvr:trace("WhisperChat remote invoked with: {}", tostring(arg2))
			local tonumber_result1_upvr = tonumber(arg2)
			local UserId_upvr = arg1.UserId
			if tonumber_result1_upvr then
				local var29 = game_DefineFastFlag_result1_upvr
				if var29 then
					if UserId_upvr >= tonumber_result1_upvr or not UserId_upvr then
					end
					if tonumber_result1_upvr >= UserId_upvr or not UserId_upvr then
					end
					if not TextChatService_upvr:FindFirstChild("TextChannels") then
					end
					var29 = TextChatService_upvr:FindFirstChild(string.format("RBXWhisper:%d_%d", tonumber_result1_upvr, tonumber_result1_upvr))
					if var29 then
						any_new_result1_upvr:trace("Whisper TextChannel already exists")
						return var29
					end
					local var30
					if game_DefineFastFlag_result1_upvr and UserId_upvr == tonumber_result1_upvr then
						var30 = false
					else
						local pcall_result1, pcall_result2 = pcall(function() -- Line 20
							--[[ Upvalues[5]:
								[1]: getFFlagExpChatWhisperSetting_upvr (copied, readonly)
								[2]: TextChatService_upvr (copied, readonly)
								[3]: UserId_upvr (readonly)
								[4]: tonumber_result1_upvr (readonly)
								[5]: Chat_upvr (copied, readonly)
							]]
							if getFFlagExpChatWhisperSetting_upvr() then
								return TextChatService_upvr:CanUsersWhisperAsync(UserId_upvr, tonumber_result1_upvr)
							end
							local any_CanUsersChatAsync_result1_3 = Chat_upvr:CanUsersChatAsync(UserId_upvr, tonumber_result1_upvr)
							if any_CanUsersChatAsync_result1_3 then
								any_CanUsersChatAsync_result1_3 = Chat_upvr:CanUsersChatAsync(tonumber_result1_upvr, UserId_upvr)
							end
							return any_CanUsersChatAsync_result1_3
						end)
						local var35 = pcall_result1 and pcall_result2
						any_new_result1_upvr:debug("CanUsersChat: {}", tostring(var35))
						var30 = var35
					end
					if var30 then
						var30 = any_new_result1_upvr:trace
						var30("Creating whisper TextChannel")
						var30 = createWhisperChannel_upvr(UserId_upvr, tonumber_result1_upvr)
						do
							return var30
						end
						-- KONSTANTWARNING: GOTO [130] #111
					end
				else
					var30 = game_DefineFastFlag_result1_upvr
					if var30 and UserId_upvr == tonumber_result1_upvr then
						var29 = false
					else
						var30 = pcall
						local function var36() -- Line 20
							--[[ Upvalues[5]:
								[1]: getFFlagExpChatWhisperSetting_upvr (copied, readonly)
								[2]: TextChatService_upvr (copied, readonly)
								[3]: UserId_upvr (readonly)
								[4]: tonumber_result1_upvr (readonly)
								[5]: Chat_upvr (copied, readonly)
							]]
							if getFFlagExpChatWhisperSetting_upvr() then
								return TextChatService_upvr:CanUsersWhisperAsync(UserId_upvr, tonumber_result1_upvr)
							end
							local any_CanUsersChatAsync_result1 = Chat_upvr:CanUsersChatAsync(UserId_upvr, tonumber_result1_upvr)
							if any_CanUsersChatAsync_result1 then
								any_CanUsersChatAsync_result1 = Chat_upvr:CanUsersChatAsync(tonumber_result1_upvr, UserId_upvr)
							end
							return any_CanUsersChatAsync_result1
						end
						var30 = var30(var36)
						local var30_result1, var30_result2 = var30(var36)
						local var40 = var30_result1 and var30_result2
						any_new_result1_upvr:debug("CanUsersChat: {}", tostring(var40))
						var29 = var40
					end
					if var29 then
						var29 = any_new_result1_upvr:trace
						var29("Creating whisper TextChannel")
						var29 = createWhisperChannel_upvr
						var30_result1 = UserId_upvr
						var29 = var29(var30_result1, tonumber_result1_upvr)
						return var29
					end
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 47 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [130] 111. Error Block 29 start (CF ANALYSIS FAILED)
			do
				return nil
			end
			-- KONSTANTERROR: [130] 111. Error Block 29 end (CF ANALYSIS FAILED)
		end
	end
	return WhisperChat
end