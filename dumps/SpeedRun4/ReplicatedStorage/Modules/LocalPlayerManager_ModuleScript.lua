-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:46
-- Luau version 6, Types version 3
-- Time taken: 0.016245 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_6_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module = require(game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"))
local any_GetCameras_result1_upvr = module:GetCameras()
local module_upvr_5 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_5 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("ClientData"))
local module_upvr_4 = require(Modules:WaitForChild("Tweens"))
local module_upvr = require(Modules:WaitForChild("UIShared"))
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
module_6_upvr.CharacterEffectType = table.freeze({
	PickupFlash = 1;
})
local tbl_2_upvr = {
	ActiveCameraTweens = {};
	CharacterDisableStateAnchoredCount = 0;
	CharacterDisableStateDisabledCount = 0;
	EffectAttachment = Instance.new("Attachment");
	EffectAttachmentParentPending = true;
	EffectPending_ByType = {};
	EffectState_ByType = {};
}
local tbl_upvr = {}
local tbl_upvr_2 = {
	EmitDuration = 0.2;
}
local tbl_5 = {
	Brightness = 1;
	Color = ColorSequence.new(Color3.fromRGB(255, 255, 100));
	EmissionDirection = Enum.NormalId.Top;
	Enabled = false;
	LightEmission = 1;
	LightInfluence = 0;
	LockedToPart = true;
	Orientation = Enum.ParticleOrientation.FacingCamera;
	Speed = NumberRange.new(0);
	SpreadAngle = Vector2.zero;
}
local function CreateQuadraticSequence(arg1, arg2) -- Line 127
	local table_create_result1 = table.create(20)
	for i = 1, 20 do
		local clamped = math.clamp((i - 1) / 19, 0, 1)
		table_create_result1[i] = NumberSequenceKeypoint.new(clamped, (arg1 - arg2) * clamped ^ 2 + arg2 * clamped)
	end
	return NumberSequence.new(table_create_result1)
end
local CreateQuadraticSequence_result1 = CreateQuadraticSequence(8, 14)
local var36_upvw = {module_upvr_2.TableMerge(tbl_5, {
	Lifetime = NumberRange.new(0.75);
	Rate = 0;
	Rotation = NumberRange.new(0);
	RotSpeed = NumberRange.new(0);
	Size = NumberSequence.new(0.75, 2);
	Texture = "rbxassetid://1084962479";
	Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0), NumberSequenceKeypoint.new(1, 1)});
	ZOffset = 2.1;
}), module_upvr_2.TableMerge(tbl_5, {
	Lifetime = NumberRange.new(0.5, 1);
	Rate = 4;
	Rotation = NumberRange.new(-180, 180);
	RotSpeed = NumberRange.new(-75, 75);
	Size = CreateQuadraticSequence_result1;
	Texture = "rbxassetid://1053548563";
	Transparency = NumberSequence.new(0, 1);
	ZOffset = 2;
}), module_upvr_2.TableMerge(tbl_5, {
	Lifetime = NumberRange.new(0.5, 1);
	Rate = 4;
	Rotation = NumberRange.new(-180, 180);
	RotSpeed = NumberRange.new(-75, 75);
	Size = CreateQuadraticSequence_result1;
	Texture = "rbxassetid://1084961641";
	Transparency = NumberSequence.new(0, 1);
	ZOffset = 2;
}), module_upvr_2.TableMerge(tbl_5, {
	Lifetime = NumberRange.new(0.375);
	Rate = 3;
	Rotation = NumberRange.new(90);
	RotSpeed = NumberRange.new(0);
	Size = CreateQuadraticSequence(4.8, 8.4);
	Texture = "rbxassetid://1084963972";
	Transparency = NumberSequence.new(0, 1);
	ZOffset = 2;
})}
local var37
if module_5.IsRollGame then
	var37 = require(Modules:WaitForChild("RollEngine"):WaitForChild("RollProperties")).BallRadius / 2
else
	var37 = 1
end
for _, v in var36_upvw do
	if typeof(v.Lifetime) == "NumberRange" then
	end
	if var37 ~= 1 then
		v.Size = module_upvr_2.NumberSequenceScale(v.Size, var37)
	end
