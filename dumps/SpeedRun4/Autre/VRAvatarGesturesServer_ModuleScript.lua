-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:02
-- Luau version 6, Types version 3
-- Time taken: 0.005738 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local VRService_upvr = game:GetService("VRService")
local module_upvr = {}
module_upvr.__index = module_upvr
local ConnectionUtil_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).ConnectionUtil
function module_upvr.new() -- Line 20
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: ConnectionUtil_upvr (readonly)
		[3]: VRService_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.connections = ConnectionUtil_upvr.new()
	setmetatable_result1_upvr.VRPlayers = {}
	setmetatable_result1_upvr.connections:connect("AvatarGestures", VRService_upvr:GetPropertyChangedSignal("AvatarGestures"), function() -- Line 28
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
function cleanCharacter(arg1) -- Line 35
	if arg1.Character then
		local Humanoid_4 = arg1.Character:FindFirstChild("Humanoid")
		if Humanoid_4 then
			for _, v in pairs({"TrackedIKLeftHand", "TrackedIKRightHand", "TrackedIKHead"}) do
				local SOME_7 = Humanoid_4:FindFirstChild(v)
				if SOME_7 then
					SOME_7:Destroy()
				end
			end
		end
		for _, v_2 in pairs({"TrackedLeftHand", "TrackedRightHand", "TrackedHead"}) do
			local SOME_3 = arg1.Character:FindFirstChild(v_2)
			if SOME_3 then
				SOME_3:Destroy()
			end
		end
	end
end
local AvatarUtil_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).AvatarUtil
function module_upvr.onPlayerChanged(arg1, arg2, arg3) -- Line 62
	--[[ Upvalues[1]:
		[1]: AvatarUtil_upvr (readonly)
	]]
	arg1.VRPlayers[arg2] = arg3 or nil
	if arg3 then
		if not arg1.avatarUtil then
			arg1.avatarUtil = AvatarUtil_upvr.new()
		end
		arg1.avatarUtil:connectPlayerCharacterChanges(arg2, function(arg1_2) -- Line 71
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onCharacterChanged(arg1_2)
		end)
	else
		cleanCharacter(arg2)
	end
end
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local game_DefineFastInt_result1_upvr = game:DefineFastInt("VRAvatarGesturesAnalyticsThrottleHundrethsPercent", 0)
function module_upvr.onPlayerAdded(arg1, arg2) -- Line 79
	--[[ Upvalues[2]:
		[1]: RbxAnalyticsService_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
	]]
	if next(arg1.VRPlayers) ~= nil then
		RbxAnalyticsService_upvr:ReportInfluxSeries("VRAvatarGestures", {
			placeId = game.PlaceId;
			calledFrom = "ServerPlayerAddedWithVRPlayer";
			playerUserID = arg2.UserId;
		}, game_DefineFastInt_result1_upvr)
	end
end
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
function module_upvr.onAvatarGesturesChanged(arg1) -- Line 90
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: RobloxReplicatedStorage_upvr (readonly)
		[3]: Players_upvr (readonly)
	]]
	if VRService_upvr.AvatarGestures then
		if not RobloxReplicatedStorage_upvr:FindFirstChild("AvatarGesturesVRPlayer") then
			local RemoteEvent = Instance.new("RemoteEvent")
			RemoteEvent.Name = "AvatarGesturesVRPlayer"
			RemoteEvent.Parent = RobloxReplicatedStorage_upvr
		end
		arg1.connections:connect("VRPlayerOnServerEvent", RemoteEvent.OnServerEvent, function(arg1_3, arg2) -- Line 101
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onPlayerChanged(arg1_3, arg2)
		end)
		arg1.connections:connect("PlayerAdded", Players_upvr.PlayerAdded, function(arg1_4) -- Line 104
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onPlayerAdded(arg1_4)
		end)
		arg1.connections:connect("PlayerRemoving", Players_upvr.PlayerRemoving, function(arg1_5) -- Line 107
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onPlayerChanged(arg1_5, false)
		end)
	else
		for i_3 in pairs(arg1.VRPlayers) do
			arg1:onPlayerChanged(i_3, false)
		end
		arg1.connections:disconnectAll()
		arg1.connections:connect("AvatarGestures", VRService_upvr:GetPropertyChangedSignal("AvatarGestures"), function() -- Line 115
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:onAvatarGesturesChanged()
		end)
	end
