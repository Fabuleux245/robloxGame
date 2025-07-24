-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:34
-- Luau version 6, Types version 3
-- Time taken: 0.006390 seconds

local LocalPlayer_upvr = game.Players.LocalPlayer
local BloxbizSDK_upvr = LocalPlayer_upvr.PlayerScripts.BloxbizSDK
local ConfigReader = require(BloxbizSDK_upvr.ConfigReader)
local var4_upvw
if ConfigReader:read("DebugMode") then
	var4_upvw = require(ConfigReader:read("DebugAPI")())
end
local module_upvr = {
	BillboardClients = {};
}
function module_upvr.initBillboardClient(arg1, arg2) -- Line 24
	--[[ Upvalues[2]:
		[1]: BloxbizSDK_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not module_upvr.BillboardClients[arg1] then
		local clone = BloxbizSDK_upvr.BillboardClient:Clone()
		clone.Parent = BloxbizSDK_upvr
		local clone_2 = require(clone)
		module_upvr.BillboardClients[arg1] = clone_2
		clone_2:initAd(arg1.Billboard.AdUnit:GetFullName(), arg1.Billboard.AdUnit, arg2)
	else
		clone_2.currentBloxbizAdId = arg2.bloxbiz_ad_id
	end
end
local DialogueBranchEntryEvent_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("DialogueBranchEntryEvent")
function module_upvr.queueBranchEntry(arg1) -- Line 40
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: DialogueBranchEntryEvent_upvr (readonly)
	]]
	local AdRequestStats = require(script.Parent.Parent.Parent.AdRequestStats)
	DialogueBranchEntryEvent_upvr:FireServer(arg1.branchEntered, AdRequestStats:getClientPlayerStats(LocalPlayer_upvr), AdRequestStats:getPartStats(module_upvr.BillboardClients[arg1.adBoxModel].adPart))
end
function module_upvr.angleBetweenAdAndCam(arg1, arg2) -- Line 63
	local var10 = arg2.Position - arg1.Position
	local Unit_3 = Vector3.new(var10.X, 0, var10.Z).Unit
	local Unit = (arg1.Position + Vector3.new(Unit_3.X * 5, 0, Unit_3.Z * 5) - arg1.Position).Unit
	local Unit_2 = (arg1.Position + Unit_3 * 5 - arg1.Position).Unit
	return math.atan2(Unit:Cross(Unit_2).Magnitude, Unit:Dot(Unit_2))
end
function module_upvr.getBiggestStatusIcon(arg1) -- Line 77
	local var21
	for _, v in pairs(arg1.AdModel:GetChildren()) do
		if v:IsA("Model") and v.PrimaryPart and v.PrimaryPart:FindFirstChild("StatusIcon") then
			local StatusIcon = v.PrimaryPart:FindFirstChild("StatusIcon")
			if StatusIcon and var21 == nil or StatusIcon and var21.Size.Y.Scale < StatusIcon.Size.Y.Scale then
				var21 = StatusIcon
			end
		end
	end
	return var21
