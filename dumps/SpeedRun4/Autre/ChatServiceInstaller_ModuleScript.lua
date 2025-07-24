-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:49
-- Luau version 6, Types version 3
-- Time taken: 0.004613 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local FFlagEnableForkedChatAnalytics_upvr = require(RobloxGui.Modules.Common.Flags.FFlagEnableForkedChatAnalytics)
local ServerUtil_upvr = require(RobloxGui.Modules.Server.ServerUtil)
local var4_upvw
if FFlagEnableForkedChatAnalytics_upvr then
	var4_upvw = require(RobloxGui.Modules.Server.SendChatAnalytics)
end
local function LoadScript_upvr(arg1, arg2) -- Line 15, Named "LoadScript"
	--[[ Upvalues[1]:
		[1]: ServerUtil_upvr (readonly)
	]]
	local Script = Instance.new("Script")
	Script.Name = arg1
	if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
		Script.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent:WaitForChild(arg1))
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Script.Source = script.Parent:WaitForChild(arg1).Source
	end
	Script.Parent = arg2
	return Script
end
local function _(arg1, arg2, arg3) -- Line 28, Named "LoadModule"
	--[[ Upvalues[1]:
		[1]: ServerUtil_upvr (readonly)
	]]
	local ModuleScript = Instance.new("ModuleScript")
	ModuleScript.Name = arg2
	if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
		ModuleScript.Source = ServerUtil_upvr.getSourceForServerScript(arg1:WaitForChild(arg2))
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		ModuleScript.Source = arg1:WaitForChild(arg2).Source
	end
	ModuleScript.Parent = arg3
	return ModuleScript
end
local function _(arg1, arg2, arg3) -- Line 41, Named "GetBoolValue"
	local SOME = arg1:FindFirstChild(arg2)
	if SOME and SOME:IsA("BoolValue") then
		return SOME.Value
	end
	return arg3
end
local function makeDefaultLocalizationTable_upvr(arg1) -- Line 51, Named "makeDefaultLocalizationTable"
	local LocalizationTable = Instance.new("LocalizationTable")
	LocalizationTable.Name = "ChatLocalization"
	LocalizationTable.Archivable = false
	LocalizationTable.SourceLocaleId = "en-us"
	LocalizationTable:SetEntries(require(script.Parent:WaitForChild("DefaultChatLocalization")))
	LocalizationTable:SetIsExemptFromUGCAnalytics(true)
	LocalizationTable.Parent = arg1