end
function tbl_upvr_2.Initialize(arg1) -- Line 214
	--[[ Upvalues[3]:
		[1]: var36_upvw (read and write)
		[2]: module_upvr_2 (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	local module_2 = {
		Emitters = table.create(#var36_upvw);
		Emitting = false;
		EmitUntil = 0;
	}
	for i_3, v_2 in var36_upvw do
		local any_I_result1 = module_upvr_2.I("ParticleEmitter", v_2)
		any_I_result1.Parent = tbl_2_upvr.EffectAttachment
		module_2.Emitters[i_3] = any_I_result1
	end
	return module_upvr_2.TableMerge(module_2, arg1)
end
function tbl_upvr_2.Destroy(arg1) -- Line 241
	for _, v_3 in arg1.Emitters do
		v_3:Destroy()
	end
end
local maximum_upvw = math.max(0, v.Lifetime.Max)
function tbl_upvr_2.Update(arg1, arg2, arg3, arg4) -- Line 250
	--[[ Upvalues[2]:
		[1]: tbl_upvr_2 (readonly)
		[2]: maximum_upvw (read and write)
	]]
	if arg4 then
		arg1.EmitUntil = arg3 + tbl_upvr_2.EmitDuration
		arg1.ExpiresAt = arg1.EmitUntil + maximum_upvw
		if arg1.Emitting then
			arg1.Emitters[1]:Emit(1)
		else
			arg1.Emitting = true
			for _, v_4 in arg1.Emitters do
				v_4.Enabled = true
				v_4:Emit(1)
			end
		end
	end
	if arg1.Emitting and arg1.EmitUntil < arg3 then
		arg1.Emitting = false
		for _, v_5 in arg1.Emitters do
			v_5.Enabled = false
		end
	end
end
tbl_upvr[module_6_upvr.CharacterEffectType.PickupFlash] = tbl_upvr_2
function module_6_upvr.CameraTweenCreate(arg1, arg2, ...) -- Line 293
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	return {
		At = arg2 or Vector3.new(0, 0, 0);
		From = arg1 or Vector3.new(0, 0, 0);
		Tween = module_upvr_4.new(...);
	}
end
function module_6_upvr.CameraTweenCancel(arg1) -- Line 308
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	module_upvr_4.Overwrite(arg1.Tween, os.clock(), 0, 0)
end
function module_6_upvr.CameraTweenPlay(arg1) -- Line 313
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	module_upvr_4.Begin(arg1.Tween, os.clock(), 1)
	if table.find(tbl_2_upvr.ActiveCameraTweens, arg1) == nil then
		tbl_2_upvr.ActiveCameraTweens[#tbl_2_upvr.ActiveCameraTweens + 1] = arg1
	end
end
function module_6_upvr.CameraTweenStop(arg1) -- Line 322
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	module_upvr_4.Begin(arg1.Tween, os.clock(), 0)
end
function module_6_upvr.CharacterDisableStateCreate() -- Line 329
	return {
		Anchored = false;
		Disabled = false;
	}
end
function module_6_upvr.CharacterDisableStateSetAnchored(arg1, arg2) -- Line 339
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg2 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if arg1.Anchored ~= true then
		local var54 = tbl_2_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		else
		end
		var54.CharacterDisableStateAnchoredCount += -1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.Anchored = true
	end
end
function module_6_upvr.CharacterDisableStateSetDisabled(arg1, arg2) -- Line 353
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg2 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if arg1.Disabled ~= true then
		local var56 = tbl_2_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		else
		end
		var56.CharacterDisableStateDisabledCount += -1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.Disabled = true
	end
end
function module_6_upvr.CharacterEffectPerform(arg1) -- Line 367
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	assert(tbl_upvr[arg1], "Invalid CharcterEffectType")
	tbl_2_upvr.EffectPending_ByType[arg1] = (tbl_2_upvr.EffectPending_ByType[arg1] or 0) + 1
end
function module_6_upvr.CharacterAdded(arg1) -- Line 381
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	module_upvr_3.Flags.LocalPlayerTeleported = false
	tbl_2_upvr.EffectAttachment = Instance.new("Attachment")
	local Root = arg1.Root
	tbl_2_upvr.EffectAttachment.Parent = Root
	if arg1.Root ~= nil then
		Root = false
	else
		Root = true
	end
	tbl_2_upvr.EffectAttachmentParentPending = Root
end
function module_6_upvr.CharacterRemoving(arg1) -- Line 390
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	for i_7, v_6 in tbl_2_upvr.EffectState_ByType do
		tbl_upvr[i_7].Destroy(v_6)
		tbl_2_upvr.EffectState_ByType[i_7] = nil
	end
	for i_8 = #tbl_2_upvr.ActiveCameraTweens, 1, -1 do
		module_6_upvr.CameraTweenCancel(tbl_2_upvr.ActiveCameraTweens[i_8])
	end
end
var37 = -0.2617993877991494
var37 = CFrame.new(0, 0, 12.5)
local any_GetControls_result1_upvr = module:GetControls()
local var62_upvr = CFrame.Angles(var37, 0, 0) * var37
function module_6_upvr.Input_Late(arg1, arg2) -- Line 413
	--[[ Upvalues[5]:
		[1]: module_upvr_3 (readonly)
		[2]: any_GetControls_result1_upvr (readonly)
		[3]: any_GetCameras_result1_upvr (readonly)
		[4]: var62_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	if module_upvr_3.Flags.StopLocalWalking then
		any_GetControls_result1_upvr:Disable()
		any_GetControls_result1_upvr:Enable()
		module_upvr_3.Flags.StopLocalWalking = false
	end
	local activeCameraController_2 = any_GetCameras_result1_upvr.activeCameraController
	if activeCameraController_2 then
		if module_upvr_3.ResetCameraToDirection then
			local any_GetSubjectPosition_result1 = activeCameraController_2:GetSubjectPosition()
			if any_GetSubjectPosition_result1 then
				local var68 = (module_upvr_3.ResetCameraToDirection.Rotation + any_GetSubjectPosition_result1) * var62_upvr
				module_upvr.Camera.CFrame = var68
				activeCameraController_2.lastCameraTransform = var68
				module_upvr_3.ResetCameraToDirection = nil
			end
		end
	end
end
function module_6_upvr.Camera_Late(arg1, arg2) -- Line 445
	--[[ Upvalues[5]:
		[1]: any_GetCameras_result1_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: module_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var82 = false
	if any_GetCameras_result1_upvr.activeMouseLockController ~= nil then
		var82 = any_GetCameras_result1_upvr.activeMouseLockController:GetIsMouseLocked()
	end
	local var83 = module_upvr_3
	if module_upvr_3.Flags.MouseLockActive == var82 then
		var83 = false
	else
		var83 = true
	end
	var83.Flags.MouseLockActiveDirty = var83
	module_upvr_3.Flags.MouseLockActive = var82
	if module_upvr_3.Flags.MouseLockActiveDirty then
		module_upvr_3.Signals.MouseLockActiveChanged:Fire(var82)
	end
	if 0 < #tbl_2_upvr.ActiveCameraTweens then
		local tbl = {}
		for i_9 = #tbl_2_upvr.ActiveCameraTweens, 1, -1 do
			local var85 = tbl_2_upvr.ActiveCameraTweens[i_9]
			module_upvr_4.Update(var85.Tween, arg2)
			if module_upvr_4.IsAtTarget(var85.Tween, 0) then
				table.remove(tbl_2_upvr.ActiveCameraTweens, i_9)
			else
				local Value = var85.Tween.Value
				tbl[#tbl + 1] = {(var85.From - module_upvr.Camera.CFrame.Position) * Value, (var85.At - module_upvr.Camera.Focus.Position) * Value}
			end
		end
		local var88
		if var88 < #tbl then
			var88 = #tbl
			local var89 = 1 / var88
			var88 = module_upvr.Camera.CFrame.Position
			i_9 = module_upvr.Camera.Focus.Position
			for _, v_7 in tbl do
				var88 += v_7[1] * var89
				i_9 += v_7[2] * var89
				local var90
			end
			module_upvr.Camera.CFrame = CFrame.lookAt(var88, i_9)
		end
	end
end
local IsRollGame_upvr = module_5.IsRollGame
function module_6_upvr.RenderStepped(arg1, arg2) -- Line 506
	--[[ Upvalues[6]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: tbl_upvr (readonly)
		[4]: IsRollGame_upvr (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: module_upvr (readonly)
	]]
	if tbl_2_upvr.EffectAttachmentParentPending then
		local LocalCharacterState_2 = module_upvr_3.LocalCharacterState
		if LocalCharacterState_2 and LocalCharacterState_2.Root then
			tbl_2_upvr.EffectAttachment.Parent = LocalCharacterState_2.Root
			tbl_2_upvr.EffectAttachmentParentPending = false
		end
	end
	for i_11 in tbl_2_upvr.EffectPending_ByType do
		if not tbl_2_upvr.EffectState_ByType[i_11] then
			local tbl_3 = {}
			tbl_3.ExpiresAt = arg2
			tbl_2_upvr.EffectState_ByType[i_11] = tbl_upvr[i_11].Initialize(tbl_3)
		end
	end
	for i_12, v_8 in tbl_2_upvr.EffectState_ByType do
		if v_8.ExpiresAt < arg2 then
			tbl_upvr[i_12].Destroy(v_8)
			tbl_2_upvr.EffectState_ByType[i_12] = nil
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_upvr[i_12].Update(v_8, arg1, arg2, tbl_2_upvr.EffectPending_ByType[i_12])
		end
	end
	table.clear(tbl_2_upvr.EffectPending_ByType)
	local var109
	if var109 then
		var109 = nil
		i_12 = module_upvr_3
		if module_upvr_5.CarryStateIsCarried(i_12.LocalCarryState) then
			v_8 = module_upvr_3.LocalCarryState.Carrier
			i_12 = assert(v_8)
			local CharacterState = i_12.PlayerState.CharacterState
			if CharacterState and CharacterState.Alive then
				var109 = CharacterState.Root
			end
		end
		if not var109 then
			CharacterState = module_upvr_3.LocalCharacterState
			local var111
			if var111 then
				v_8 = module_upvr_3
				i_12 = v_8.LocalCharacterState
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var111 = i_12.LocalCharacterState.Root
					i_12 = module_upvr_3
					return var111
				end
				if not i_12.Alive or not INLINED_2() then
					i_12 = module_upvr_3
					var111 = i_12.LocalCharacterState.Humanoid
				end
			end
		end
		if var111 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_upvr.Camera.CameraSubject = var111
		end
	end
end
local module_4_upvr = require(Modules:WaitForChild("PlayerPhysicsEngine"))
local module_3_upvr = require(Modules:WaitForChild("CharacterStateHandler"))
function module_6_upvr.PreSimulation(arg1, arg2) -- Line 592
	--[[ Upvalues[5]:
		[1]: module_upvr_3 (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: module_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local LocalCharacterState_3 = module_upvr_3.LocalCharacterState
	local var121
	if not LocalCharacterState_3 then
	else
		var121 = true
		local any_PhysicsCharacterGet_result1 = module_4_upvr.PhysicsCharacterGet(LocalCharacterState_3, var121)
		if not any_PhysicsCharacterGet_result1 then return end
		var121 = module_upvr_5
		var121 = module_upvr_3.LocalCarryState
		local any_CarryStateIsCarried_result1 = var121.CarryStateIsCarried(var121)
		var121 = not any_CarryStateIsCarried_result1
		if var121 then
			var121 = true
			if 0 >= tbl_2_upvr.CharacterDisableStateAnchoredCount then
				var121 = module_upvr_3.Flags.LoadingScreenCovering
			end
		end
		local var124 = not any_CarryStateIsCarried_result1
		if var124 then
			var124 = not var121
			if var124 then
				var124 = module_upvr_3.Flags.LocalPlayerTeleported
			end
		end
		if 0 >= tbl_2_upvr.CharacterDisableStateDisabledCount then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		module_3_upvr.SetAnchored(LocalCharacterState_3, var121)
		module_4_upvr.EnabledSet(any_PhysicsCharacterGet_result1, var124)
		module_4_upvr.JumpEnabledSet(any_PhysicsCharacterGet_result1, not true)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			module_4_upvr.MotionDirectionSet(any_PhysicsCharacterGet_result1, Vector3.new(0, 0, 0))
		end
	end
end
function module_6_upvr.ResolveState() -- Line 638
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [14.6]
	-- KONSTANTERROR: [9] 8. Error Block 2 end (CF ANALYSIS FAILED)
end
return module_6_upvr