-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:53
-- Luau version 6, Types version 3
-- Time taken: 0.004187 seconds

local module = {}
local Players_upvr = game:GetService("Players")
if game:GetService("RunService"):IsServer() then
	local RemoteEvent_upvr = Instance.new("RemoteEvent")
	RemoteEvent_upvr.Name = "Event"
	RemoteEvent_upvr.Parent = script
	local var6_upvw = true
	local CollectionService_upvr = game:GetService("CollectionService")
	local module_2_upvr = require(script:WaitForChild("RigTypes"))
	local function activateRagdoll_upvr(arg1, arg2) -- Line 27, Named "activateRagdoll"
		--[[ Upvalues[4]:
			[1]: CollectionService_upvr (readonly)
			[2]: Players_upvr (readonly)
			[3]: RemoteEvent_upvr (readonly)
			[4]: module_2_upvr (readonly)
		]]
		assert(arg2:IsDescendantOf(arg1))
		if CollectionService_upvr:HasTag(arg1, "__Ragdoll_Active") then
		else
			CollectionService_upvr:AddTag(arg1, "__Ragdoll_Active")
			local any_GetPlayerFromCharacter_result1 = Players_upvr:GetPlayerFromCharacter(arg1)
			if any_GetPlayerFromCharacter_result1 then
				RemoteEvent_upvr:FireClient(any_GetPlayerFromCharacter_result1, true, arg1, arg2)
			elseif arg1.PrimaryPart then
				RemoteEvent_upvr:FireAllClients(false, arg1, arg2)
			end
			arg2:ChangeState(Enum.HumanoidStateType.Physics)
			for i_3, v_3 in pairs(module_2_upvr.getAttachments(arg1, arg2.RigType)) do
				local SOME = arg1:FindFirstChild(i_3)
				if SOME then
					local BallSocketConstraint = Instance.new("BallSocketConstraint")
					BallSocketConstraint.Name = "RagdollBallSocketConstraint"
					BallSocketConstraint.Attachment0 = v_3.attachment0
					BallSocketConstraint.Attachment1 = v_3.attachment1
					BallSocketConstraint.LimitsEnabled = true
					BallSocketConstraint.UpperAngle = v_3.limits.UpperAngle
					BallSocketConstraint.TwistLimitsEnabled = true
					BallSocketConstraint.TwistLowerAngle = v_3.limits.TwistLowerAngle
					BallSocketConstraint.TwistUpperAngle = v_3.limits.TwistUpperAngle
					BallSocketConstraint.Parent = SOME
				end
			end
			for _, v_4 in pairs(module_2_upvr.getNoCollisions(arg1, arg2.RigType)) do
				local NoCollisionConstraint = Instance.new("NoCollisionConstraint")
				NoCollisionConstraint.Name = "RagdollNoCollisionConstraint"
				NoCollisionConstraint.Part0 = v_4[1]
				NoCollisionConstraint.Part1 = v_4[2]
				NoCollisionConstraint.Parent = v_4[1]
			end
			for _, v_5 in pairs(arg1:GetDescendants()) do
				if v_5:IsA("Motor6D") then
					v_5:Destroy()
				end
			end
		end
	end
	local function onHumanoidAdded_upvr(arg1, arg2, arg3) -- Line 82, Named "onHumanoidAdded"
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: activateRagdoll_upvr (readonly)
		]]
		arg2.BreakJointsOnDeath = not var6_upvw
		arg2:GetPropertyChangedSignal("Health"):Connect(function(arg1_2) -- Line 85
			--[[ Upvalues[4]:
				[1]: arg2 (readonly)
				[2]: activateRagdoll_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg3 (readonly)
			]]
			if arg2.Humanoid.Health <= 0 then
				arg2.BreakJointsOnDeath = false
				activateRagdoll_upvr(arg1, arg2)
				wait(3)
				arg3:LoadCharacter()
			end
		end)
		arg2.Died:Connect(function() -- Line 96
			--[[ Upvalues[5]:
				[1]: var6_upvw (copied, read and write)
				[2]: arg2 (readonly)
				[3]: activateRagdoll_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg3 (readonly)
			]]
			if var6_upvw then
				print("here")
				arg2.BreakJointsOnDeath = false
				activateRagdoll_upvr(arg1, arg2)
				wait(3)
				arg3:LoadCharacter()
			end
		end)
	end
	local function onCharacterAdded_upvr(arg1, arg2) -- Line 111, Named "onCharacterAdded"
		--[[ Upvalues[1]:
			[1]: onHumanoidAdded_upvr (readonly)
		]]
		local class_Humanoid_4 = arg1:FindFirstChildOfClass("Humanoid")
		if class_Humanoid_4 then
			onHumanoidAdded_upvr(arg1, class_Humanoid_4, arg2)
		else
			arg1.ChildAdded:Connect(function(arg1_3) -- Line 119
				--[[ Upvalues[3]:
					[1]: onHumanoidAdded_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: arg2 (readonly)
				]]
				if arg1_3:IsA("Humanoid") then
					onHumanoidAdded_upvr(arg1, arg1_3, arg2)
				end
			end)
		end
	end
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 130, Named "onPlayerAdded"
		--[[ Upvalues[1]:
			[1]: onCharacterAdded_upvr (readonly)
		]]
		arg1.CharacterAdded:Connect(onCharacterAdded_upvr)
		if arg1.Character then
			onCharacterAdded_upvr(arg1.Character, arg1)
		end
	end)
	for _, v in pairs(Players_upvr:GetPlayers()) do
		v.CharacterAdded:Connect(onCharacterAdded_upvr)
		if v.Character then
			onCharacterAdded_upvr(v.Character, v)
		end
	end
	local function Activate(arg1, arg2) -- Line 144
		--[[ Upvalues[1]:
			[1]: activateRagdoll_upvr (readonly)
		]]
		if typeof(arg2) ~= "Instance" or not arg2:IsA("Model") then
			error("bad argument #1 to 'Activate' (Model expected, got "..typeof(arg2)..')', 2)
		end
		local class_Humanoid = arg2:FindFirstChildOfClass("Humanoid")
		if not class_Humanoid then
			return warn("[Ragdoll] Could not ragdoll "..arg2:GetFullName().." because it has no Humanoid")
		end
		activateRagdoll_upvr(arg2, class_Humanoid)
	end
	module.Activate = Activate
	local function SetPlayerDefault(arg1, arg2) -- Line 159
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: Players_upvr (readonly)
		]]
		if arg2 ~= nil and typeof(arg2) ~= "boolean" then
			error("bad argument #1 to 'SetPlayerDefault' (boolean expected, got "..typeof(arg2)..')', 2)
		end
		var6_upvw = arg2
		for _, v_2 in pairs(Players_upvr:GetPlayers()) do
			if v_2.Character then
				local class_Humanoid_2 = v_2.Character:FindFirstChildOfClass("Humanoid")
				if class_Humanoid_2 then
					class_Humanoid_2.BreakJointsOnDeath = not var6_upvw
				end
			end
		end
	end
	module.SetPlayerDefault = SetPlayerDefault
	return module
end
RemoteEvent_upvr = script:WaitForChild("Event").OnClientEvent
RemoteEvent_upvr = RemoteEvent_upvr:Connect
RemoteEvent_upvr(function(arg1, arg2, arg3) -- Line 181
	if arg1 then
		local Head = arg2:FindFirstChild("Head")
		if Head then
			workspace.CurrentCamera.CameraSubject = Head
		end
	end
	arg3:ChangeState(Enum.HumanoidStateType.Physics)
end)
function RemoteEvent_upvr(arg1) -- Line 194, Named "Activate"
	error("Ragdoll::Activate cannot be used from the client", 2)
end
module.Activate = RemoteEvent_upvr
function RemoteEvent_upvr(arg1) -- Line 198, Named "SetPlayerDefault"
	error("Ragdoll::SetPlayerDefault cannot be used from the client", 2)
end
module.SetPlayerDefault = RemoteEvent_upvr
return module