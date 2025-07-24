-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:03
-- Luau version 6, Types version 3
-- Time taken: 0.009168 seconds

local TextChatService_upvr = game:GetService("TextChatService")
local ExpChatServer = script:FindFirstAncestor("ExpChatServer")
local Parent_2 = ExpChatServer.Parent
local List_upvr = require(Parent_2.llama).List
local ExpChatShared = require(Parent_2.ExpChatShared)
local Actions = ExpChatShared.Actions
local function _() -- Line 37
	--[[ Upvalues[2]:
		[1]: List_upvr (readonly)
		[2]: TextChatService_upvr (readonly)
	]]
	return #List_upvr.filter(TextChatService_upvr:GetDescendants(), function(arg1) -- Line 38
		return arg1:IsA("TextChannel")
	end)
end
local function _() -- Line 45
	--[[ Upvalues[2]:
		[1]: List_upvr (readonly)
		[2]: TextChatService_upvr (readonly)
	]]
	return #List_upvr.filter(TextChatService_upvr:GetDescendants(), function(arg1) -- Line 46
		return arg1:IsA("TextChatCommand")
	end)
end
local any_new_result1_upvr = ExpChatShared.Logger:new("ExpChat/"..script.Name)
local createStore_upvr = require(script.createStore)
local createDispatchRemoteFunction_upvr = require(ExpChatServer.createDispatchRemoteFunction)
local Analytics_upvr = ExpChatShared.Analytics
local watchForErrors_upvr = ExpChatShared.watchForErrors
local Teams_upvr = game:GetService("Teams")
local Config_upvr = ExpChatShared.Config
local Players_upvr = game:GetService("Players")
local Commands_upvr = ExpChatShared.Commands
local getFFlagExpChatMigrationAnalytics_upvr = ExpChatShared.Flags.getFFlagExpChatMigrationAnalytics
local getFFlagExpChatAlwaysRunTCS_upvr = require(Parent_2.SharedFlags).getFFlagExpChatAlwaysRunTCS
local countParticipantsInTextChannel_upvr = ExpChatShared.countParticipantsInTextChannel
local PlayerAdded_upvr = Actions.PlayerAdded
local PlayerRemoved_upvr = Actions.PlayerRemoved
return function(arg1) -- Line 53
	--[[ Upvalues[16]:
		[1]: any_new_result1_upvr (readonly)
		[2]: createStore_upvr (readonly)
		[3]: createDispatchRemoteFunction_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: watchForErrors_upvr (readonly)
		[6]: TextChatService_upvr (readonly)
		[7]: Teams_upvr (readonly)
		[8]: Config_upvr (readonly)
		[9]: Players_upvr (readonly)
		[10]: Commands_upvr (readonly)
		[11]: List_upvr (readonly)
		[12]: getFFlagExpChatMigrationAnalytics_upvr (readonly)
		[13]: getFFlagExpChatAlwaysRunTCS_upvr (readonly)
		[14]: countParticipantsInTextChannel_upvr (readonly)
		[15]: PlayerAdded_upvr (readonly)
		[16]: PlayerRemoved_upvr (readonly)
	]]
	any_new_result1_upvr:trace("mountServerApp started")
	local var13_result1_upvr = createStore_upvr()
	createDispatchRemoteFunction_upvr()
	if arg1 and arg1.analytics then
		Analytics_upvr.with(arg1.analytics)
	end
	watchForErrors_upvr(game:GetService("ScriptContext"), arg1.script, true)
	local tbl_upvr = {}
	if TextChatService_upvr.CreateDefaultTextChannels then
		any_new_result1_upvr:trace("Creating default TextChannels")
		local Folder_upvr = Instance.new("Folder")
		Folder_upvr.Name = "TextChannels"
		Folder_upvr.Parent = TextChatService_upvr
		local function findChannel_upvr(arg1_2) -- Line 74, Named "findChannel"
			--[[ Upvalues[1]:
				[1]: TextChatService_upvr (copied, readonly)
			]]
			for _, v in pairs(TextChatService_upvr:GetDescendants()) do
				if v:IsA("TextChannel") and v.Name == arg1_2 then
					return v
				end
			end
			return nil
		end
		local function _(arg1_3) -- Line 84, Named "addChannel"
			--[[ Upvalues[2]:
				[1]: findChannel_upvr (readonly)
				[2]: Folder_upvr (readonly)
			]]
			if not findChannel_upvr(arg1_3) then
				local TextChannel = Instance.new("TextChannel")
				TextChannel.Name = arg1_3
				TextChannel.Parent = Folder_upvr
			end
			return TextChannel
		end
		local function findTextSourceFromChannelWithUserId_upvr(arg1_4, arg2) -- Line 96, Named "findTextSourceFromChannelWithUserId"
			for _, v_2 in pairs(arg1_4:GetChildren()) do
				if v_2:IsA("TextSource") and v_2.UserId == arg2 then
					return v_2
				end
			end
			return nil
		end
		local function createTeamChannel_upvr(arg1_5) -- Line 106, Named "createTeamChannel"
			--[[ Upvalues[4]:
				[1]: findChannel_upvr (readonly)
				[2]: Folder_upvr (readonly)
				[3]: any_new_result1_upvr (copied, readonly)
				[4]: findTextSourceFromChannelWithUserId_upvr (readonly)
			]]
			local var60 = "RBXTeam"..tostring(arg1_5.TeamColor.Name)
			if not findChannel_upvr(var60) then
				local TextChannel_4 = Instance.new("TextChannel")
				TextChannel_4.Name = var60
				TextChannel_4.Parent = Folder_upvr
			end
			any_new_result1_upvr:debug("Creating team TextChannel: {}", TextChannel_4.Name)
			arg1_5.PlayerAdded:Connect(function(arg1_6) -- Line 110
				--[[ Upvalues[3]:
					[1]: arg1_5 (readonly)
					[2]: findChannel_upvr (copied, readonly)
					[3]: Folder_upvr (copied, readonly)
				]]
				local var63 = "RBXTeam"..tostring(arg1_5.TeamColor.Name)
				if not findChannel_upvr(var63) then
					local TextChannel_2 = Instance.new("TextChannel")
					TextChannel_2.Name = var63
					TextChannel_2.Parent = Folder_upvr
				end
				TextChannel_2:AddUserAsync(arg1_6.UserId).CanSend = true
			end)
			arg1_5.PlayerRemoved:Connect(function(arg1_7) -- Line 116
				--[[ Upvalues[4]:
					[1]: arg1_5 (readonly)
					[2]: findChannel_upvr (copied, readonly)
					[3]: Folder_upvr (copied, readonly)
					[4]: findTextSourceFromChannelWithUserId_upvr (copied, readonly)
				]]
				local var66 = "RBXTeam"..tostring(arg1_5.TeamColor.Name)
				if not findChannel_upvr(var66) then
					local TextChannel_3 = Instance.new("TextChannel")
					TextChannel_3.Name = var66
					TextChannel_3.Parent = Folder_upvr
				end
				local findTextSourceFromChannelWithUserId_result1 = findTextSourceFromChannelWithUserId_upvr(TextChannel_3, arg1_7.UserId)
				if findTextSourceFromChannelWithUserId_result1 then
					findTextSourceFromChannelWithUserId_result1:Destroy()
				end
			end)
			arg1_5:GetPropertyChangedSignal("TeamColor"):Connect(function() -- Line 127
				--[[ Upvalues[3]:
					[1]: arg1_5 (readonly)
					[2]: findChannel_upvr (copied, readonly)
					[3]: Folder_upvr (copied, readonly)
				]]
				local var70 = "RBXTeam"..tostring(arg1_5.TeamColor.Name)
				if not findChannel_upvr(var70) then
					local TextChannel_6 = Instance.new("TextChannel")
					TextChannel_6.Name = var70
					TextChannel_6.Parent = Folder_upvr
				end
				TextChannel_6.Name = "RBXTeam"..tostring(arg1_5.TeamColor.Name)
			end)
		end
		for _, v_3 in pairs(Teams_upvr:GetTeams()) do
			if v_3:IsA("Team") then
				createTeamChannel_upvr(v_3)
			end
		end
		Teams_upvr.ChildAdded:Connect(function(arg1_8) -- Line 139
			--[[ Upvalues[1]:
				[1]: createTeamChannel_upvr (readonly)
			]]
			if arg1_8:IsA("Team") then
				createTeamChannel_upvr(arg1_8)
			end
		end)
		Teams_upvr.ChildRemoved:Connect(function(arg1_9) -- Line 145
			--[[ Upvalues[2]:
				[1]: findChannel_upvr (readonly)
				[2]: any_new_result1_upvr (copied, readonly)
			]]
			if arg1_9:IsA("Team") then
				local findChannel_upvr_result1_3 = findChannel_upvr("RBXTeam"..tostring(arg1_9.TeamColor.Name))
				if findChannel_upvr_result1_3 then
					any_new_result1_upvr:debug("Destroying team TextChannel: {}", findChannel_upvr_result1_3.Name)
					findChannel_upvr_result1_3:Destroy()
				end
			end
		end)
		for i_4, _ in pairs(Config_upvr.DefaultChannelNames) do
			any_new_result1_upvr:trace("Creating default channel: {}", i_4)
			if not findChannel_upvr(i_4) then
				local TextChannel_5 = Instance.new("TextChannel")
				TextChannel_5.Name = i_4
				TextChannel_5.Parent = Folder_upvr
			end
			table.insert(tbl_upvr, TextChannel_5)
		end
		local function addPlayerTextSourceToDefaultChannels(arg1_10) -- Line 160
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: any_new_result1_upvr (copied, readonly)
			]]
			for _, v_5 in ipairs(tbl_upvr) do
				any_new_result1_upvr:trace("Adding user {} to TextChannel: {}", tostring(arg1_10.UserId), v_5.Name)
				if v_5.Name == "RBXGeneral" then
					v_5:AddUserAsync(arg1_10.UserId).CanSend = true
				elseif v_5.Name == "RBXSystem" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					v_5:AddUserAsync(arg1_10.UserId).CanSend = false
				end
			end
		end
		for i_6, v_6 in pairs(Players_upvr:GetPlayers()) do
			if v_6:IsA("Player") then
				addPlayerTextSourceToDefaultChannels(v_6)
			end
		end
		Players_upvr.PlayerAdded:Connect(addPlayerTextSourceToDefaultChannels)
		Analytics_upvr.FireRccAnalyticsWithEventName("DefaultChannelsCreated")
	end
	findChannel_upvr = TextChatService_upvr
	Folder_upvr = findChannel_upvr.CreateDefaultCommands
	if Folder_upvr then
		Folder_upvr = any_new_result1_upvr:trace
		Folder_upvr("Creating default TextChatCommands")
		Folder_upvr = Instance.new
		findChannel_upvr = "Folder"
		Folder_upvr = Folder_upvr(findChannel_upvr)
		local var91 = Folder_upvr
		findChannel_upvr = "TextChatCommands"
		var91.Name = findChannel_upvr
		findChannel_upvr = TextChatService_upvr
		var91.Parent = findChannel_upvr
		findChannel_upvr = ipairs
		createTeamChannel_upvr = Commands_upvr
		findChannel_upvr = findChannel_upvr(createTeamChannel_upvr.enabledCommands)
		local findChannel_upvr_result1_2, findChannel_upvr_result2, findChannel_upvr_result3 = findChannel_upvr(createTeamChannel_upvr.enabledCommands)
		for _, v_7 in findChannel_upvr_result1_2, findChannel_upvr_result2, findChannel_upvr_result3 do
			local TextChatCommand = Instance.new("TextChatCommand")
			TextChatCommand.Name = v_7.name
			TextChatCommand.PrimaryAlias = v_7.alias[1]
			i_6 = v_7.alias
			TextChatCommand.SecondaryAlias = i_6[2] or ""
			TextChatCommand.Parent = var91
			local _
		end
		findChannel_upvr_result1_2 = Analytics_upvr.FireRccAnalyticsWithEventName
		findChannel_upvr_result1_2("DefaultCommandsCreated")
	end
	findChannel_upvr_result1_2 = List_upvr.filter
	function findChannel_upvr_result3(arg1_11) -- Line 38
		return arg1_11:IsA("TextChannel")
	end
	findChannel_upvr_result1_2 = findChannel_upvr_result1_2(TextChatService_upvr:GetDescendants(), findChannel_upvr_result3)
	findChannel_upvr_result3 = List_upvr
	findChannel_upvr_result3 = TextChatService_upvr:GetDescendants()
	findChannel_upvr_result1_2 = #findChannel_upvr_result3.filter(findChannel_upvr_result3, function(arg1_12) -- Line 46
		return arg1_12:IsA("TextChatCommand")
	end)
	findChannel_upvr_result3 = Analytics_upvr
	findChannel_upvr_result3 = "ExperienceChatLoaded"
	findChannel_upvr_result3.FireRccAnalyticsWithEventName(findChannel_upvr_result3, {
		loadedChannels = #findChannel_upvr_result1_2;
		loadedCommands = findChannel_upvr_result1_2;
	})
	if getFFlagExpChatMigrationAnalytics_upvr() and getFFlagExpChatAlwaysRunTCS_upvr() then
		findChannel_upvr_result3 = Analytics_upvr
		findChannel_upvr_result3 = "AutomigratedToTCS"
		findChannel_upvr_result3.FireRccAnalyticsDeferred(findChannel_upvr_result3, {
			universeId = game.GameId;
		})
	end
	any_new_result1_upvr:debug("Start watching for new channels and commands")
	findChannel_upvr_result3 = TextChatService_upvr
	findChannel_upvr_result3.DescendantAdded:Connect(function(arg1_13) -- Line 216
		--[[ Upvalues[4]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: List_upvr (copied, readonly)
			[3]: TextChatService_upvr (copied, readonly)
			[4]: countParticipantsInTextChannel_upvr (copied, readonly)
		]]
		if arg1_13:IsA("TextChannel") then
			Analytics_upvr.FireRccAnalyticsWithEventName("ChannelCreated", {
				channelName = arg1_13.Name;
				totalChannels = #List_upvr.filter(TextChatService_upvr:GetDescendants(), function(arg1_15) -- Line 38
					return arg1_15:IsA("TextChannel")
				end);
			})
		else
			if arg1_13:IsA("TextChatCommand") then
				Analytics_upvr.FireRccAnalyticsWithEventName("CommandCreated", {
					commandName = arg1_13.Name;
				})
				return
			end
			if arg1_13:IsA("TextSource") then
				local Parent = arg1_13.Parent
				if Parent and Parent:IsA("TextChannel") then
					Analytics_upvr.FireRccAnalyticsWithEventName("ChannelJoined", {
						channelName = Parent.Name;
						totalParticipants = countParticipantsInTextChannel_upvr(Parent);
					})
				end
			end
		end
	end)
	findChannel_upvr_result3 = TextChatService_upvr
	findChannel_upvr_result3.DescendantRemoving:Connect(function(arg1_16) -- Line 237
		--[[ Upvalues[4]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: List_upvr (copied, readonly)
			[3]: TextChatService_upvr (copied, readonly)
			[4]: countParticipantsInTextChannel_upvr (copied, readonly)
		]]
		if arg1_16:IsA("TextChannel") then
			Analytics_upvr.FireRccAnalyticsWithEventName("ChannelRemoved", {
				channelName = arg1_16.Name;
				totalChannels = #List_upvr.filter(TextChatService_upvr:GetDescendants(), function(arg1_18) -- Line 38
					return arg1_18:IsA("TextChannel")
				end) - 1;
			})
		else
			if arg1_16:IsA("TextChatCommand") then
				Analytics_upvr.FireRccAnalyticsWithEventName("CommandRemoved", {
					commandName = arg1_16.Name;
				})
				return
			end
			if arg1_16:IsA("TextSource") then
				local Parent_3 = arg1_16.Parent
				if Parent_3 and Parent_3:IsA("TextChannel") then
					Analytics_upvr.FireRccAnalyticsWithEventName("ChannelLeft", {
						channelName = Parent_3.Name;
						totalParticipants = countParticipantsInTextChannel_upvr(Parent_3);
					})
				end
			end
		end
	end)
	findChannel_upvr_result3 = Players_upvr:GetPlayers()
	local pairs_result1, pairs_result2, pairs_result3_2 = pairs(findChannel_upvr_result3)
	for _, v_8 in pairs_result1, pairs_result2, pairs_result3_2 do
		i_6 = PlayerAdded_upvr
		v_6 = v_8.UserId
		i_6 = i_6(v_6, v_8.Name, v_8.DisplayName)
		var13_result1_upvr:dispatch(i_6)
	end
	pairs_result2 = Players_upvr
	pairs_result2.PlayerAdded:Connect(function(arg1_19) -- Line 261
		--[[ Upvalues[2]:
			[1]: var13_result1_upvr (readonly)
			[2]: PlayerAdded_upvr (copied, readonly)
		]]
		var13_result1_upvr:dispatch(PlayerAdded_upvr(arg1_19.UserId, arg1_19.Name, arg1_19.DisplayName))
	end)
	pairs_result2 = Players_upvr
	pairs_result2.PlayerRemoving:Connect(function(arg1_20) -- Line 265
		--[[ Upvalues[2]:
			[1]: var13_result1_upvr (readonly)
			[2]: PlayerRemoved_upvr (copied, readonly)
		]]
		var13_result1_upvr:dispatch(PlayerRemoved_upvr(arg1_20.UserId))
	end)
end