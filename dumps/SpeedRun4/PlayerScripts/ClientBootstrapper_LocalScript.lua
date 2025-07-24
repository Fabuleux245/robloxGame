-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:00
-- Luau version 6, Types version 3
-- Time taken: 0.002253 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("ClientData"))
require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls().moveFunction = require(Modules:WaitForChild("PlayerPhysicsEngine")).MoveFunction
local StarterGui_upvr = game:GetService("StarterGui")
task.spawn(function() -- Line 68
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: StarterGui_upvr (readonly)
	]]
	local BindableEvent = Instance.new("BindableEvent")
	BindableEvent.Event:Connect(function() -- Line 72
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		if not module_upvr.CarryStateIsCarried(module_upvr_2.LocalCarryState) and module_upvr_2.LocalCharacterState and module_upvr_2.LocalCharacterState.Initialized then
			module_upvr_2.LocalCharacterState.Humanoid.Health = 0
		else
			module_upvr_2.Flags.ExplainCarryBlockedAction = true
		end
	end)
	while true do
		if pcall(StarterGui_upvr.SetCore, StarterGui_upvr, "ResetButtonCallback", BindableEvent) then return end
		task.wait()
	end
end)
for i, v in require(Modules.LevelLoader:WaitForChild("DimensionCommon")).ManagedDimension_ById do
	if not v.Equip or not v.Unequip then
		error(module_upvr.FormatOutput("DimensionId '%s' not properly configured", "ClientBootstrapper", nil, i))
	end
end
ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("State"):FireServer(module_upvr.StateRequestType.Snapshot)
module_upvr_2.Flags.Initialized = true
module_upvr_2.Signals.SystemInitialized:Fire()
module_upvr_2.Signals.SystemInitialized:DisconnectAll()