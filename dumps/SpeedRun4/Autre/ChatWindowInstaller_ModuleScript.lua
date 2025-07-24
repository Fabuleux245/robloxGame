-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:29
-- Luau version 6, Types version 3
-- Time taken: 0.007560 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local FFlagEnableForkedChatAnalytics_upvr = require(RobloxGui.Modules.Common.Flags.FFlagEnableForkedChatAnalytics)
local ServerUtil_upvr = require(RobloxGui.Modules.Server.ServerUtil)
local var4_upvw
if FFlagEnableForkedChatAnalytics_upvr then
	var4_upvw = require(RobloxGui.Modules.Server.SendChatAnalytics)
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ChatWindowInstallerCheckClassName", false)
local pcall_result1, pcall_result2 = pcall(function() -- Line 22
	return UserSettings():IsUserFeatureEnabled("UserIsChatTranslationEnabled2")
end)
local function LoadLocalScript_upvr(arg1, arg2, arg3) -- Line 28, Named "LoadLocalScript"
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: ServerUtil_upvr (readonly)
	]]
	local SOME_3 = arg1:WaitForChild(arg2)
	if game_DefineFastFlag_result1_upvr and SOME_3.ClassName ~= "ModuleScript" then
		return SOME_3:Clone()
	end
	local LocalScript = Instance.new("LocalScript")
	LocalScript.Name = arg2
	if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
		LocalScript.Source = ServerUtil_upvr.getSourceForServerScript(SOME_3)
	else
		LocalScript.Source = SOME_3.Source
	end
	LocalScript.Parent = arg3
	return LocalScript
end
local function LoadModule_upvr(arg1, arg2, arg3) -- Line 46, Named "LoadModule"
	--[[ Upvalues[2]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: ServerUtil_upvr (readonly)
	]]
	local SOME = arg1:WaitForChild(arg2)
	if game_DefineFastFlag_result1_upvr and SOME.ClassName ~= "ModuleScript" then
		return SOME:Clone()
	end
	local ModuleScript = Instance.new("ModuleScript")
	ModuleScript.Name = arg2
	if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
		ModuleScript.Source = ServerUtil_upvr.getSourceForServerScript(SOME)
	else
		ModuleScript.Source = SOME.Source
	end
	ModuleScript.Parent = arg3
	return ModuleScript
end
local function _(arg1, arg2, arg3) -- Line 64, Named "GetBoolValue"
	local SOME_2 = arg1:FindFirstChild(arg2)
	if SOME_2 and SOME_2:IsA("BoolValue") then
		return SOME_2.Value
	end
	return arg3
