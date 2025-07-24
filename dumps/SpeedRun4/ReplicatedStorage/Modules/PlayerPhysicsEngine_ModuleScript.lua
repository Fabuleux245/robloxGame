-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:55
-- Luau version 6, Types version 3
-- Time taken: 0.007518 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("ClientData"))
local var7
if module_upvr.UseSpeedRun4Character then
	local HumanoidEngine = Modules:WaitForChild("HumanoidEngine")
	local module_upvr_4 = require(HumanoidEngine:WaitForChild("CustomHumanoid"))
	module_upvr_4.SetSteppingManagement(true)
	require(HumanoidEngine:WaitForChild("HumanoidProperties")).WalkSpeed = module_upvr.WalkSpeedDefault
	local tbl_3 = {}
	local function CFrameGet(arg1) -- Line 114
		return arg1._Root.CFrame
	end
	tbl_3.CFrameGet = CFrameGet
	local function CFrameSet(arg1, arg2) -- Line 120
		arg1._Root.CFrame = arg2
	end
	tbl_3.CFrameSet = CFrameSet
	local function EnabledGet(arg1) -- Line 127
		return arg1.Enabled
	end
	tbl_3.EnabledGet = EnabledGet
	local function EnabledSet(arg1, arg2) -- Line 133
		arg1.Enabled = arg2
	end
	tbl_3.EnabledSet = EnabledSet
	local function IsGrounded(arg1) -- Line 140
		return arg1._Grounded
	end
	tbl_3.IsGrounded = IsGrounded
	local function JumpEnabledGet(arg1) -- Line 146
		return not arg1.JumpBlocked
	end
	tbl_3.JumpEnabledGet = JumpEnabledGet
	local function JumpEnabledSet(arg1, arg2) -- Line 152
		arg1.JumpBlocked = not arg2
	end
	tbl_3.JumpEnabledSet = JumpEnabledSet
	local function MotionDirectionGet(arg1) -- Line 159
		return arg1.MotionDirection
	end
	tbl_3.MotionDirectionGet = MotionDirectionGet
	local function MotionDirectionSet(arg1, arg2) -- Line 165
		arg1.MotionDirection = arg2
	end
	tbl_3.MotionDirectionSet = MotionDirectionSet
	tbl_3.MoveFunction = module_upvr_4.MoveFunction
	function tbl_3.PhysicsCharacterGet(arg1, ...) -- Line 173
		--[[ Upvalues[1]:
			[1]: module_upvr_4 (readonly)
		]]
		return module_upvr_4.FromCharacter(arg1.Character, ...)
	end
	function tbl_3.PhysicsCharacterDestroy(arg1) -- Line 180
		--[[ Upvalues[1]:
			[1]: module_upvr_4 (readonly)
		]]
		module_upvr_4.CharacterRemoving(arg1.Character)
	end
	tbl_3.PreSimulation = module_upvr_4.PreSimulation
	local function RootGet(arg1) -- Line 186
		return arg1._Root
	end
	tbl_3.RootGet = RootGet
	local function UprightVectorGet(arg1) -- Line 192
		return arg1.UpVector
	end
	tbl_3.UprightVectorGet = UprightVectorGet
	local function UprightVectorSet(arg1, arg2) -- Line 198
		arg1.UpVector = arg2
	end
	tbl_3.UprightVectorSet = UprightVectorSet
	local function WalkspeedGet(arg1) -- Line 205
		return arg1._Humanoid.WalkSpeed
	end
	tbl_3.WalkspeedGet = WalkspeedGet
	local function WalkspeedSet(arg1, arg2) -- Line 211
		arg1._Humanoid.WalkSpeed = arg2
	end
	tbl_3.WalkspeedSet = WalkspeedSet
	var7 = tbl_3