end
local Chat_upvr = game:GetService("Chat")
local ServerScriptService_upvr = game:GetService("ServerScriptService")
return function() -- Line 61, Named "Install"
	--[[ Upvalues[7]:
		[1]: Chat_upvr (readonly)
		[2]: makeDefaultLocalizationTable_upvr (readonly)
		[3]: LoadScript_upvr (readonly)
		[4]: ServerUtil_upvr (readonly)
		[5]: FFlagEnableForkedChatAnalytics_upvr (readonly)
		[6]: ServerScriptService_upvr (readonly)
		[7]: var4_upvw (read and write)
	]]
	local ChatLocalization = Chat_upvr:FindFirstChild("ChatLocalization")
	if ChatLocalization then
		if ChatLocalization:IsA("LocalizationTable") then
			ChatLocalization:SetIsExemptFromUGCAnalytics(true)
			-- KONSTANTWARNING: GOTO [21] #18
		end
	else
		makeDefaultLocalizationTable_upvr(Chat_upvr)
	end
	local var18 = true
	if not Chat_upvr:FindFirstChild("ChatServiceRunner") then
		var18 = false
		local LoadScript_upvr_result1 = LoadScript_upvr("ChatServiceRunner", Chat_upvr)
		local ModuleScript_6 = Instance.new("ModuleScript")
		ModuleScript_6.Name = "ChatService"
		if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
			ModuleScript_6.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent:WaitForChild("ChatService"))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			ModuleScript_6.Source = script.Parent:WaitForChild("ChatService").Source
		end
		ModuleScript_6.Parent = LoadScript_upvr_result1
		local ModuleScript_5 = Instance.new("ModuleScript")
		ModuleScript_5.Name = "ChatChannel"
		if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
			ModuleScript_5.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent:WaitForChild("ChatChannel"))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			ModuleScript_5.Source = script.Parent:WaitForChild("ChatChannel").Source
		end
		ModuleScript_5.Parent = LoadScript_upvr_result1
		local ModuleScript_2 = Instance.new("ModuleScript")
		ModuleScript_2.Name = "Speaker"
		if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
			ModuleScript_2.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent:WaitForChild("Speaker"))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			ModuleScript_2.Source = script.Parent:WaitForChild("Speaker").Source
		end
		ModuleScript_2.Parent = LoadScript_upvr_result1
		local ModuleScript_4 = Instance.new("ModuleScript")
		ModuleScript_4.Name = "Util"
		if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
			ModuleScript_4.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent:WaitForChild("Util"))
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			ModuleScript_4.Source = script.Parent:WaitForChild("Util").Source
		end
		ModuleScript_4.Parent = LoadScript_upvr_result1
	elseif FFlagEnableForkedChatAnalytics_upvr then
		({}).ChatServiceRunner = "True"
	end
	if not Chat_upvr:FindFirstChild("ChatModules") then
		local Folder = Instance.new("Folder")
		Folder.Name = "ChatModules"
		Folder.Archivable = false
		local BoolValue = Instance.new("BoolValue")
		BoolValue.Name = "InsertDefaultModules"
		BoolValue.Value = true
		BoolValue.Parent = Folder
		Folder.Parent = Chat_upvr
	end
	assert(Folder, "")
	local InsertDefaultModules = Folder:FindFirstChild("InsertDefaultModules")
	local var27
	if InsertDefaultModules and InsertDefaultModules:IsA("BoolValue") then
		var27 = InsertDefaultModules.Value
	else
		var27 = false
	end
	if var27 then
		if not Folder:FindFirstChild("Utility") then
			local Folder_2 = Instance.new("Folder")
			Folder_2.Name = "Utility"
			Folder_2.Parent = Folder
		end
		local children = script.Parent.DefaultChatModules:GetChildren()
		for i = 1, #children do
			if children.className ~= "Folder" and not Folder:FindFirstChild(children[i].Name) then
				local Name_2 = children[i].Name
				local ModuleScript_7 = Instance.new("ModuleScript")
				ModuleScript_7.Name = Name_2
				if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
					ModuleScript_7.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent.DefaultChatModules:WaitForChild(Name_2))
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					ModuleScript_7.Source = script.Parent.DefaultChatModules:WaitForChild(Name_2).Source
				end
				ModuleScript_7.Parent = Folder
			elseif FFlagEnableForkedChatAnalytics_upvr and children.className ~= "Folder" then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[children[i].Name] = "True"
			end
		end
		for _, v in pairs(script.Parent.DefaultChatModules.Utility:GetChildren()) do
			if not Folder.Utility:FindFirstChild(v.Name) then
				local Name = v.Name
				local ModuleScript_3 = Instance.new("ModuleScript")
				ModuleScript_3.Name = Name
				if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
					ModuleScript_3.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent.DefaultChatModules.Utility:WaitForChild(Name))
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					ModuleScript_3.Source = script.Parent.DefaultChatModules.Utility:WaitForChild(Name).Source
				end
				ModuleScript_3.Parent = Folder.Utility
			elseif FFlagEnableForkedChatAnalytics_upvr then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[v.Name] = "True"
			end
		end
	end
	if not ServerScriptService_upvr:FindFirstChild("ChatServiceRunner") then
		local clone = LoadScript_upvr_result1:Clone()
		clone.Archivable = false
		clone.Parent = ServerScriptService_upvr
	end
	LoadScript_upvr_result1.Archivable = var18
	if FFlagEnableForkedChatAnalytics_upvr then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var4_upvw("LoadServerDefaultChatForkedModules", {})
	end
end