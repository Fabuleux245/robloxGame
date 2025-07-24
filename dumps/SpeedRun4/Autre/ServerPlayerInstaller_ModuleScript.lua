-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:57:59
-- Luau version 6, Types version 3
-- Time taken: 0.000621 seconds

local ServerUtil_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Server.ServerUtil)
return function() -- Line 5
	--[[ Upvalues[1]:
		[1]: ServerUtil_upvr (readonly)
	]]
	if game:GetService("StarterPlayer"):FindFirstChild("PlayerSettings") == nil then
		local ModuleScript = Instance.new("ModuleScript")
		ModuleScript.Name = "PlayerSettings"
		if ServerUtil_upvr.getFFlagServerCoreScriptSourceCode() then
			ModuleScript.Source = ServerUtil_upvr.getSourceForServerScript(script.Parent.DefaultServerPlayerModules:WaitForChild("PlayerSettings"))
		else
			ModuleScript.Source = script.Parent.DefaultServerPlayerModules:WaitForChild("PlayerSettings").Source
		end
		ModuleScript.Parent = game:GetService("StarterPlayer")
		ModuleScript.Archivable = false
	end
end