end
local Chat_upvr = game:GetService("Chat")
local var15_upvw = pcall_result1 and pcall_result2
local StarterPlayerScripts_upvr = game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts")
local Players_upvr = game:GetService("Players")
return function() -- Line 74, Named "Install"
	--[[ Upvalues[8]:
		[1]: Chat_upvr (readonly)
		[2]: LoadLocalScript_upvr (readonly)
		[3]: LoadModule_upvr (readonly)
		[4]: var15_upvw (read and write)
		[5]: FFlagEnableForkedChatAnalytics_upvr (readonly)
		[6]: StarterPlayerScripts_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: var4_upvw (read and write)
	]]
	local var30 = true
	local var31
	if not var31 then
		var30 = false
		var31 = LoadLocalScript_upvr(script.Parent, "ChatScript", Chat_upvr)
		local LoadModule_upvr_result1 = LoadModule_upvr(script.Parent, "ChatMain", var31)
		LoadModule_upvr(script.Parent, "ChannelsBar", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "ChatBar", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "ChatChannel", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "MessageLogDisplay", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "ChatWindow", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "MessageLabelCreator", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "CommandProcessor", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "ChannelsTab", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent.Parent.Parent.Common, "ObjectPool", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "MessageSender", LoadModule_upvr_result1)
		LoadModule_upvr(script.Parent, "CurveUtil", LoadModule_upvr_result1)
		if var15_upvw then
			local BoolValue_2 = Instance.new("BoolValue")
			BoolValue_2.Name = "ChatTranslationEnabled"
			BoolValue_2.Value = false
			BoolValue_2.Parent = LoadModule_upvr_result1
			-- KONSTANTWARNING: GOTO [141] #106
		end
	elseif FFlagEnableForkedChatAnalytics_upvr then
		({}).ChatScript = "True"
	end
	local var34 = true
	local BubbleChat = Chat_upvr:FindFirstChild("BubbleChat")
	if not BubbleChat then
		var34 = false
		BubbleChat = LoadLocalScript_upvr(script.Parent.BubbleChat, "BubbleChat", Chat_upvr)
	elseif FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).BubbleChat = "True"
	end
	if not Chat_upvr:FindFirstChild("ClientChatModules") then
		local Folder_3 = Instance.new("Folder")
		Folder_3.Name = "ClientChatModules"
		Folder_3.Archivable = false
		Folder_3.Parent = Chat_upvr
	elseif FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ClientChatModules = "True"
	end
	if not Folder_3:FindFirstChild("ChatSettings") then
		LoadModule_upvr(script.Parent.DefaultClientChatModules, "ChatSettings", Folder_3)
	elseif FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ChatSettings = "True"
	end
	if not Folder_3:FindFirstChild("ChatConstants") then
		LoadModule_upvr(script.Parent.DefaultClientChatModules, "ChatConstants", Folder_3)
	elseif FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ChatConstants = "True"
	end
	if not Folder_3:FindFirstChild("ChatLocalization") then
		LoadModule_upvr(script.Parent.DefaultClientChatModules, "ChatLocalization", Folder_3)
	elseif FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ChatLocalization = "True"
	end
	if not Folder_3:FindFirstChild("MessageCreatorModules") then
		local Folder_2 = Instance.new("Folder")
		Folder_2.Name = "MessageCreatorModules"
		Folder_2.Archivable = false
		local BoolValue = Instance.new("BoolValue")
		BoolValue.Name = "InsertDefaultModules"
		BoolValue.Value = true
		BoolValue.Parent = Folder_2
		Folder_2.Parent = Folder_3
	end
	local InsertDefaultModules_2 = Folder_2:FindFirstChild("InsertDefaultModules")
	local var40
	if InsertDefaultModules_2 and InsertDefaultModules_2:IsA("BoolValue") then
		var40 = InsertDefaultModules_2.Value
	else
		var40 = false
	end
	if var40 then
		local children = script.Parent.DefaultClientChatModules.MessageCreatorModules:GetChildren()
		for i = 1, #children do
			if not Folder_2:FindFirstChild(children[i].Name) then
				LoadModule_upvr(script.Parent.DefaultClientChatModules.MessageCreatorModules, children[i].Name, Folder_2)
			elseif FFlagEnableForkedChatAnalytics_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[children[i].Name] = "True"
			end
		end
	end
	if not Folder_3:FindFirstChild("CommandModules") then
		local Folder = Instance.new("Folder")
		Folder.Name = "CommandModules"
		Folder.Archivable = false
		local BoolValue_3 = Instance.new("BoolValue")
		BoolValue_3.Name = "InsertDefaultModules"
		BoolValue_3.Value = true
		BoolValue_3.Parent = Folder
		Folder.Parent = Folder_3
	end
	local InsertDefaultModules = Folder:FindFirstChild("InsertDefaultModules")
	local var45
	if InsertDefaultModules and InsertDefaultModules:IsA("BoolValue") then
		var45 = InsertDefaultModules.Value
	else
		var45 = false
	end
	if var45 then
		local children_2 = script.Parent.DefaultClientChatModules.CommandModules:GetChildren()
		for i_2 = 1, #children_2 do
			if not Folder:FindFirstChild(children_2[i_2].Name) then
				LoadModule_upvr(script.Parent.DefaultClientChatModules.CommandModules, children_2[i_2].Name, Folder)
			elseif FFlagEnableForkedChatAnalytics_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[children_2[i_2].Name] = "True"
			end
		end
	end
	if not StarterPlayerScripts_upvr:FindFirstChild("ChatScript") then
		local clone = var31:Clone()
		clone.Parent = StarterPlayerScripts_upvr
		clone.Archivable = false
		for _, v in pairs(Players_upvr:GetPlayers()) do
			if v:FindFirstChildOfClass("PlayerGui") then
				local StringValue = Instance.new("StringValue")
				StringValue.Name = "ScriptToVerify"
				StringValue.Value = "ChatScript"
				StringValue.Parent = LoadLocalScript_upvr(script.Parent, "ChatInstallVerifier", v.PlayerGui)
			end
		end
	end
	var31.Archivable = var30
	if not StarterPlayerScripts_upvr:FindFirstChild("BubbleChat") then
		local clone_2 = BubbleChat:Clone()
		clone_2.Parent = StarterPlayerScripts_upvr
		clone_2.Archivable = false
		for _, v_2 in pairs(Players_upvr:GetPlayers()) do
			if v_2:FindFirstChildOfClass("PlayerGui") then
				local StringValue_2 = Instance.new("StringValue")
				StringValue_2.Name = "ScriptToVerify"
				StringValue_2.Value = "BubbleChat"
				StringValue_2.Parent = LoadLocalScript_upvr(script.Parent, "ChatInstallVerifier", v_2.PlayerGui)
			end
		end
	end
	BubbleChat.Archivable = var34
	if FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var4_upvw("LoadClientDefaultChatForkedModules", {})
	end
end