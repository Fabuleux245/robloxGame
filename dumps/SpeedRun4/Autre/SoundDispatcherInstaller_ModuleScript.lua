-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:00
-- Luau version 6, Types version 3
-- Time taken: 0.001515 seconds

local ServerScriptService_upvr = game:GetService("ServerScriptService")
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local function _() -- Line 11, Named "HasOldSoundScripts"
	--[[ Upvalues[2]:
		[1]: ServerScriptService_upvr (readonly)
		[2]: StarterPlayer_upvr (readonly)
	]]
	if ServerScriptService_upvr:FindFirstChild("SoundDispatcher") then
		return true
	end
	local class_StarterCharacterScripts = StarterPlayer_upvr:FindFirstChildOfClass("StarterCharacterScripts")
	if class_StarterCharacterScripts and class_StarterCharacterScripts:FindFirstChild("Sound") then
		return true
	end
	return false
end
local ServerUtil_upvr = require(script.Parent.Parent.ServerUtil)
local function LoadScript_upvr(arg1, arg2) -- Line 24, Named "LoadScript"
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
return function() -- Line 37, Named "TryInstall"
	--[[ Upvalues[3]:
		[1]: ServerScriptService_upvr (readonly)
		[2]: StarterPlayer_upvr (readonly)
		[3]: LoadScript_upvr (readonly)
	]]
	local var6
	if ServerScriptService_upvr:FindFirstChild("SoundDispatcher") then
		var6 = true
	else
		local class_StarterCharacterScripts_2 = StarterPlayer_upvr:FindFirstChildOfClass("StarterCharacterScripts")
		if class_StarterCharacterScripts_2 and class_StarterCharacterScripts_2:FindFirstChild("Sound") then
			var6 = true
		else
			var6 = false
		end
	end
	if not var6 then
	else
		var6 = true
		local SoundDispatcher = ServerScriptService_upvr:FindFirstChild("SoundDispatcher")
		if not SoundDispatcher then
			var6 = false
			SoundDispatcher = LoadScript_upvr("SoundDispatcher", ServerScriptService_upvr)
		end
		if not ServerScriptService_upvr:FindFirstChild("SoundDispatcher") then
			local clone = SoundDispatcher:Clone()
			clone.Archivable = false
			clone.Parent = ServerScriptService_upvr
		end
		SoundDispatcher.Archivable = var6
	end
end