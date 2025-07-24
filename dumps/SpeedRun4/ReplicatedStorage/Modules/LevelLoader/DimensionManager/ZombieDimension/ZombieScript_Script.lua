-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:02
-- Luau version 6, Types version 3
-- Time taken: 0.004910 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_2 = require(Modules:WaitForChild("ClientData"))
module_upvr_2.ClientDataYieldUntilInitialized()
local module_upvr = require(Modules:WaitForChild("Audio"))
local module = require(Modules:WaitForChild("Enemies"))
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local any_EnemyStatsCreate_result1 = module.EnemyStatsCreate(module.Data_ById.Zom, 1)
local var8_upvr
if require(ReplicatedStorage:WaitForChild("Settings")).UseSpeedRun4Character then
	var8_upvr = 0.375
else
	var8_upvr = 0.125
end
local randint_upvr = math.random(25, 63)
local Value_upvr = script:WaitForChild("myZombie").Value
local Humanoid_upvr = Value_upvr:WaitForChild("Humanoid")
Humanoid_upvr.MaxHealth = any_EnemyStatsCreate_result1.Health
Humanoid_upvr.Health = Humanoid_upvr.MaxHealth
Humanoid_upvr.WalkSpeed = randint_upvr
local Head_upvr = Value_upvr:WaitForChild("Head")
local tbl_3_upvr = {}
local tbl = {
	RollOffMaxDistance = 10000;
	RollOffMode = Enum.RollOffMode.Inverse;
	SoundGroup = module_upvr.SoundGroup.SFX;
}
tbl_3_upvr.Die = module_2_upvr.PropsMerge(tbl, {
	SoundId = "rbxassetid://149041017";
	Volume = 1;
	PlaybackSpeed = 0.6;
	RollOffMinDistance = 30;
})
tbl_3_upvr.HurtPlayer = module_2_upvr.PropsMerge(tbl, {
	SoundId = "rbxassetid://408341537";
	Volume = 1;
	RollOffMinDistance = 100;
	TimePosition = 0.5;
})
Humanoid_upvr:LoadAnimation(Value_upvr:WaitForChild("Animations"):WaitForChild("Arms")):Play()
local tbl_2_upvr = {}
local var18_upvw = false
local Damage_upvr = any_EnemyStatsCreate_result1.Damage
local Cooldown_upvr = any_EnemyStatsCreate_result1.Cooldown
local function onHit(arg1) -- Line 104
	--[[ Upvalues[8]:
		[1]: var18_upvw (read and write)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: Head_upvr (readonly)
		[6]: module_2_upvr (readonly)
		[7]: Damage_upvr (readonly)
		[8]: Cooldown_upvr (readonly)
	]]
	if var18_upvw then
	else
		var18_upvw = true
		local any_LocalPlayerTouched_result1, _, any_LocalPlayerTouched_result3 = module_upvr_2.LocalPlayerTouched(arg1)
		if any_LocalPlayerTouched_result1 and any_LocalPlayerTouched_result3 then
			module_upvr.SFX.CreateAndPlay(tbl_3_upvr.HurtPlayer, Head_upvr, 0.375)
			module_2_upvr.HumanoidTakeDamage(any_LocalPlayerTouched_result3, Damage_upvr)
			task.wait(Cooldown_upvr)
		end
		var18_upvw = false
	end
end
local function activateRagdoll_upvr(arg1, arg2) -- Line 157, Named "activateRagdoll"
end
local var24_upvw = false
local clone_upvr = Value_upvr:Clone()
local function Respawn_upvr() -- Line 210, Named "Respawn"
	--[[ Upvalues[9]:
		[1]: var24_upvw (read and write)
		[2]: tbl_2_upvr (readonly)
		[3]: activateRagdoll_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: Humanoid_upvr (readonly)
		[6]: module_upvr (readonly)
		[7]: tbl_3_upvr (readonly)
		[8]: Head_upvr (readonly)
		[9]: clone_upvr (readonly)
	]]
	if var24_upvw then
	else
		var24_upvw = true
		for _, v in tbl_2_upvr do
			v:Disconnect()
		end
		activateRagdoll_upvr(Value_upvr, Humanoid_upvr)
		module_upvr.SFX.CreateAndPlay(tbl_3_upvr.Die, Head_upvr, 0.25)
		wait(3)
		Value_upvr:Destroy()
		local var28 = clone_upvr
		local SpawnPoint = Value_upvr:GetAttribute("SpawnPoint")
		if typeof(SpawnPoint) == "CFrame" then
			var28:PivotTo(SpawnPoint)
			var28:SetAttribute("SpawnPoint", SpawnPoint)
		end
		var28.Parent = script.Parent
		local clone = script:Clone()
		clone:WaitForChild("myZombie").Value = var28
		clone.Parent = script.Parent
		script:Destroy()
	end
end
tbl_2_upvr[#tbl_2_upvr + 1] = Value_upvr:WaitForChild("Left Arm").Touched:connect(onHit)
tbl_2_upvr[#tbl_2_upvr + 1] = Value_upvr:WaitForChild("Right Arm").Touched:connect(onHit)
tbl_2_upvr[#tbl_2_upvr + 1] = Humanoid_upvr.Died:Connect(Respawn_upvr)
local const_number_upvw = 0
local Torso_upvr = Value_upvr:WaitForChild("Torso")
local const_number_upvw_2 = math.huge
local any_ParamsNew_result1_upvr = require(Modules:WaitForChild("Raycast")).ParamsNew("RaycastParams", "Default", Enum.RaycastFilterType.Exclude, {Value_upvr})
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
tbl_2_upvr[#tbl_2_upvr + 1] = game:GetService("RunService").PostSimulation:Connect(function(arg1) -- Line 261
	--[[ Upvalues[10]:
		[1]: const_number_upvw (read and write)
		[2]: Torso_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: const_number_upvw_2 (read and write)
		[5]: randint_upvr (readonly)
		[6]: var8_upvr (readonly)
		[7]: Humanoid_upvr (readonly)
		[8]: Respawn_upvr (readonly)
		[9]: any_ParamsNew_result1_upvr (readonly)
		[10]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var38 = const_number_upvw
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [104] 80. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [104] 80. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [136] 103. Error Block 28 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [136.5]
	if nil then
		Humanoid_upvr.Health = 0
		Respawn_upvr()
	end
	-- KONSTANTERROR: [136] 103. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [143] 109. Error Block 27 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [143] 109. Error Block 27 end (CF ANALYSIS FAILED)
end)