end
local CreateBillboard_upvr = require(script.CreateBillboard)
local Workspace_upvr = game:GetService("Workspace")
local RunService_upvr = game:GetService("RunService")
function module_upvr.attachBillboardToAd(arg1, arg2) -- Line 93
	--[[ Upvalues[5]:
		[1]: CreateBillboard_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: module_upvr (readonly)
		[4]: Workspace_upvr (readonly)
		[5]: RunService_upvr (readonly)
	]]
	if not arg1:FindFirstChild("Billboard") then
		local var23_result1_upvw = CreateBillboard_upvr()
		var23_result1_upvw.Parent = arg1
		var23_result1_upvw.PrimaryPart = var23_result1_upvw.AdUnit
		if not var4_upvw then
			var23_result1_upvw.PrimaryPart.Transparency = 0.999
			var23_result1_upvw.PrimaryPart.AdSurfaceGui.Enabled = false
		else
			var23_result1_upvw.PrimaryPart.Transparency = 0
			var23_result1_upvw.PrimaryPart.AdSurfaceGui.Enabled = true
		end
	end
	local var27 = module_upvr.BillboardClients[arg1]
	local var28_upvr
	if var27 and arg2.bloxbiz_ad_id == var27.currentBloxbizAdId then
	else
		var28_upvr = module_upvr
		var28_upvr = arg1
		var28_upvr.initBillboardClient(var28_upvr, arg2)
		var28_upvr = module_upvr
		var28_upvr = module_upvr
		var28_upvr = arg1
		local any_getBiggestStatusIcon_result1 = var28_upvr.getBiggestStatusIcon(var28_upvr)
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var28_upvr = any_getBiggestStatusIcon_result1.Size.Y.Scale
			return var28_upvr
		end
		if not any_getBiggestStatusIcon_result1 or not INLINED() then
			var28_upvr = 0
		end
		local any_GetBoundingBox_result1_upvw, any_GetBoundingBox_result2_2_upvw = arg1.AdModel:GetBoundingBox()
		local CurrentCamera_upvr = Workspace_upvr.CurrentCamera
		if not CurrentCamera_upvr then return end
		local var34_upvw = var28_upvr.BillboardClients[arg1]
		local bloxbiz_ad_id_upvr = arg2.bloxbiz_ad_id
		local var36_upvw
		local deg_upvr = math.deg
		local abs_upvr = math.abs
		local tick_result1_upvw = tick()
		var36_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 135
			--[[ Upvalues[13]:
				[1]: arg1 (readonly)
				[2]: var34_upvw (read and write)
				[3]: bloxbiz_ad_id_upvr (readonly)
				[4]: var36_upvw (read and write)
				[5]: CurrentCamera_upvr (readonly)
				[6]: var28_upvr (readonly)
				[7]: var23_result1_upvw (read and write)
				[8]: module_upvr (copied, readonly)
				[9]: deg_upvr (readonly)
				[10]: abs_upvr (readonly)
				[11]: tick_result1_upvw (read and write)
				[12]: any_GetBoundingBox_result1_upvw (read and write)
				[13]: any_GetBoundingBox_result2_2_upvw (read and write)
			]]
			local AdModel = arg1:FindFirstChild("AdModel")
			if var34_upvw.currentBloxbizAdId == bloxbiz_ad_id_upvr then
				AdModel = false
			else
				AdModel = true
			end
			if not AdModel or AdModel then
				var36_upvw:Disconnect()
			else
				local Position_2 = CurrentCamera_upvr.CFrame.Position
				local Position = arg1.AdModel.AdCenterPart.Position
				local var43 = Position + (Position_2 - Position).unit * 3
				local vector3 = Vector3.new(var43.X, Position.Y + var28_upvr / 2, var43.Z)
				local _, any_ToOrientation_result2, any_ToOrientation_result3 = CFrame.new(vector3, Position_2):ToOrientation()
				var23_result1_upvw.PrimaryPart.CFrame = CFrame.new(vector3) * CFrame.fromOrientation(0, any_ToOrientation_result2, any_ToOrientation_result3)
				if 0.33 < tick() - tick_result1_upvw then
					tick_result1_upvw = tick()
					local any_GetBoundingBox_result1, any_GetBoundingBox_result2 = arg1.AdModel:GetBoundingBox()
					any_GetBoundingBox_result1_upvw = any_GetBoundingBox_result1
					any_GetBoundingBox_result2_2_upvw = any_GetBoundingBox_result2
				end
				var23_result1_upvw.PrimaryPart.Size = Vector3.new(any_GetBoundingBox_result2_2_upvw.X + (any_GetBoundingBox_result2_2_upvw.Z - any_GetBoundingBox_result2_2_upvw.X) * (1 - abs_upvr(deg_upvr(module_upvr.angleBetweenAdAndCam(arg1.AdModel.AdCenterPart.CFrame, CurrentCamera_upvr.CFrame)) - 90) / 90), any_GetBoundingBox_result2_2_upvw.Y + var28_upvr, 0.5)
			end
		end)
	end
end
function module_upvr.init(arg1, arg2, arg3) -- Line 184
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.attachBillboardToAd(arg1, arg3)
	if not arg2 then
	end
end
return module_upvr