end
function module_upvr.findOrCreateColliders(arg1, arg2, arg3) -- Line 121
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	local var38 = "Tracked"..arg2
	if not arg3:FindFirstChild(var38) then
		local Part = Instance.new("Part")
		Part.Name = var38
		Part.Transparency = 1
		Part.CanCollide = false
		Part.Parent = arg3
		Part:SetNetworkOwner(Players_upvr:GetPlayerFromCharacter(arg3))
	end
	if not Part:FindFirstChild(var38.."Attachment") then
		local Attachment = Instance.new("Attachment")
		Attachment.Name = var38.."Attachment"
		Attachment.Parent = Part
	end
	if not Part:FindFirstChild(var38.."AlignPosition") then
		local AlignPosition = Instance.new("AlignPosition")
		AlignPosition.Name = var38.."AlignPosition"
		AlignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
		AlignPosition.Attachment0 = Attachment
		AlignPosition.RigidityEnabled = true
		AlignPosition.Parent = Part
	end
	if not Part:FindFirstChild(var38.."AlignOrientation") then
		local AlignOrientation = Instance.new("AlignOrientation")
		AlignOrientation.Name = var38.."AlignOrientation"
		AlignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
		AlignOrientation.Attachment0 = Attachment
		AlignOrientation.RigidityEnabled = true
		AlignOrientation.Parent = Part
	end
	local SOME_8 = arg3:FindFirstChild(arg2)
	if SOME_8 then
		Part.Size = SOME_8.Size
		Part.CFrame = SOME_8.CFrame
		AlignPosition.Position = SOME_8.Position
		AlignOrientation.CFrame = SOME_8.CFrame
	else
		Part.Size = Vector3.new(1, 1, 1)
		Part.CFrame = arg3.WorldPivot
		AlignPosition.Position = arg3.WorldPivot.Position
		AlignOrientation.CFrame = arg3.WorldPivot
	end
	local Humanoid_6 = arg3:FindFirstChild("Humanoid")
	if Humanoid_6 then
		local var45 = "TrackedIK"..arg2
		local SOME_4 = Humanoid_6:FindFirstChild(var45)
		if not SOME_4 then
			SOME_4 = Instance.new("IKControl")
			SOME_4.Name = var45
		end
		SOME_4.SmoothTime = 0.1
		SOME_4.Parent = Humanoid_6
		SOME_4.Target = Part
	end
end
function module_upvr.createHandCollider(arg1, arg2, arg3) -- Line 196
	arg1:findOrCreateColliders(arg2.."Hand", arg3)
	local SOME_5 = arg3:FindFirstChild(arg2.."Hand")
	local Humanoid = arg3:FindFirstChild("Humanoid")
	if Humanoid then
		local SOME_11_upvr = Humanoid:FindFirstChild("TrackedIK"..arg2.."Hand")
		if SOME_11_upvr then
			SOME_11_upvr.Type = Enum.IKControlType.Transform
			local SOME_10_upvr = arg3:FindFirstChild(arg2.."UpperArm")
			if SOME_10_upvr then
				SOME_11_upvr.ChainRoot = SOME_5
				coroutine.wrap(function() -- Line 213
					--[[ Upvalues[2]:
						[1]: SOME_11_upvr (readonly)
						[2]: SOME_10_upvr (readonly)
					]]
					task.wait(0.1)
					SOME_11_upvr.ChainRoot = SOME_10_upvr
				end)()
			end
			if SOME_5 then
				SOME_11_upvr.EndEffector = SOME_5
			end
			SOME_11_upvr.Priority = 1
		end
	end
	if SOME_5 then
		SOME_10_upvr = "RagdollBallSocket"
		local SOME = SOME_5:FindFirstChild(SOME_10_upvr)
		if SOME then
			SOME_11_upvr = false
			SOME.LimitsEnabled = SOME_11_upvr
		end
	end
end
function module_upvr.createHeadCollider(arg1, arg2) -- Line 234
	arg1:findOrCreateColliders("Head", arg2)
	local Head = arg2:FindFirstChild("Head")
	local Humanoid_5 = arg2:FindFirstChild("Humanoid")
	if Humanoid_5 then
		local TrackedIKHead = Humanoid_5:FindFirstChild("TrackedIKHead")
		if TrackedIKHead then
			TrackedIKHead.Type = Enum.IKControlType.Rotation
			local UpperTorso_2 = arg2:FindFirstChild("UpperTorso")
			if UpperTorso_2 then
				TrackedIKHead.ChainRoot = UpperTorso_2
			end
			if Head then
				TrackedIKHead.EndEffector = Head
			end
		end
	end
end
function module_upvr.onCharacterChanged(arg1, arg2) -- Line 260
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: VRService_upvr (readonly)
	]]
	if arg1.VRPlayers[Players_upvr:GetPlayerFromCharacter(arg2)] and VRService_upvr.AvatarGestures then
		arg1:createHandCollider("Left", arg2)
		arg1:createHandCollider("Right", arg2)
		arg1:createHeadCollider(arg2)
	end
end
return module_upvr