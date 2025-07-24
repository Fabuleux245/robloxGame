-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:29
-- Luau version 6, Types version 3
-- Time taken: 0.003217 seconds

local VRService_upvr = game:GetService("VRService")
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local module_upvr = {}
module_upvr.__index = module_upvr
local AvatarUtil_upvr = require(game:GetService("CorePackages").Workspace.Packages.CoreScriptsCommon).AvatarUtil
function module_upvr.new() -- Line 13
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: AvatarUtil_upvr (readonly)
		[3]: VRService_upvr (readonly)
		[4]: UserGameSettings_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.avatarUtil = AvatarUtil_upvr.new()
	VRService_upvr:GetPropertyChangedSignal("AutomaticScaling"):Connect(function() -- Line 17
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onScalingChanged()
	end)
	UserGameSettings_upvr:GetPropertyChangedSignal("PlayerHeight"):Connect(function() -- Line 20
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		setmetatable_result1_upvr:onPlayerHeightChanged()
	end)
	VRService_upvr.UserCFrameChanged:Connect(function(arg1, arg2) -- Line 23
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		if arg1 == Enum.UserCFrame.Floor then
			setmetatable_result1_upvr:onPlayerHeightChanged()
		end
	end)
	setmetatable_result1_upvr:onScalingChanged()
	return setmetatable_result1_upvr
end
function module_upvr.setHeadScale(arg1, arg2) -- Line 35
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: UserGameSettings_upvr (readonly)
	]]
	local var9
	if VRService_upvr.AutomaticScaling ~= Enum.VRScaling.World then
	else
		var9 = arg2
		local any_GetSubjectHeight_result1 = arg1:GetSubjectHeight(var9)
		if not any_GetSubjectHeight_result1 or any_GetSubjectHeight_result1 <= 0 then return end
		var9 = VRService_upvr:GetUserCFrame(Enum.UserCFrame.Floor).Position.Y
		local var11 = -var9
		var9 = nil
		if var11 < 0.8 * UserGameSettings_upvr.PlayerHeight then
			var9 = any_GetSubjectHeight_result1 / UserGameSettings_upvr.PlayerHeight
		else
			var9 = any_GetSubjectHeight_result1 / var11
		end
		local CurrentCamera = workspace.CurrentCamera
		if not CurrentCamera then return end
		CurrentCamera.HeadScale = var9
	end
end
function module_upvr.GetSubjectHeight(arg1, arg2) -- Line 64
	local Humanoid_2 = arg2:FindFirstChild("Humanoid")
	local var17
	if Humanoid_2 then
		var17 = Humanoid_2:GetState()
		if var17 == Enum.HumanoidStateType.Dead then return end
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var17 = Humanoid_2.RootPart
		return var17
	end
	if not Humanoid_2 or not INLINED_2() then
		var17 = arg2:FindFirstChild("HumanoidRootPart")
	end
	local var18
	if var17 and Humanoid_2 then
		var18 = Humanoid_2.HipHeight
		if Humanoid_2.RigType == Enum.HumanoidRigType.R6 then
			var18 = 2
		end
		if Humanoid_2.AutomaticScalingEnabled then
			return (var17.Size.Y / 2 + var18) + (var17.Size.Y / 2 + 0.5) + Humanoid_2.CameraOffset.Y
		end
		return var17.Size.Y / 2 + var18 + 2 + Humanoid_2.CameraOffset.Y
	end
	return nil
end
local Players_upvr = game:GetService("Players")
function module_upvr.onPlayerHeightChanged(arg1) -- Line 93
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	if Players_upvr.LocalPlayer and Players_upvr.LocalPlayer.Character then
		arg1:setHeadScale(Players_upvr.LocalPlayer.Character)
	end
end
function module_upvr.onScalingChanged(arg1) -- Line 100
	--[[ Upvalues[1]:
		[1]: VRService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.characterChangedConnection = arg1.avatarUtil:connectLocalCharacterChanges(function(arg1_2) -- Line 104
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setHeadScale(arg1_2)
	end)
	do
		return
	end
	-- KONSTANTERROR: [10] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 14. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.characterChangedConnection then
		arg1.characterChangedConnection:Disconnect()
		arg1.characterChangedConnection = nil
	end
	-- KONSTANTERROR: [20] 14. Error Block 7 end (CF ANALYSIS FAILED)
end
return module_upvr.new()