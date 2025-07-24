-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:51
-- Luau version 6, Types version 3
-- Time taken: 0.008817 seconds

local module_upvr = {
	DebugEnabled = nil;
	AdGuiFallbackImage = "rbxassetid://137523217097472";
	StableCameraCooldown = 40;
	StableCameraMovementThreshold = 1;
	StableCameraAngleThreshold = 5;
	SidewaysRotationAngle = 40;
	AdEnemyScreenSize = Vector3.new(30.2199, 17, 4.72200);
	AdEnemyDistance = module_upvr.AdEnemyScreenSize.Y * 3.6;
	ScreenClampPadding = 0.7;
	InvisibleWhenNoAdDisplayed = true;
}
local module_upvr_2 = require(game.ReplicatedStorage:WaitForChild("BUUI"))
local tbl_upvr = {
	LocalPPIQS = nil;
	AdEnemy = nil;
	UI_Debug = nil;
	Debug_TriggerConstantly = nil;
	Debug_DisableLookAtCamera = true;
	Debug_DisableSidewaysRotation = true;
	Debug_AdCentered = nil;
	Debug_StableCameraCooldown = nil;
	Debug_SidewaysRotationAngle = nil;
	Debug_ScreenClampPadding = nil;
}
module_upvr.LocalPlayerPolicyInfo = nil
local PolicyService_upvr = game:GetService("PolicyService")
local function PPIQS_Query_upvr(arg1, arg2) -- Line 105, Named "PPIQS_Query"
	--[[ Upvalues[1]:
		[1]: PolicyService_upvr (readonly)
	]]
	local var5_upvw
	local pcall_result1, pcall_result2 = pcall(function() -- Line 107
		--[[ Upvalues[3]:
			[1]: var5_upvw (read and write)
			[2]: PolicyService_upvr (copied, readonly)
			[3]: arg2 (readonly)
		]]
		var5_upvw = PolicyService_upvr:GetPolicyInfoForPlayerAsync(arg2)
	end)
	if not pcall_result1 then
		warn("PolicyService:GetPolicyInfoForPlayerAsync() failed with error:\n%s":format(tostring(pcall_result2)))
	end
	arg1.Result = {
		Success = pcall_result1;
		PlayerPolicyInfo = var5_upvw;
	}
end
module_upvr.TriggerStableAd = false
local function RaycastOpaque_upvr(arg1, arg2, arg3) -- Line 141, Named "RaycastOpaque"
	local var10
	while true do
		local workspace_Raycast_result1 = workspace:Raycast(arg1, arg2, arg3)
		if not workspace_Raycast_result1 then
			return var10
		end
		if workspace_Raycast_result1.Instance.Transparency < 1 then
			var10 = workspace_Raycast_result1
			return var10
		end
		arg3:AddToFilter(workspace_Raycast_result1.Instance)
		if 0 < arg2.Magnitude - (workspace_Raycast_result1.Position - arg1).Magnitude then
		end
	end
	return var10
end
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.RespectCanCollide = false
RaycastParams_new_result1_upvr.FilterType = Enum.RaycastFilterType.Exclude
local function _(arg1, arg2, arg3) -- Line 173, Named "ViewportPointToPosFrust"
	return Vector3.new((arg1.X - 0.5) * arg2, (0.5 - arg1.Y) * arg3, -1)
end
local function GetScreenCFrame_upvr(arg1, arg2) -- Line 184, Named "GetScreenCFrame"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var14
	local var15
	local var16
	if tbl_upvr.Debug_DisableLookAtCamera then
		local var17 = -arg1.ZVector
		var15 = arg1.YVector
		var14 = var15:Cross(var17)
		var15 = var17:Cross(var14)
	else
		local Unit = arg2.Unit
		var16 = Unit - arg1.YVector * arg1.YVector:Dot(Unit)
		local Unit_2 = var16.Unit
		var15 = arg1.YVector
		var16 = var15:Cross(Unit_2)
		var14 = var16
		var16 = Unit_2:Cross(var14)
		var15 = var16
	end
	var16 = Vector3.new(0, 0, 0)
	local cframe_matrix = CFrame.fromMatrix(var16, var14, var15, Unit_2)
	var16 = tbl_upvr.Debug_SidewaysRotationAngle
	if not var16 then
		var16 = module_upvr.SidewaysRotationAngle
	end
	if not tbl_upvr.Debug_DisableSidewaysRotation then
		local any_Dot_result1 = arg1.XVector:Dot(arg2.Unit)
		if math.abs(any_Dot_result1) <= 0.052335956242943966 then
			any_Dot_result1 = 0
		end
	end
	return (CFrame.fromAxisAngle(cframe_matrix.YVector, -math.sign(any_Dot_result1) * math.rad(var16)) * cframe_matrix) + (arg1.Position + arg2)
end
local tbl_upvr_2 = {
	DU = nil;
	FV3 = function(arg1) -- Line 257, Named "FV3"
		return "%.2f, %.2f, %.2f":format(arg1.X, arg1.Y, arg1.Z)
	end;
}
function tbl_upvr_2.DU_Dot(arg1, arg2, arg3, arg4, arg5) -- Line 261
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local any_P_result1 = tbl_upvr_2.DU.P(arg1)
	any_P_result1.Shape = Enum.PartType.Ball
	any_P_result1.Material = Enum.Material.Neon
	any_P_result1.CFrame = CFrame.new(arg2)
	any_P_result1.Size = arg3
	any_P_result1.Color = arg4
	any_P_result1.Transparency = arg5
end
function module_upvr.DebugInit() -- Line 272
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2.DU = require(game.ReplicatedStorage.DebugUtilities)
end
function module_upvr.DebugRegisterCommand(arg1) -- Line 279
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local TextChatService_upvr = game:GetService("TextChatService")
	local any_I_result1 = module_upvr_2.I("TextChatCommand", {
		Parent = TextChatService_upvr;
		Name = "AdEnemyDebugCommand";
		Enabled = true;
		PrimaryAlias = "/debugad";
		SecondaryAlias = "/da";
	})
	any_I_result1.Triggered:Connect(function() -- Line 288
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		local var28
		if module_upvr.DebugEnabled then
			var28 = nil
		else
			var28 = true
		end
		module_upvr.DebugEnabled = var28
	end)
	if arg1 then
		task.spawn(function() -- Line 293
			--[[ Upvalues[1]:
				[1]: TextChatService_upvr (readonly)
			]]
			task.wait()
			task.wait()
			TextChatService_upvr:WaitForChild("TextChannels"):WaitForChild("RBXGeneral"):DisplaySystemMessage("You are an admin. Use '/debugad' or '/da' commands to toggle ad enemy debugging features.")
		end)
	end
	return any_I_result1
end
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function module_upvr.RenderStepped(arg1) -- Line 306
	--[[ Upvalues[9]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: PPIQS_Query_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: tbl_upvr_2 (readonly)
		[7]: RaycastParams_new_result1_upvr (readonly)
		[8]: GetScreenCFrame_upvr (readonly)
		[9]: RaycastOpaque_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 56. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 56. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.Init() -- Line 1065
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr.LocalPPIQS = {
		NextAttemptAt = 0;
	}
end
return module_upvr