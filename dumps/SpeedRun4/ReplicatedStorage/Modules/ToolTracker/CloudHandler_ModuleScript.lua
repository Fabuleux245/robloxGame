-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:35
-- Luau version 6, Types version 3
-- Time taken: 0.022141 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_6 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_5_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_7_upvr = require(Modules:WaitForChild("ClientData"))
local module_4_upvr = require(Modules:WaitForChild("PlayerPhysicsEngine"))
local module_3_upvr = require(Modules:WaitForChild("UIShared"))
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local tbl_upvr = {
	BodyGyro = {
		P = 1000000;
		MaxTorque = Vector3.new(1000000, 1000000, 1000000);
	};
	BodyVelocity = {
		P = 10000;
		MaxForce = Vector3.new(1000000, 1000000, 1000000);
		Velocity = Vector3.new(0, 0, 0);
	};
	Handle = {
		Name = "SkateboardPlatform";
		Anchored = false;
		BottomSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new("Pastel light blue");
		CanCollide = false;
		CanTouch = false;
		CanQuery = false;
		Material = Enum.Material.Plastic;
		Size = Vector3.new(2, 1.5, 3);
		TopSurface = Enum.SurfaceType.Smooth;
	};
	Wind = {
		SoundGroup = require(Modules:WaitForChild("Audio")).SoundGroup.SFX;
		SoundId = "http://www.roblox.com/asset/?id=96481249";
		Looped = true;
		Volume = 1;
	};
	Mesh = {
		MeshId = "http://www.roblox.com/asset/?id=107431751";
		MeshType = Enum.MeshType.FileMesh;
		Scale = Vector3.new(3, 3, 3);
		TextureId = "http://www.roblox.com/asset/?id=107431876";
	};
	Smoke = {
		Color = Color3.new(1, 1, 1);
		Enabled = true;
		Opacity = 0.05;
		RiseVelocity = 1;
		Size = 0.1;
		TimeScale = 1;
	};
}
local tbl_6_upvr = {module_2_upvr.I("Animation", {
	AnimationId = "http://www.roblox.com/asset?id=21633130";
})}
local tbl_9_upvr = {
	[module_6.ToolType.AdminCloud] = {
		Acceleration = 10;
		TopSpeed = 250;
	};
	[module_6.ToolType.Cloud] = {
		Acceleration = 2;
		TopSpeed = 50;
	};
}
local tbl_14_upvr = {
	CloudState_ByType = {};
	ActiveInput = {};
}
local any_Create_result1_upvr = module_3_upvr.MouseIconState.Create(require(ReplicatedStorage:WaitForChild("Theme")).Cursors.Gun_Ready)
local function _(arg1) -- Line 224, Named "CanFly"
	local var29 = false
	if arg1.Character ~= nil then
		var29 = false
		if arg1.Root ~= nil then
			var29 = arg1.Active
			if var29 then
				var29 = arg1.Alive
				if var29 then
					var29 = arg1.ToolState.Equipped
				end
			end
		end
	end
	return var29
