-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:14
-- Luau version 6, Types version 3
-- Time taken: 0.000644 seconds

local Output_upvr = script.Parent:WaitForChild("Output")
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("LevelLoader"):WaitForChild("OpenSpaceHandler"):WaitForChild("SpaceMapper"))
script.Parent:WaitForChild("Input").Event:ConnectParallel(function(...) -- Line 15
	--[[ Upvalues[2]:
		[1]: Output_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	Output_upvr:Fire(module_upvr.ProcessQuery(...))
end)