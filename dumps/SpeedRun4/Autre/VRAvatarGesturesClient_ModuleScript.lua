-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:28
-- Luau version 6, Types version 3
-- Time taken: 0.005789 seconds

local VRService_upvr = game:GetService("VRService")
local Players_upvr = game:GetService("Players")
local CoreScriptsCommon = require(game:GetService("CorePackages").Workspace.Packages.CoreScriptsCommon)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugImmersionModeNonVR", false)
local module_upvr = {}
module_upvr.__index = module_upvr
local ConnectionUtil_upvr = CoreScriptsCommon.ConnectionUtil
function module_upvr.new() -- Line 55
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: ConnectionUtil_upvr (readonly)
		[3]: VRService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.partCFrameMap = {}
	setmetatable_result1_upvr.connections = ConnectionUtil_upvr.new()
	setmetatable_result1_upvr.analyticsSendEnabled = true
	setmetatable_result1_upvr.connections:connect("AvatarGestures", VRService_upvr:GetPropertyChangedSignal("AvatarGestures"), function() -- Line 60
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onAvatarGesturesChanged()
	end)
	if VRService_upvr.AvatarGestures then
		setmetatable_result1_upvr:onAvatarGesturesChanged()
	end
	return setmetatable_result1_upvr
end
function module_upvr.onCharacterChanged(arg1, arg2) -- Line 65
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	local Humanoid_upvr = arg2:FindFirstChild("Humanoid")
	if not Humanoid_upvr then
	else
		for _, v_2 in pairs({"TrackedIKLeftHand", "TrackedIKRightHand", "TrackedIKHead"}) do
			local SOME_2 = Humanoid_upvr:FindFirstChild(v_2)
			if SOME_2 then
				SOME_2.SmoothTime = 0
			end
		end
		local CurrentCamera_upvr = workspace.CurrentCamera
		if not CurrentCamera_upvr then return end
		local function updateSeated_upvr(arg1_2) -- Line 86, Named "updateSeated"
			--[[ Upvalues[2]:
				[1]: CurrentCamera_upvr (readonly)
				[2]: Humanoid_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var18
			if var18 then
				var18 = CurrentCamera_upvr.CameraSubject:IsA("VehicleSeat")
			end
			if (CurrentCamera_upvr.CFrame.Position - CurrentCamera_upvr.Focus.Position).Magnitude > 5 then
			else
			end
			local TrackedIKHead = Humanoid_upvr:FindFirstChild("TrackedIKHead")
			if TrackedIKHead then
				if arg1_2 and not var18 and true then
					TrackedIKHead.Type = Enum.IKControlType.Transform
					return
				end
				TrackedIKHead.Type = Enum.IKControlType.Rotation
			end
		end
		updateSeated_upvr(Humanoid_upvr.Sit)
		arg1.connections:connect("Seated", Humanoid_upvr.Seated, function(arg1_3) -- Line 102
			--[[ Upvalues[3]:
				[1]: updateSeated_upvr (readonly)
				[2]: CurrentCamera_upvr (readonly)
				[3]: VRService_upvr (copied, readonly)
			]]
			updateSeated_upvr(arg1_3)
			if arg1_3 and (CurrentCamera_upvr.CFrame.Position - CurrentCamera_upvr.Focus.Position).Magnitude <= 5 then
				VRService_upvr:RecenterUserHeadCFrame()
			end
		end)
	end
end
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local AvatarUtil_upvr = CoreScriptsCommon.AvatarUtil
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("VRAvatarGesturesAnalyticsThrottleHundrethsPercent", 0)
function module_upvr.onAvatarGesturesChanged(arg1) -- Line 111
	--[[ Upvalues[7]:
		[1]: VRService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: RobloxReplicatedStorage_upvr (readonly)
		[4]: AvatarUtil_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: RbxAnalyticsService_upvr (readonly)
		[7]: game_DefineFastInt_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [67] 50. Error Block 14 start (CF ANALYSIS FAILED)
	arg1.analyticsSendEnabled = nil
	RbxAnalyticsService_upvr:ReportInfluxSeries("VRAvatarGestures", {
		placeId = game.PlaceId;
		calledFrom = "ClientJoined";
	}, game_DefineFastInt_result1_upvr)
	do
		return
	end
	-- KONSTANTERROR: [67] 50. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [87] 64. Error Block 27 start (CF ANALYSIS FAILED)
	if VRService_upvr.VREnabled or game_DefineFastFlag_result1_upvr then
		local AvatarGesturesVRPlayer = RobloxReplicatedStorage_upvr:FindFirstChild("AvatarGesturesVRPlayer")
		if AvatarGesturesVRPlayer then
			AvatarGesturesVRPlayer:FireServer(false)
		end
	end
	arg1.connections:disconnectAll()
	arg1.connections:connect("AvatarGestures", VRService_upvr:GetPropertyChangedSignal("AvatarGestures"), function() -- Line 157
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:onAvatarGesturesChanged()
	end)
	-- KONSTANTERROR: [87] 64. Error Block 27 end (CF ANALYSIS FAILED)
end
function module_upvr.updateCFrames(arg1, arg2, arg3) -- Line 161
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	if not Players_upvr.LocalPlayer then
	else
		local Character = LocalPlayer.Character
		if not LocalPlayer.Character then return end
		local SOME_3 = Character:FindFirstChild(arg2)
		if not SOME_3 then return end
		local CurrentCamera = workspace.CurrentCamera
		if not CurrentCamera then return end
		if not SOME_3:FindFirstChild(arg2.."Attachment") then return end
		local SOME_4 = SOME_3:FindFirstChild(arg2.."AlignPosition")
		if not SOME_4 then return end
		local SOME = SOME_3:FindFirstChild(arg2.."AlignOrientation")
		if not SOME then return end
		local var34
		if VRService_upvr.VREnabled then
			var34 = arg3.Position * CurrentCamera.HeadScale
			local var35 = arg3.Rotation + var34
			var34 = CurrentCamera.CFrame
			local var36 = var34 * var35
			var34 = Character:FindFirstChild("Head")
			if 5 < (CurrentCamera.CFrame.Position - CurrentCamera.Focus.Position).Magnitude and var34 then
				local any_GetUserCFrame_result1 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Head)
				if arg2 ~= "TrackedHead" then
					local any_ToWorldSpace_result1 = var34.CFrame:ToWorldSpace(CurrentCamera.CFrame * (any_GetUserCFrame_result1.Rotation + any_GetUserCFrame_result1.Position * CurrentCamera.HeadScale) * CFrame.new(0, 0, 0.5):ToObjectSpace(var36))
					SOME_4.Position = any_ToWorldSpace_result1.Position
					SOME.CFrame = any_ToWorldSpace_result1 * CFrame.Angles((math.pi/2), 0, 0)
				else
					local CFrame = Character.PrimaryPart.CFrame
					SOME_4.Position = (CFrame * CFrame.new(0, CFrame.Position.Y * 0.25, -CFrame.Position.Y * 0.125)).Position
					SOME.CFrame = CFrame * var35
				end
			else
				SOME_4.Position = var36.Position
				if arg2 ~= "TrackedHead" then
					SOME.CFrame = var36 * CFrame.Angles((math.pi/2), 0, 0)
				else
					SOME.CFrame = var36
				end
			end
		else
			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			var34 = nil
			if arg2 ~= "TrackedHead" then
				var34 = HumanoidRootPart.CFrame * var35 * CFrame.Angles(0, 0, math.rad(time() * 30)) * CFrame.new(1, 0, -0.5)
			else
				var34 = HumanoidRootPart.CFrame * var35
			end
			if HumanoidRootPart then
				SOME_4.Position = var34.Position
				SOME.CFrame = var34
			end
		end
		SOME_3.CFrame = CFrame.new(SOME_4.Position) * SOME.CFrame.Rotation
	end
end
function module_upvr.steppedCframes(arg1) -- Line 253
	for i, v in pairs(arg1.partCFrameMap) do
		arg1:updateCFrames(i, v)
	end
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.connectInputCFrames(arg1) -- Line 259
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: RunService_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
		arg1.connections:connect("UserCFrameChanged", VRService_upvr.UserCFrameChanged, function(arg1_4, arg2) -- Line 261
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_4 == Enum.UserCFrame.LeftHand then
				arg1.partCFrameMap.TrackedLeftHand = arg2
			else
				if arg1_4 == Enum.UserCFrame.RightHand then
					arg1.partCFrameMap.TrackedRightHand = arg2
					return
				end
				if arg1_4 == Enum.UserCFrame.Head then
					arg1.partCFrameMap.TrackedHead = arg2
				end
			end
		end)
	elseif game_DefineFastFlag_result1_upvr then
		arg1.connections:connect("NonVRSimulateInput", RunService_upvr.RenderStepped, function(arg1_5) -- Line 271
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.partCFrameMap.TrackedLeftHand = CFrame.new(-0.5, 0, -0.5)
			arg1.partCFrameMap.TrackedRightHand = CFrame.new(0.5, 0, -0.5)
			arg1.partCFrameMap.TrackedHead = CFrame.new(0, 1, 0)
		end)
	end
	if VRService_upvr.VREnabled or game_DefineFastFlag_result1_upvr then
		arg1.connections:connect("RenderStepped", RunService_upvr.RenderStepped, function(arg1_6) -- Line 279
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:steppedCframes()
		end)
	end
end
return module_upvr.new()