end
local function _(arg1) -- Line 233, Named "GetPhysicsCharacter"
	--[[ Upvalues[2]:
		[1]: module_7_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local var30
	if arg1.Character then
		local var31 = module_7_upvr.CharacterState_ByCharacter[arg1.Character]
		if var31 then
			var30 = module_4_upvr.PhysicsCharacterGet(var31)
		end
	end
	return var30
end
local function ApplyActiveObjects_upvr(arg1) -- Line 253, Named "ApplyActiveObjects"
	--[[ Upvalues[5]:
		[1]: module_5_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1.Handle.Transparency = 1
	if module_5_upvr.IsRollGame then
		local var60
		if arg1.Character then
			local var61 = module_7_upvr.CharacterState_ByCharacter[arg1.Character]
			if var61 then
				var60 = module_4_upvr.PhysicsCharacterGet(var61)
			end
		end
		local var62 = var60
		if var62 then
			var62.DragEnabled = false
		end
	end
	if arg1.InactiveObjects then
		for _, v in arg1.InactiveObjects do
			v:Destroy()
		end
		arg1.InactiveObjects = nil
	end
	local var63
	if not arg1.ActiveObjects then
		local tbl_2 = {}
		if arg1.Root then
			var63 = arg1.Root.CFrame
		else
			var63 = CFrame.identity
		end
		tbl_2.BodyGyro = module_2_upvr.I("BodyGyro", tbl_upvr.BodyGyro, {
			CFrame = var63.Rotation;
			Parent = arg1.Root;
		})
		tbl_2.BodyVelocity = module_2_upvr.I("BodyVelocity", tbl_upvr.BodyVelocity, {
			Parent = arg1.Root;
		})
		local tbl_3 = {}
		if arg1.Root then
		else
		end
		tbl_3.CFrame = nil
		tbl_3.Parent = arg1.Character
		tbl_2.Handle = module_2_upvr.I("Part", tbl_upvr.Handle, tbl_3)
		tbl_2.Mesh = module_2_upvr.I("SpecialMesh", tbl_upvr.Mesh, {
			Parent = tbl_2.Handle;
		})
		tbl_2.Smoke = module_2_upvr.I("Smoke", tbl_upvr.Smoke, {
			Parent = tbl_2.Handle;
		})
		tbl_2.Wind = module_2_upvr.I("Sound", tbl_upvr.Wind, {
			Parent = tbl_2.Handle;
		})
		local tbl_13 = {
			Part0 = arg1.Root;
			Part1 = tbl_2.Handle;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_13.C0 = CFrame.new(1, -4, 0) * CFrame.Angles(0, (math.pi/2), 0)
		tbl_13.Parent = tbl_2.Handle
		module_2_upvr.I("Weld", tbl_13)
		tbl_2.Wind:Play()
		arg1.ActiveObjects = tbl_2
	end
end
local function ApplyInactiveObjects_upvr(arg1) -- Line 327, Named "ApplyInactiveObjects"
	--[[ Upvalues[5]:
		[1]: module_5_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_4_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	arg1.Handle.Transparency = 0
	if module_5_upvr.IsRollGame then
		local var76
		if arg1.Character then
			local var77 = module_7_upvr.CharacterState_ByCharacter[arg1.Character]
			if var77 then
				var76 = module_4_upvr.PhysicsCharacterGet(var77)
			end
		end
		local var78 = var76
		if var78 then
			var78.DragEnabled = true
		end
	end
	if arg1.ActiveObjects then
		for _, v_2 in arg1.ActiveObjects do
			v_2:Destroy()
		end
		arg1.ActiveObjects = nil
	end
	if not arg1.InactiveObjects then
		arg1.InactiveObjects = {
			Smoke = module_2_upvr.I("Smoke", tbl_upvr.Smoke, {
				Parent = arg1.Handle;
			});
		}
	end
end
local function _(arg1) -- Line 359, Named "DeactivateTool"
	--[[ Upvalues[1]:
		[1]: ApplyInactiveObjects_upvr (readonly)
	]]
	if arg1.Active then
		arg1.Active = false
		ApplyInactiveObjects_upvr(arg1)
		if arg1.PlayingAnimation then
			arg1.PlayingAnimation:Stop()
			arg1.PlayingAnimation = nil
		end
	end
end
local function _(arg1) -- Line 376, Named "ActivateTool"
	--[[ Upvalues[1]:
		[1]: ApplyActiveObjects_upvr (readonly)
	]]
	if not arg1.Active then
		arg1.Active = true
		local var84 = false
		if arg1.Character ~= nil then
			var84 = false
			if arg1.Root ~= nil then
				var84 = arg1.Active
				if var84 then
					var84 = arg1.Alive
					if var84 then
						var84 = arg1.ToolState.Equipped
					end
				end
			end
		end
		if var84 then
			ApplyActiveObjects_upvr(arg1)
			arg1.Velocity = arg1.Root.CFrame.LookVector * 10 + Vector3.new(0, 3, 0)
			return
		end
		arg1.Active = false
	end
end
local function _(arg1) -- Line 400, Named "UnequipTool"
	--[[ Upvalues[3]:
		[1]: ApplyInactiveObjects_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: any_Create_result1_upvr (readonly)
	]]
	if arg1.Active then
		if arg1.Active then
			arg1.Active = false
			ApplyInactiveObjects_upvr(arg1)
			if arg1.PlayingAnimation then
				arg1.PlayingAnimation:Stop()
				arg1.PlayingAnimation = nil
			end
		end
	end
	if arg1.ToolState.Equipped then
		arg1.ToolState.Equipped = false
		module_3_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
	end
end
local function _(arg1) -- Line 416, Named "EquipTool"
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: any_Create_result1_upvr (readonly)
	]]
	if not arg1.ToolState.Equipped then
		arg1.ToolState.Equipped = true
		module_3_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
	end
end
local function DeinitializeTool_upvr(arg1) -- Line 440, Named "DeinitializeTool"
	--[[ Upvalues[4]:
		[1]: ApplyInactiveObjects_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: any_Create_result1_upvr (readonly)
		[4]: tbl_14_upvr (readonly)
	]]
	if arg1.Active then
		if arg1.Active then
			arg1.Active = false
			ApplyInactiveObjects_upvr(arg1)
			if arg1.PlayingAnimation then
				arg1.PlayingAnimation:Stop()
				arg1.PlayingAnimation = nil
			end
		end
	end
	if arg1.ToolState.Equipped then
		arg1.ToolState.Equipped = false
		module_3_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
	end
	tbl_14_upvr.CloudState_ByType[arg1.ToolState.Type] = nil
	if arg1._Thread then
		if coroutine.status(arg1._Thread) == "suspended" then
			task.cancel(arg1._Thread)
		end
		arg1._Thread = nil
	end
	for _, v_3 in arg1._Connections do
		v_3:Disconnect()
	end
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module.InitializeTool(arg1) -- Line 459
	--[[ Upvalues[10]:
		[1]: tbl_14_upvr (readonly)
		[2]: DeinitializeTool_upvr (readonly)
		[3]: tbl_9_upvr (readonly)
		[4]: ApplyInactiveObjects_upvr (readonly)
		[5]: ApplyActiveObjects_upvr (readonly)
		[6]: module_3_upvr (readonly)
		[7]: any_Create_result1_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: module_2_upvr (readonly)
		[10]: tbl_6_upvr (readonly)
	]]
	if tbl_14_upvr.CloudState_ByType[arg1.Type] then
		DeinitializeTool_upvr(tbl_14_upvr.CloudState_ByType[arg1.Type])
	end
	local assert_result1 = assert(tbl_9_upvr[arg1.Type], "Invalid cloud type")
	local Tool_upvr = arg1.Tool
	local tbl_8_upvr = {
		_Connections = {};
	}
	tbl_8_upvr.ToolState = arg1
	tbl_8_upvr.Handle = Tool_upvr:WaitForChild("Handle")
	tbl_8_upvr.AnimationTracks_ByTiltSign = {}
	tbl_8_upvr.Acceleration = assert_result1.Acceleration
	tbl_8_upvr.Inertia = 1 - assert_result1.Acceleration / assert_result1.TopSpeed
	tbl_8_upvr.Tilt = 0
	tbl_8_upvr.TopSpeed = assert_result1.TopSpeed
	tbl_8_upvr.Velocity = Vector3.new(0, 0, 0)
	tbl_8_upvr.Active = false
	tbl_8_upvr.Alive = false
	tbl_8_upvr.Equipped = false
	tbl_8_upvr.UpdateAt = 0
	ApplyInactiveObjects_upvr(tbl_8_upvr)
	tbl_8_upvr._Connections[#tbl_8_upvr._Connections + 1] = Tool_upvr.Activated:Connect(function() -- Line 495
		--[[ Upvalues[3]:
			[1]: tbl_8_upvr (readonly)
			[2]: ApplyInactiveObjects_upvr (copied, readonly)
			[3]: ApplyActiveObjects_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local Active_6 = tbl_8_upvr.Active
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 14. Error Block 4 start (CF ANALYSIS FAILED)
		Active_6.PlayingAnimation:Stop()
		Active_6.PlayingAnimation = nil
		do
			return
		end
		-- KONSTANTERROR: [17] 14. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 20. Error Block 21 start (CF ANALYSIS FAILED)
		local var102 = tbl_8_upvr
		if not var102.Active then
			var102.Active = true
			local var103 = false
			if var102.Character ~= nil then
				var103 = false
				if var102.Root ~= nil then
					var103 = var102.Active
					if var103 then
						var103 = var102.Alive
						if var103 then
							var103 = var102.ToolState.Equipped
						end
					end
				end
			end
			if var103 then
				ApplyActiveObjects_upvr(var102)
				var102.Velocity = var102.Root.CFrame.LookVector * 10 + Vector3.new(0, 3, 0)
				return
			end
			var102.Active = false
		end
		-- KONSTANTERROR: [26] 20. Error Block 21 end (CF ANALYSIS FAILED)
	end)
	tbl_8_upvr._Connections[#tbl_8_upvr._Connections + 1] = Tool_upvr.Equipped:Connect(function() -- Line 502
		--[[ Upvalues[3]:
			[1]: tbl_8_upvr (readonly)
			[2]: module_3_upvr (copied, readonly)
			[3]: any_Create_result1_upvr (copied, readonly)
		]]
		local var105 = tbl_8_upvr
		if not var105.ToolState.Equipped then
			var105.ToolState.Equipped = true
			module_3_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
		end
	end)
	tbl_8_upvr._Connections[#tbl_8_upvr._Connections + 1] = Tool_upvr.Unequipped:Connect(function() -- Line 505
		--[[ Upvalues[4]:
			[1]: tbl_8_upvr (readonly)
			[2]: ApplyInactiveObjects_upvr (copied, readonly)
			[3]: module_3_upvr (copied, readonly)
			[4]: any_Create_result1_upvr (copied, readonly)
		]]
		local var108 = tbl_8_upvr
		if var108.Active then
			if var108.Active then
				var108.Active = false
				ApplyInactiveObjects_upvr(var108)
				if var108.PlayingAnimation then
					var108.PlayingAnimation:Stop()
					var108.PlayingAnimation = nil
				end
			end
		end
		if var108.ToolState.Equipped then
			var108.ToolState.Equipped = false
			module_3_upvr.MouseIconState.SetActive(any_Create_result1_upvr, false)
		end
	end)
	tbl_8_upvr._Connections[#tbl_8_upvr._Connections + 1] = Tool_upvr.Destroying:Connect(function() -- Line 508
		--[[ Upvalues[2]:
			[1]: DeinitializeTool_upvr (copied, readonly)
			[2]: tbl_8_upvr (readonly)
		]]
		DeinitializeTool_upvr(tbl_8_upvr)
	end)
	tbl_8_upvr._Thread = task.spawn(function() -- Line 512
		--[[ Upvalues[8]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: tbl_8_upvr (readonly)
			[3]: Tool_upvr (readonly)
			[4]: module_3_upvr (copied, readonly)
			[5]: any_Create_result1_upvr (copied, readonly)
			[6]: module_2_upvr (copied, readonly)
			[7]: ApplyInactiveObjects_upvr (copied, readonly)
			[8]: tbl_6_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Character = LocalPlayer_upvr.Character
		if not Character then
			Character = LocalPlayer_upvr.ChildAdded:Wait()
		end
		tbl_8_upvr.Character = Character
		if Tool_upvr:IsDescendantOf(Character) then
			local var132 = tbl_8_upvr
			if not var132.ToolState.Equipped then
				var132.ToolState.Equipped = true
				module_3_upvr.MouseIconState.SetActive(any_Create_result1_upvr, true)
			end
		end
		local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
		if HumanoidRootPart:IsA("BasePart") then
			tbl_8_upvr.Root = HumanoidRootPart
		end
		local Humanoid = Character:WaitForChild("Humanoid")
		if Humanoid:IsA("Humanoid") then
			tbl_8_upvr.Alive = module_2_upvr.HumanoidIsAlive(Humanoid)
			if tbl_8_upvr.Alive then
				tbl_8_upvr._Connections[#tbl_8_upvr._Connections] = Humanoid.Died:Connect(function() -- Line 532
					--[[ Upvalues[2]:
						[1]: tbl_8_upvr (copied, readonly)
						[2]: ApplyInactiveObjects_upvr (copied, readonly)
					]]
					tbl_8_upvr.Alive = false
					local var136 = tbl_8_upvr
					if var136.Active then
						var136.Active = false
						ApplyInactiveObjects_upvr(var136)
						if var136.PlayingAnimation then
							var136.PlayingAnimation:Stop()
							var136.PlayingAnimation = nil
						end
					end
				end)
				local Animator = Humanoid:WaitForChild("Animator")
				if Animator and Animator:IsA("Animator") then
					for i_4, v_4 in tbl_6_upvr do
						local any_LoadAnimation_result1 = Animator:LoadAnimation(v_4)
						any_LoadAnimation_result1.Priority = Enum.AnimationPriority.Action
						tbl_8_upvr.AnimationTracks_ByTiltSign[i_4] = any_LoadAnimation_result1
					end
				end
			end
		end
	end)
	tbl_14_upvr.CloudState_ByType[arg1.Type] = tbl_8_upvr
end
function module.PostSimulation(arg1, arg2) -- Line 556
	--[[ Upvalues[4]:
		[1]: module_3_upvr (readonly)
		[2]: tbl_14_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_4_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Camera_2 = module_3_upvr.Camera
	for _, v_5 in tbl_14_upvr.CloudState_ByType do
		local var174 = false
		if v_5.Character ~= nil then
			var174 = false
			if v_5.Root ~= nil then
				var174 = v_5.Active
				if var174 then
					var174 = v_5.Alive
					if var174 then
						var174 = v_5.ToolState.Equipped
					end
				end
			end
		end
		if var174 then
			if v_5.ActiveObjects then
				if v_5.UpdateAt < arg2 then
					local var175
					if v_5.Character then
						local var176 = module_7_upvr.CharacterState_ByCharacter[v_5.Character]
						if var176 then
							var175 = module_4_upvr.PhysicsCharacterGet(var176)
						end
					end
					local var177 = var175
					local var178
					if var177 then
						local ActiveObjects = v_5.ActiveObjects
						local CFrame_2 = Camera_2.CFrame
						local any_MotionDirectionGet_result1 = module_4_upvr.MotionDirectionGet(var177)
						if 1 < any_MotionDirectionGet_result1.Magnitude then
							any_MotionDirectionGet_result1 = any_MotionDirectionGet_result1.Unit
						end
						local any_UprightVectorGet_result1_2 = module_4_upvr.UprightVectorGet(var177)
						local Unit_2 = CFrame_2.RightVector:Cross(any_UprightVectorGet_result1_2).Unit
						var178 = CFrame_2.RightVector
						var178 = (CFrame_2.UpVector) * (math.max(-Unit_2:Dot(any_MotionDirectionGet_result1), 0) * 0.2)
						var178 = CFrame_2.LookVector
						local Velocity = v_5.Velocity
						var178 = Velocity * v_5.Inertia + (var178 * any_UprightVectorGet_result1_2:Cross(Unit_2).Unit:Dot(any_MotionDirectionGet_result1) + var178 + var178 * -Unit_2:Dot(any_MotionDirectionGet_result1)) * v_5.Acceleration
						local Magnitude = var178.Magnitude
						if Magnitude < 0.5 then
							var178 = Vector3.new(0, 0, 0)
							Magnitude = 0
						end
						local var187 = Magnitude / v_5.TopSpeed
						ActiveObjects.Mesh.Scale = Vector3.new(4, 4, 4 + var187 * 4)
						ActiveObjects.Wind.PlaybackSpeed = var187 * 2 + 1
						ActiveObjects.Wind.Volume = var187 + 0.1
						local var188 = 0
						if 0 < Magnitude then
							local var189 = var178 * Vector3.new(1, 0, 1)
							local var190 = Velocity * Vector3.new(1, 0, 1)
							if 0.015625 < var189.Magnitude and 0.015625 < var190.Magnitude then
								var188 = var189.Unit:Cross(var190.Unit).Y
							end
						end
						var189 = v_5.Tilt * 0.9
						local var191 = var189
						local var192 = var191 + var188 * 0.09999999999999998
						if 0.01 <= math.abs(var192) then
							var191 = math.sign(var192)
						else
							var191 = 0
						end
						local var193 = v_5.AnimationTracks_ByTiltSign[var191]
						if var193 ~= v_5.PlayingAnimation then
							if v_5.PlayingAnimation then
								v_5.PlayingAnimation:Stop(0.5)
								v_5.PlayingAnimation = nil
							end
							if var193 then
								var193:Play(0.5)
								v_5.PlayingAnimation = var193
							end
						end
						if 0 < Magnitude then
						else
						end
						local var194 = CFrame.lookAlong(Vector3.new(0, 0, 0), Camera_2.CFrame.LookVector * Vector3.new(1, 0, 1)) * CFrame.Angles(0, (-math.pi/2), 0)
						if 0 < Magnitude then
							var194 *= CFrame.Angles(var192 * -20, 0, 0)
						end
						ActiveObjects.BodyGyro.CFrame = var194
						ActiveObjects.BodyVelocity.Velocity = var178
						v_5.Velocity = var178
						v_5.Tilt = var192
						v_5.UpdateAt = arg2 + (1/60)
					end
				end
			end
		end
	end
end
return module