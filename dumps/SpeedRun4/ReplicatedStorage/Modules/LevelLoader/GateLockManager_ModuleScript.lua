-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:06
-- Luau version 6, Types version 3
-- Time taken: 0.007987 seconds

local module_upvr_2 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("Audio"))
local module_upvr_3 = require(Modules:WaitForChild("Transparency"))
local module_upvr_4 = require(Modules:WaitForChild("UIEffects"))
local module_upvr_8 = require(Modules:WaitForChild("Utility"))
local module_upvr_5 = require(Modules:WaitForChild("LevelLoader"):WaitForChild("DimensionManager"))
local Lock_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Lock")
local any_GetBoundingBox_result1, _ = Lock_upvr:GetBoundingBox()
local any_ToObjectSpace_result1_upvw = any_GetBoundingBox_result1:ToObjectSpace(Lock_upvr:GetPivot())
local tbl_upvr_2 = {
	ActiveLocks = {};
	AnimatingLocks = {};
}
local tbl_upvr = {3, 2}
local tbl_upvr_3 = {
	Base = Color3.fromRGB(0, 0, 0);
	Glow = BrickColor.new("Steel blue").Color;
}
local tbl_upvr_4 = {
	Charge = {
		Chimes = {
			PlaybackSpeed = 1.25;
			RollOffMinDistance = 300;
			SoundId = "rbxassetid://9114369623";
			Volume = 1;
		};
		Static = {
			PlaybackSpeed = 2.869 / tbl_upvr[1];
			RollOffMinDistance = 300;
			SoundId = "rbxassetid://9119836911";
			Volume = 1.25;
		};
	};
	Explode = {
		Heavy = {
			RollOffMinDistance = 300;
			SoundId = "rbxassetid://3149249837";
			Volume = 1.25;
		};
		Light = {
			RollOffMinDistance = 300;
			PlaybackSpeed = 0.8;
			SoundId = "rbxassetid://9117894969";
			TimePosition = 0.25;
			Volume = 0.25;
		};
	};
}
local function _(arg1) -- Line 108, Named "GateLockUpdatePivot"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: any_ToObjectSpace_result1_upvw (read and write)
	]]
	arg1.Object:PivotTo(module_upvr_5.CFrameToDimensionSpace(arg1.LevelAssetState, arg1.Origin * any_ToObjectSpace_result1_upvw))