elseif module_upvr.IsRollGame then
	module_upvr_4 = require(Modules:WaitForChild("RollEngine"):WaitForChild("RollHumanoid"))
	local var11_upvr = module_upvr_4
	local tbl = {
		CFrameGet = function(arg1) -- Line 226, Named "CFrameGet"
			return arg1.CharacterState.Character:GetPivot()
		end;
		CFrameSet = function(arg1, arg2) -- Line 231, Named "CFrameSet"
			arg1.CharacterState.Character:PivotTo(arg2)
		end;
		EnabledGet = function(arg1) -- Line 238, Named "EnabledGet"
			return arg1.Enabled
		end;
		EnabledSet = function(arg1, arg2) -- Line 244, Named "EnabledSet"
			arg1.Enabled = arg2
		end;
		IsGrounded = function(arg1) -- Line 251, Named "IsGrounded"
			return arg1.Grounded
		end;
		JumpEnabledGet = function(arg1) -- Line 257, Named "JumpEnabledGet"
			return arg1.JumpEnabled
		end;
		JumpEnabledSet = function(arg1, arg2) -- Line 263, Named "JumpEnabledSet"
			arg1.JumpEnabled = arg2
		end;
		MotionDirectionGet = function(arg1) -- Line 270, Named "MotionDirectionGet"
			return arg1.MotionDirection
		end;
		MotionDirectionSet = function(arg1, arg2) -- Line 276, Named "MotionDirectionSet"
			arg1.MotionDirection = arg2
		end;
		MoveFunction = function(arg1, arg2, arg3) -- Line 283, Named "MoveFunction"
			--[[ Upvalues[2]:
				[1]: module_upvr_3 (readonly)
				[2]: var11_upvr (readonly)
			]]
			local var15 = module_upvr_3.PlayerState_ByPlayer[arg1]
			if var15 then
				local CharacterState = var15.CharacterState
				if CharacterState then
					var11_upvr.RollCharacterCreate(CharacterState).MotionDirection = arg2
				end
			end
		end;
		PhysicsCharacterGet = var11_upvr.RollCharacterCreate;
		PhysicsCharacterDestroy = var11_upvr.CharacterRemoving;
	}
	local module_upvr_5 = require(Modules:WaitForChild("InputMode"))
	function tbl.PreSimulation(...) -- Line 303
		--[[ Upvalues[3]:
			[1]: module_upvr_3 (readonly)
			[2]: var11_upvr (readonly)
			[3]: module_upvr_5 (readonly)
		]]
		local LocalCharacterState = module_upvr_3.LocalCharacterState
		if LocalCharacterState then
			local var19 = LocalCharacterState
			local any_RollCharacterCreate_result1 = var11_upvr.RollCharacterCreate(var19)
			if module_upvr_5.Mode ~= module_upvr_5.Touch then
				var19 = false
			else
				var19 = true
			end
			any_RollCharacterCreate_result1.BrakingEnabled = var19
			any_RollCharacterCreate_result1.EnhancedMobility = var19
		end
		var11_upvr.PreSimulation(...)
	end
	function tbl.RootGet(arg1) -- Line 321
		return arg1.CharacterState.Root
	end
	function tbl.UprightVectorGet(arg1) -- Line 327
		return arg1.UprightVector
	end
	function tbl.UprightVectorSet(arg1, arg2) -- Line 333
		arg1.UprightVector = arg2
	end
	function tbl.WalkspeedGet(arg1) -- Line 340
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		local WalkSpeedDefault = module_upvr.WalkSpeedDefault
		if arg1.CharacterState.Initialized then
			WalkSpeedDefault = arg1.CharacterState.Humanoid.WalkSpeed
		end
		return WalkSpeedDefault
	end
	local module_upvr_2 = require(Modules:WaitForChild("CharacterStateHandler"))
	function tbl.WalkspeedSet(arg1, arg2) -- Line 352
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2.SetWalkSpeed(arg1.CharacterState, arg2)
	end
	var7 = tbl
end
var11_upvr = var7
assert(var11_upvr, "Invalid GameType")
local tbl_2 = {}
var11_upvr = true
tbl_2.CFrameGet = var11_upvr
var11_upvr = true
tbl_2.CFrameSet = var11_upvr
var11_upvr = true
tbl_2.EnabledGet = var11_upvr
var11_upvr = true
tbl_2.EnabledSet = var11_upvr
var11_upvr = true
tbl_2.IsGrounded = var11_upvr
var11_upvr = true
tbl_2.JumpEnabledGet = var11_upvr
var11_upvr = true
tbl_2.JumpEnabledSet = var11_upvr
var11_upvr = true
tbl_2.MotionDirectionGet = var11_upvr
var11_upvr = true
tbl_2.MotionDirectionSet = var11_upvr
var11_upvr = true
tbl_2.MoveFunction = var11_upvr
var11_upvr = true
tbl_2.PhysicsCharacterGet = var11_upvr
var11_upvr = true
tbl_2.PhysicsCharacterDestroy = var11_upvr
var11_upvr = true
tbl_2.PreSimulation = var11_upvr
var11_upvr = true
tbl_2.RootGet = var11_upvr
var11_upvr = true
tbl_2.UprightVectorGet = var11_upvr
var11_upvr = true
tbl_2.UprightVectorSet = var11_upvr
var11_upvr = true
tbl_2.WalkspeedGet = var11_upvr
var11_upvr = true
tbl_2.WalkspeedSet = var11_upvr
var11_upvr = tbl_2
for i in var11_upvr do
	if var7[i] == nil then
		error("Missing "..i)
	end
end
var11_upvr = module_upvr.InputMovementIsDigitized
if var11_upvr then
	var11_upvr = var7.MoveFunction
	local module_upvr_6 = require(Modules:WaitForChild("Utility"))
	function var7.MoveFunction(arg1, arg2, arg3) -- Line 404
		--[[ Upvalues[2]:
			[1]: module_upvr_6 (readonly)
			[2]: var11_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var31
		if var31 < module_upvr_6.Epsilon then
		else
			var31 = CFrame.identity
			local var33 = Vector3.new(0, 0, 0)
			if not arg3 then
				local CurrentCamera_2 = workspace.CurrentCamera
				if CurrentCamera_2 then
					local CFrame = CurrentCamera_2.CFrame
					if math.abs(CFrame.LookVector:Dot(Vector3.new(0, 1, 0))) < module_upvr_6.DotTolerance then
						var31 = CFrame.fromMatrix(Vector3.new(0, 0, 0), (CFrame.RightVector - Vector3.new(0, 1, 0) * CFrame.RightVector:Dot(Vector3.new(0, 1, 0))).Unit, Vector3.new(0, 1, 0))
						var33 = var31:VectorToObjectSpace(var33)
					end
				end
			end
			local var36 = (math.atan2(-var33.Z, var33.X) + 0.39269908169872414) // 0.7853981633974483 * 0.7853981633974483
		end
		var11_upvr(arg1, var31:VectorToWorldSpace(Vector3.new(math.cos(var36), 0, -math.sin(var36))), false)
	end
end
return var7