end
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("CommonData"))
function module_upvr_2.Create(arg1, arg2, arg3) -- Line 118
	--[[ Upvalues[6]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: Lock_upvr (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: any_ToObjectSpace_result1_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	if arg3:IsA("BasePart") then
		-- KONSTANTWARNING: GOTO [38] #30
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 11. Error Block 31 start (CF ANALYSIS FAILED)
	if arg3:IsA("Model") then
		local _, _ = arg3:GetBoundingBox()
		-- KONSTANTWARNING: GOTO [38] #30
	end
	-- KONSTANTERROR: [14] 11. Error Block 31 end (CF ANALYSIS FAILED)
end
function module_upvr_2.Destroy(arg1) -- Line 259
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: module_upvr (readonly)
	]]
	arg1.Destroyed = true
	if arg1._DimensionConnection then
		arg1._DimensionConnection:Disconnect()
		arg1._DimensionConnection = nil
	end
	if arg1.Active then
		module_upvr_2.SetActive(arg1, false)
	end
	if arg1.Unlocked then
		local table_find_result1_2 = table.find(tbl_upvr_2.AnimatingLocks, arg1)
		if table_find_result1_2 then
			table.remove(tbl_upvr_2.AnimatingLocks, table_find_result1_2)
		end
		if arg1._AnimationState then
			for _, v in arg1._AnimationState.Sounds do
				module_upvr.ManagedSound.Stop(v)
			end
		end
	end
	arg1.Object:Destroy()
end
local module_upvr_7 = require(Modules:WaitForChild("UIShared"))
function module_upvr_2.SetActive(arg1, arg2) -- Line 293
	--[[ Upvalues[4]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: module_upvr_7 (readonly)
		[4]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 18 start (CF ANALYSIS FAILED)
	arg1.Active = true
	if not table.find(tbl_upvr_2.ActiveLocks, arg1) then
		tbl_upvr_2.ActiveLocks[#tbl_upvr_2.ActiveLocks + 1] = arg1
	end
	module_upvr_8.ProtectedReparent(arg1.Object, module_upvr_7.Camera)
	do
		return
	end
	-- KONSTANTERROR: [7] 6. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 28. Error Block 23 start (CF ANALYSIS FAILED)
	if not arg2 and arg1.Active then
		arg1.Active = false
		local table_find_result1 = table.find(tbl_upvr_2.ActiveLocks, arg1)
		if table_find_result1 then
			table.remove(tbl_upvr_2.ActiveLocks, table_find_result1)
		end
		if not arg1.Destroyed then
			if arg1.Unlocked then
				module_upvr_2.Destroy(arg1)
				return
			end
			module_upvr_8.ProtectedReparent(arg1.Object, nil)
		end
	end
	-- KONSTANTERROR: [37] 28. Error Block 23 end (CF ANALYSIS FAILED)
end
local ContentProvider_upvr = game:GetService("ContentProvider")
function module_upvr_2.Unlock(arg1) -- Line 333
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: ContentProvider_upvr (readonly)
		[6]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 20. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 20. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [175] 124. Error Block 17 start (CF ANALYSIS FAILED)
	module_upvr_2.Destroy(arg1)
	-- KONSTANTERROR: [175] 124. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 128. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [180] 128. Error Block 18 end (CF ANALYSIS FAILED)
end
function module_upvr_2.RenderStepped(arg1, arg2) -- Line 414
	--[[ Upvalues[9]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: tbl_upvr_4 (readonly)
		[5]: module_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: module_upvr_8 (readonly)
		[8]: tbl_upvr_3 (readonly)
		[9]: module_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i_2 = #tbl_upvr_2.AnimatingLocks, 1, -1 do
		local var97 = tbl_upvr_2.AnimatingLocks[i_2]
		local var98 = true
		if tbl_upvr[var97.StepCount] ~= nil then
			if var97.StepTime ~= tbl_upvr[var97.StepCount] then
				var98 = false
			else
				var98 = true
			end
		end
		if var98 then
			var97.StepTime = 0
			var97.StepCount += 1
		end
		local var99 = tbl_upvr[var97.StepCount]
		if not var99 then
			module_upvr_2.Destroy(var97)
		else
			local assert_result1 = assert(var97._AnimationState)
			var97.StepTime = math.min(var97.StepTime + arg1, var99)
			if var97.StepCount == 1 then
				if var98 then
					for _, v_2 in tbl_upvr_4.Charge do
						local any_CreateAndPlay_result1 = module_upvr.SFX.CreateAndPlay(v_2, var97._ChainAnchor)
						module_upvr.ManagedSound.SetVolumeMod(any_CreateAndPlay_result1, "Fade", 0)
						module_upvr.ManagedSound.FadeToVolume(any_CreateAndPlay_result1, var99 * 0.75, nil, 1)
						assert_result1.Sounds[#assert_result1.Sounds + 1] = any_CreateAndPlay_result1
						local _
					end
				end
				for i_4, v_3 in var97.Emitters.GlowDown do
					i_4.Rate = v_3 * (1 - var97.StepTime / var99)
					local var104
				end
				for i_5, v_4 in var97.Emitters.GlowUp do
					i_5.Rate = v_4 * (1 + 9 * var104)
					local var105
				end
				module_upvr_3.Apply(assert_result1.GlowOpacities, 1 - var105)
				for _, v_5 in var97.Parts.Glow do
					v_5.Color = module_upvr_8.Color3HSVComponentLerp(tbl_upvr_3.Base, tbl_upvr_3.Glow, Vector3.new(var105, 1 - (1 - var105) ^ 4, 1 - (1 - var105) ^ 3))
					local var106
				end
				module_upvr_3.Apply(var97.Opacities.Effects, 1 - (1 - var105) ^ 6)
			else
				var106 = var97.StepCount
				if var106 == 2 then
					if var98 then
						var106 = tbl_upvr_4.Explode
						for _, v_6 in var106 do
							assert_result1.Sounds[#assert_result1.Sounds + 1] = module_upvr.SFX.CreateAndPlay(v_6, var97._ChainAnchor)
							local var107
						end
						var106 = var97.Emitters
						for _, v_7 in var106 do
							for i_9 in v_7 do
								i_9.Enabled = false
							end
						end
						var106 = module_upvr_4.GlowCharge.Detonate
						var106(var107.GlowCharge)
					end
					var106 = 1 + 4 * (var105 - 1) ^ 3 + 3 * (var105 - 1) ^ 2
					local var108 = var106
					local var109 = 10 * var108
					local var110 = -3 * (1 - (1 - var105) ^ 2)
					for i_10, v_8 in var107.ChainPivots do
						i_10.CFrame = v_8.Pivot * CFrame.Angles(0, 2.356194490192345 * v_8.Direction * (1 - (1 - var105) ^ 4), 0) * v_8.Offset
						local _
					end
					var97._Knuckle:PivotTo(var107.KnuckleOrigin * CFrame.new(0, var109, var110) * CFrame.Angles(0, 2.356194490192345 * var108 ^ 2, 0))
					var97._Lock:PivotTo(var107.LockOrigin * CFrame.new(0, -var109, var110))
					module_upvr_3.Apply(var97.Opacities.Body, 1 - (1 - var105) ^ 4)
					module_upvr_3.Apply(var97.Opacities.Chains, 2.5 * (1 - (1 - var105) ^ 2))
				end
			end
		end
	end
end
return module_upvr_2